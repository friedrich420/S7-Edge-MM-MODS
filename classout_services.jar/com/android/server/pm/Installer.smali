.class public final Lcom/android/server/pm/Installer;
.super Lcom/android/server/SystemService;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Installer$AsyncDexopt;,
        Lcom/android/server/pm/Installer$AsyncCmd;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field private final ASYNC_CMD_MAX:I

.field asyncCmds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/Installer$AsyncCmd;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstaller:Lcom/android/internal/os/InstallerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, ASYNC_CMD_MAX:I

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, asyncCmds:Ljava/util/HashMap;

    .line 45
    new-instance v0, Lcom/android/internal/os/InstallerConnection;

    invoke-direct {v0}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    iput-object v0, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    .line 46
    return-void
.end method

.method private static escapeNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 56
    const-string p0, "!"

    .line 61
    :cond_9
    return-object p0

    .line 58
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_19

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_9

    .line 59
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isValidInstructionSet(Ljava/lang/String;)Z
    .registers 7
    .param p0, "instructionSet"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 604
    if-nez p0, :cond_4

    .line 614
    :cond_3
    :goto_3
    return v4

    .line 608
    :cond_4
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 609
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 610
    const/4 v4, 0x1

    goto :goto_3

    .line 608
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method


# virtual methods
.method public asyncDexopt(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZZ)I
    .registers 33
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "isPublic"    # Z
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "instructionSet"    # Ljava/lang/String;
    .param p7, "dexoptNeeded"    # I
    .param p8, "vmSafeMode"    # Z
    .param p9, "debuggable"    # Z
    .param p10, "outputPath"    # Ljava/lang/String;
    .param p11, "bootComplete"    # Z
    .param p12, "interpret_only"    # Z

    .prologue
    .line 149
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, asyncCmds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, ASYNC_CMD_MAX:I

    if-lt v4, v5, :cond_25

    invoke-virtual/range {p0 .. p0}, processAsyncResult()Z

    move-result v4

    if-nez v4, :cond_25

    .line 151
    const-wide/16 v4, 0x64

    :try_start_16
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_0

    .line 152
    :catch_1a
    move-exception v18

    .line 153
    .local v18, "e":Ljava/lang/InterruptedException;
    const-string v4, "Installer"

    const-string v5, "InterruptedException"

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 156
    .end local v18    # "e":Ljava/lang/InterruptedException;
    :cond_25
    new-instance v17, Lcom/android/server/pm/Installer$AsyncDexopt;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/Installer$AsyncDexopt;-><init>(Lcom/android/server/pm/Installer;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    .line 157
    .local v17, "cmd":Lcom/android/server/pm/Installer$AsyncDexopt;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v16

    .line 158
    .local v16, "hashCode":I
    move-object/from16 v0, p0

    iget-object v4, v0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-virtual/range {v4 .. v16}, Lcom/android/internal/os/InstallerConnection;->asyncDexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZZI)I

    move-result v19

    .line 162
    .local v19, "ret":I
    if-ltz v19, :cond_67

    .line 163
    move-object/from16 v0, p0

    iget-object v4, v0, asyncCmds:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :goto_66
    return v19

    .line 165
    :cond_67
    const-string v4, "Installer"

    const-string/jumbo v5, "failed to invoke asyncdexopt"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66
.end method

