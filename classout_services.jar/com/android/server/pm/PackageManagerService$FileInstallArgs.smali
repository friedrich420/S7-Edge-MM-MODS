.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInstallArgs"
.end annotation


# instance fields
.field private codeFile:Ljava/io/File;

.field private resourceFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .registers 16
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .prologue
    .line 16668
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16669
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v6, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerSourcePackageName:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    iget-object v12, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 16674
    invoke-virtual {p0}, isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 16675
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Forward locking only supported in ASEC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16677
    :cond_2f
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 19
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "resourcePath"    # Ljava/lang/String;
    .param p4, "instructionSets"    # [Ljava/lang/String;

    .prologue
    .line 16680
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16681
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v11, p4

    invoke-direct/range {v1 .. v13}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 16685
    if-eqz p2, :cond_2d

    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1f
    iput-object v1, p0, codeFile:Ljava/io/File;

    .line 16686
    if-eqz p3, :cond_2f

    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2a
    iput-object v1, p0, resourceFile:Ljava/io/File;

    .line 16687
    return-void

    .line 16685
    :cond_2d
    const/4 v1, 0x0

    goto :goto_1f

    .line 16686
    :cond_2f
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method static synthetic access$5400(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    .prologue
    .line 16656
    iget-object v0, p0, codeFile:Ljava/io/File;

    return-object v0
.end method

.method private cleanUp()Z
    .registers 4

    .prologue
    .line 16865
    iget-object v0, p0, codeFile:Ljava/io/File;

    if-eqz v0, :cond_c

    iget-object v0, p0, codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    .line 16866
    :cond_c
    const/4 v0, 0x0

    .line 16892
    :goto_d
    return v0

    .line 16869
    :cond_e
    iget-object v0, p0, codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 16870
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, codeFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)I

    .line 16875
    :goto_23
    iget-object v0, p0, resourceFile:Ljava/io/File;

    if-eqz v0, :cond_60

    iget-object v0, p0, codeFile:Ljava/io/File;

    iget-object v1, p0, resourceFile:Ljava/io/File;

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 16876
    iget-object v0, p0, resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 16877
    iget-object v0, p0, resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_70

    .line 16878
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEV:Z

    if-eqz v0, :cond_68

    .line 16879
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couln\'t delete resourceFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, resourceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16892
    :cond_60
    :goto_60
    const/4 v0, 0x1

    goto :goto_d

    .line 16872
    :cond_62
    iget-object v0, p0, codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_23

    .line 16881
    :cond_68
    const-string v0, "PackageManager"

    const-string v1, "Couln\'t delete resourceFile: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 16884
    :cond_70
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEV:Z

    if-eqz v0, :cond_94

    .line 16885
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delete resourceFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, resourceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 16887
    :cond_94
    const-string v0, "PackageManager"

    const-string/jumbo v1, "delete resourceFile: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .registers 5

    .prologue
    .line 16897
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 16898
    .local v0, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, codeFile:Ljava/io/File;

    if-eqz v2, :cond_19

    iget-object v2, p0, codeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 16900
    :try_start_e
    iget-object v2, p0, codeFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 16901
    .local v1, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;
    :try_end_18
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_e .. :try_end_18} :catch_24

    move-result-object v0

    .line 16907
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :cond_19
    :goto_19
    invoke-direct {p0}, cleanUp()Z

    .line 16908
    iget-object v2, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, instructionSets:[Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->removeDexFiles(Ljava/util/List;[Ljava/lang/String;)V
    invoke-static {v2, v0, v3}, Lcom/android/server/pm/PackageManagerService;->access$5600(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;[Ljava/lang/String;)V

    .line 16909
    return-void

    .line 16902
    :catch_24
    move-exception v2

    goto :goto_19
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .registers 25
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16690
    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_59

    .line 16691
    const-string v19, "PackageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " already staged; skipping copy"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16692
    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, codeFile:Ljava/io/File;

    .line 16693
    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, resourceFile:Ljava/io/File;

    .line 16694
    const/16 v16, 0x1

    .line 16790
    :goto_58
    return v16

    .line 16698
    :cond_59
    :try_start_59
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, volumeUuid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 16699
    .local v18, "tempDir":Ljava/io/File;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, codeFile:Ljava/io/File;

    .line 16700
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, resourceFile:Ljava/io/File;
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_7b} :catch_b0

    .line 16706
    new-instance v17, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;-><init>(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)V

    .line 16724
    .local v17, "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    const/16 v16, 0x1

    .line 16725
    .local v16, "ret":I
    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IMediaContainerService;->copyPackage(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I

    move-result v16

    .line 16726
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_ce

    .line 16727
    const-string v19, "PackageManager"

    const-string v20, "Failed to copy package"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 16701
    .end local v16    # "ret":I
    .end local v17    # "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .end local v18    # "tempDir":Ljava/io/File;
    :catch_b0
    move-exception v8

    .line 16702
    .local v8, "e":Ljava/io/IOException;
    const-string v19, "PackageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to create copy file: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16703
    const/16 v16, -0x4

    goto :goto_58

    .line 16733
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v16    # "ret":I
    .restart local v17    # "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .restart local v18    # "tempDir":Ljava/io/File;
    :cond_ce
    const-string/jumbo v19, "device_policy"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v7

    .line 16736
    .local v7, "dpm":Landroid/app/admin/IDevicePolicyManager;
    if-eqz v7, :cond_172

    .line 16738
    :try_start_db
    invoke-virtual/range {p0 .. p0}, getUser()Landroid/os/UserHandle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 16739
    .local v11, "id":I
    if-gez v11, :cond_e6

    const/4 v11, 0x0

    .line 16740
    :cond_e6
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v7, v0, v11}, Landroid/app/admin/IDevicePolicyManager;->getAllowAppListThirdParty(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v4

    .line 16741
    .local v4, "allowList":Ljava/lang/String;
    if-eqz v4, :cond_172

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_172

    .line 16742
    const-string v19, "PackageManager"

    const-string v20, "checking allow list after copying finished"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16743
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$5000(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    .line 16744
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 16745
    .local v6, "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 16746
    .local v5, "allowListArray":[Ljava/lang/String;
    array-length v3, v5

    .line 16748
    .local v3, "allowArrayLen":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_115
    if-ge v10, v3, :cond_126

    .line 16749
    aget-object v19, v5, v10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v10

    .line 16748
    add-int/lit8 v10, v10, 0x1

    goto :goto_115

    .line 16751
    :cond_126
    invoke-static {v6, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 16752
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 16754
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5100()Landroid/content/IHarmonyEAS;

    move-result-object v19

    if-eqz v19, :cond_172

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_172

    .line 16755
    const/4 v12, 0x0

    .line 16756
    .local v12, "isAppBlocked":Z
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 16757
    .local v15, "pkgHash":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, codeFile:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "base.apk"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_153} :catch_16e
    .catchall {:try_start_db .. :try_end_153} :catchall_1a0

    .line 16759
    .local v14, "mFile":Ljava/io/File;
    :try_start_153
    invoke-static {v14, v15}, Landroid/content/pm/PackageParser;->getHashValueOfPackage(Ljava/io/File;Ljava/lang/StringBuilder;)V

    .line 16761
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_15f
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_153 .. :try_end_15f} :catch_16b
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_15f} :catch_16e
    .catchall {:try_start_153 .. :try_end_15f} :catchall_1a0

    move-result v19

    if-nez v19, :cond_169

    const/4 v12, 0x1

    .line 16765
    :goto_163
    if-eqz v12, :cond_172

    .line 16766
    const/16 v16, -0x74

    .line 16767
    goto/16 :goto_58

    .line 16761
    :cond_169
    const/4 v12, 0x0

    goto :goto_163

    .line 16762
    :catch_16b
    move-exception v8

    .line 16763
    .local v8, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/4 v12, 0x0

    goto :goto_163

    .line 16771
    .end local v3    # "allowArrayLen":I
    .end local v4    # "allowList":Ljava/lang/String;
    .end local v5    # "allowListArray":[Ljava/lang/String;
    .end local v6    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v10    # "i":I
    .end local v11    # "id":I
    .end local v12    # "isAppBlocked":Z
    .end local v14    # "mFile":Ljava/io/File;
    .end local v15    # "pkgHash":Ljava/lang/StringBuilder;
    :catch_16e
    move-exception v8

    .line 16772
    .local v8, "e":Ljava/lang/Exception;
    :try_start_16f
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_172
    .catchall {:try_start_16f .. :try_end_172} :catchall_1a0

    .line 16777
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_172
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, codeFile:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v20, "lib"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16778
    .local v13, "libraryRoot":Ljava/io/File;
    const/4 v9, 0x0

    .line 16780
    .local v9, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_185
    move-object/from16 v0, p0

    iget-object v0, v0, codeFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v9

    .line 16781
    move-object/from16 v0, p0

    iget-object v0, v0, abiOverride:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v13, v0}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_19a} :catch_1a2
    .catchall {:try_start_185 .. :try_end_19a} :catchall_1b5

    move-result v16

    .line 16787
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_58

    .line 16773
    .end local v9    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v13    # "libraryRoot":Ljava/io/File;
    :catchall_1a0
    move-exception v19

    throw v19

    .line 16783
    .restart local v9    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v13    # "libraryRoot":Ljava/io/File;
    :catch_1a2
    move-exception v8

    .line 16784
    .local v8, "e":Ljava/io/IOException;
    :try_start_1a3
    const-string v19, "PackageManager"

    const-string v20, "Copying native libraries failed"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ae
    .catchall {:try_start_1a3 .. :try_end_1ae} :catchall_1b5

    .line 16785
    const/16 v16, -0x6e

    .line 16787
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_58

    .end local v8    # "e":Ljava/io/IOException;
    :catchall_1b5
    move-exception v19

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v19
.end method

.method doPostDeleteLI(Z)Z
    .registers 3
    .param p1, "delete"    # Z

    .prologue
    .line 16913
    invoke-virtual {p0}, cleanUpResourcesLI()V

    .line 16914
    const/4 v0, 0x1

    return v0
.end method

.method doPostInstall(II)I
    .registers 6
    .param p1, "status"    # I
    .param p2, "uid"    # I

    .prologue
    .line 16847
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doPostInstall for uid{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16848
    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    .line 16849
    invoke-direct {p0}, cleanUp()Z

    .line 16851
    :cond_26
    return p1
.end method

.method doPreInstall(I)I
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 16794
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 16795
    invoke-direct {p0}, cleanUp()Z

    .line 16797
    :cond_6
    return p1
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .registers 12
    .param p1, "status"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "oldCodePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16801
    if-eq p1, v5, :cond_8

    .line 16802
    invoke-direct {p0}, cleanUp()Z

    .line 16843
    :goto_7
    return v4

    .line 16806
    :cond_8
    iget-object v6, p0, codeFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 16807
    .local v3, "targetDir":Ljava/io/File;
    iget-object v1, p0, codeFile:Ljava/io/File;

    .line 16808
    .local v1, "beforeCodeFile":Ljava/io/File;
    iget-object v6, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    invoke-static {v6, v3, v7}, Lcom/android/server/pm/PackageManagerService;->access$5500(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 16812
    .local v0, "afterCodeFile":Ljava/io/File;
    :try_start_18
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/system/ErrnoException; {:try_start_18 .. :try_end_23} :catch_31

    .line 16818
    invoke-static {v0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 16819
    const-string v5, "PackageManager"

    const-string v6, "Failed to restorecon"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 16813
    :catch_31
    move-exception v2

    .line 16814
    .local v2, "e":Landroid/system/ErrnoException;
    const-string v5, "PackageManager"

    const-string v6, "Failed to rename"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 16824
    .end local v2    # "e":Landroid/system/ErrnoException;
    :cond_3a
    iput-object v0, p0, codeFile:Ljava/io/File;

    .line 16825
    iput-object v0, p0, resourceFile:Ljava/io/File;

    .line 16828
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 16829
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 16831
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 16835
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    iput-object v6, v4, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 16836
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 16837
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 16838
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    .line 16839
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 16840
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 16841
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    move v4, v5

    .line 16843
    goto :goto_7
.end method

.method getCodePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16856
    iget-object v0, p0, codeFile:Ljava/io/File;

    if-eqz v0, :cond_b

    iget-object v0, p0, codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method getResourcePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16861
    iget-object v0, p0, resourceFile:Ljava/io/File;

    if-eqz v0, :cond_b

    iget-object v0, p0, resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
