.class Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformUnifiedRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;,
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
    }
.end annotation


# instance fields
.field private mAcceptSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgent:Landroid/app/IBackupAgent;

.field mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataName:Ljava/io/File;

.field private mCount:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private mFinished:Z

.field private mIsSystemRestore:Z

.field mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateName:Ljava/io/File;

.field private mObserver:Landroid/app/backup/IRestoreObserver;

.field private mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

.field private mPmToken:I

.field private mRestoreDescription:Landroid/app/backup/RestoreDescription;

.field private mSavedStateName:Ljava/io/File;

.field private mStageName:Ljava/io/File;

.field private mStartRealtime:J

.field private mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field mStateDir:Ljava/io/File;

.field private mStatus:I

.field private mTargetPackage:Landroid/content/pm/PackageInfo;

.field private mToken:J

.field private mTransport:Lcom/android/internal/backup/IBackupTransport;

.field private mWidgetData:[B

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V
    .registers 22
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "restoreSetToken"    # J
    .param p6, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p7, "pmToken"    # I
    .param p8, "isFullSystemRestore"    # Z
    .param p9, "filterSet"    # [Ljava/lang/String;

    .prologue
    .line 7643
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7644
    sget-object v7, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    iput-object v7, p0, mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 7645
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, mStartRealtime:J

    .line 7647
    iput-object p2, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 7648
    iput-object p3, p0, mObserver:Landroid/app/backup/IRestoreObserver;

    .line 7649
    move-wide/from16 v0, p4

    iput-wide v0, p0, mToken:J

    .line 7650
    move/from16 v0, p7

    iput v0, p0, mPmToken:I

    .line 7651
    move-object/from16 v0, p6

    iput-object v0, p0, mTargetPackage:Landroid/content/pm/PackageInfo;

    .line 7652
    move/from16 v0, p8

    iput-boolean v0, p0, mIsSystemRestore:Z

    .line 7653
    const/4 v7, 0x0

    iput-boolean v7, p0, mFinished:Z

    .line 7655
    if-eqz p6, :cond_37

    .line 7657
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, mAcceptSet:Ljava/util/List;

    .line 7658
    iget-object v7, p0, mAcceptSet:Ljava/util/List;

    move-object/from16 v0, p6

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7719
    :cond_36
    :goto_36
    return-void

    .line 7661
    :cond_37
    if-nez p9, :cond_66

    .line 7663
    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v2

    .line 7665
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0, v2}, packagesToNames(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p9

    .line 7667
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Full restore; asking about "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p9

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " apps"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7671
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_66
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p9

    array-length v8, v0

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, mAcceptSet:Ljava/util/List;

    .line 7676
    const/4 v4, 0x0

    .line 7677
    .local v4, "hasSystem":Z
    const/4 v3, 0x0

    .line 7678
    .local v3, "hasSettings":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_73
    move-object/from16 v0, p9

    array-length v7, v0

    if-ge v5, v7, :cond_ad

    .line 7680
    :try_start_78
    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    aget-object v8, p9, v5

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 7681
    .local v6, "info":Landroid/content/pm/PackageInfo;
    const-string v7, "android"

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_91

    .line 7682
    const/4 v4, 0x1

    .line 7678
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    :cond_8e
    :goto_8e
    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    .line 7685
    .restart local v6    # "info":Landroid/content/pm/PackageInfo;
    :cond_91
    const-string v7, "com.android.providers.settings"

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 7686
    const/4 v3, 0x1

    goto :goto_8e

    .line 7690
    :cond_9d
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 7691
    iget-object v7, p0, mAcceptSet:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_aa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_78 .. :try_end_aa} :catch_ab

    goto :goto_8e

    .line 7693
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    :catch_ab
    move-exception v7

    goto :goto_8e

    .line 7697
    :cond_ad
    if-eqz v4, :cond_c0

    .line 7699
    :try_start_af
    iget-object v7, p0, mAcceptSet:Ljava/util/List;

    const/4 v8, 0x0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_af .. :try_end_c0} :catch_d7

    .line 7704
    :cond_c0
    :goto_c0
    if-eqz v3, :cond_36

    .line 7706
    :try_start_c2
    iget-object v7, p0, mAcceptSet:Ljava/util/List;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.android.providers.settings"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c2 .. :try_end_d2} :catch_d4

    goto/16 :goto_36

    .line 7707
    :catch_d4
    move-exception v7

    goto/16 :goto_36

    .line 7700
    :catch_d7
    move-exception v7

    goto :goto_c0
