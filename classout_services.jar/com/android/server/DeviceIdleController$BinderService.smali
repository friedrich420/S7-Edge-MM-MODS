.class final Lcom/android/server/DeviceIdleController$BinderService;
.super Landroid/os/IDeviceIdleController$Stub;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method private constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .prologue
    .line 711
    iput-object p1, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/os/IDeviceIdleController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "x1"    # Lcom/android/server/DeviceIdleController$1;

    .prologue
    .line 711
    invoke-direct {p0, p1}, <init>(Lcom/android/server/DeviceIdleController;)V

    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 768
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v3, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 772
    .local v2, "callingUid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "addPowerSaveTempWhitelistApp"

    const/4 v7, 0x0

    move/from16 v3, p4

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 779
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 781
    .local v10, "token":J
    :try_start_28
    iget-object v1, p0, this$0:Lcom/android/server/DeviceIdleController;

    const/4 v7, 0x1

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_38

    .line 784
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 786
    return-void

    .line 784
    :catchall_38
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    .local v2, "duration":J
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 791
    invoke-virtual/range {v0 .. v5}, addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    .line 792
    return-wide v2
.end method

.method public addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 797
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    .local v2, "duration":J
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 798
    invoke-virtual/range {v0 .. v5}, addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    .line 799
    return-wide v2
.end method

.method public addPowerSaveWhitelistApp(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 713
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    .line 716
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 809
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method public exitIdle(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 803
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->exitIdleInternal(Ljava/lang/String;)V

    .line 806
    return-void
.end method

.method public getAppIdTempWhitelist()[I
    .registers 2

    .prologue
    .line 749
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdTempWhitelistInternal()[I

    move-result-object v0

    return-object v0
.end method

.method public getAppIdWhitelist()[I
    .registers 2

    .prologue
    .line 745
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdWhitelistInternal()[I

    move-result-object v0

    return-object v0
.end method

.method public getAppIdWhitelistExceptIdle()[I
    .registers 2

    .prologue
    .line 741
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdWhitelistExceptIdleInternal()[I

    move-result-object v0

    return-object v0
.end method

.method public getFullPowerWhitelist()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 737
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getFullPowerWhitelistInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullPowerWhitelistExceptIdle()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdleStateDetailed()I
    .registers 4

    .prologue
    .line 757
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mState:I
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$400(Lcom/android/server/DeviceIdleController;)I

    move-result v0

    return v0
.end method

.method public getSystemPowerWhitelist()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 729
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getSystemPowerWhitelistInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 725
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPowerSaveWhitelistApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 763
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 753
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removePowerSaveWhitelistApp(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 719
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    .line 722
    return-void
.end method