.method public clearUserData(Ljava/lang/String;I)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, clearUserData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public clearUserData(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rmuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    invoke-static {p1}, escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public copyCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 10
    .param p1, "fromUuid"    # Ljava/lang/String;
    .param p2, "toUuid"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "dataAppName"    # Ljava/lang/String;
    .param p5, "appId"    # I
    .param p6, "seinfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cpcompleteapp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    invoke-static {p1}, escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    invoke-static {p2}, escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "oatDir"    # Ljava/lang/String;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "createoatdir"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public createUserConfig(I)I
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mkuserconfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public createUserData(Ljava/lang/String;IILjava/lang/String;)I
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "seinfo"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 342
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, createUserData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public createUserData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .registers 9
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "userId"    # I
    .param p5, "seinfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mkuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    invoke-static {p1}, escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    if-eqz p5, :cond_39

    .end local p5    # "seinfo":Ljava/lang/String;
    :goto_2b
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 356
    .restart local p5    # "seinfo":Ljava/lang/String;
    :cond_39
    const-string p5, "!"

    goto :goto_2b
.end method

.method public deleteCacheFiles(Ljava/lang/String;I)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, deleteCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public deleteCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rmcache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {p1}, escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public deleteCodeCacheFiles(Ljava/lang/String;I)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, deleteCodeCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public deleteCodeCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rmcodecache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {p1}, escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;I)I
    .registers 13
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I

    .prologue
    .line 87
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, dexopt(Ljava/lang/String;IZLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;IZ)I
    .registers 14
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I
    .param p6, "bootComplete"    # Z

    .prologue
    .line 92
    invoke-static {p4}, isValidInstructionSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 93
    const-string v0, "Installer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid instruction set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, -0x1

    .line 97
    :goto_1f
    return v0

    :cond_20
    iget-object v0, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;IZ)I

    move-result v0

    goto :goto_1f
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Z)I
    .registers 23
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;
    .param p6, "dexoptNeeded"    # I
    .param p7, "vmSafeMode"    # Z
    .param p8, "debuggable"    # Z
    .param p9, "outputPath"    # Ljava/lang/String;
    .param p10, "interpret_only"    # Z

    .prologue
    .line 196
    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZZ)I
    .registers 25
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;
    .param p6, "dexoptNeeded"    # I
    .param p7, "vmSafeMode"    # Z
    .param p8, "debuggable"    # Z
    .param p9, "outputPath"    # Ljava/lang/String;
    .param p10, "bootComplete"    # Z
    .param p11, "interpret_only"    # Z

    .prologue
    .line 204
    invoke-static/range {p5 .. p5}, isValidInstructionSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 205
    const-string v1, "Installer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid instruction set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v1, -0x1

    .line 208
    :goto_21
    return v1

    :cond_22
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZZ)I

    move-result v1

    goto :goto_21
.end method