.end method

.method static synthetic access$2900(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    .prologue
    .line 7573
    iget-object v0, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    .prologue
    .line 7573
    iget-object v0, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
    .param p1, "x1"    # Landroid/app/IBackupAgent;

    .prologue
    .line 7573
    iput-object p1, p0, mAgent:Landroid/app/IBackupAgent;

    return-object p1
.end method

.method private dispatchNextRestore()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 7896
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 7898
    .local v4, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_start_4
    iget-object v7, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v7

    iput-object v7, p0, mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 7899
    iget-object v7, p0, mRestoreDescription:Landroid/app/backup/RestoreDescription;

    if-eqz v7, :cond_2d

    iget-object v7, p0, mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v7}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 7901
    .local v5, "pkgName":Ljava/lang/String;
    :goto_16
    if-nez v5, :cond_2f

    .line 7902
    const-string v7, "BackupManagerService"

    const-string v8, "Failure getting next package name"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7903
    const/16 v7, 0xb0f

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7904
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_29} :catch_1c5
    .catchall {:try_start_4 .. :try_end_29} :catchall_1dc

    .line 7988
    invoke-virtual {p0, v4}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 7990
    .end local v5    # "pkgName":Ljava/lang/String;
    :goto_2c
    return-void

    .line 7899
    :cond_2d
    const/4 v5, 0x0

    goto :goto_16

    .line 7906
    .restart local v5    # "pkgName":Ljava/lang/String;
    :cond_2f
    :try_start_2f
    iget-object v7, p0, mRestoreDescription:Landroid/app/backup/RestoreDescription;

    sget-object v8, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    if-ne v7, v8, :cond_62

    .line 7909
    const-string v7, "BackupManagerService"

    const-string v8, "No more packages; finishing restore"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7911
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, mStartRealtime:J

    sub-long/2addr v8, v10

    long-to-int v3, v8

    .line 7912
    .local v3, "millis":I
    const/16 v7, 0xb12

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, mCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7913
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_5e} :catch_1c5
    .catchall {:try_start_2f .. :try_end_5e} :catchall_1dc

    .line 7988
    invoke-virtual {p0, v4}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_2c

    .line 7918
    .end local v3    # "millis":I
    :cond_62
    :try_start_62
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Next restore package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7920
    invoke-virtual {p0, v5}, sendOnRestorePackage(Ljava/lang/String;)V

    .line 7922
    iget-object v7, p0, mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v7, v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v2

    .line 7923
    .local v2, "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    if-nez v2, :cond_b6

    .line 7924
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No metadata for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7925
    const/16 v7, 0xb10

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    const-string v10, "Package metadata missing"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7927
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_b1} :catch_1c5
    .catchall {:try_start_62 .. :try_end_b1} :catchall_1dc

    .line 7988
    invoke-virtual {p0, v4}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_2c

    .line 7932
    :cond_b6
    :try_start_b6
    iget-object v7, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iput-object v7, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;
    :try_end_c4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b6 .. :try_end_c4} :catch_131
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_c4} :catch_1c5
    .catchall {:try_start_b6 .. :try_end_c4} :catchall_1dc

    .line 7944
    :try_start_c4
    iget v7, v2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    iget-object v8, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v7, v8, :cond_18f

    .line 7948
    iget-object v7, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x20000

    and-int/2addr v7, v8

    if-nez v7, :cond_161

    .line 7950
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > installed version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7952
    .local v1, "message":Ljava/lang/String;
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7953
    const/16 v7, 0xb10

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7955
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_12c
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_12c} :catch_1c5
    .catchall {:try_start_c4 .. :try_end_12c} :catchall_1dc

    .line 7988
    invoke-virtual {p0, v4}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_2c

    .line 7934
    .end local v1    # "message":Ljava/lang/String;
    :catch_131
    move-exception v0

    .line 7937
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_132
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package not present: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7938
    const/16 v7, 0xb10

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    const-string v10, "Package missing on device"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7940
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_15c
    .catch Landroid/os/RemoteException; {:try_start_132 .. :try_end_15c} :catch_1c5
    .catchall {:try_start_132 .. :try_end_15c} :catchall_1dc

    .line 7988
    invoke-virtual {p0, v4}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_2c

    .line 7958
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_161
    :try_start_161
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > installed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " but restoreAnyVersion"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7970
    :cond_18f
    const/4 v7, 0x0

    iput-object v7, p0, mWidgetData:[B

    .line 7971
    iget-object v7, p0, mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v7}, Landroid/app/backup/RestoreDescription;->getDataType()I

    move-result v6

    .line 7972
    .local v6, "type":I
    if-ne v6, v10, :cond_1a1

    .line 7973
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_19c
    .catch Landroid/os/RemoteException; {:try_start_161 .. :try_end_19c} :catch_1c5
    .catchall {:try_start_161 .. :try_end_19c} :catchall_1dc

    .line 7988
    :goto_19c
    invoke-virtual {p0, v4}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_2c

    .line 7974
    :cond_1a1
    if-ne v6, v11, :cond_1a6

    .line 7975
    :try_start_1a3
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_19c

    .line 7978
    :cond_1a6
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized restore type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7979
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_1c0
    .catch Landroid/os/RemoteException; {:try_start_1a3 .. :try_end_1c0} :catch_1c5
    .catchall {:try_start_1a3 .. :try_end_1c0} :catchall_1dc

    .line 7988
    invoke-virtual {p0, v4}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_2c

    .line 7982
    .end local v2    # "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_1c5
    move-exception v0

    .line 7983
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1c6
    const-string v7, "BackupManagerService"

    const-string v8, "Can\'t get next target from transport; ending restore"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7984
    const/16 v7, 0xb0f

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7985
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_1d7
    .catchall {:try_start_1c6 .. :try_end_1d7} :catchall_1dc

    .line 7988
    invoke-virtual {p0, v4}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_2c

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1dc
    move-exception v7

    invoke-virtual {p0, v4}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    throw v7
