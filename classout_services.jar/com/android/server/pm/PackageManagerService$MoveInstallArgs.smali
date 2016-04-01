.class Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveInstallArgs"
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
    .line 17266
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    .line 17267
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

    .line 17272
    return-void
.end method

.method private cleanUp(Ljava/lang/String;)Z
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .prologue
    .line 17336
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17338
    .local v0, "codeFile":Ljava/io/File;
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17339
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 17341
    :try_start_38
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->removeDataDirsLI(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, v3}, Lcom/android/server/pm/PackageManagerService;->access$6000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;)I

    .line 17342
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 17343
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)I

    .line 17347
    :goto_52
    monitor-exit v2

    .line 17348
    const/4 v1, 0x1

    return v1

    .line 17345
    :cond_55
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_52

    .line 17347
    :catchall_59
    move-exception v1

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_38 .. :try_end_5b} :catchall_59

    throw v1
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .registers 2

    .prologue
    .line 17352
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .registers 11
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z

    .prologue
    .line 17277
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter v7

    .line 17278
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    iget-object v2, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    iget-object v3, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    iget-object v5, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget v5, v5, Lcom/android/server/pm/PackageManagerService$MoveInfo;->appId:I

    iget-object v6, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$MoveInfo;->seinfo:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/Installer;->copyCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2b

    .line 17280
    const/16 v0, -0x6e

    monitor-exit v7

    .line 17288
    :goto_2a
    return v0

    .line 17282
    :cond_2b
    monitor-exit v7
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_45

    .line 17284
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, codeFile:Ljava/io/File;

    .line 17285
    iget-object v0, p0, codeFile:Ljava/io/File;

    iput-object v0, p0, resourceFile:Ljava/io/File;

    .line 17288
    const/4 v0, 0x1

    goto :goto_2a

    .line 17282
    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit v7
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0
.end method

.method doPostDeleteLI(Z)Z
    .registers 3
    .param p1, "delete"    # Z

    .prologue
    .line 17356
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method doPostInstall(II)I
    .registers 4
    .param p1, "status"    # I
    .param p2, "uid"    # I

    .prologue
    .line 17317
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 17318
    iget-object v0, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, cleanUp(Ljava/lang/String;)Z

    .line 17322
    :goto_a
    return p1

    .line 17320
    :cond_b
    iget-object v0, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, cleanUp(Ljava/lang/String;)Z

    goto :goto_a
.end method

.method doPreInstall(I)I
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 17292
    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    .line 17293
    iget-object v0, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, cleanUp(Ljava/lang/String;)Z

    .line 17295
    :cond_a
    return p1
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .registers 7
    .param p1, "status"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "oldCodePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 17299
    if-eq p1, v0, :cond_c

    .line 17300
    iget-object v0, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, cleanUp(Ljava/lang/String;)Z

    .line 17301
    const/4 v0, 0x0

    .line 17313
    :goto_b
    return v0

    .line 17305
    :cond_c
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 17306
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 17307
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 17308
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    .line 17309
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 17310
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 17311
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    goto :goto_b
.end method

.method getCodePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17327
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
    .line 17332
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
