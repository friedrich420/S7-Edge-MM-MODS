.class Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    }
.end annotation


# instance fields
.field mBackupSize:J

.field mExtraFlag:I

.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mManifestFile:Ljava/io/File;

.field mMetadataFile:Ljava/io/File;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mOutput:Ljava/io/OutputStream;

.field mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

.field mPrivilegeApp:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Ljava/lang/String;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;ZIZ)V
    .registers 11
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "preflightHook"    # Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;
    .param p5, "alsoApks"    # Z
    .param p6, "extraFlag"    # I
    .param p7, "privilegeApp"    # Z

    .prologue
    .line 3577
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3578
    iput-object p2, p0, mOutput:Ljava/io/OutputStream;

    .line 3579
    iput-object p4, p0, mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    .line 3580
    iput-boolean p5, p0, mIncludeApks:Z

    .line 3581
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mFilesDir:Ljava/io/File;

    .line 3582
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mFilesDir:Ljava/io/File;

    const-string v2, "_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mManifestFile:Ljava/io/File;

    .line 3583
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mFilesDir:Ljava/io/File;

    const-string v2, "_meta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mMetadataFile:Ljava/io/File;

    .line 3584
    iput p6, p0, mExtraFlag:I

    .line 3585
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mBackupSize:J

    .line 3586
    iput-boolean p7, p0, mPrivilegeApp:Z

    .line 3587
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3493
    invoke-direct {p0, p1, p2, p3, p4}, writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3493
    invoke-direct {p0, p1, p2, p3}, writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .param p2, "x2"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    .line 3493
    invoke-direct {p0, p1, p2}, writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V

    return-void
.end method

