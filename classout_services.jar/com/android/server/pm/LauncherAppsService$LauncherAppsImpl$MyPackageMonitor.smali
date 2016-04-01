.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .registers 2

    .prologue
    .line 347
    iput-object p1, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .param p2, "x1"    # Lcom/android/server/pm/LauncherAppsService$1;

    .prologue
    .line 347
    invoke-direct {p0, p1}, <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    return-void
.end method

.method private isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 12
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "listeningUser"    # Landroid/os/UserHandle;
    .param p3, "debugMsg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 353
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    if-ne v6, v7, :cond_d

    .line 386
    :goto_c
    return v4

    .line 359
    :cond_d
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPersona:Landroid/os/PersonaManager;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/os/PersonaManager;

    move-result-object v6

    if-eqz v6, :cond_27

    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPersona:Landroid/os/PersonaManager;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/os/PersonaManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_27

    move v4, v5

    .line 361
    goto :goto_c

    .line 365
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 367
    .local v0, "ident":J
    :try_start_2b
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 368
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 369
    .local v2, "listeningUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_5c

    if-eqz v2, :cond_5c

    iget v6, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5c

    iget v6, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v7, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v6, v7, :cond_5c

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_59
    .catchall {:try_start_2b .. :try_end_59} :catchall_65

    move-result v6

    if-nez v6, :cond_61

    .line 386
    :cond_5c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v5

    goto :goto_c

    :cond_61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    .end local v2    # "listeningUserInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_65
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 392
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 393
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 394
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v3, :cond_47

    .line 395
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    .line 396
    .local v1, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 397
    .local v2, "listeningUser":Landroid/os/UserHandle;
    const-string/jumbo v6, "onPackageAdded"

    invoke-direct {p0, v5, v2, v6}, isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 394
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 399
    :cond_3a
    :try_start_3a
    invoke-interface {v1, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_37

    .line 400
    :catch_3e
    move-exception v4

    .line 401
    .local v4, "re":Landroid/os/RemoteException;
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 404
    .end local v1    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v2    # "listeningUser":Landroid/os/UserHandle;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_47
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 406
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 407
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 430
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 431
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 432
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v3, :cond_47

    .line 433
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    .line 434
    .local v1, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 435
    .local v2, "listeningUser":Landroid/os/UserHandle;
    const-string/jumbo v6, "onPackageModified"

    invoke-direct {p0, v5, v2, v6}, isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 432
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 437
    :cond_3a
    :try_start_3a
    invoke-interface {v1, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_37

    .line 438
    :catch_3e
    move-exception v4

    .line 439
    .local v4, "re":Landroid/os/RemoteException;
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 442
    .end local v1    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v2    # "listeningUser":Landroid/os/UserHandle;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_47
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 444
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 411
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 412
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 413
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v3, :cond_47

    .line 414
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    .line 415
    .local v1, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 416
    .local v2, "listeningUser":Landroid/os/UserHandle;
    const-string/jumbo v6, "onPackageRemoved"

    invoke-direct {p0, v5, v2, v6}, isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 413
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 418
    :cond_3a
    :try_start_3a
    invoke-interface {v1, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_37

    .line 419
    :catch_3e
    move-exception v4

    .line 420
    .local v4, "re":Landroid/os/RemoteException;
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 423
    .end local v1    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v2    # "listeningUser":Landroid/os/UserHandle;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_47
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 425
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 426
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 10
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 449
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 450
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 451
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v3, :cond_4b

    .line 452
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    .line 453
    .local v1, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 454
    .local v2, "listeningUser":Landroid/os/UserHandle;
    const-string/jumbo v6, "onPackagesAvailable"

    invoke-direct {p0, v5, v2, v6}, isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 451
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 456
    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, isReplacing()Z

    move-result v6

    invoke-interface {v1, v5, p1, v6}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_41} :catch_42

    goto :goto_37

    .line 457
    :catch_42
    move-exception v4

    .line 458
    .local v4, "re":Landroid/os/RemoteException;
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 461
    .end local v1    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v2    # "listeningUser":Landroid/os/UserHandle;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_4b
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 463
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 10
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 468
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 469
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 470
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v3, :cond_4b

    .line 471
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    .line 472
    .local v1, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 473
    .local v2, "listeningUser":Landroid/os/UserHandle;
    const-string/jumbo v6, "onPackagesUnavailable"

    invoke-direct {p0, v5, v2, v6}, isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 470
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 475
    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, isReplacing()Z

    move-result v6

    invoke-interface {v1, v5, p1, v6}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_41} :catch_42

    goto :goto_37

    .line 476
    :catch_42
    move-exception v4

    .line 477
    .local v4, "re":Landroid/os/RemoteException;
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 480
    .end local v1    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v2    # "listeningUser":Landroid/os/UserHandle;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_4b
    iget-object v6, p0, this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 482
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    .line 483
    return-void
.end method