.end method

.method private finalizeRestore()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 8394
    :try_start_5
    iget-object v3, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_67

    .line 8405
    :goto_a
    iget-object v3, p0, mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v3, :cond_15

    .line 8407
    :try_start_e
    iget-object v3, p0, mObserver:Landroid/app/backup/IRestoreObserver;

    iget v4, p0, mStatus:I

    invoke-interface {v3, v4}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_7f

    .line 8414
    :cond_15
    :goto_15
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v8}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 8418
    iget v3, p0, mPmToken:I

    if-lez v3, :cond_88

    .line 8421
    :try_start_20
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    iget v4, p0, mPmToken:I

    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_9e

    .line 8431
    :goto_29
    invoke-static {v2}, Lcom/android/server/AppWidgetBackupBridge;->restoreFinished(I)V

    .line 8435
    iget-boolean v2, p0, mIsSystemRestore:Z

    if-eqz v2, :cond_48

    iget-object v2, p0, mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    if-eqz v2, :cond_48

    .line 8436
    iget-object v2, p0, mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    if-nez v2, :cond_93

    .line 8437
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 8442
    :goto_3d
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-wide v4, p0, mToken:J

    iput-wide v4, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    .line 8443
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V

    .line 8447
    :cond_48
    const-string v2, "BackupManagerService"

    const-string v3, "Restore complete."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8448
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8451
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    const-string v5, "Performing user data restore succeeded "

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 8455
    return-void

    .line 8395
    :catch_67
    move-exception v7

    .line 8397
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    const-string v5, "Performing user data restore failed "

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 8401
    const-string v3, "BackupManagerService"

    const-string v4, "Error finishing restore"

    invoke-static {v3, v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 8408
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_7f
    move-exception v7

    .line 8409
    .local v7, "e":Landroid/os/RemoteException;
    const-string v3, "BackupManagerService"

    const-string v4, "Restore observer died at restoreFinished"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 8426
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_88
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v8, v4, v5}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_29

    .line 8440
    :cond_93
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    goto :goto_3d

    .line 8422
    :catch_9e
    move-exception v3

    goto :goto_29