.method private tearDown(Landroid/content/pm/PackageInfo;)V
    .registers 4
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 3812
    if-eqz p1, :cond_b

    .line 3813
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3814
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_b

    .line 3815
    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 3818
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_b
    return-void
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .registers 22
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    .line 3699
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    .line 3700
    .local v5, "appSourceDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 3701
    .local v4, "apkDir":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "a"

    const/4 v3, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 3709
    new-instance v18, Landroid/os/Environment$UserEnvironment;

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3710
    .local v18, "userEnv":Landroid/os/Environment$UserEnvironment;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v16, v1, v2

    .line 3711
    .local v16, "obbDir":Ljava/io/File;
    if-eqz v16, :cond_5a

    .line 3713
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 3714
    .local v17, "obbFiles":[Ljava/io/File;
    if-eqz v17, :cond_5a

    .line 3715
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 3716
    .local v9, "obbDirName":Ljava/lang/String;
    move-object/from16 v12, v17

    .local v12, "arr$":[Ljava/io/File;
    array-length v14, v12

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_42
    if-ge v13, v14, :cond_5a

    aget-object v15, v12, v13

    .line 3717
    .local v15, "obb":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v7, "obb"

    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 3716
    add-int/lit8 v13, v13, 0x1

    goto :goto_42

    .line 3722
    .end local v9    # "obbDirName":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/io/File;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "obb":Ljava/io/File;
    .end local v17    # "obbFiles":[Ljava/io/File;
    :cond_5a
    return-void
.end method

.method private writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V
    .registers 15
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "withApk"    # Z
    .param p4, "withWidgets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3737
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x1000

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3738
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v6, Landroid/util/StringBuilderPrinter;

    invoke-direct {v6, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 3740
    .local v6, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3741
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3742
    iget v8, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3743
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3745
    iget-object v8, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3746
    .local v3, "installerName":Ljava/lang/String;
    if-eqz v3, :cond_65

    .end local v3    # "installerName":Ljava/lang/String;
    :goto_39
    invoke-virtual {v6, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3748
    if-eqz p3, :cond_68

    const-string v8, "1"

    :goto_40
    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3749
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v8, :cond_6b

    .line 3750
    const-string v8, "0"

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3758
    :cond_4c
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3759
    .local v5, "outstream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 3760
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 3767
    const-wide/16 v8, 0x0

    invoke-virtual {p2, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    .line 3768
    return-void

    .line 3746
    .end local v5    # "outstream":Ljava/io/FileOutputStream;
    .restart local v3    # "installerName":Ljava/lang/String;
    :cond_65
    const-string v3, ""

    goto :goto_39

    .line 3748
    .end local v3    # "installerName":Ljava/lang/String;
    :cond_68
    const-string v8, "0"

    goto :goto_40

    .line 3752
    :cond_6b
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3753
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_79
    if-ge v2, v4, :cond_4c

    aget-object v7, v0, v2

    .line 3754
    .local v7, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3753
    add-int/lit8 v2, v2, 0x1

    goto :goto_79
.end method

.method private writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .registers 12
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3788
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x200

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3789
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v4, Landroid/util/StringBuilderPrinter;

    invoke-direct {v4, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 3790
    .local v4, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3791
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3793
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3794
    .local v2, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3795
    .local v1, "bout":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3796
    .local v3, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 3798
    if-eqz p3, :cond_45

    array-length v5, p3

    if-lez v5, :cond_45

    .line 3799
    const v5, 0x1ffed01

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3800
    array-length v5, p3

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3801
    invoke-virtual {v3, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 3803
    :cond_45
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 3804
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 3808
    const-wide/16 v6, 0x0

    invoke-virtual {p2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    .line 3809
    return-void
.end method


# virtual methods
.method public backupOnePackage(Landroid/content/pm/PackageInfo;)I
    .registers 26
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3594
    const/16 v19, 0x0

    .line 3595
    .local v19, "result":I
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binding to full backup agent : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    const/4 v7, 0x0

    .line 3598
    .local v7, "agent":Landroid/app/IBackupAgent;
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v5

    if-eqz v5, :cond_14a

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mExceptionList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$1800(Lcom/android/server/backup/BackupManagerService;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14a

    .line 3601
    const-string v5, "BackupManagerService"

    const-string v6, "changing backup agent name to null for edm restore request"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    new-instance v15, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v15, v5}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 3603
    .local v15, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    iput-object v5, v15, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 3604
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x1

    invoke-virtual {v5, v15, v6}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v7

    .line 3610
    .end local v15    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_57
    if-eqz v7, :cond_201

    .line 3611
    const/16 v18, 0x0

    .line 3614
    .local v18, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_5b
    move-object/from16 v0, p0

    iget-object v5, v0, mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    if-eqz v5, :cond_6b

    .line 3615
    move-object/from16 v0, p0

    iget-object v5, v0, mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v7}, Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;->preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I

    move-result v19

    .line 3622
    :cond_6b
    if-nez v19, :cond_127

    .line 3623
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    .line 3625
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3626
    .local v14, "app":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.android.sharedstoragebackup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 3627
    .local v17, "isSharedStorage":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, mIncludeApks:Z

    if-eqz v5, :cond_159

    if-nez v17, :cond_99

    iget v5, v14, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_99

    iget v5, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_a7

    iget v5, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_a7

    :cond_99
    move-object/from16 v0, p0

    iget-boolean v5, v0, mPrivilegeApp:Z

    if-eqz v5, :cond_159

    move-object/from16 v0, p0

    iget v5, v0, mExtraFlag:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_159

    :cond_a7
    const/4 v10, 0x1

    .line 3634
    .local v10, "sendApk":Z
    :goto_a8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v12

    .line 3637
    .local v12, "widgetBlob":[B
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v9

    .line 3638
    .local v9, "token":I
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;

    const/4 v5, 0x1

    aget-object v8, v18, v5

    if-nez v17, :cond_15c

    const/4 v11, 0x1

    :goto_c1
    move-object/from16 v0, p0

    iget v13, v0, mExtraFlag:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v13}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[BI)V

    .line 3640
    .local v4, "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    const/4 v5, 0x1

    aget-object v5, v18, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3641
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v18, v5

    .line 3642
    new-instance v20, Ljava/lang/Thread;

    const-string v5, "app-data-runner"

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3643
    .local v20, "t":Ljava/lang/Thread;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_e2} :catch_174
    .catchall {:try_start_5b .. :try_end_e2} :catchall_1d5

    .line 3647
    :try_start_e2
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x0

    aget-object v6, v18, v6

    move-object/from16 v0, p0

    iget-object v8, v0, mOutput:Ljava/io/OutputStream;

    # invokes: Lcom/android/server/backup/BackupManagerService;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)J
    invoke-static {v5, v6, v8}, Lcom/android/server/backup/BackupManagerService;->access$1400(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, mBackupSize:J
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_f7} :catch_15f
    .catchall {:try_start_e2 .. :try_end_f7} :catchall_1d5

    .line 3654
    :goto_f7
    :try_start_f7
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v9}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v5

    if-nez v5, :cond_127

    .line 3655
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Full backup failed on package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupFail:Z
    invoke-static {v5, v6}, Lcom/android/server/backup/BackupManagerService;->access$1902(Lcom/android/server/backup/BackupManagerService;Z)Z
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_125} :catch_174
    .catchall {:try_start_f7 .. :try_end_125} :catchall_1d5

    .line 3659
    const/16 v19, -0x3eb

    .line 3675
    .end local v4    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .end local v9    # "token":I
    .end local v10    # "sendApk":Z
    .end local v12    # "widgetBlob":[B
    .end local v14    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "isSharedStorage":Z
    .end local v20    # "t":Ljava/lang/Thread;
    :cond_127
    :try_start_127
    move-object/from16 v0, p0

    iget-object v5, v0, mOutput:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 3676
    if-eqz v18, :cond_146

    .line 3677
    const/4 v5, 0x0

    aget-object v5, v18, v5

    if-eqz v5, :cond_13b

    const/4 v5, 0x0

    aget-object v5, v18, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3678
    :cond_13b
    const/4 v5, 0x1

    aget-object v5, v18, v5

    if-eqz v5, :cond_146

    const/4 v5, 0x1

    aget-object v5, v18, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_146} :catch_1c9

    .line 3692
    .end local v18    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_146
    :goto_146
    invoke-direct/range {p0 .. p1}, tearDown(Landroid/content/pm/PackageInfo;)V

    .line 3693
    return v19

    .line 3607
    :cond_14a
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v8}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v7

    goto/16 :goto_57

    .line 3627
    .restart local v14    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v17    # "isSharedStorage":Z
    .restart local v18    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_159
    const/4 v10, 0x0

    goto/16 :goto_a8

    .line 3638
    .restart local v9    # "token":I
    .restart local v10    # "sendApk":Z
    .restart local v12    # "widgetBlob":[B
    :cond_15c
    const/4 v11, 0x0

    goto/16 :goto_c1

    .line 3648
    .restart local v4    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .restart local v20    # "t":Ljava/lang/Thread;
    :catch_15f
    move-exception v16

    .line 3649
    .local v16, "e":Ljava/io/IOException;
    :try_start_160
    const-string v5, "BackupManagerService"

    const-string v6, "Caught exception reading from agent"

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3650
    const/16 v19, -0x3eb

    .line 3651
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, mBackupSize:J
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_173} :catch_174
    .catchall {:try_start_160 .. :try_end_173} :catchall_1d5

    goto :goto_f7

    .line 3666
    .end local v4    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .end local v9    # "token":I
    .end local v10    # "sendApk":Z
    .end local v12    # "widgetBlob":[B
    .end local v14    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "e":Ljava/io/IOException;
    .end local v17    # "isSharedStorage":Z
    .end local v20    # "t":Ljava/lang/Thread;
    :catch_174
    move-exception v16

    .line 3667
    .restart local v16    # "e":Ljava/io/IOException;
    :try_start_175
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error backing up "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3669
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupFail:Z
    invoke-static {v5, v6}, Lcom/android/server/backup/BackupManagerService;->access$1902(Lcom/android/server/backup/BackupManagerService;Z)Z
    :try_end_19b
    .catchall {:try_start_175 .. :try_end_19b} :catchall_1d5

    .line 3671
    const/16 v19, -0x3eb

    .line 3675
    :try_start_19d
    move-object/from16 v0, p0

    iget-object v5, v0, mOutput:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 3676
    if-eqz v18, :cond_146

    .line 3677
    const/4 v5, 0x0

    aget-object v5, v18, v5

    if-eqz v5, :cond_1b1

    const/4 v5, 0x0

    aget-object v5, v18, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3678
    :cond_1b1
    const/4 v5, 0x1

    aget-object v5, v18, v5

    if-eqz v5, :cond_146

    const/4 v5, 0x1

    aget-object v5, v18, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1bc
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1bc} :catch_1bd

    goto :goto_146

    .line 3680
    :catch_1bd
    move-exception v16

    .line 3681
    const-string v5, "BackupManagerService"

    const-string v6, "Error bringing down backup stack"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    const/16 v19, -0x3e8

    .line 3684
    goto/16 :goto_146

    .line 3680
    .end local v16    # "e":Ljava/io/IOException;
    :catch_1c9
    move-exception v16

    .line 3681
    .restart local v16    # "e":Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    const-string v6, "Error bringing down backup stack"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    const/16 v19, -0x3e8

    .line 3684
    goto/16 :goto_146

    .line 3673
    .end local v16    # "e":Ljava/io/IOException;
    :catchall_1d5
    move-exception v5

    .line 3675
    :try_start_1d6
    move-object/from16 v0, p0

    iget-object v6, v0, mOutput:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 3676
    if-eqz v18, :cond_1f5

    .line 3677
    const/4 v6, 0x0

    aget-object v6, v18, v6

    if-eqz v6, :cond_1ea

    const/4 v6, 0x0

    aget-object v6, v18, v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3678
    :cond_1ea
    const/4 v6, 0x1

    aget-object v6, v18, v6

    if-eqz v6, :cond_1f5

    const/4 v6, 0x1

    aget-object v6, v18, v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f5
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_1f5} :catch_1f6

    .line 3683
    :cond_1f5
    :goto_1f5
    throw v5

    .line 3680
    :catch_1f6
    move-exception v16

    .line 3681
    .restart local v16    # "e":Ljava/io/IOException;
    const-string v6, "BackupManagerService"

    const-string v8, "Error bringing down backup stack"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    const/16 v19, -0x3e8

    goto :goto_1f5

    .line 3686
    .end local v16    # "e":Ljava/io/IOException;
    .end local v18    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_201
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to bind to full agent for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupFail:Z
    invoke-static {v5, v6}, Lcom/android/server/backup/BackupManagerService;->access$1902(Lcom/android/server/backup/BackupManagerService;Z)Z

    .line 3690
    const/16 v19, -0x3eb

    goto/16 :goto_146
.end method

.method public getBackupSize()J
    .registers 3

    .prologue
    .line 3590
    iget-wide v0, p0, mBackupSize:J

    return-wide v0
.end method
