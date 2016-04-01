.class Lcom/android/server/pm/PackageManagerService$15;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    .registers 4

    .prologue
    .line 15474
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iput p3, p0, val$currentStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 15476
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15477
    const/4 v13, 0x0

    .line 15478
    .local v13, "ob":Landroid/content/pm/IPackageInstallObserver2;
    move-object/from16 v0, p0

    iget-object v1, v0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v1, :cond_18

    .line 15479
    move-object/from16 v0, p0

    iget-object v1, v0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 15481
    :cond_18
    const-string v2, "PackageManager"

    const-string v3, "MSG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROCESS_PENDING_INSTALL: observer{"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v13, :cond_1bf

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_31
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "}\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "currentStatus{"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v6, v0, val$currentStatus:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "}"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15486
    new-instance v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v15, v1}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 15487
    .local v15, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, p0

    iget v1, v0, val$currentStatus:I

    iput v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 15488
    const/4 v1, -0x1

    iput v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 15489
    const/4 v1, 0x0

    iput-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 15490
    new-instance v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 15491
    iget v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_ec

    .line 15492
    move-object/from16 v0, p0

    iget-object v1, v0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    .line 15493
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 15494
    :try_start_92
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    # invokes: Lcom/android/server/pm/PackageManagerService;->installPackageLI(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    invoke-static {v1, v3, v15}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 15495
    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_92 .. :try_end_9e} :catchall_1c4

    .line 15499
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_e1

    move-object/from16 v0, p0

    iget-object v1, v0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v1, v1, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_e1

    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v1

    if-nez v1, :cond_bc

    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$1200(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 15503
    :cond_bc
    const/4 v1, 0x1

    new-array v5, v1, [I

    const/4 v1, 0x0

    iget-object v2, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    aput v2, v5, v1

    .line 15504
    .local v5, "uidArray":[I
    new-instance v4, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15505
    .local v4, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15506
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$1300(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 15508
    .end local v4    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "uidArray":[I
    :cond_e1
    move-object/from16 v0, p0

    iget-object v1, v0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v3, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 15514
    :cond_ec
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v1, :cond_1c7

    const/16 v17, 0x1

    .line 15515
    .local v17, "update":Z
    :goto_f4
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_1cb

    const/4 v11, 0x0

    .line 15516
    .local v11, "flags":I
    :goto_f9
    if-nez v17, :cond_1d3

    const v1, 0x8000

    and-int/2addr v1, v11

    if-eqz v1, :cond_1d3

    const/4 v9, 0x1

    .line 15520
    .local v9, "doRestore":Z
    :goto_102
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_121

    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v1, :cond_121

    .line 15521
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 15522
    .local v14, "pList":Ljava/util/List;
    const-string v1, "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_120

    const-string v1, "com.samsung.android.permission.SAMSUNG_OVERLAY_COMPONENT"

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 15524
    :cond_120
    const/4 v9, 0x0

    .line 15532
    .end local v14    # "pList":Ljava/util/List;
    :cond_121
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget v1, v1, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v1, :cond_130

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 15533
    :cond_130
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget v0, v1, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    move/from16 v16, v0

    add-int/lit8 v2, v16, 0x1

    iput v2, v1, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 15535
    .local v16, "token":I
    new-instance v8, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v8, v1, v2, v15}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 15536
    .local v8, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v1, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15539
    iget v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19a

    if-eqz v9, :cond_19a

    .line 15544
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v7

    .line 15546
    .local v7, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v7, :cond_1e2

    .line 15547
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to BM for possible restore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15550
    const/4 v1, 0x0

    :try_start_189
    invoke-interface {v7, v1}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v1

    if-eqz v1, :cond_1d6

    .line 15551
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v0, v16

    invoke-interface {v7, v1, v0}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_19a
    .catch Landroid/os/RemoteException; {:try_start_189 .. :try_end_19a} :catch_1eb
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_19a} :catch_1d8

    .line 15567
    .end local v7    # "bm":Landroid/app/backup/IBackupManager;
    :cond_19a
    :goto_19a
    if-nez v9, :cond_1b4

    .line 15571
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    .line 15572
    .local v12, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v12}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 15575
    .end local v12    # "msg":Landroid/os/Message;
    :cond_1b4
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 15576
    return-void

    .line 15481
    .end local v8    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v9    # "doRestore":Z
    .end local v11    # "flags":I
    .end local v15    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v16    # "token":I
    .end local v17    # "update":Z
    :cond_1bf
    const-string/jumbo v1, "null"

    goto/16 :goto_31

    .line 15495
    .restart local v15    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :catchall_1c4
    move-exception v1

    :try_start_1c5
    monitor-exit v2
    :try_end_1c6
    .catchall {:try_start_1c5 .. :try_end_1c6} :catchall_1c4

    throw v1

    .line 15514
    :cond_1c7
    const/16 v17, 0x0

    goto/16 :goto_f4

    .line 15515
    .restart local v17    # "update":Z
    :cond_1cb
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    goto/16 :goto_f9

    .line 15516
    .restart local v11    # "flags":I
    :cond_1d3
    const/4 v9, 0x0

    goto/16 :goto_102

    .line 15553
    .restart local v7    # "bm":Landroid/app/backup/IBackupManager;
    .restart local v8    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .restart local v9    # "doRestore":Z
    .restart local v16    # "token":I
    :cond_1d6
    const/4 v9, 0x0

    goto :goto_19a

    .line 15557
    :catch_1d8
    move-exception v10

    .line 15558
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "PackageManager"

    const-string v2, "Exception trying to enqueue restore"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15559
    const/4 v9, 0x0

    .line 15560
    goto :goto_19a

    .line 15562
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1e2
    const-string v1, "PackageManager"

    const-string v2, "Backup Manager not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15563
    const/4 v9, 0x0

    goto :goto_19a

    .line 15555
    :catch_1eb
    move-exception v1

    goto :goto_19a
.end method