.method public executeKnoxCommand(Ljava/lang/String;)I
    .registers 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 596
    iget-object v0, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public fixUid(Ljava/lang/String;II)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, fixUid(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public fixUid(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I

    .prologue
    const/16 v2, 0x20

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "fixuid"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {p1}, escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public freeCache(J)I
    .registers 4
    .param p1, "freeStorageSize"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, freeCache(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public freeCache(Ljava/lang/String;J)I
    .registers 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J

    .prologue
    const/16 v2, 0x20

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "freecache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 446
    invoke-static {p1}, escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getRemainAsyncCmdsSize()I
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, asyncCmds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getSizeInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageStats;)I
    .registers 19
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "persona"    # I
    .param p3, "apkPath"    # Ljava/lang/String;
    .param p4, "libDirPath"    # Ljava/lang/String;
    .param p5, "fwdLockApkPath"    # Ljava/lang/String;
    .param p6, "asecPath"    # Ljava/lang/String;
    .param p7, "instructionSets"    # [Ljava/lang/String;
    .param p8, "pStats"    # Landroid/content/pm/PackageStats;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, getSizeInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageStats;)I

    move-result v0

    return v0
.end method

.method public getSizeInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageStats;)I
    .registers 23
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "persona"    # I
    .param p4, "apkPath"    # Ljava/lang/String;
    .param p5, "libDirPath"    # Ljava/lang/String;
    .param p6, "fwdLockApkPath"    # Ljava/lang/String;
    .param p7, "asecPath"    # Ljava/lang/String;
    .param p8, "instructionSets"    # [Ljava/lang/String;
    .param p9, "pStats"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 462
    move-object/from16 v2, p8

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_4
    if-ge v5, v7, :cond_2b

    aget-object v6, v2, v5

    .line 463
    .local v6, "instructionSet":Ljava/lang/String;
    invoke-static {v6}, isValidInstructionSet(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_28

    .line 464
    const-string v10, "Installer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid instruction set: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v10, -0x1

    .line 504
    .end local v6    # "instructionSet":Ljava/lang/String;
    .end local p5    # "libDirPath":Ljava/lang/String;
    .end local p6    # "fwdLockApkPath":Ljava/lang/String;
    .end local p7    # "asecPath":Ljava/lang/String;
    :goto_27
    return v10

    .line 462
    .restart local v6    # "instructionSet":Ljava/lang/String;
    .restart local p5    # "libDirPath":Ljava/lang/String;
    .restart local p6    # "fwdLockApkPath":Ljava/lang/String;
    .restart local p7    # "asecPath":Ljava/lang/String;
    :cond_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 469
    .end local v6    # "instructionSet":Ljava/lang/String;
    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getsize"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    invoke-static {p1}, escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 477
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    if-eqz p5, :cond_a2

    .end local p5    # "libDirPath":Ljava/lang/String;
    :goto_62
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    if-eqz p6, :cond_a5

    .end local p6    # "fwdLockApkPath":Ljava/lang/String;
    :goto_6e
    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    if-eqz p7, :cond_a8

    .end local p7    # "asecPath":Ljava/lang/String;
    :goto_7a
    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    const/4 v10, 0x0

    aget-object v10, p8, v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-object v10, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/os/InstallerConnection;->transact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 492
    .local v9, "s":Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 494
    .local v8, "res":[Ljava/lang/String;
    if-eqz v8, :cond_a0

    array-length v10, v8

    const/4 v11, 0x5

    if-eq v10, v11, :cond_ab

    .line 495
    :cond_a0
    const/4 v10, -0x1

    goto :goto_27

    .line 481
    .end local v8    # "res":[Ljava/lang/String;
    .end local v9    # "s":Ljava/lang/String;
    .restart local p5    # "libDirPath":Ljava/lang/String;
    .restart local p6    # "fwdLockApkPath":Ljava/lang/String;
    .restart local p7    # "asecPath":Ljava/lang/String;
    :cond_a2
    const-string p5, "!"

    goto :goto_62

    .line 483
    .end local p5    # "libDirPath":Ljava/lang/String;
    :cond_a5
    const-string p6, "!"

    goto :goto_6e

    .line 485
    .end local p6    # "fwdLockApkPath":Ljava/lang/String;
    :cond_a8
    const-string p7, "!"

    goto :goto_7a

    .line 498
    .end local p7    # "asecPath":Ljava/lang/String;
    .restart local v8    # "res":[Ljava/lang/String;
    .restart local v9    # "s":Ljava/lang/String;
    :cond_ab
    const/4 v10, 0x1

    :try_start_ac
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, p9

    iput-wide v10, v0, Landroid/content/pm/PackageStats;->codeSize:J

    .line 499
    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, p9

    iput-wide v10, v0, Landroid/content/pm/PackageStats;->dataSize:J

    .line 500
    const/4 v10, 0x3

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, p9

    iput-wide v10, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 501
    const/4 v10, 0x4

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, p9

    iput-wide v10, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 502
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_dd
    .catch Ljava/lang/NumberFormatException; {:try_start_ac .. :try_end_dd} :catch_e0

    move-result v10

    goto/16 :goto_27

    .line 503
    :catch_e0
    move-exception v4

    .line 504
    .local v4, "e":Ljava/lang/NumberFormatException;
    const/4 v10, -0x1

    goto/16 :goto_27
.end method

.method public idmap(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p1, "targetApkPath"    # Ljava/lang/String;
    .param p2, "overlayApkPath"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    const/16 v2, 0x20

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "idmap"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public install(Ljava/lang/String;IILjava/lang/String;)I
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "seinfo"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, install(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public install(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .registers 9
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I
    .param p5, "seinfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "install"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {p1}, escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    if-eqz p5, :cond_39

    .end local p5    # "seinfo":Ljava/lang/String;
    :goto_2b
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 81
    .restart local p5    # "seinfo":Ljava/lang/String;
    :cond_39
    const-string p5, "!"

    goto :goto_2b
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "fromBase"    # Ljava/lang/String;
    .param p3, "toBase"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "linkfile"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p1, "dataPath"    # Ljava/lang/String;
    .param p2, "nativeLibPath32"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "dataPath"    # Ljava/lang/String;
    .param p3, "nativeLibPath32"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    const/4 v1, -0x1

    const/16 v2, 0x20

    .line 526
    if-nez p2, :cond_e

    .line 527
    const-string v2, "Installer"

    const-string/jumbo v3, "linkNativeLibraryDirectory dataPath is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_d
    return v1

    .line 529
    :cond_e
    if-nez p3, :cond_19

    .line 530
    const-string v2, "Installer"

    const-string/jumbo v3, "linkNativeLibraryDirectory nativeLibPath is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 534
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "linklib"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    invoke-static {p1}, escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 544
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_d
.end method

.method public markBootComplete(Ljava/lang/String;)I
    .registers 6
    .param p1, "instructionSet"    # Ljava/lang/String;

    .prologue
    .line 427
    invoke-static {p1}, isValidInstructionSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 428
    const-string v1, "Installer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid instruction set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v1, -0x1

    .line 435
    :goto_1f
    return v1

    .line 432
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "markbootcomplete"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_1f
.end method

.method public moveFiles()I
    .registers 3

    .prologue
    .line 509
    iget-object v0, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "movefiles"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public movedex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "dstPath"    # Ljava/lang/String;
    .param p3, "instructionSet"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 226
    invoke-static {p3}, isValidInstructionSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 227
    const-string v1, "Installer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid instruction set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v1, -0x1

    .line 238
    :goto_21
    return v1

    .line 231
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "movedex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_21
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 50
    const-string v0, "Installer"

    const-string v1, "Waiting for installd to be ready."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->waitForConnection()V

    .line 52
    return-void
.end method

.method public processAsyncResult()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 175
    iget-object v5, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v5}, Lcom/android/internal/os/InstallerConnection;->processAsyncResult()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "r":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "result":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-lt v5, v6, :cond_42

    .line 178
    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 179
    .local v1, "hashCode":I
    iget-object v5, p0, asyncCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Installer$AsyncCmd;

    .line 180
    .local v0, "cmd":Lcom/android/server/pm/Installer$AsyncCmd;
    if-eqz v0, :cond_29

    .line 181
    invoke-interface {v0, v3}, Lcom/android/server/pm/Installer$AsyncCmd;->processResult([Ljava/lang/String;)V

    .line 187
    .end local v0    # "cmd":Lcom/android/server/pm/Installer$AsyncCmd;
    .end local v1    # "hashCode":I
    :goto_28
    return v4

    .line 183
    .restart local v0    # "cmd":Lcom/android/server/pm/Installer$AsyncCmd;
    .restart local v1    # "hashCode":I
    :cond_29
    const-string v5, "Installer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find any asyncCmd Object !! : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 187
    .end local v0    # "cmd":Lcom/android/server/pm/Installer$AsyncCmd;
    .end local v1    # "hashCode":I
    :cond_42
    const/4 v4, 0x0

    goto :goto_28
.end method

.method public reloadSeappContexts()Z
    .registers 4

    .prologue
    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reloadseappcontexts"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public remove(Ljava/lang/String;I)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, remove(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {p1}, escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public removeRL(Ljava/lang/String;I)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rmrcl"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public removeUserDataDirs(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, removeUserDataDirs(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeUserDataDirs(Ljava/lang/String;I)I
    .registers 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rmuser"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    invoke-static {p1}, escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rename"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public restoreconData(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "seinfo"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, restoreconData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public restoreconData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    const/16 v2, 0x20

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "restorecondata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 555
    invoke-static {p1}, escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 559
    if-eqz p3, :cond_36

    .end local p3    # "seinfo":Ljava/lang/String;
    :goto_1f
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_39

    const/4 v1, 0x1

    :goto_35
    return v1

    .line 559
    .restart local p3    # "seinfo":Ljava/lang/String;
    :cond_36
    const-string p3, "!"

    goto :goto_1f

    .line 562
    .end local p3    # "seinfo":Ljava/lang/String;
    :cond_39
    const/4 v1, 0x0

    goto :goto_35
.end method

.method public rmPackageDir(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageDir"    # Ljava/lang/String;

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rmpackagedir"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public rmdex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 242
    invoke-static {p2}, isValidInstructionSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 243
    const-string v1, "Installer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid instruction set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v1, -0x1

    .line 252
    :goto_21
    return v1

    .line 247
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rmdex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v1, p0, mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_21
.end method