.end method

.method private packagesToNames(Ljava/util/List;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 7722
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 7723
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/String;

    .line 7724
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_16

    .line 7725
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 7724
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7727
    :cond_16
    return-object v2
.end method

.method private restoreFinished()V
    .registers 8

    .prologue
    .line 8189
    :try_start_0
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v2

    .line 8190
    .local v2, "token":I
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v2, v4, v5, p0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 8191
    iget-object v3, p0, mAgent:Landroid/app/IBackupAgent;

    iget-object v4, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v2, v4}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 8202
    .end local v2    # "token":I
    :goto_16
    return-void

    .line 8194
    :catch_17
    move-exception v0

    .line 8195
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8196
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to finalize restore of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8197
    const/16 v3, 0xb10

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8199
    invoke-virtual {p0}, keyValueAgentErrorCleanup()V

    .line 8200
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_16
.end method

.method private restoreFull()V
    .registers 5

    .prologue
    .line 8168
    :try_start_0
    new-instance v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;

    invoke-direct {v1, p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;-><init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)V

    .line 8173
    .local v1, "feeder":Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v3, "unified-stream-feeder"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    .line 8184
    .end local v1    # "feeder":Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
    :goto_10
    return-void

    .line 8177
    :catch_11
    move-exception v0

    .line 8181
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to construct pipes for stream restore!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8182
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v2}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_10
.end method

.method private restoreKeyValue()V
    .registers 11

    .prologue
    const/16 v9, 0xb10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7997
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8000
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v3, :cond_1f

    const-string v3, ""

    iget-object v4, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 8006
    :cond_1f
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v4, "Package has no agent"

    aput-object v4, v3, v7

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8008
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8042
    :goto_2f
    return-void

    .line 8012
    :cond_30
    iget-object v3, p0, mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v1

    .line 8013
    .local v1, "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    iget-object v3, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    iget-object v4, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 8014
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature mismatch restoring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8015
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v4, "Signature mismatch"

    aput-object v4, v3, v7

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8017
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_2f

    .line 8022
    :cond_69
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v3

    iput-object v3, p0, mAgent:Landroid/app/IBackupAgent;

    .line 8025
    iget-object v3, p0, mAgent:Landroid/app/IBackupAgent;

    if-nez v3, :cond_a2

    .line 8026
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find backup agent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8027
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v4, "Restore agent missing"

    aput-object v4, v3, v7

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8029
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_2f

    .line 8035
    :cond_a2
    :try_start_a2
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget v4, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {p0, v3, v4}, initiateOneRestore(Landroid/content/pm/PackageInfo;I)V

    .line 8036
    iget v3, p0, mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, mCount:I
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_af} :catch_b0

    goto :goto_2f

    .line 8037
    :catch_b0
    move-exception v0

    .line 8038
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when attempting restore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8039
    invoke-virtual {p0}, keyValueAgentErrorCleanup()V

    .line 8040
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_2f
.end method

