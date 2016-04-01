.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installerPackageName:Ljava/lang/String;

.field final installerSourcePackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationParams:Landroid/content/pm/VerificationParams;

.field final volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/VerificationParams;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "packageAbiOverride"    # Ljava/lang/String;
    .param p11, "grantedPermissions"    # [Ljava/lang/String;

    .prologue
    .line 15860
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15861
    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15862
    iput-object p2, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 15863
    iput-object p3, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 15864
    iput-object p4, p0, observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 15865
    iput p5, p0, installFlags:I

    .line 15866
    iput-object p6, p0, installerPackageName:Ljava/lang/String;

    .line 15867
    iput-object p7, p0, volumeUuid:Ljava/lang/String;

    .line 15868
    const/4 v0, 0x0

    iput-object v0, p0, installerSourcePackageName:Ljava/lang/String;

    .line 15869
    iput-object p8, p0, verificationParams:Landroid/content/pm/VerificationParams;

    .line 15870
    iput-object p10, p0, packageAbiOverride:Ljava/lang/String;

    .line 15871
    iput-object p11, p0, grantedRuntimePermissions:[Ljava/lang/String;

    .line 15872
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/VerificationParams;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "installerSourcePackageName"    # Ljava/lang/String;
    .param p8, "volumeUuid"    # Ljava/lang/String;
    .param p9, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p10, "user"    # Landroid/os/UserHandle;
    .param p11, "packageAbiOverride"    # Ljava/lang/String;
    .param p12, "grantedPermissions"    # [Ljava/lang/String;

    .prologue
    .line 15877
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15878
    invoke-direct {p0, p1, p10}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15879
    iput-object p2, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 15880
    iput-object p3, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 15881
    iput-object p4, p0, observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 15882
    iput p5, p0, installFlags:I

    .line 15883
    iput-object p6, p0, installerPackageName:Ljava/lang/String;

    .line 15884
    iput-object p8, p0, volumeUuid:Ljava/lang/String;

    .line 15885
    iput-object p7, p0, installerSourcePackageName:Ljava/lang/String;

    .line 15886
    iput-object p9, p0, verificationParams:Landroid/content/pm/VerificationParams;

    .line 15887
    iput-object p11, p0, packageAbiOverride:Ljava/lang/String;

    .line 15888
    iput-object p12, p0, grantedRuntimePermissions:[Ljava/lang/String;

    .line 15889
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .registers 11
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 15906
    iget-object v3, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 15907
    .local v3, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 15908
    .local v1, "installLocation":I
    iget v7, p0, installFlags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_3d

    move v2, v5

    .line 15910
    .local v2, "onSd":Z
    :goto_d
    sget-object v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 15911
    :try_start_10
    sget-object v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 15912
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_6f

    .line 15913
    iget v8, p0, installFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_7f

    .line 15915
    iget v8, p0, installFlags:I
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_5f

    and-int/lit16 v8, v8, 0x80

    if-nez v8, :cond_29

    .line 15917
    :try_start_26
    # invokes: Lcom/android/server/pm/PackageManagerService;->checkDowngrade(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    invoke-static {v4, p1}, Lcom/android/server/pm/PackageManagerService;->access$4200(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_29
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_26 .. :try_end_29} :catch_3f
    .catchall {:try_start_26 .. :try_end_29} :catchall_5f

    .line 15924
    :cond_29
    :try_start_29
    iget-object v8, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_64

    .line 15925
    if-eqz v2, :cond_62

    .line 15926
    const-string v5, "PackageManager"

    const-string v6, "Cannot install update to system app on sdcard"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15927
    const/4 v5, -0x3

    monitor-exit v7

    .line 15960
    :goto_3c
    return v5

    .line 15908
    .end local v2    # "onSd":Z
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_3d
    const/4 v2, 0x0

    goto :goto_d

    .line 15918
    .restart local v2    # "onSd":Z
    .restart local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_3f
    move-exception v0

    .line 15919
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downgrade detected: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15920
    const/4 v5, -0x7

    monitor-exit v7

    goto :goto_3c

    .line 15954
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_5f
    move-exception v5

    monitor-exit v7
    :try_end_61
    .catchall {:try_start_29 .. :try_end_61} :catchall_5f

    throw v5

    .line 15929
    .restart local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_62
    :try_start_62
    monitor-exit v7

    goto :goto_3c

    .line 15931
    :cond_64
    if-eqz v2, :cond_69

    .line 15933
    monitor-exit v7

    move v5, v6

    goto :goto_3c

    .line 15936
    :cond_69
    if-ne v1, v5, :cond_6d

    .line 15938
    monitor-exit v7

    goto :goto_3c

    .line 15939
    :cond_6d
    if-ne v1, v6, :cond_74

    .line 15954
    :cond_6f
    monitor-exit v7

    .line 15957
    if-eqz v2, :cond_82

    move v5, v6

    .line 15958
    goto :goto_3c

    .line 15943
    :cond_74
    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1200(Landroid/content/pm/PackageParser$Package;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 15944
    monitor-exit v7

    move v5, v6

    goto :goto_3c

    .line 15946
    :cond_7d
    monitor-exit v7

    goto :goto_3c

    .line 15951
    :cond_7f
    const/4 v5, -0x4

    monitor-exit v7
    :try_end_81
    .catchall {:try_start_62 .. :try_end_81} :catchall_5f

    goto :goto_3c

    .line 15960
    :cond_82
    iget v5, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_3c
.end method


# virtual methods
.method public getManifestDigest()Landroid/content/pm/ManifestDigest;
    .registers 2

    .prologue
    .line 15899
    iget-object v0, p0, verificationParams:Landroid/content/pm/VerificationParams;

    if-nez v0, :cond_6

    .line 15900
    const/4 v0, 0x0

    .line 15902
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v0}, Landroid/content/pm/VerificationParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v0

    goto :goto_5
.end method

.method handleReturnCode()V
    .registers 4

    .prologue
    .line 16370
    iget-object v0, p0, mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_d

    .line 16371
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, mRet:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 16373
    :cond_d
    return-void
.end method

.method handleServiceError()V
    .registers 2

    .prologue
    .line 16377
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16378
    const/16 v0, -0x6e

    iput v0, p0, mRet:I

    .line 16379
    return-void
.end method

.method public handleStartCopy()V
    .registers 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 15970
    const/16 v31, 0x1

    .line 15973
    .local v31, "ret":I
    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    move/from16 v44, v0

    if-eqz v44, :cond_3a

    .line 15974
    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v44, v0

    if-eqz v44, :cond_28c

    .line 15975
    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v44, v0

    or-int/lit8 v44, v44, 0x10

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, installFlags:I

    .line 15976
    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, -0x9

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, installFlags:I

    .line 15985
    :cond_3a
    :goto_3a
    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x8

    if-eqz v44, :cond_2c0

    const/16 v23, 0x1

    .line 15986
    .local v23, "onSd":Z
    :goto_46
    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x10

    if-eqz v44, :cond_2c4

    const/16 v22, 0x1

    .line 15988
    .local v22, "onInt":Z
    :goto_52
    const/16 v25, 0x0

    .line 15989
    .local v25, "pkgLite":Landroid/content/pm/PackageInfoLite;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v24

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15990
    .local v24, "packageFileTemp":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, packageAbiOverride:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-interface/range {v44 .. v47}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v26

    .line 15997
    .local v26, "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->isUpdateOnSystemApp(Ljava/lang/String;)Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/pm/PackageManagerService;->access$4300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_2cc

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v45, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x20

    if-eqz v44, :cond_2c8

    const/16 v44, 0x1

    :goto_c1
    invoke-virtual/range {p0 .. p0}, getUser()Landroid/os/UserHandle;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v47

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    move-object/from16 v2, v46

    move/from16 v3, v44

    move/from16 v4, v47

    # invokes: Lcom/android/server/pm/PackageManagerService;->isAppBlockedByDPM(Ljava/io/File;Ljava/lang/String;ZI)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->access$4400(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;ZI)Z

    move-result v44

    if-eqz v44, :cond_2cc

    .line 16001
    const/16 v31, -0x74

    .line 16051
    :cond_db
    :goto_db
    const/16 v44, 0x1

    move/from16 v0, v31

    move/from16 v1, v44

    if-ne v0, v1, :cond_f3

    .line 16052
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v18, v0

    .line 16053
    .local v18, "loc":I
    const/16 v44, -0x3

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_3b1

    .line 16054
    const/16 v31, -0x13

    .line 16086
    .end local v18    # "loc":I
    :cond_f3
    :goto_f3
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v7

    .line 16087
    .local v7, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    iput-object v7, v0, mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16089
    const/16 v44, 0x1

    move/from16 v0, v31

    move/from16 v1, v44

    if-ne v0, v1, :cond_6f2

    .line 16094
    invoke-virtual/range {p0 .. p0}, getUser()Landroid/os/UserHandle;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v37

    .line 16095
    .local v37, "userIdentifier":I
    const/16 v44, -0x1

    move/from16 v0, v37

    move/from16 v1, v44

    if-ne v0, v1, :cond_129

    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x20

    if-eqz v44, :cond_129

    .line 16097
    const/16 v37, 0x0

    .line 16104
    :cond_129
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    invoke-virtual/range {p0 .. p0}, getUser()Landroid/os/UserHandle;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v45

    # invokes: Lcom/android/server/pm/PackageManagerService;->getRequiredVerifiersLPr(I)Ljava/util/ArrayList;
    invoke-static/range {v44 .. v45}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;I)Ljava/util/ArrayList;

    move-result-object v29

    .line 16105
    .local v29, "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    const/16 v19, 0x1

    .line 16113
    .local v19, "needVerificationForPersona":Z
    const/16 v30, 0x1

    .line 16117
    .local v30, "requiresVerificationForPersona":Z
    sget-object v44, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v44, :cond_18b

    sget-object v44, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {p0 .. p0}, getUser()Landroid/os/UserHandle;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v45

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/pm/PersonaManagerService;->needVerificationForPackage(ILjava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_18b

    .line 16120
    const-string v44, "PackageManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Skipping verification for Persona "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, getUser()Landroid/os/UserHandle;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " for package "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16122
    const/16 v30, 0x0

    .line 16128
    :cond_18b
    iget v0, v7, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    move/from16 v44, v0

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0x100

    move/from16 v44, v0

    if-eqz v44, :cond_449

    const/4 v15, 0x1

    .line 16132
    .local v15, "isOpenThemePackage":Z
    :goto_198
    const/16 v16, 0x0

    .line 16133
    .local v16, "isSPRInstallerPackages":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v44

    const-string v45, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v44 .. v45}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_1f1

    .line 16134
    move-object/from16 v0, p0

    iget-object v0, v0, installerPackageName:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "com.sprint.w.installer"

    invoke-static/range {v44 .. v45}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_1c2

    move-object/from16 v0, p0

    iget-object v0, v0, installerPackageName:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "com.sprint.ce.updater"

    invoke-static/range {v44 .. v45}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v44

    if-eqz v44, :cond_44c

    :cond_1c2
    const/16 v16, 0x1

    .line 16136
    :goto_1c4
    const-string v44, "PackageManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "isSPRInstallerPackages = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", installerPackageName = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, installerPackageName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16140
    :cond_1f1
    const/4 v11, 0x0

    .line 16141
    .local v11, "installFromSBM":Z
    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    if-eqz v44, :cond_450

    .line 16142
    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v14

    .line 16143
    .local v14, "installerUid":I
    const-string v44, "PackageManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "installerUid : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16144
    const-string v44, "SBM"

    const-string/jumbo v45, "ro.csc.sales_code"

    invoke-static/range {v45 .. v45}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_450

    .line 16145
    const/4 v13, 0x0

    .line 16146
    .local v13, "installerPackages":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 16147
    if-eqz v13, :cond_450

    .line 16148
    move-object v8, v13

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_242
    move/from16 v0, v17

    if-ge v10, v0, :cond_450

    aget-object v12, v8, v10

    .line 16149
    .local v12, "installerPackage":Ljava/lang/String;
    const-string/jumbo v44, "jp.softbank.mb.myd.framework"

    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_25d

    const-string v44, "com.sprint.ce.updater"

    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_289

    .line 16151
    :cond_25d
    const-string v44, "PackageManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "uid : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", is sbminstaller. skip verification, pkg : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16152
    const/4 v11, 0x1

    .line 16148
    :cond_289
    add-int/lit8 v10, v10, 0x1

    goto :goto_242

    .line 15977
    .end local v7    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "installFromSBM":Z
    .end local v12    # "installerPackage":Ljava/lang/String;
    .end local v13    # "installerPackages":[Ljava/lang/String;
    .end local v14    # "installerUid":I
    .end local v15    # "isOpenThemePackage":Z
    .end local v16    # "isSPRInstallerPackages":Z
    .end local v17    # "len$":I
    .end local v19    # "needVerificationForPersona":Z
    .end local v22    # "onInt":Z
    .end local v23    # "onSd":Z
    .end local v24    # "packageFileTemp":Ljava/io/File;
    .end local v25    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v26    # "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    .end local v29    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v30    # "requiresVerificationForPersona":Z
    .end local v37    # "userIdentifier":I
    :cond_28c
    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_2b8

    .line 15978
    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v44, v0

    or-int/lit8 v44, v44, 0x8

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, installFlags:I

    .line 15979
    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, -0x11

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, installFlags:I

    goto/16 :goto_3a

    .line 15981
    :cond_2b8
    new-instance v44, Ljava/lang/IllegalStateException;

    const-string v45, "Invalid stage location"

    invoke-direct/range {v44 .. v45}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v44

    .line 15985
    :cond_2c0
    const/16 v23, 0x0

    goto/16 :goto_46

    .line 15986
    .restart local v23    # "onSd":Z
    :cond_2c4
    const/16 v22, 0x0

    goto/16 :goto_52

    .line 15997
    .restart local v22    # "onInt":Z
    .restart local v24    # "packageFileTemp":Ljava/io/File;
    .restart local v25    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v26    # "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    :cond_2c8
    const/16 v44, 0x0

    goto/16 :goto_c1

    .line 16008
    :cond_2cc
    if-eqz v22, :cond_2db

    if-eqz v23, :cond_2db

    .line 16011
    const-string v44, "PackageManager"

    const-string v45, "Conflicting flags specified for installing on both internal and external"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16012
    const/16 v31, -0x13

    goto/16 :goto_db

    .line 16014
    :cond_2db
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, packageAbiOverride:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-interface/range {v44 .. v47}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v25

    .line 16021
    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    move/from16 v44, v0

    if-nez v44, :cond_db

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v44, v0

    const/16 v45, -0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_db

    .line 16024
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v34

    .line 16025
    .local v34, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v20

    .line 16028
    .local v20, "lowThreshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {p0 .. p0}, isForwardLocked()Z

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, packageAbiOverride:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-interface/range {v44 .. v47}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v32

    .line 16031
    .local v32, "sizeBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    add-long v46, v32, v20

    invoke-virtual/range {v44 .. v47}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)I

    move-result v44

    if-ltz v44, :cond_399

    .line 16032
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, packageAbiOverride:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-interface/range {v44 .. v47}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v25

    .line 16043
    :cond_399
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v44, v0

    const/16 v45, -0x6

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_db

    .line 16045
    const/16 v44, -0x1

    move/from16 v0, v44

    move-object/from16 v1, v25

    iput v0, v1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto/16 :goto_db

    .line 16055
    .end local v20    # "lowThreshold":J
    .end local v32    # "sizeBytes":J
    .end local v34    # "storage":Landroid/os/storage/StorageManager;
    .restart local v18    # "loc":I
    :cond_3b1
    const/16 v44, -0x4

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_3bd

    .line 16056
    const/16 v31, -0x1

    goto/16 :goto_f3

    .line 16057
    :cond_3bd
    const/16 v44, -0x1

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_3c9

    .line 16058
    const/16 v31, -0x4

    goto/16 :goto_f3

    .line 16059
    :cond_3c9
    const/16 v44, -0x2

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_3d5

    .line 16060
    const/16 v31, -0x2

    goto/16 :goto_f3

    .line 16061
    :cond_3d5
    const/16 v44, -0x6

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_3e1

    .line 16062
    const/16 v31, -0x3

    goto/16 :goto_f3

    .line 16063
    :cond_3e1
    const/16 v44, -0x5

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_3ed

    .line 16064
    const/16 v31, -0x14

    goto/16 :goto_f3

    .line 16067
    :cond_3ed
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v18

    .line 16068
    const/16 v44, -0x7

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_401

    .line 16069
    const/16 v31, -0x19

    goto/16 :goto_f3

    .line 16070
    :cond_401
    if-nez v23, :cond_f3

    if-nez v22, :cond_f3

    .line 16072
    const/16 v44, 0x2

    move/from16 v0, v18

    move/from16 v1, v44

    if-ne v0, v1, :cond_42b

    .line 16074
    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v44, v0

    or-int/lit8 v44, v44, 0x8

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, installFlags:I

    .line 16075
    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, -0x11

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, installFlags:I

    goto/16 :goto_f3

    .line 16079
    :cond_42b
    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v44, v0

    or-int/lit8 v44, v44, 0x10

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, installFlags:I

    .line 16080
    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, -0x9

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, installFlags:I

    goto/16 :goto_f3

    .line 16128
    .end local v18    # "loc":I
    .restart local v7    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v19    # "needVerificationForPersona":Z
    .restart local v29    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .restart local v30    # "requiresVerificationForPersona":Z
    .restart local v37    # "userIdentifier":I
    :cond_449
    const/4 v15, 0x0

    goto/16 :goto_198

    .line 16134
    .restart local v15    # "isOpenThemePackage":Z
    .restart local v16    # "isSPRInstallerPackages":Z
    :cond_44c
    const/16 v16, 0x0

    goto/16 :goto_1c4

    .line 16159
    .restart local v11    # "installFromSBM":Z
    :cond_450
    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    move/from16 v44, v0

    if-nez v44, :cond_786

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v44

    if-lez v44, :cond_786

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, v37

    move/from16 v2, v45

    # invokes: Lcom/android/server/pm/PackageManagerService;->isVerificationEnabled(II)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;II)Z

    move-result v44

    if-eqz v44, :cond_786

    if-eqz v30, :cond_786

    if-nez v15, :cond_786

    if-nez v16, :cond_786

    if-nez v11, :cond_786

    const/16 v43, 0x1

    .line 16165
    .local v43, "verifyInstallPackage":Z
    :goto_486
    if-eqz v43, :cond_7e6

    .line 16167
    new-instance v38, Landroid/content/Intent;

    const-string v44, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16169
    .local v38, "verification":Landroid/content/Intent;
    const/high16 v44, 0x10000000

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16170
    new-instance v44, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-direct/range {v44 .. v45}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v44 .. v44}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v44

    const-string v45, "application/vnd.android.package-archive"

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 16172
    const/16 v44, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16176
    sget-object v44, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v44, :cond_78a

    sget-object v44, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v44

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v44

    if-eqz v44, :cond_78a

    .line 16177
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    const-string v45, "application/vnd.android.package-archive"

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    move-object/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v28

    .line 16187
    .local v28, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_4ed
    const-string v44, "PackageManager"

    const-string v45, "VERIFY"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "Found "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " verifiers for intent "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v38 .. v38}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " with "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    array-length v0, v0

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " optional verifiers"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16192
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # operator++ for: Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$4808(Lcom/android/server/pm/PackageManagerService;)I

    move-result v39

    .line 16194
    .local v39, "verificationId":I
    const-string v44, "android.content.pm.extra.VERIFICATION_ID"

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16196
    const-string v44, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    move-object/from16 v0, p0

    iget-object v0, v0, installerPackageName:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16199
    const-string v44, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v45, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16202
    const-string v44, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16205
    const-string v44, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    move/from16 v45, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16209
    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    if-eqz v44, :cond_7a4

    .line 16210
    const-string v44, "KNOXVerificationInstallerUid"

    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16214
    :goto_5ae
    const-string v44, "KNOXVerificationPackagePath"

    move-object/from16 v0, p0

    iget-object v0, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16217
    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    if-eqz v44, :cond_676

    .line 16218
    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v44

    if-eqz v44, :cond_5f2

    .line 16219
    const-string v44, "android.content.pm.extra.VERIFICATION_URI"

    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16222
    :cond_5f2
    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v44

    if-eqz v44, :cond_613

    .line 16223
    const-string v44, "android.intent.extra.ORIGINATING_URI"

    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16226
    :cond_613
    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v44

    if-eqz v44, :cond_634

    .line 16227
    const-string v44, "android.intent.extra.REFERRER"

    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16230
    :cond_634
    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v44

    if-ltz v44, :cond_655

    .line 16231
    const-string v44, "android.intent.extra.ORIGINATING_UID"

    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16234
    :cond_655
    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v44

    if-ltz v44, :cond_676

    .line 16235
    const-string v44, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v45

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16240
    :cond_676
    new-instance v40, Lcom/android/server/pm/PackageVerificationState;

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/server/pm/PackageVerificationState;-><init>(Ljava/util/ArrayList;Landroid/content/Intent;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 16243
    .local v40, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 16245
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    move-object/from16 v3, v40

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$4900(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v36

    .line 16249
    .local v36, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, getUser()Landroid/os/UserHandle;

    move-result-object v42

    .line 16250
    .local v42, "verifierUser":Landroid/os/UserHandle;
    sget-object v44, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_6b8

    .line 16251
    sget-object v42, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 16258
    :cond_6b8
    if-eqz v36, :cond_6c9

    .line 16259
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v6

    .line 16260
    .local v6, "N":I
    if-nez v6, :cond_7b3

    .line 16261
    const-string v44, "PackageManager"

    const-string v45, "Additional verifiers required, but none installed."

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16262
    const/16 v31, -0x16

    .line 16274
    .end local v6    # "N":I
    :cond_6c9
    const/16 v44, 0x1

    move/from16 v0, v31

    move/from16 v1, v44

    if-ne v0, v1, :cond_6f2

    if-eqz v29, :cond_6f2

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v44

    if-lez v44, :cond_6f2

    .line 16281
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, v40

    move/from16 v2, v45

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendOrderedBroadcastToPendingVerifier(Lcom/android/server/pm/PackageVerificationState;Z)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2000(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;Z)Z

    .line 16287
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16326
    .end local v11    # "installFromSBM":Z
    .end local v15    # "isOpenThemePackage":Z
    .end local v16    # "isSPRInstallerPackages":Z
    .end local v19    # "needVerificationForPersona":Z
    .end local v28    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v29    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v30    # "requiresVerificationForPersona":Z
    .end local v36    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v37    # "userIdentifier":I
    .end local v38    # "verification":Landroid/content/Intent;
    .end local v39    # "verificationId":I
    .end local v40    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v42    # "verifierUser":Landroid/os/UserHandle;
    .end local v43    # "verifyInstallPackage":Z
    :cond_6f2
    :goto_6f2
    const/16 v44, 0x1

    move/from16 v0, v31

    move/from16 v1, v44

    if-ne v0, v1, :cond_80e

    .line 16328
    :try_start_6fa
    move-object/from16 v0, p0

    iget v0, v0, installFlags:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x20

    if-eqz v44, :cond_724

    .line 16329
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$5000(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    .line 16332
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5100()Landroid/content/IHarmonyEAS;

    move-result-object v44

    if-eqz v44, :cond_724

    .line 16333
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5100()Landroid/content/IHarmonyEAS;

    move-result-object v44

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    const/16 v47, -0x1

    invoke-interface/range {v44 .. v47}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V

    .line 16337
    :cond_724
    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    if-eqz v44, :cond_807

    .line 16338
    move-object/from16 v0, p0

    iget-object v0, v0, verificationParams:Landroid/content/pm/VerificationParams;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v14

    .line 16339
    .restart local v14    # "installerUid":I
    const/4 v13, 0x0

    .line 16340
    .restart local v13    # "installerPackages":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 16341
    if-eqz v13, :cond_807

    .line 16342
    move-object v8, v13

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_74a
    move/from16 v0, v17

    if-ge v10, v0, :cond_807

    aget-object v12, v8, v10

    .line 16343
    .restart local v12    # "installerPackage":Ljava/lang/String;
    const-string/jumbo v44, "packageinstaller"

    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v44

    if-eqz v44, :cond_783

    move-object/from16 v0, p0

    iget-object v0, v0, installerPackageName:Ljava/lang/String;

    move-object/from16 v44, v0

    if-nez v44, :cond_783

    .line 16345
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$5000(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    .line 16346
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5100()Landroid/content/IHarmonyEAS;

    move-result-object v44

    if-eqz v44, :cond_783

    .line 16347
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5100()Landroid/content/IHarmonyEAS;

    move-result-object v44

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    const/16 v47, -0x1

    invoke-interface/range {v44 .. v47}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V
    :try_end_783
    .catch Landroid/os/RemoteException; {:try_start_6fa .. :try_end_783} :catch_803

    .line 16342
    :cond_783
    add-int/lit8 v10, v10, 0x1

    goto :goto_74a

    .line 16159
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "installerPackage":Ljava/lang/String;
    .end local v13    # "installerPackages":[Ljava/lang/String;
    .end local v14    # "installerUid":I
    .end local v17    # "len$":I
    .restart local v11    # "installFromSBM":Z
    .restart local v15    # "isOpenThemePackage":Z
    .restart local v16    # "isSPRInstallerPackages":Z
    .restart local v19    # "needVerificationForPersona":Z
    .restart local v29    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .restart local v30    # "requiresVerificationForPersona":Z
    .restart local v37    # "userIdentifier":I
    :cond_786
    const/16 v43, 0x0

    goto/16 :goto_486

    .line 16180
    .restart local v38    # "verification":Landroid/content/Intent;
    .restart local v43    # "verifyInstallPackage":Z
    :cond_78a
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    const-string v45, "application/vnd.android.package-archive"

    const/16 v46, 0x200

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    move-object/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v28

    .restart local v28    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto/16 :goto_4ed

    .line 16212
    .restart local v39    # "verificationId":I
    :cond_7a4
    const-string v44, "KNOXVerificationInstallerUid"

    const/16 v45, -0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_5ae

    .line 16264
    .restart local v6    # "N":I
    .restart local v36    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v40    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .restart local v42    # "verifierUser":Landroid/os/UserHandle;
    :cond_7b3
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7b4
    if-ge v9, v6, :cond_6c9

    .line 16265
    move-object/from16 v0, v36

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/ComponentName;

    .line 16267
    .local v41, "verifierComponent":Landroid/content/ComponentName;
    new-instance v35, Landroid/content/Intent;

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 16268
    .local v35, "sufficientIntent":Landroid/content/Intent;
    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16269
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v35

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 16264
    add-int/lit8 v9, v9, 0x1

    goto :goto_7b4

    .line 16306
    .end local v6    # "N":I
    .end local v9    # "i":I
    .end local v28    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v35    # "sufficientIntent":Landroid/content/Intent;
    .end local v36    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v38    # "verification":Landroid/content/Intent;
    .end local v39    # "verificationId":I
    .end local v40    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v41    # "verifierComponent":Landroid/content/ComponentName;
    .end local v42    # "verifierUser":Landroid/os/UserHandle;
    :cond_7e6
    const-string v44, "PackageManager"

    const-string v45, "Themes INSTALL_SKIP_VERIFICATION"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16320
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v44

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v7, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v31

    goto/16 :goto_6f2

    .line 16354
    .end local v11    # "installFromSBM":Z
    .end local v15    # "isOpenThemePackage":Z
    .end local v16    # "isSPRInstallerPackages":Z
    .end local v19    # "needVerificationForPersona":Z
    .end local v29    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v30    # "requiresVerificationForPersona":Z
    .end local v37    # "userIdentifier":I
    .end local v43    # "verifyInstallPackage":Z
    :catch_803
    move-exception v27

    .line 16355
    .local v27, "rE":Landroid/os/RemoteException;
    invoke-virtual/range {v27 .. v27}, Landroid/os/RemoteException;->printStackTrace()V

    .line 16362
    .end local v27    # "rE":Landroid/os/RemoteException;
    :cond_807
    :goto_807
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, mRet:I

    .line 16363
    return-void

    .line 16358
    :cond_80e
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, installerPackageName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {p0 .. p0}, getUser()Landroid/os/UserHandle;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v46

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    move-object/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PmHook;->installFailLog(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;Ljava/lang/String;I)V

    goto :goto_807
.end method

.method public isForwardLocked()Z
    .registers 2

    .prologue
    .line 16382
    iget v0, p0, installFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 15894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
