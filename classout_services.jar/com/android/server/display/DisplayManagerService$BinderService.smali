.class final Lcom/android/server/display/DisplayManagerService$BinderService;
.super Landroid/hardware/display/IDisplayManager$Stub;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .prologue
    .line 1841
    iput-object p1, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/hardware/display/IDisplayManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p2, "x1"    # Lcom/android/server/display/DisplayManagerService$1;

    .prologue
    .line 1841
    invoke-direct {p0, p1}, <init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method

.method private canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z
    .registers 6
    .param p1, "projection"    # Landroid/media/projection/IMediaProjection;

    .prologue
    const/4 v1, 0x1

    .line 2656
    if-eqz p1, :cond_12

    .line 2658
    :try_start_3
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectSecureVideo()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_a

    move-result v2

    if-eqz v2, :cond_12

    .line 2665
    :cond_9
    :goto_9
    return v1

    .line 2661
    :catch_a
    move-exception v0

    .line 2662
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "DisplayManagerService"

    const-string v3, "Unable to query projection service for permissions"

    invoke-static {v2, v3, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2665
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x0

    goto :goto_9
.end method

.method private canProjectVideo(Landroid/media/projection/IMediaProjection;)Z
    .registers 6
    .param p1, "projection"    # Landroid/media/projection/IMediaProjection;

    .prologue
    const/4 v1, 0x1

    .line 2638
    if-eqz p1, :cond_12

    .line 2640
    :try_start_3
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectVideo()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_a

    move-result v2

    if-eqz v2, :cond_12

    .line 2652
    :cond_9
    :goto_9
    return v1

    .line 2643
    :catch_a
    move-exception v0

    .line 2644
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "DisplayManagerService"

    const-string v3, "Unable to query projection service for permissions"

    invoke-static {v2, v3, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2647
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CAPTURE_VIDEO_OUTPUT"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9

    .line 2652
    invoke-direct {p0, p1}, canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v1

    goto :goto_9
.end method

.method private validatePackageName(ILjava/lang/String;)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2624
    if-eqz p2, :cond_24

    .line 2625
    iget-object v5, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 2626
    .local v4, "packageNames":[Ljava/lang/String;
    if-eqz v4, :cond_24

    .line 2627
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_15
    if-ge v1, v2, :cond_24

    aget-object v3, v0, v1

    .line 2628
    .local v3, "n":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2629
    const/4 v5, 0x1

    .line 2634
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "n":Ljava/lang/String;
    .end local v4    # "packageNames":[Ljava/lang/String;
    :goto_20
    return v5

    .line 2627
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "n":Ljava/lang/String;
    .restart local v4    # "packageNames":[Ljava/lang/String;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 2634
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "n":Ljava/lang/String;
    .end local v4    # "packageNames":[Ljava/lang/String;
    :cond_24
    const/4 v5, 0x0

    goto :goto_20
.end method


# virtual methods
.method public connectWifiDisplay(Ljava/lang/String;)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1933
    if-nez p1, :cond_a

    .line 1934
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1936
    :cond_a
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v4, "Permission required to connect to a wifi display"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1941
    .local v0, "token":J
    :try_start_1b
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->connectWifiDisplayInternal(Ljava/lang/String;)V
    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->access$2400(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_24

    .line 1943
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1945
    return-void

    .line 1943
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public connectWifiDisplayWithMode(ILjava/lang/String;)V
    .registers 8
    .param p1, "connectingMode"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 1983
    if-nez p2, :cond_a

    .line 1984
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1987
    :cond_a
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v4, "Permission required to connect to a wifi display"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1992
    .local v0, "token":J
    :try_start_1b
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_3b

    .line 1993
    :try_start_22
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1994
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(ILjava/lang/String;)V

    .line 1996
    :cond_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_38

    .line 1998
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2001
    return-void

    .line 1996
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 1998
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public connectWifiDisplayWithModeEx(ILjava/lang/String;Z)V
    .registers 9
    .param p1, "connectingMode"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isPendingRequest"    # Z

    .prologue
    .line 2006
    if-nez p2, :cond_a

    .line 2007
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2010
    :cond_a
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v4, "Permission required to connect to a wifi display"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2015
    .local v0, "token":J
    :try_start_1b
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_3b

    .line 2016
    :try_start_22
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2017
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(ILjava/lang/String;Z)V

    .line 2019
    :cond_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_38

    .line 2021
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2024
    return-void

    .line 2019
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 2021
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public connectWifiDisplayWithPin(Ljava/lang/String;)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2029
    if-nez p1, :cond_a

    .line 2030
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2033
    :cond_a
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v4, "Permission required to connect to a wifi display"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2038
    .local v0, "token":J
    :try_start_1b
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_3b

    .line 2039
    :try_start_22
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2040
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectWithPinLocked(Ljava/lang/String;)V

    .line 2042
    :cond_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_38

    .line 2044
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2047
    return-void

    .line 2042
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 2044
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    .registers 26
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"    # Landroid/media/projection/IMediaProjection;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "densityDpi"    # I
    .param p8, "surface"    # Landroid/view/Surface;
    .param p9, "flags"    # I

    .prologue
    .line 2493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2494
    .local v5, "callingUid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, validatePackageName(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 2495
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "packageName must match the calling uid"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2497
    :cond_17
    if-nez p1, :cond_21

    .line 2498
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "appToken must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2500
    :cond_21
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2501
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "name must be non-null and non-empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2503
    :cond_30
    if-lez p5, :cond_36

    if-lez p6, :cond_36

    if-gtz p7, :cond_3f

    .line 2504
    :cond_36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width, height, and densityDpi must be greater than 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2508
    :cond_3f
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_45

    .line 2509
    or-int/lit8 p9, p9, 0x10

    .line 2511
    :cond_45
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_4b

    .line 2512
    and-int/lit8 p9, p9, -0x11

    .line 2515
    :cond_4b
    if-eqz p2, :cond_77

    .line 2517
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$3300(Lcom/android/server/display/DisplayManagerService;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/media/projection/IMediaProjectionManager;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 2518
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Invalid media projection"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_65} :catch_65

    .line 2521
    :catch_65
    move-exception v13

    .line 2522
    .local v13, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "unable to validate media projection or flags"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2520
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_6f
    :try_start_6f
    move-object/from16 v0, p2

    move/from16 v1, p9

    invoke-interface {v0, v1}, Landroid/media/projection/IMediaProjection;->applyVirtualDisplayFlags(I)I
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_76} :catch_65

    move-result p9

    .line 2526
    :cond_77
    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_91

    and-int/lit8 v2, p9, 0x10

    if-eqz v2, :cond_91

    .line 2528
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, canProjectVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 2529
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires CAPTURE_VIDEO_OUTPUT or CAPTURE_SECURE_VIDEO_OUTPUT permission, or an appropriate MediaProjection token in order to create a screen sharing virtual display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2535
    :cond_91
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_a7

    .line 2536
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-nez v2, :cond_a7

    .line 2537
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires CAPTURE_SECURE_VIDEO_OUTPUT or an appropriate MediaProjection token to create a secure virtual display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2543
    :cond_a7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2545
    .local v14, "token":J
    :try_start_ab
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    # invokes: Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayInternal(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    invoke-static/range {v2 .. v12}, Lcom/android/server/display/DisplayManagerService;->access$3400(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    :try_end_c4
    .catchall {:try_start_ab .. :try_end_c4} :catchall_c9

    move-result v2

    .line 2548
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_c9
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public disableWifiDisplay()V
    .registers 3

    .prologue
    .line 2106
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2107
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2108
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisableLocked()V

    .line 2110
    :cond_18
    monitor-exit v1

    .line 2112
    return-void

    .line 2110
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public disconnectForMirroringSwitching()V
    .registers 3

    .prologue
    .line 2302
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2303
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2304
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectForMirroringSwitching()V

    .line 2306
    :cond_18
    monitor-exit v1

    .line 2308
    return-void

    .line 2306
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public disconnectWifiDisplay()V
    .registers 4

    .prologue
    .line 2397
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2399
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->disconnectWifiDisplayInternal()V
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2600(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 2401
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2403
    return-void

    .line 2401
    :catchall_d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2607
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_16

    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3f

    .line 2610
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump DisplayManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2621
    :goto_3e
    return-void

    .line 2615
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2617
    .local v0, "token":J
    :try_start_43
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    invoke-static {v2, p2}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_4c

    .line 2619
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3e

    :catchall_4c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public enableOverlayMagnifier(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 2674
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableOverlayMagnifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mMagnifierDisplayAdapter:Lcom/android/server/display/MagnifierDisplayAdapter;

    if-eqz v0, :cond_26

    .line 2676
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mMagnifierDisplayAdapter:Lcom/android/server/display/MagnifierDisplayAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/MagnifierDisplayAdapter;->enable(Z)V

    .line 2678
    :cond_26
    return-void
.end method

.method public enableWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 6
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "deviceType"    # I

    .prologue
    .line 2052
    if-nez p1, :cond_b

    .line 2053
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sinkDevice must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2056
    :cond_b
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to connect to a wifi display"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2060
    :try_start_1f
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2061
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestEnableLocked(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    .line 2063
    :cond_30
    monitor-exit v1

    .line 2065
    return-void

    .line 2063
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_32

    throw v0
.end method

.method public enableWifiDisplayEx(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    .line 2070
    if-nez p1, :cond_b

    .line 2071
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sinkDevice must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2074
    :cond_b
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to connect to a wifi display"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2078
    :try_start_1f
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2079
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/WifiDisplayAdapter;->requestEnableLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2081
    :cond_30
    monitor-exit v1

    .line 2083
    return-void

    .line 2081
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_32

    throw v0
.end method

.method public enableWifiDisplayEx2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 17
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "remoteP2pMacAddr"    # Ljava/lang/String;
    .param p7, "isPendingRequest"    # Z

    .prologue
    .line 2088
    if-nez p1, :cond_b

    .line 2089
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sinkDevice must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2092
    :cond_b
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to connect to a wifi display"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v8

    monitor-enter v8

    .line 2096
    :try_start_1f
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 2097
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/display/WifiDisplayAdapter;->requestEnableLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2099
    :cond_38
    monitor-exit v8

    .line 2101
    return-void

    .line 2099
    :catchall_3a
    move-exception v0

    monitor-exit v8
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2423
    if-nez p1, :cond_a

    .line 2424
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2426
    :cond_a
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v4, "Permission required to forget to a wifi display"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2431
    .local v0, "token":J
    :try_start_1b
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->forgetWifiDisplayInternal(Ljava/lang/String;)V
    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->access$2800(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_24

    .line 2433
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2435
    return-void

    .line 2433
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDLNADeviceAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2367
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2368
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getDLNADeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 2370
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getDLNADeviceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2359
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2360
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getDLNADeviceName()Ljava/lang/String;

    move-result-object v0

    .line 2362
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getDLNADeviceUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2375
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2376
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getDLNADeviceUid()Ljava/lang/String;

    move-result-object v0

    .line 2378
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getDLNAType()I
    .registers 2

    .prologue
    .line 2383
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2384
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getDLNAType()I

    move-result v0

    .line 2386
    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public getDisplayIdOfDevice(I)I
    .registers 5
    .param p1, "deviceId"    # I

    .prologue
    .line 2707
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2709
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayIdOfDeviceInternal(I)I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    move-result v2

    .line 2711
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDisplayIds()[I
    .registers 5

    .prologue
    .line 1879
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1880
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1882
    .local v2, "token":J
    :try_start_8
    iget-object v1, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->getDisplayIdsInternal(I)[I
    invoke-static {v1, v0}, Lcom/android/server/display/DisplayManagerService;->access$1900(Lcom/android/server/display/DisplayManagerService;I)[I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_12

    move-result-object v1

    .line 1884
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_12
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 1852
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, getDisplayInfoEx(ILandroid/os/IBinder;Z)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayInfoEx(ILandroid/os/IBinder;Z)Landroid/view/DisplayInfo;
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "isSelectiveOrientationState"    # Z

    .prologue
    .line 1860
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1862
    .local v3, "callingpid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1863
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1866
    .local v6, "token":J
    :try_start_c
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    move v1, p1

    move-object v4, p2

    move v5, p3

    # invokes: Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(IIILandroid/os/IBinder;Z)Landroid/view/DisplayInfo;
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->access$1800(Lcom/android/server/display/DisplayManagerService;IIILandroid/os/IBinder;Z)Landroid/view/DisplayInfo;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_19

    move-result-object v0

    .line 1870
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_19
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getLastConnectedDLNADevice()Landroid/hardware/display/DLNADevice;
    .registers 3

    .prologue
    .line 2313
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2314
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2315
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getLastConnectedDLNADevice()Landroid/hardware/display/DLNADevice;

    move-result-object v0

    monitor-exit v1

    .line 2317
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1a

    .line 2318
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;
    .registers 4
    .param p1, "cancel"    # Z

    .prologue
    .line 2288
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2289
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2290
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    monitor-exit v1

    .line 2292
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1a

    .line 2293
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getScreenSharingStatus()I
    .registers 2

    .prologue
    .line 2336
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2337
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getScreenSharingStatus()I

    move-result v0

    .line 2339
    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public getWifiDisplayBridgeStatus()I
    .registers 3

    .prologue
    .line 2141
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2142
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2143
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayBridgeStatus()I

    move-result v0

    monitor-exit v1

    .line 2145
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_1a

    .line 2146
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .registers 4

    .prologue
    .line 2468
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2470
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$3100(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/WifiDisplayStatus;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    move-result-object v2

    .line 2472
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isConnWithPinSupported(Ljava/lang/String;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2227
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2228
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2229
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    .line 2231
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1a

    .line 2232
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public isDLNADeviceConnected()Z
    .registers 2

    .prologue
    .line 2351
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2352
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->isDLNADeviceConnected()Z

    move-result v0

    .line 2354
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isDongleRenameAvailable()Z
    .registers 3

    .prologue
    .line 2240
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2241
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2242
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->isDongleRenameAvailableLocked()Z

    move-result v0

    monitor-exit v1

    .line 2244
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1a

    .line 2245
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public isKDDIServiceConnected()Z
    .registers 3

    .prologue
    .line 2168
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2169
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2170
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->isKDDIServiceConnected()Z

    move-result v0

    monitor-exit v1

    .line 2172
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1a

    .line 2173
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public isSinkAvailable()Z
    .registers 3

    .prologue
    .line 2203
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2204
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2205
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->isSinkAvailable()Z

    move-result v0

    monitor-exit v1

    .line 2206
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1a

    .line 2207
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public isSourceAvailable()Z
    .registers 3

    .prologue
    .line 2215
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2216
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2217
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->isSourceAvailable()Z

    move-result v0

    monitor-exit v1

    .line 2218
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1a

    .line 2219
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public isWfdEngineRunning()Z
    .registers 3

    .prologue
    .line 2154
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2155
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2156
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->isWfdEngineRunning()Z

    move-result v0

    monitor-exit v1

    .line 2158
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1a

    .line 2159
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public isWifiDisplayBridgeAvailable()Z
    .registers 3

    .prologue
    .line 2128
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2129
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2130
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->isWifiDisplayBridgeAvailable()Z

    move-result v0

    monitor-exit v1

    .line 2132
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1a

    .line 2133
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public notifyEnterHomeSyncApp()V
    .registers 3

    .prologue
    .line 2181
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2182
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2183
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->notifyEnterHomeSyncApp()V

    .line 2185
    :cond_18
    monitor-exit v1

    .line 2187
    return-void

    .line 2185
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public notifyExitHomeSyncApp()V
    .registers 3

    .prologue
    .line 2192
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2193
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2194
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->notifyExitHomeSyncApp()V

    .line 2196
    :cond_18
    monitor-exit v1

    .line 2198
    return-void

    .line 2196
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public pauseWifiDisplay()V
    .registers 6

    .prologue
    .line 2439
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v4, "Permission required to pause a wifi display session"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2444
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->pauseWifiDisplayInternal()V
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2900(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    .line 2446
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2448
    return-void

    .line 2446
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;

    .prologue
    .line 1890
    if-nez p1, :cond_b

    .line 1891
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "listener must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1894
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1895
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1897
    .local v2, "token":J
    :try_start_13
    iget-object v1, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;I)V
    invoke-static {v1, p1, v0}, Lcom/android/server/display/DisplayManagerService;->access$2000(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;I)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    .line 1899
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1901
    return-void

    .line 1899
    :catchall_1c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;

    .prologue
    .line 2597
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2599
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    # invokes: Lcom/android/server/display/DisplayManagerService;->releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    invoke-static {v2, v3}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 2601
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2603
    return-void

    .line 2601
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public removeLastConnectedDLNADevice()V
    .registers 3

    .prologue
    .line 2326
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2327
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2328
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->removeLastConnectedDLNADevice()V

    .line 2330
    :cond_18
    monitor-exit v1

    .line 2332
    return-void

    .line 2330
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public renameDongle(Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 2253
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2254
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2255
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->renameDongleLocked(Ljava/lang/String;)V

    .line 2257
    :cond_18
    monitor-exit v1

    .line 2259
    return-void

    .line 2257
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 2407
    if-nez p1, :cond_a

    .line 2408
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2410
    :cond_a
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v4, "Permission required to rename to a wifi display"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2415
    .local v0, "token":J
    :try_start_1b
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$2700(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_24

    .line 2417
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2419
    return-void

    .line 2417
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestColorTransform(II)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "colorTransformId"    # I

    .prologue
    .line 2478
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONFIGURE_DISPLAY_COLOR_TRANSFORM"

    const-string v4, "Permission required to change the display color transform"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2483
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->requestColorTransformInternal(II)V
    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$3200(Lcom/android/server/display/DisplayManagerService;II)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    .line 2485
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2487
    return-void

    .line 2485
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .registers 9
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .prologue
    .line 2555
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2557
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    # invokes: Lcom/android/server/display/DisplayManagerService;->resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V
    invoke-static {v2, v3, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->access$3500(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 2559
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2561
    return-void

    .line 2559
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public restartWifiDisplay()V
    .registers 3

    .prologue
    .line 2117
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2118
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2119
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->restartWifiDisplayLocked()V

    .line 2121
    :cond_18
    monitor-exit v1

    .line 2123
    return-void

    .line 2121
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public resumeWifiDisplay()V
    .registers 6

    .prologue
    .line 2452
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v4, "Permission required to resume a wifi display session"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2457
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->resumeWifiDisplayInternal()V
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$3000(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    .line 2459
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2461
    return-void

    .line 2459
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public scanWifiDisplays()V
    .registers 5

    .prologue
    .line 1951
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1953
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_24

    .line 1954
    :try_start_b
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1955
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->requestStartScanLocked()V

    .line 1957
    :cond_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_21

    .line 1959
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1962
    return-void

    .line 1957
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 1959
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setCurrentDisplayIdMagnifier(I)V
    .registers 3
    .param p1, "displayid"    # I

    .prologue
    .line 2698
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mMagnifierDisplayAdapter:Lcom/android/server/display/MagnifierDisplayAdapter;

    if-eqz v0, :cond_d

    .line 2699
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mMagnifierDisplayAdapter:Lcom/android/server/display/MagnifierDisplayAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/MagnifierDisplayAdapter;->setCurrentDisplayIdMagnifier(I)V

    .line 2701
    :cond_d
    return-void
.end method

.method public setMagnificationSettings(IIF)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # F

    .prologue
    .line 2690
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMagnificationSettings scale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mMagnifierDisplayAdapter:Lcom/android/server/display/MagnifierDisplayAdapter;

    if-eqz v0, :cond_40

    .line 2692
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mMagnifierDisplayAdapter:Lcom/android/server/display/MagnifierDisplayAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/MagnifierDisplayAdapter;->setMagnificationSettings(IIF)V

    .line 2694
    :cond_40
    return-void
.end method

.method public setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 3
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 2682
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mMagnifierDisplayAdapter:Lcom/android/server/display/MagnifierDisplayAdapter;

    if-eqz v0, :cond_d

    .line 2683
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mMagnifierDisplayAdapter:Lcom/android/server/display/MagnifierDisplayAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/MagnifierDisplayAdapter;->updateMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 2685
    :cond_d
    return-void
.end method

.method public setParameter(IILjava/lang/String;)I
    .registers 6
    .param p1, "type"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # Ljava/lang/String;

    .prologue
    .line 2275
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2276
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2277
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/WifiDisplayAdapter;->setParameter(IILjava/lang/String;)I

    move-result v0

    monitor-exit v1

    .line 2279
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_1a

    .line 2280
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public setScanningChannel(I)V
    .registers 4
    .param p1, "requestedChannel"    # I

    .prologue
    .line 2264
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 2265
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2266
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->setScanningChannelLocked(I)V

    .line 2268
    :cond_18
    monitor-exit v1

    .line 2270
    return-void

    .line 2268
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public setScreenSharingStatus(I)V
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 2344
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2345
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->setScreenSharingStatus(I)V

    .line 2347
    :cond_11
    return-void
.end method

.method public setVirtualDisplayFixedOrientation(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "orientation"    # I

    .prologue
    .line 2587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2589
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    # invokes: Lcom/android/server/display/DisplayManagerService;->setVirtualDisplayFixedOrientationInternal(Landroid/os/IBinder;I)V
    invoke-static {v2, v3, p2}, Lcom/android/server/display/DisplayManagerService;->access$3800(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 2591
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2593
    return-void

    .line 2591
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setVirtualDisplayMirroringDisplay(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "displayId"    # I

    .prologue
    .line 2576
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2578
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    # invokes: Lcom/android/server/display/DisplayManagerService;->setVirtualDisplayMirroringDisplayInternal(Landroid/os/IBinder;I)V
    invoke-static {v2, v3, p2}, Lcom/android/server/display/DisplayManagerService;->access$3700(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 2580
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2582
    return-void

    .line 2580
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 2565
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2567
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    # invokes: Lcom/android/server/display/DisplayManagerService;->setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V
    invoke-static {v2, v3, p2}, Lcom/android/server/display/DisplayManagerService;->access$3600(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 2569
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2571
    return-void

    .line 2569
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startWifiDisplayScan()V
    .registers 7

    .prologue
    .line 1905
    iget-object v1, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v5, "Permission required to start wifi display scans"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1909
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1911
    .local v2, "token":J
    :try_start_15
    iget-object v1, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanInternal(I)V
    invoke-static {v1, v0}, Lcom/android/server/display/DisplayManagerService;->access$2200(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1e

    .line 1913
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1915
    return-void

    .line 1913
    :catchall_1e
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public stopScanWifiDisplays()V
    .registers 5

    .prologue
    .line 1967
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1969
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_24

    .line 1970
    :try_start_b
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1971
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/WifiDisplayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->requestStopScanLocked()V

    .line 1973
    :cond_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_21

    .line 1975
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1978
    return-void

    .line 1973
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 1975
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public stopWifiDisplayScan()V
    .registers 7

    .prologue
    .line 1919
    iget-object v1, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v5, "Permission required to stop wifi display scans"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1923
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1925
    .local v2, "token":J
    :try_start_15
    iget-object v1, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanInternal(I)V
    invoke-static {v1, v0}, Lcom/android/server/display/DisplayManagerService;->access$2300(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1e

    .line 1927
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1929
    return-void

    .line 1927
    :catchall_1e
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method