.method private startRestore()V
    .registers 12

    .prologue
    const/16 v10, 0x14

    const/4 v6, 0x0

    const/16 v9, -0x3e8

    .line 7809
    iget-object v5, p0, mAcceptSet:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v5}, sendStartRestore(I)V

    .line 7812
    iget-boolean v5, p0, mIsSystemRestore:Z

    if-eqz v5, :cond_15

    .line 7813
    invoke-static {v6}, Lcom/android/server/AppWidgetBackupBridge;->restoreStarting(I)V

    .line 7817
    :cond_15
    :try_start_15
    iget-object v5, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    .line 7818
    .local v4, "transportDir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, mStateDir:Ljava/io/File;

    .line 7821
    new-instance v3, Landroid/content/pm/PackageInfo;

    invoke-direct {v3}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 7822
    .local v3, "pmPackage":Landroid/content/pm/PackageInfo;
    const-string v5, "@pm@"

    iput-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7823
    iget-object v5, p0, mAcceptSet:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7825
    iget-object v5, p0, mAcceptSet:Ljava/util/List;

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/content/pm/PackageInfo;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/PackageInfo;

    .line 7826
    .local v2, "packages":[Landroid/content/pm/PackageInfo;
    iget-object v5, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-wide v6, p0, mToken:J

    invoke-interface {v5, v6, v7, v2}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v5

    iput v5, p0, mStatus:I

    .line 7827
    iget v5, p0, mStatus:I

    if-eqz v5, :cond_78

    .line 7828
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transport error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; no restore possible"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7829
    const/16 v5, -0x3e8

    iput v5, p0, mStatus:I

    .line 7830
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 7891
    .end local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .end local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .end local v4    # "transportDir":Ljava/lang/String;
    :cond_77
    :goto_77
    return-void

    .line 7834
    .restart local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .restart local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .restart local v4    # "transportDir":Ljava/lang/String;
    :cond_78
    iget-object v5, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v0

    .line 7835
    .local v0, "desc":Landroid/app/backup/RestoreDescription;
    if-nez v0, :cond_a8

    .line 7836
    const-string v5, "BackupManagerService"

    const-string v6, "No restore metadata available; halting"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7837
    const/16 v5, -0x3e8

    iput v5, p0, mStatus:I

    .line 7838
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_90} :catch_91

    goto :goto_77

    .line 7883
    .end local v0    # "desc":Landroid/app/backup/RestoreDescription;
    .end local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .end local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .end local v4    # "transportDir":Ljava/lang/String;
    :catch_91
    move-exception v1

    .line 7885
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to contact transport for restore"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7886
    iput v9, p0, mStatus:I

    .line 7887
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v10, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7888
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_77

    .line 7841
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "desc":Landroid/app/backup/RestoreDescription;
    .restart local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .restart local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .restart local v4    # "transportDir":Ljava/lang/String;
    :cond_a8
    :try_start_a8
    const-string v5, "@pm@"

    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_da

    .line 7842
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Required metadata but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7843
    const/16 v5, -0x3e8

    iput v5, p0, mStatus:I

    .line 7844
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_77

    .line 7849
    :cond_da
    new-instance v5, Landroid/content/pm/PackageInfo;

    invoke-direct {v5}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v5, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 7850
    iget-object v5, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v6, "@pm@"

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7851
    new-instance v5, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v6, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    iput-object v5, p0, mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 7852
    iget-object v5, p0, mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v5

    iput-object v5, p0, mAgent:Landroid/app/IBackupAgent;

    .line 7856
    iget-object v5, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, initiateOneRestore(Landroid/content/pm/PackageInfo;I)V

    .line 7864
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 7869
    iget-object v5, p0, mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->hasMetadata()Z

    move-result v5

    if-nez v5, :cond_77

    .line 7870
    const-string v5, "BackupManagerService"

    const-string v6, "No restore metadata available, so not restoring"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7871
    const/16 v5, 0xb10

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "@pm@"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "Package manager restore metadata missing"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7874
    const/16 v5, -0x3e8

    iput v5, p0, mStatus:I

    .line 7875
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v6, 0x14

    invoke-virtual {v5, v6, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7876
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_142
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_142} :catch_91

    goto/16 :goto_77
.end method


