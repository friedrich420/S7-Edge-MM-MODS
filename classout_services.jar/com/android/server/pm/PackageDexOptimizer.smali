.class final Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# static fields
.field static final DEX_OPT_DEFERRED:I = 0x2

.field static final DEX_OPT_FAILED:I = -0x1

.field static final DEX_OPT_PERFORMED:I = 0x1

.field static final DEX_OPT_SKIPPED:I = 0x0

.field static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field private static final TAG:Ljava/lang/String; = "PackageManager.DexOptimizer"


# instance fields
.field private mDeferredDexOpt:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private volatile mSystemReady:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 5
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 61
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 63
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "*dexopt*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 64
    return-void
.end method

.method private createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->canHaveOatDir()Z

    move-result v3

    if-nez v3, :cond_8

    .line 264
    :cond_7
    :goto_7
    return-object v2

    .line 257
    :cond_8
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 259
    invoke-static {v0}, getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 260
    .local v1, "oatDir":Ljava/io/File;
    iget-object v2, p0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .registers 3
    .param p0, "codePath"    # Ljava/io/File;

    .prologue
    .line 268
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZZLandroid/util/ArraySet;)I
    .registers 35
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "targetInstructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .param p5, "bootComplete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[",
            "Ljava/lang/String;",
            "ZZZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 100
    .local p6, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p2, :cond_49

    move-object/from16 v4, p2

    .line 103
    .local v4, "instructionSets":[Ljava/lang/String;
    :goto_4
    if-eqz p6, :cond_3d

    .line 104
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 105
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_26

    .line 106
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, performDexOptLibsLI(Ljava/util/ArrayList;[Ljava/lang/String;ZZZLandroid/util/ArraySet;)V

    .line 109
    :cond_26
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_3d

    .line 110
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, performDexOptLibsLI(Ljava/util/ArrayList;[Ljava/lang/String;ZZZLandroid/util/ArraySet;)V

    .line 115
    :cond_3d
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_52

    .line 116
    const/4 v2, 0x0

    .line 237
    :goto_48
    return v2

    .line 100
    .end local v4    # "instructionSets":[Ljava/lang/String;
    :cond_49
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 119
    .restart local v4    # "instructionSets":[Ljava/lang/String;
    :cond_52
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_96

    const/4 v13, 0x1

    .line 120
    .local v13, "vmSafeMode":Z
    :goto_5d
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_98

    const/4 v14, 0x1

    .line 122
    .local v14, "debuggable":Z
    :goto_68
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v25

    .line 123
    .local v25, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .line 128
    .local v26, "performedDexOpt":Z
    invoke-static {v4}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 129
    .local v19, "dexCodeInstructionSets":[Ljava/lang/String;
    move-object/from16 v18, v19

    .local v18, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    move/from16 v22, v21

    .end local v21    # "i$":I
    .local v22, "i$":I
    :goto_7d
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_278

    aget-object v11, v18, v22

    .line 130
    .local v11, "dexCodeInstructionSet":Ljava/lang/String;
    if-nez p3, :cond_9a

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mDexOptPerformed:Landroid/util/ArraySet;

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 129
    .end local v22    # "i$":I
    :goto_91
    add-int/lit8 v21, v22, 0x1

    .restart local v21    # "i$":I
    move/from16 v22, v21

    .end local v21    # "i$":I
    .restart local v22    # "i$":I
    goto :goto_7d

    .line 119
    .end local v11    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v13    # "vmSafeMode":Z
    .end local v14    # "debuggable":Z
    .end local v18    # "arr$":[Ljava/lang/String;
    .end local v19    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v22    # "i$":I
    .end local v24    # "len$":I
    .end local v25    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "performedDexOpt":Z
    :cond_96
    const/4 v13, 0x0

    goto :goto_5d

    .line 120
    .restart local v13    # "vmSafeMode":Z
    :cond_98
    const/4 v14, 0x0

    goto :goto_68

    .line 134
    .restart local v11    # "dexCodeInstructionSet":Ljava/lang/String;
    .restart local v14    # "debuggable":Z
    .restart local v18    # "arr$":[Ljava/lang/String;
    .restart local v19    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v22    # "i$":I
    .restart local v24    # "len$":I
    .restart local v25    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "performedDexOpt":Z
    :cond_9a
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .end local v22    # "i$":I
    .local v21, "i$":Ljava/util/Iterator;
    :cond_9e
    :goto_9e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 136
    .local v7, "path":Ljava/lang/String;
    if-eqz p3, :cond_1a9

    .line 137
    const/4 v12, 0x1

    .line 148
    .local v12, "dexoptNeeded":I
    :goto_ad
    if-nez p3, :cond_bb

    if-eqz p4, :cond_bb

    if-eqz v12, :cond_bb

    .line 150
    const/4 v2, 0x4

    if-ne v12, v2, :cond_1d3

    .line 151
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->interpret_only:Z

    .line 164
    :cond_bb
    if-nez p4, :cond_9e

    if-eqz v12, :cond_9e

    .line 167
    const/4 v15, 0x0

    .line 168
    .local v15, "oatDir":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v12, v2, :cond_1f9

    .line 170
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->interpret_only:Z

    if-eqz v2, :cond_e4

    .line 171
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dexopt with interpret-only for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 175
    :cond_e4
    const-string/jumbo v20, "dex2oat"

    .line 177
    .local v20, "dexoptType":Ljava/lang/String;
    :try_start_e7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ee} :catch_1d9

    move-result-object v15

    .line 198
    :goto_ef
    const-string v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running dexopt ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") on: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " pkg="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " isa="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " vmSafeMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " debuggable="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " oatDir = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " bootComplete="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v8

    .line 205
    .local v8, "sharedGid":I
    move-object/from16 v0, p0

    iget-object v2, v0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageManagerService;->mOnBootDexOpt:Z

    if-eqz v2, :cond_24e

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v2

    if-nez v2, :cond_24b

    const/4 v9, 0x1

    :goto_176
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->interpret_only:Z

    move/from16 v17, v0

    move-object/from16 v6, p1

    move/from16 v16, p5

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/pm/Installer;->asyncDexopt(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZZ)I

    move-result v27

    .line 209
    .local v27, "ret":I
    const-string v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "do mInstaller.asyncDexopt : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_1a3
    if-nez v27, :cond_9e

    .line 220
    const/16 v26, 0x1

    goto/16 :goto_9e

    .line 140
    .end local v8    # "sharedGid":I
    .end local v12    # "dexoptNeeded":I
    .end local v15    # "oatDir":Ljava/lang/String;
    .end local v20    # "dexoptType":Ljava/lang/String;
    .end local v27    # "ret":I
    :cond_1a9
    :try_start_1a9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p4

    invoke-static {v7, v2, v11, v0}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1b2} :catch_1b5

    move-result v12

    .restart local v12    # "dexoptNeeded":I
    goto/16 :goto_ad

    .line 142
    .end local v12    # "dexoptNeeded":I
    :catch_1b5
    move-exception v23

    .line 143
    .local v23, "ioe":Ljava/io/IOException;
    const-string v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException reading apk: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    const/4 v2, -0x1

    goto/16 :goto_48

    .line 158
    .end local v23    # "ioe":Ljava/io/IOException;
    .restart local v12    # "dexoptNeeded":I
    :cond_1d3
    invoke-virtual/range {p0 .. p1}, addPackageForDeferredDexopt(Landroid/content/pm/PackageParser$Package;)V

    .line 159
    const/4 v2, 0x2

    goto/16 :goto_48

    .line 178
    .restart local v15    # "oatDir":Ljava/lang/String;
    .restart local v20    # "dexoptType":Ljava/lang/String;
    :catch_1d9
    move-exception v23

    .line 179
    .restart local v23    # "ioe":Ljava/io/IOException;
    const-string v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create oatDir for package: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v2, -0x1

    goto/16 :goto_48

    .line 182
    .end local v20    # "dexoptType":Ljava/lang/String;
    .end local v23    # "ioe":Ljava/io/IOException;
    :cond_1f9
    const/4 v2, 0x2

    if-ne v12, v2, :cond_201

    .line 183
    const-string/jumbo v20, "patchoat"

    .restart local v20    # "dexoptType":Ljava/lang/String;
    goto/16 :goto_ef

    .line 184
    .end local v20    # "dexoptType":Ljava/lang/String;
    :cond_201
    const/4 v2, 0x3

    if-ne v12, v2, :cond_209

    .line 185
    const-string/jumbo v20, "self patchoat"

    .restart local v20    # "dexoptType":Ljava/lang/String;
    goto/16 :goto_ef

    .line 187
    .end local v20    # "dexoptType":Ljava/lang/String;
    :cond_209
    const/4 v2, 0x4

    if-ne v12, v2, :cond_232

    .line 188
    const-string/jumbo v20, "switchoat to dex2oat"

    .line 189
    .restart local v20    # "dexoptType":Ljava/lang/String;
    const/4 v12, 0x1

    .line 190
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch small oat to oat for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 191
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->interpret_only:Z

    goto/16 :goto_ef

    .line 195
    .end local v20    # "dexoptType":Ljava/lang/String;
    :cond_232
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid dexopt needed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    .restart local v8    # "sharedGid":I
    .restart local v20    # "dexoptType":Ljava/lang/String;
    :cond_24b
    const/4 v9, 0x0

    goto/16 :goto_176

    .line 211
    :cond_24e
    move-object/from16 v0, p0

    iget-object v2, v0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v2

    if-nez v2, :cond_26d

    const/4 v9, 0x1

    :goto_25b
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->interpret_only:Z

    move/from16 v17, v0

    move/from16 v16, p5

    invoke-virtual/range {v6 .. v17}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZZ)I

    move-result v27

    .restart local v27    # "ret":I
    goto/16 :goto_1a3

    .end local v27    # "ret":I
    :cond_26d
    const/4 v9, 0x0

    goto :goto_25b

    .line 230
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "sharedGid":I
    .end local v12    # "dexoptNeeded":I
    .end local v15    # "oatDir":Ljava/lang/String;
    .end local v20    # "dexoptType":Ljava/lang/String;
    :cond_26f
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mDexOptPerformed:Landroid/util/ArraySet;

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_91

    .line 237
    .end local v11    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v21    # "i$":Ljava/util/Iterator;
    .restart local v22    # "i$":I
    :cond_278
    if-eqz v26, :cond_27d

    const/4 v2, 0x1

    goto/16 :goto_48

    :cond_27d
    const/4 v2, 0x0

    goto/16 :goto_48
.end method

.method private performDexOptLibsLI(Ljava/util/ArrayList;[Ljava/lang/String;ZZZLandroid/util/ArraySet;)V
    .registers 16
    .param p2, "instructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .param p5, "bootComplete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "ZZZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "libs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 274
    .local v8, "libName":Ljava/lang/String;
    iget-object v0, p0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageManagerService;->findSharedNonSystemLibrary(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 276
    .local v1, "libPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_4

    invoke-virtual {p6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 277
    invoke-direct/range {v0 .. v6}, performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZZLandroid/util/ArraySet;)I

    goto :goto_4

    .line 280
    .end local v1    # "libPkg":Landroid/content/pm/PackageParser$Package;
    .end local v8    # "libName":Ljava/lang/String;
    :cond_28
    return-void
.end method


# virtual methods
.method public addPackageForDeferredDexopt(Landroid/content/pm/PackageParser$Package;)V
    .registers 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 293
    iget-object v0, p0, mDeferredDexOpt:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 294
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mDeferredDexOpt:Landroid/util/ArraySet;

    .line 296
    :cond_b
    iget-object v0, p0, mDeferredDexOpt:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method public clearDeferredDexOptPackages()Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, mDeferredDexOpt:Landroid/util/ArraySet;

    .line 288
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v1, 0x0

    iput-object v1, p0, mDeferredDexOpt:Landroid/util/ArraySet;

    .line 289
    return-object v0
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZZZ)I
    .registers 16
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "instructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .param p5, "inclDependencies"    # Z
    .param p6, "bootComplete"    # Z

    .prologue
    .line 76
    if-eqz p5, :cond_43

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    .line 77
    :cond_a
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 78
    .local v6, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 82
    :goto_14
    iget-object v0, p0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v8

    .line 83
    :try_start_19
    iget-boolean v7, p0, mSystemReady:Z

    .line 84
    .local v7, "useLock":Z
    if-eqz v7, :cond_30

    .line 85
    iget-object v0, p0, mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 86
    iget-object v0, p0, mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_4e

    :cond_30
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    .line 89
    :try_start_36
    invoke-direct/range {v0 .. v6}, performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZZLandroid/util/ArraySet;)I
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_45

    move-result v0

    .line 91
    if-eqz v7, :cond_41

    .line 92
    :try_start_3c
    iget-object v1, p0, mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_41
    monitor-exit v8

    return v0

    .line 80
    .end local v6    # "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "useLock":Z
    :cond_43
    const/4 v6, 0x0

    .restart local v6    # "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_14

    .line 91
    .restart local v7    # "useLock":Z
    :catchall_45
    move-exception v0

    if-eqz v7, :cond_4d

    .line 92
    iget-object v1, p0, mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4d
    throw v0

    .line 95
    .end local v7    # "useLock":Z
    :catchall_4e
    move-exception v0

    monitor-exit v8
    :try_end_50
    .catchall {:try_start_3c .. :try_end_50} :catchall_4e

    throw v0
.end method

.method systemReady()V
    .registers 2

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, mSystemReady:Z

    .line 301
    return-void
.end method