# virtual methods
.method public execute()V
    .registers 3

    .prologue
    .line 7734
    sget-object v0, Lcom/android/server/backup/BackupManagerService$6;->$SwitchMap$com$android$server$backup$BackupManagerService$UnifiedRestoreState:[I

    iget-object v1, p0, mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 7763
    :goto_d
    return-void

    .line 7736
    :pswitch_e
    invoke-direct {p0}, startRestore()V

    goto :goto_d

    .line 7740
    :pswitch_12
    invoke-direct {p0}, dispatchNextRestore()V

    goto :goto_d

    .line 7744
    :pswitch_16
    invoke-direct {p0}, restoreKeyValue()V

    goto :goto_d

    .line 7748
    :pswitch_1a
    invoke-direct {p0}, restoreFull()V

    goto :goto_d

    .line 7752
    :pswitch_1e
    invoke-direct {p0}, restoreFinished()V

    goto :goto_d

    .line 7756
    :pswitch_22
    iget-boolean v0, p0, mFinished:Z

    if-nez v0, :cond_2d

    invoke-direct {p0}, finalizeRestore()V

    .line 7760
    :goto_29
    const/4 v0, 0x1

    iput-boolean v0, p0, mFinished:Z

    goto :goto_d

    .line 7758
    :cond_2d
    const-string v0, "BackupManagerService"

    const-string v1, "Duplicate finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 7734
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_22
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    .registers 5
    .param p1, "nextState"    # Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .prologue
    .line 8605
    iput-object p1, p0, mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8606
    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8607
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8608
    return-void
.end method

.method public handleTimeout()V
    .registers 5

    .prologue
    .line 8594
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout restoring application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8595
    const/16 v0, 0xb10

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "restore timeout"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8598
    invoke-virtual {p0}, keyValueAgentErrorCleanup()V

    .line 8599
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v0}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8600
    return-void
.end method

.method initiateOneRestore(Landroid/content/pm/PackageInfo;I)V
    .registers 21
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "appVersionCode"    # I

    .prologue
    .line 8046
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8048
    .local v14, "packageName":Ljava/lang/String;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initiateOneRestore packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8051
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".restore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mBackupDataName:Ljava/io/File;

    .line 8052
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".stage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mStageName:Ljava/io/File;

    .line 8053
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, mStateDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".new"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mNewStateName:Ljava/io/File;

    .line 8054
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, mStateDir:Ljava/io/File;

    invoke-direct {v2, v3, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mSavedStateName:Ljava/io/File;

    .line 8060
    const-string v2, "android"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f0

    const/16 v17, 0x1

    .line 8062
    .local v17, "staging":Z
    :goto_98
    if-eqz v17, :cond_f3

    move-object/from16 v0, p0

    iget-object v9, v0, mStageName:Ljava/io/File;

    .line 8064
    .local v9, "downloadFile":Ljava/io/File;
    :goto_9e
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v6

    .line 8067
    .local v6, "token":I
    const/high16 v2, 0x3c000000    # 0.0078125f

    :try_start_a8
    invoke-static {v9, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 8072
    .local v16, "stage":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupDataName:Ljava/io/File;

    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_b6

    .line 8076
    :cond_b6
    move-object/from16 v0, p0

    iget-object v2, v0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v2

    if-eqz v2, :cond_f8

    .line 8079
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting restore data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8080
    const/16 v2, 0xb0f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8081
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 8082
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 8083
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ef} :catch_169

    .line 8154
    .end local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :goto_ef
    return-void

    .line 8060
    .end local v6    # "token":I
    .end local v9    # "downloadFile":Ljava/io/File;
    .end local v17    # "staging":Z
    :cond_f0
    const/16 v17, 0x0

    goto :goto_98

    .line 8062
    .restart local v17    # "staging":Z
    :cond_f3
    move-object/from16 v0, p0

    iget-object v9, v0, mBackupDataName:Ljava/io/File;

    goto :goto_9e

    .line 8090
    .restart local v6    # "token":I
    .restart local v9    # "downloadFile":Ljava/io/File;
    .restart local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :cond_f8
    if-eqz v17, :cond_1b8

    .line 8091
    :try_start_fa
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 8092
    const/high16 v2, 0x10000000

    invoke-static {v9, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 8095
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupDataName:Ljava/io/File;

    const/high16 v3, 0x3c000000    # 0.0078125f

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 8100
    new-instance v11, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 8101
    .local v11, "in":Landroid/app/backup/BackupDataInput;
    new-instance v13, Landroid/app/backup/BackupDataOutput;

    move-object/from16 v0, p0

    iget-object v2, v0, mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 8102
    .local v13, "out":Landroid/app/backup/BackupDataOutput;
    const/16 v2, 0x2000

    new-array v8, v2, [B

    .line 8103
    .local v8, "buffer":[B
    :goto_12b
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_1b1

    .line 8104
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 8105
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v15

    .line 8108
    .local v15, "size":I
    const-string/jumbo v2, "\uffed\uffedwidget"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a0

    .line 8110
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring widget state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8112
    new-array v2, v15, [B

    move-object/from16 v0, p0

    iput-object v2, v0, mWidgetData:[B

    .line 8113
    move-object/from16 v0, p0

    iget-object v2, v0, mWidgetData:[B

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3, v15}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_168} :catch_169

    goto :goto_12b

    .line 8143
    .end local v8    # "buffer":[B
    .end local v11    # "in":Landroid/app/backup/BackupDataInput;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v15    # "size":I
    .end local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :catch_169
    move-exception v10

    .line 8144
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call app for restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8145
    const/16 v2, 0xb10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8147
    invoke-virtual/range {p0 .. p0}, keyValueAgentErrorCleanup()V

    .line 8152
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_ef

    .line 8115
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "buffer":[B
    .restart local v11    # "in":Landroid/app/backup/BackupDataInput;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "out":Landroid/app/backup/BackupDataOutput;
    .restart local v15    # "size":I
    .restart local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :cond_1a0
    :try_start_1a0
    array-length v2, v8

    if-le v15, v2, :cond_1a5

    .line 8116
    new-array v8, v15, [B

    .line 8118
    :cond_1a5
    const/4 v2, 0x0

    invoke-virtual {v11, v8, v2, v15}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 8119
    invoke-virtual {v13, v12, v15}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 8120
    invoke-virtual {v13, v8, v15}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto/16 :goto_12b

    .line 8124
    .end local v12    # "key":Ljava/lang/String;
    .end local v15    # "size":I
    :cond_1b1
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 8128
    .end local v8    # "buffer":[B
    .end local v11    # "in":Landroid/app/backup/BackupDataInput;
    .end local v13    # "out":Landroid/app/backup/BackupDataOutput;
    :cond_1b8
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 8129
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupDataName:Ljava/io/File;

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 8132
    move-object/from16 v0, p0

    iget-object v2, v0, mNewStateName:Ljava/io/File;

    const/high16 v3, 0x3c000000    # 0.0078125f

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mNewState:Landroid/os/ParcelFileDescriptor;

    .line 8140
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v4, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v2, v6, v4, v5, v0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 8141
    move-object/from16 v0, p0

    iget-object v2, v0, mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v3, v0, mBackupData:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v5, v0, mNewState:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move/from16 v4, p2

    invoke-interface/range {v2 .. v7}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_1fa
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1fa} :catch_169

    goto/16 :goto_ef
.end method

.method keyValueAgentCleanup()V
    .registers 6

    .prologue
    .line 8467
    iget-object v2, p0, mBackupDataName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 8468
    iget-object v2, p0, mStageName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 8469
    :try_start_a
    iget-object v2, p0, mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_13

    iget-object v2, p0, mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_a7

    .line 8470
    :cond_13
    :goto_13
    :try_start_13
    iget-object v2, p0, mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_1c

    iget-object v2, p0, mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1c} :catch_a4

    .line 8471
    :cond_1c
    :goto_1c
    const/4 v2, 0x0

    iput-object v2, p0, mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 8486
    iget-object v2, p0, mNewStateName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 8490
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_87

    .line 8493
    :try_start_2c
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->access$1300(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 8506
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8507
    .local v0, "appFlags":I
    iget-object v2, p0, mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v2}, Landroid/app/backup/RestoreDescription;->getDataType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4d

    const/high16 v2, 0x10000

    and-int/2addr v2, v0

    if-eqz v2, :cond_9d

    :cond_4d
    const/4 v1, 0x1

    .line 8511
    .local v1, "killAfterRestore":Z
    :goto_4e
    iget-object v2, p0, mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_87

    if-eqz v1, :cond_87

    .line 8512
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restore complete, killing host process of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8514
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->access$1300(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v4, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_87} :catch_a2

    .line 8525
    .end local v0    # "appFlags":I
    .end local v1    # "killAfterRestore":Z
    :cond_87
    :goto_87
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 8526
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v3

    .line 8527
    :try_start_94
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 8528
    monitor-exit v3

    .line 8529
    return-void

    .line 8507
    .restart local v0    # "appFlags":I
    :cond_9d
    const/4 v1, 0x0

    goto :goto_4e

    .line 8528
    .end local v0    # "appFlags":I
    :catchall_9f
    move-exception v2

    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_94 .. :try_end_a1} :catchall_9f

    throw v2

    .line 8518
    :catch_a2
    move-exception v2

    goto :goto_87

    .line 8470
    :catch_a4
    move-exception v2

    goto/16 :goto_1c

    .line 8469
    :catch_a7
    move-exception v2

    goto/16 :goto_13
.end method

.method keyValueAgentErrorCleanup()V
    .registers 3

    .prologue
    .line 8461
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 8462
    invoke-virtual {p0}, keyValueAgentCleanup()V

    .line 8463
    return-void
.end method

.method public operationComplete(I)V
    .registers 8
    .param p1, "unusedResult"    # I

    .prologue
    .line 8540
    sget-object v2, Lcom/android/server/backup/BackupManagerService$6;->$SwitchMap$com$android$server$backup$BackupManagerService$UnifiedRestoreState:[I

    iget-object v3, p0, mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_68

    .line 8581
    :pswitch_d
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected restore callback into state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8582
    invoke-virtual {p0}, keyValueAgentErrorCleanup()V

    .line 8583
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8588
    .local v0, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :goto_2c
    invoke-virtual {p0, v0}, executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8589
    return-void

    .line 8545
    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_30
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8546
    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_2c

    .line 8553
    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_33
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8554
    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_2c

    .line 8560
    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_36
    iget-object v2, p0, mBackupDataName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    .line 8561
    .local v1, "size":I
    const/16 v2, 0xb11

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8565
    invoke-virtual {p0}, keyValueAgentCleanup()V

    .line 8570
    iget-object v2, p0, mWidgetData:[B

    if-eqz v2, :cond_65

    .line 8571
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, mWidgetData:[B

    invoke-virtual {v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->restoreWidgetData(Ljava/lang/String;[B)V

    .line 8574
    :cond_65
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8575
    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_2c

    .line 8540
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_30
        :pswitch_d
        :pswitch_33
        :pswitch_33
        :pswitch_36
    .end packed-switch
.end method

.method sendEndRestore()V
    .registers 4

    .prologue
    .line 8634
    iget-object v1, p0, mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_b

    .line 8636
    :try_start_4
    iget-object v1, p0, mObserver:Landroid/app/backup/IRestoreObserver;

    iget v2, p0, mStatus:I

    invoke-interface {v1, v2}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 8642
    :cond_b
    :goto_b
    return-void

    .line 8637
    :catch_c
    move-exception v0

    .line 8638
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8639
    const/4 v1, 0x0

    iput-object v1, p0, mObserver:Landroid/app/backup/IRestoreObserver;

    goto :goto_b
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 8623
    iget-object v1, p0, mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_b

    .line 8625
    :try_start_4
    iget-object v1, p0, mObserver:Landroid/app/backup/IRestoreObserver;

    iget v2, p0, mCount:I

    invoke-interface {v1, v2, p1}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 8631
    :cond_b
    :goto_b
    return-void

    .line 8626
    :catch_c
    move-exception v0

    .line 8627
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer died in onUpdate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8628
    const/4 v1, 0x0

    iput-object v1, p0, mObserver:Landroid/app/backup/IRestoreObserver;

    goto :goto_b
.end method

.method sendStartRestore(I)V
    .registers 5
    .param p1, "numPackages"    # I

    .prologue
    .line 8612
    iget-object v1, p0, mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_9

    .line 8614
    :try_start_4
    iget-object v1, p0, mObserver:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 8620
    :cond_9
    :goto_9
    return-void

    .line 8615
    :catch_a
    move-exception v0

    .line 8616
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8617
    const/4 v1, 0x0

    iput-object v1, p0, mObserver:Landroid/app/backup/IRestoreObserver;

    goto :goto_9
.end method
