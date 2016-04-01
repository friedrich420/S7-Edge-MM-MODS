.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
.super Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;
.source "VoiceInteractionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceInteractionManagerServiceStub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;
    }
.end annotation


# instance fields
.field private mCurUser:I

.field private final mEnableService:Z

.field mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

.field mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSafeMode:Z

.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .registers 3

    .prologue
    .line 140
    iput-object p1, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;-><init>()V

    .line 964
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    iput-object v0, p0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 141
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, shouldEnableService(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, mEnableService:Z

    .line 142
    return-void
.end method

.method private enforceCallingPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 942
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_23

    .line 944
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not hold the permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_23
    return-void
.end method

.method private getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 266
    const v1, 0x1040056

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "interactorPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    .end local v0    # "interactorPackage":Ljava/lang/String;
    :cond_e
    return-object v0
.end method

.method private shouldEnableService(Landroid/content/res/Resources;)Z
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 261
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public activeServiceSupportsAssist()Z
    .registers 2

    .prologue
    .line 883
    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, enforceCallingPermission(Ljava/lang/String;)V

    .line 884
    monitor-enter p0

    .line 885
    :try_start_6
    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_1d

    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-eqz v0, :cond_1d

    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_1b
    monitor-exit p0

    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1b

    .line 886
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public activeServiceSupportsLaunchFromKeyguard()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 891
    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, enforceCallingPermission(Ljava/lang/String;)V

    .line 892
    monitor-enter p0

    .line 893
    :try_start_6
    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_1d

    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-eqz v0, :cond_1d

    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsLaunchFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_1b
    monitor-exit p0

    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1b

    .line 895
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public closeSystemDialogs(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 546
    monitor-enter p0

    .line 547
    :try_start_1
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_e

    .line 548
    const-string v2, "VoiceInteractionManagerService"

    const-string v3, "closeSystemDialogs without running voice interaction service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    monitor-exit p0

    .line 558
    :goto_d
    return-void

    .line 551
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1c

    move-result-wide v0

    .line 553
    .local v0, "caller":J
    :try_start_12
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->closeSystemDialogsLocked(Landroid/os/IBinder;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1f

    .line 555
    :try_start_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 557
    monitor-exit p0

    goto :goto_d

    .end local v0    # "caller":J
    :catchall_1c
    move-exception v2

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw v2

    .line 555
    .restart local v0    # "caller":J
    :catchall_1f
    move-exception v2

    :try_start_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_1c
.end method

.method public deleteKeyphraseSoundModel(ILjava/lang/String;)I
    .registers 9
    .param p1, "keyphraseId"    # I
    .param p2, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 674
    const-string v4, "android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {p0, v4}, enforceCallingPermission(Ljava/lang/String;)V

    .line 676
    if-nez p2, :cond_f

    .line 677
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal argument(s) in deleteKeyphraseSoundModel"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 681
    :cond_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 682
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 683
    .local v0, "caller":J
    const/4 v3, 0x0

    .line 685
    .local v3, "deleted":Z
    :try_start_18
    iget-object v4, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v4, p1, v2, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_40

    move-result v3

    .line 686
    if-eqz v3, :cond_3a

    const/4 v4, 0x0

    .line 688
    :goto_23
    if-eqz v3, :cond_36

    .line 689
    monitor-enter p0

    .line 691
    :try_start_26
    iget-object v5, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v5, :cond_35

    iget-object v5, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v5, :cond_35

    .line 692
    iget-object v5, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V

    .line 694
    :cond_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_3d

    .line 696
    :cond_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 686
    :cond_3a
    const/high16 v4, -0x80000000

    goto :goto_23

    .line 694
    :catchall_3d
    move-exception v4

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v4

    .line 688
    :catchall_40
    move-exception v4

    if-eqz v3, :cond_54

    .line 689
    monitor-enter p0

    .line 691
    :try_start_44
    iget-object v5, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v5, :cond_53

    iget-object v5, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v5, :cond_53

    .line 692
    iget-object v5, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V

    .line 694
    :cond_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_58

    .line 696
    :cond_54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 694
    :catchall_58
    move-exception v4

    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v4
.end method

.method public deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 463
    monitor-enter p0

    .line 464
    :try_start_1
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_11

    .line 465
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "deliverNewSession without running voice interaction service"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 474
    :catchall_e
    move-exception v2

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v2

    .line 468
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_e

    move-result-wide v0

    .line 470
    .local v0, "caller":J
    :try_start_15
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->deliverNewSessionLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_20

    move-result v2

    .line 472
    :try_start_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return v2

    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_e
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 922
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_35

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    :goto_34
    return-void

    .line 929
    :cond_35
    monitor-enter p0

    .line 930
    :try_start_36
    const-string v0, "VOICE INTERACTION MANAGER (dumpsys voiceinteraction)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnableService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mEnableService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_61

    .line 933
    const-string v0, "  (No active implementation)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    monitor-exit p0

    goto :goto_34

    .line 937
    :catchall_5e
    move-exception v0

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_36 .. :try_end_60} :catchall_5e

    throw v0

    .line 936
    :cond_61
    :try_start_61
    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 937
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_5e

    .line 938
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_34
.end method

.method findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;
    .registers 16
    .param p1, "userHandle"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v8, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.service.voice.VoiceInteractionService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 325
    .local v0, "available":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 327
    .local v7, "numAvailable":I
    if-nez v7, :cond_35

    .line 328
    const-string v8, "VoiceInteractionManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "no available voice interaction services found for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v4, 0x0

    .line 367
    :cond_34
    return-object v4

    .line 333
    :cond_35
    const/4 v4, 0x0

    .line 334
    .local v4, "foundInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_37
    if-ge v5, v7, :cond_34

    .line 335
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 336
    .local v2, "cur":Landroid/content/pm/ServiceInfo;
    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_76

    .line 337
    new-instance v1, Landroid/content/ComponentName;

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .local v1, "comp":Landroid/content/ComponentName;
    :try_start_52
    new-instance v6, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v8, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-direct {v6, v8, v1, p1}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    .line 341
    .local v6, "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_d0

    .line 342
    if-eqz p2, :cond_73

    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_76

    .line 344
    :cond_73
    if-nez v4, :cond_79

    .line 345
    move-object v4, v6

    .line 334
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_76
    :goto_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 347
    .restart local v1    # "comp":Landroid/content/ComponentName;
    .restart local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_79
    const-string v8, "VoiceInteractionManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "More than one voice interaction service, picking first "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " over "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_b5} :catch_b6
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_b5} :catch_f7

    goto :goto_76

    .line 360
    .end local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :catch_b6
    move-exception v3

    .line 361
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "VoiceInteractionManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure looking up interaction service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 357
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_d0
    :try_start_d0
    const-string v8, "VoiceInteractionManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad interaction service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d0 .. :try_end_f6} :catch_b6
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_f6} :catch_f7

    goto :goto_76

    .line 362
    .end local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :catch_f7
    move-exception v8

    goto/16 :goto_76
.end method

.method findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 11
    .param p1, "prefPackage"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 392
    iget-object v4, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.speech.RecognitionService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 395
    .local v0, "available":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 397
    .local v2, "numAvailable":I
    if-nez v2, :cond_35

    .line 398
    const-string v4, "VoiceInteractionManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no available voice recognition services found for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v4, 0x0

    .line 414
    :goto_34
    return-object v4

    .line 401
    :cond_35
    if-eqz p1, :cond_57

    .line 402
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    if-ge v1, v2, :cond_57

    .line 403
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 404
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 405
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 402
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 409
    .end local v1    # "i":I
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_57
    const/4 v4, 0x1

    if-le v2, v4, :cond_62

    .line 410
    const-string v4, "VoiceInteractionManagerService"

    const-string/jumbo v5, "more than one voice recognition service found, picking first"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_62
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 414
    .restart local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method public finish(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 562
    monitor-enter p0

    .line 563
    :try_start_1
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_f

    .line 564
    const-string v2, "VoiceInteractionManagerService"

    const-string/jumbo v3, "finish without running voice interaction service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    monitor-exit p0

    .line 574
    :goto_e
    return-void

    .line 567
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1d

    move-result-wide v0

    .line 569
    .local v0, "caller":J
    :try_start_13
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_20

    .line 571
    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 573
    monitor-exit p0

    goto :goto_e

    .end local v0    # "caller":J
    :catchall_1d
    move-exception v2

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw v2

    .line 571
    .restart local v0    # "caller":J
    :catchall_20
    move-exception v2

    :try_start_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_1d
.end method

.method public getActiveServiceComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 804
    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, enforceCallingPermission(Ljava/lang/String;)V

    .line 805
    monitor-enter p0

    .line 806
    :try_start_6
    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_10

    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    :goto_e
    monitor-exit p0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 807
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v0
.end method

.method getCurInteractor(I)Landroid/content/ComponentName;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 372
    iget-object v1, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voice_interaction_service"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "curInteractor":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 376
    const/4 v1, 0x0

    .line 380
    :goto_16
    return-object v1

    :cond_17
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_16
.end method

.method getCurRecognizer(I)Landroid/content/ComponentName;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 419
    iget-object v1, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voice_recognition_service"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "curRecognizer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 423
    const/4 v1, 0x0

    .line 427
    :goto_16
    return-object v1

    :cond_17
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_16
.end method

.method public getDisabledShowContext()I
    .registers 6

    .prologue
    .line 595
    monitor-enter p0

    .line 596
    :try_start_1
    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v3, :cond_10

    .line 597
    const-string v3, "VoiceInteractionManagerService"

    const-string/jumbo v4, "getDisabledShowContext without running voice interaction service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v3, 0x0

    monitor-exit p0

    .line 605
    :goto_f
    return v3

    .line 600
    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 601
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_23

    move-result-wide v0

    .line 603
    .local v0, "caller":J
    :try_start_18
    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getDisabledShowContextLocked(I)I
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_26

    move-result v3

    .line 605
    :try_start_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_f

    .line 607
    .end local v0    # "caller":J
    .end local v2    # "callingUid":I
    :catchall_23
    move-exception v3

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_23

    throw v3

    .line 605
    .restart local v0    # "caller":J
    .restart local v2    # "callingUid":I
    :catchall_26
    move-exception v3

    :try_start_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_23
.end method

.method public getDspModuleProperties(Landroid/service/voice/IVoiceInteractionService;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 6
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;

    .prologue
    .line 730
    monitor-enter p0

    .line 731
    :try_start_1
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v2, :cond_1b

    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v2, :cond_1b

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v2, v3, :cond_26

    .line 733
    :cond_1b
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Caller is not the current voice interaction service"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 743
    :catchall_23
    move-exception v2

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v2

    .line 737
    :cond_26
    :try_start_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_23

    move-result-wide v0

    .line 739
    .local v0, "caller":J
    :try_start_2a
    iget-object v2, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_35

    .line 741
    :try_start_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return-object v2

    :catchall_35
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_23
.end method

.method public getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 8
    .param p1, "keyphraseId"    # I
    .param p2, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 632
    const-string v3, "android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {p0, v3}, enforceCallingPermission(Ljava/lang/String;)V

    .line 634
    if-nez p2, :cond_f

    .line 635
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal argument(s) in getKeyphraseSoundModel"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 638
    :cond_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 639
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 641
    .local v0, "caller":J
    :try_start_17
    iget-object v3, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_23

    move-result-object v3

    .line 643
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_23
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getUserDisabledShowContext()I
    .registers 6

    .prologue
    .line 612
    monitor-enter p0

    .line 613
    :try_start_1
    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v3, :cond_10

    .line 614
    const-string v3, "VoiceInteractionManagerService"

    const-string/jumbo v4, "getUserDisabledShowContext without running voice interaction service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v3, 0x0

    monitor-exit p0

    .line 623
    :goto_f
    return v3

    .line 618
    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 619
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_23

    move-result-wide v0

    .line 621
    .local v0, "caller":J
    :try_start_18
    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getUserDisabledShowContextLocked(I)I
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_26

    move-result v3

    .line 623
    :try_start_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_f

    .line 625
    .end local v0    # "caller":J
    .end local v2    # "callingUid":I
    :catchall_23
    move-exception v3

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_23

    throw v3

    .line 623
    .restart local v0    # "caller":J
    .restart local v2    # "callingUid":I
    :catchall_26
    move-exception v3

    :try_start_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_23
.end method

.method public hideCurrentSession()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 835
    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v3}, enforceCallingPermission(Ljava/lang/String;)V

    .line 836
    monitor-enter p0

    .line 837
    :try_start_6
    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v3, :cond_c

    .line 838
    monitor-exit p0

    .line 853
    :goto_b
    return-void

    .line 840
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_2c

    move-result-wide v0

    .line 842
    .local v0, "caller":J
    :try_start_10
    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v3, :cond_27

    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_38

    if-eqz v3, :cond_27

    .line 844
    :try_start_1e
    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionSession;->closeSystemDialogs()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_2f
    .catchall {:try_start_1e .. :try_end_27} :catchall_38

    .line 850
    :cond_27
    :goto_27
    :try_start_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 852
    monitor-exit p0

    goto :goto_b

    .end local v0    # "caller":J
    :catchall_2c
    move-exception v3

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2c

    throw v3

    .line 845
    .restart local v0    # "caller":J
    :catch_2f
    move-exception v2

    .line 846
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_30
    const-string v3, "VoiceInteractionManagerService"

    const-string v4, "Failed to call closeSystemDialogs"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_38

    goto :goto_27

    .line 850
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_38
    move-exception v3

    :try_start_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_2c
.end method

.method public hideSessionFromSession(Landroid/os/IBinder;)Z
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 495
    monitor-enter p0

    .line 496
    :try_start_1
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_10

    .line 497
    const-string v2, "VoiceInteractionManagerService"

    const-string/jumbo v3, "hideSessionFromSession without running voice interaction service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v2, 0x0

    monitor-exit p0

    .line 504
    :goto_f
    return v2

    .line 500
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1f

    move-result-wide v0

    .line 502
    .local v0, "caller":J
    :try_start_14
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->hideSessionLocked()Z
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_22

    move-result v2

    .line 504
    :try_start_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_f

    .line 506
    .end local v0    # "caller":J
    :catchall_1f
    move-exception v2

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_1f

    throw v2

    .line 504
    .restart local v0    # "caller":J
    :catchall_22
    move-exception v2

    :try_start_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_1f
.end method

.method public initForUser(I)V
    .registers 14
    .param p1, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 161
    iget-object v9, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v9, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "voice_interaction_service"

    invoke-static {v9, v10, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "curInteractorStr":Ljava/lang/String;
    invoke-virtual {p0, p1}, getCurRecognizer(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 165
    .local v3, "curRecognizer":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 168
    .local v1, "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    if-nez v2, :cond_28

    if-eqz v3, :cond_28

    iget-boolean v9, p0, mEnableService:Z

    if-eqz v9, :cond_28

    .line 175
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_28

    .line 182
    const/4 v3, 0x0

    .line 188
    :cond_28
    iget-object v9, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v9, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {p0, v9}, getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "forceInteractorPackage":Ljava/lang/String;
    if-eqz v4, :cond_3d

    .line 191
    invoke-virtual {p0, p1, v4}, findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_3d

    .line 194
    const/4 v3, 0x0

    .line 200
    :cond_3d
    iget-boolean v9, p0, mEnableService:Z

    if-nez v9, :cond_4e

    if-eqz v2, :cond_4e

    .line 201
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4e

    .line 203
    invoke-virtual {p0, v8, p1}, setCurInteractor(Landroid/content/ComponentName;I)V

    .line 204
    const-string v2, ""

    .line 208
    :cond_4e
    if-eqz v3, :cond_75

    .line 211
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 212
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 213
    .local v5, "interactorInfo":Landroid/content/pm/ServiceInfo;
    const/4 v7, 0x0

    .line 214
    .local v7, "recognizerInfo":Landroid/content/pm/ServiceInfo;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_73

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 217
    .local v0, "curInteractor":Landroid/content/ComponentName;
    :goto_60
    const/4 v9, 0x0

    :try_start_61
    invoke-interface {v6, v3, v9, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 218
    if-eqz v0, :cond_6c

    .line 219
    const/4 v9, 0x0

    invoke-interface {v6, v0, v9, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_6b} :catch_bd

    move-result-object v5

    .line 224
    :cond_6c
    :goto_6c
    if-eqz v7, :cond_75

    if-eqz v0, :cond_72

    if-eqz v5, :cond_75

    .line 257
    .end local v0    # "curInteractor":Landroid/content/ComponentName;
    .end local v5    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "recognizerInfo":Landroid/content/pm/ServiceInfo;
    :cond_72
    :goto_72
    return-void

    .restart local v5    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v7    # "recognizerInfo":Landroid/content/pm/ServiceInfo;
    :cond_73
    move-object v0, v8

    .line 214
    goto :goto_60

    .line 233
    .end local v5    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "recognizerInfo":Landroid/content/pm/ServiceInfo;
    :cond_75
    if-nez v1, :cond_7f

    iget-boolean v9, p0, mEnableService:Z

    if-eqz v9, :cond_7f

    .line 234
    invoke-virtual {p0, p1, v8}, findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object v1

    .line 237
    :cond_7f
    if-eqz v1, :cond_ae

    .line 239
    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v9, p1}, setCurInteractor(Landroid/content/ComponentName;I)V

    .line 241
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_ae

    .line 242
    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8, p1}, setCurRecognizer(Landroid/content/ComponentName;I)V

    goto :goto_72

    .line 250
    :cond_ae
    invoke-virtual {p0, v8, p1}, findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v3

    .line 251
    if-eqz v3, :cond_72

    .line 252
    if-nez v1, :cond_b9

    .line 253
    invoke-virtual {p0, v8, p1}, setCurInteractor(Landroid/content/ComponentName;I)V

    .line 255
    :cond_b9
    invoke-virtual {p0, v3, p1}, setCurRecognizer(Landroid/content/ComponentName;I)V

    goto :goto_72

    .line 221
    .restart local v0    # "curInteractor":Landroid/content/ComponentName;
    .restart local v5    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v7    # "recognizerInfo":Landroid/content/pm/ServiceInfo;
    :catch_bd
    move-exception v9

    goto :goto_6c
.end method

.method public isEnrolledForKeyphrase(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;)Z
    .registers 10
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 704
    monitor-enter p0

    .line 705
    :try_start_1
    iget-object v4, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v4, :cond_19

    iget-object v4, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v4, :cond_19

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v5}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eq v4, v5, :cond_24

    .line 707
    :cond_19
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Caller is not the current voice interaction service"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 710
    :catchall_21
    move-exception v4

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v4

    :cond_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    .line 712
    if-nez p3, :cond_2f

    .line 713
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal argument(s) in isEnrolledForKeyphrase"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 716
    :cond_2f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 717
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 719
    .local v0, "caller":J
    :try_start_37
    iget-object v4, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v4, p2, v2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_48

    move-result-object v3

    .line 721
    .local v3, "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    if-eqz v3, :cond_46

    const/4 v4, 0x1

    .line 723
    :goto_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 721
    :cond_46
    const/4 v4, 0x0

    goto :goto_42

    .line 723
    .end local v3    # "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :catchall_48
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isSessionRunning()Z
    .registers 2

    .prologue
    .line 875
    const-string v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, enforceCallingPermission(Ljava/lang/String;)V

    .line 876
    monitor-enter p0

    .line 877
    :try_start_6
    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_13

    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    .line 878
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public launchVoiceAssistFromKeyguard()V
    .registers 5

    .prologue
    .line 857
    const-string v2, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v2}, enforceCallingPermission(Ljava/lang/String;)V

    .line 858
    monitor-enter p0

    .line 859
    :try_start_6
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_14

    .line 860
    const-string v2, "VoiceInteractionManagerService"

    const-string/jumbo v3, "launchVoiceAssistFromKeyguard without running voice interactionservice"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    monitor-exit p0

    .line 871
    :goto_13
    return-void

    .line 864
    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_22

    move-result-wide v0

    .line 866
    .local v0, "caller":J
    :try_start_18
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->launchVoiceAssistFromKeyguard()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_25

    .line 868
    :try_start_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 870
    monitor-exit p0

    goto :goto_13

    .end local v0    # "caller":J
    :catchall_22
    move-exception v2

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw v2

    .line 868
    .restart local v0    # "caller":J
    :catchall_25
    move-exception v2

    :try_start_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_22
.end method

.method public onLockscreenShown()V
    .registers 6

    .prologue
    .line 900
    const-string v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v3}, enforceCallingPermission(Ljava/lang/String;)V

    .line 901
    monitor-enter p0

    .line 902
    :try_start_6
    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v3, :cond_c

    .line 903
    monitor-exit p0

    .line 918
    :goto_b
    return-void

    .line 905
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_2c

    move-result-wide v0

    .line 907
    .local v0, "caller":J
    :try_start_10
    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v3, :cond_27

    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_38

    if-eqz v3, :cond_27

    .line 909
    :try_start_1e
    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionSession;->onLockscreenShown()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_2f
    .catchall {:try_start_1e .. :try_end_27} :catchall_38

    .line 915
    :cond_27
    :goto_27
    :try_start_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 917
    monitor-exit p0

    goto :goto_b

    .end local v0    # "caller":J
    :catchall_2c
    move-exception v3

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2c

    throw v3

    .line 910
    .restart local v0    # "caller":J
    :catch_2f
    move-exception v2

    .line 911
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_30
    const-string v3, "VoiceInteractionManagerService"

    const-string v4, "Failed to call onLockscreenShown"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_38

    goto :goto_27

    .line 915
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_38
    move-exception v3

    :try_start_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_2c
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 149
    :catch_5
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 153
    const-string v1, "VoiceInteractionManagerService"

    const-string v2, "VoiceInteractionManagerService Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    :cond_11
    throw v0
.end method

.method resetCurAssistant(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 439
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 441
    return-void
.end method

.method setCurInteractor(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 384
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voice_interaction_service"

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 389
    return-void

    .line 384
    :cond_15
    const-string v0, ""

    goto :goto_11
.end method

.method setCurRecognizer(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 431
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voice_recognition_service"

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 436
    return-void

    .line 431
    :cond_15
    const-string v0, ""

    goto :goto_11
.end method

.method public setDisabledShowContext(I)V
    .registers 7
    .param p1, "flags"    # I

    .prologue
    .line 578
    monitor-enter p0

    .line 579
    :try_start_1
    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v3, :cond_f

    .line 580
    const-string v3, "VoiceInteractionManagerService"

    const-string/jumbo v4, "setDisabledShowContext without running voice interaction service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    monitor-exit p0

    .line 591
    :goto_e
    return-void

    .line 583
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 584
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_21

    move-result-wide v0

    .line 586
    .local v0, "caller":J
    :try_start_17
    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->setDisabledShowContextLocked(II)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_24

    .line 588
    :try_start_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 590
    monitor-exit p0

    goto :goto_e

    .end local v0    # "caller":J
    .end local v2    # "callingUid":I
    :catchall_21
    move-exception v3

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_21

    throw v3

    .line 588
    .restart local v0    # "caller":J
    .restart local v2    # "callingUid":I
    :catchall_24
    move-exception v3

    :try_start_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_21
.end method

.method public setKeepAwake(Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keepAwake"    # Z

    .prologue
    .line 530
    monitor-enter p0

    .line 531
    :try_start_1
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_f

    .line 532
    const-string v2, "VoiceInteractionManagerService"

    const-string/jumbo v3, "setKeepAwake without running voice interaction service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    monitor-exit p0

    .line 542
    :goto_e
    return-void

    .line 535
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1d

    move-result-wide v0

    .line 537
    .local v0, "caller":J
    :try_start_13
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->setKeepAwakeLocked(Landroid/os/IBinder;Z)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_20

    .line 539
    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 541
    monitor-exit p0

    goto :goto_e

    .end local v0    # "caller":J
    :catchall_1d
    move-exception v2

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw v2

    .line 539
    .restart local v0    # "caller":J
    :catchall_20
    move-exception v2

    :try_start_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_1d
.end method

.method public showSession(Landroid/service/voice/IVoiceInteractionService;Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "flags"    # I

    .prologue
    .line 445
    monitor-enter p0

    .line 446
    :try_start_1
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v2, :cond_19

    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v2, :cond_19

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v2, v3, :cond_24

    .line 448
    :cond_19
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Caller is not the current voice interaction service"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 457
    :catchall_21
    move-exception v2

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v2

    .line 451
    :cond_24
    :try_start_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_21

    move-result-wide v0

    .line 453
    .local v0, "caller":J
    :try_start_28
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, p3, v3, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_34

    .line 455
    :try_start_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 457
    monitor-exit p0

    .line 458
    return-void

    .line 455
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_21
.end method

.method public showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 9
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "sourceFlags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p4, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 813
    const-string v2, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v2}, enforceCallingPermission(Ljava/lang/String;)V

    .line 814
    monitor-enter p0

    .line 815
    :try_start_6
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_15

    .line 816
    const-string v2, "VoiceInteractionManagerService"

    const-string/jumbo v3, "showSessionForActiveService without running voice interactionservice"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v2, 0x0

    monitor-exit p0

    .line 828
    :goto_14
    return v2

    .line 820
    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_28

    move-result-wide v0

    .line 822
    .local v0, "caller":J
    :try_start_19
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    or-int/lit8 v3, p2, 0x1

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, p1, v3, p3, p4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_2b

    move-result v2

    .line 828
    :try_start_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_14

    .line 830
    .end local v0    # "caller":J
    :catchall_28
    move-exception v2

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_28

    throw v2

    .line 828
    .restart local v0    # "caller":J
    :catchall_2b
    move-exception v2

    :try_start_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_28
.end method

.method public showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sessionArgs"    # Landroid/os/Bundle;
    .param p3, "flags"    # I

    .prologue
    .line 479
    monitor-enter p0

    .line 480
    :try_start_1
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_10

    .line 481
    const-string v2, "VoiceInteractionManagerService"

    const-string/jumbo v3, "showSessionFromSession without running voice interaction service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v2, 0x0

    monitor-exit p0

    .line 488
    :goto_f
    return v2

    .line 484
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_21

    move-result-wide v0

    .line 486
    .local v0, "caller":J
    :try_start_14
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, p3, v3, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_24

    move-result v2

    .line 488
    :try_start_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_f

    .line 490
    .end local v0    # "caller":J
    :catchall_21
    move-exception v2

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_21

    throw v2

    .line 488
    .restart local v0    # "caller":J
    :catchall_24
    move-exception v2

    :try_start_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_21
.end method

.method public startRecognition(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 12
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p5, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .prologue
    .line 751
    monitor-enter p0

    .line 752
    :try_start_1
    iget-object v4, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v4, :cond_1b

    iget-object v4, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v4, :cond_1b

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v5}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eq v4, v5, :cond_26

    .line 754
    :cond_1b
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Caller is not the current voice interaction service"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 761
    :catchall_23
    move-exception v4

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v4

    .line 758
    :cond_26
    if-eqz p4, :cond_2c

    if-eqz p5, :cond_2c

    if-nez p3, :cond_34

    .line 759
    :cond_2c
    :try_start_2c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal argument(s) in startRecognition"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 761
    :cond_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_23

    .line 763
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 764
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 766
    .local v0, "caller":J
    :try_start_3d
    iget-object v4, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v4, p2, v2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v3

    .line 768
    .local v3, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    if-eqz v3, :cond_4f

    iget-object v4, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    if-eqz v4, :cond_4f

    iget-object v4, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    if-nez v4, :cond_5c

    .line 771
    :cond_4f
    const-string v4, "VoiceInteractionManagerService"

    const-string v5, "No matching sound model found in startRecognition"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3d .. :try_end_56} :catchall_68

    .line 772
    const/high16 v4, -0x80000000

    .line 778
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_5b
    return v4

    .line 774
    :cond_5c
    :try_start_5c
    iget-object v4, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-virtual {v4, p2, v3, p4, p5}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_68

    move-result v4

    .line 778
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5b

    .end local v3    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :catchall_68
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;

    .prologue
    .line 511
    monitor-enter p0

    .line 512
    :try_start_1
    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_10

    .line 513
    const-string v0, "VoiceInteractionManagerService"

    const-string/jumbo v3, "startVoiceActivity without running voice interaction service"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v0, -0x6

    monitor-exit p0

    .line 523
    :goto_f
    return v0

    .line 516
    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 517
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 518
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2a

    move-result-wide v6

    .line 520
    .local v6, "caller":J
    :try_start_1c
    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startVoiceActivityLocked(IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_2d

    move-result v0

    .line 523
    :try_start_25
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_f

    .line 525
    .end local v1    # "callingPid":I
    .end local v2    # "callingUid":I
    .end local v6    # "caller":J
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2a

    throw v0

    .line 523
    .restart local v1    # "callingPid":I
    .restart local v2    # "callingUid":I
    .restart local v6    # "caller":J
    :catchall_2d
    move-exception v0

    :try_start_2e
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_2a
.end method

.method public stopRecognition(Landroid/service/voice/IVoiceInteractionService;ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 8
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .prologue
    .line 786
    monitor-enter p0

    .line 787
    :try_start_1
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v2, :cond_1b

    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v2, :cond_1b

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v2, v3, :cond_26

    .line 789
    :cond_1b
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Caller is not the current voice interaction service"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 792
    :catchall_23
    move-exception v2

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v2

    :cond_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 794
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 796
    .local v0, "caller":J
    :try_start_2b
    iget-object v2, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_37

    move-result v2

    .line 798
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_37
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method switchImplementationIfNeededLocked(Z)V
    .registers 10
    .param p1, "force"    # Z

    .prologue
    .line 292
    iget-boolean v0, p0, mSafeMode:Z

    if-nez v0, :cond_5f

    .line 293
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "voice_interaction_service"

    iget v2, p0, mCurUser:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, "curService":Ljava/lang/String;
    const/4 v5, 0x0

    .line 296
    .local v5, "serviceComponent":Landroid/content/ComponentName;
    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 298
    :try_start_1a
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1d} :catch_60

    move-result-object v5

    .line 304
    :cond_1e
    :goto_1e
    if-nez p1, :cond_36

    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_36

    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    iget v1, p0, mCurUser:I

    if-ne v0, v1, :cond_36

    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 306
    :cond_36
    iget-object v0, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->stopAllRecognitions()V

    .line 307
    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_46

    .line 308
    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->shutdownLocked()V

    .line 310
    :cond_46
    if-eqz v5, :cond_7b

    .line 311
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v1, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget v4, p0, mCurUser:I

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;ILandroid/content/ComponentName;)V

    iput-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 313
    iget-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startLocked()V

    .line 319
    .end local v5    # "serviceComponent":Landroid/content/ComponentName;
    .end local v6    # "curService":Ljava/lang/String;
    :cond_5f
    :goto_5f
    return-void

    .line 299
    .restart local v5    # "serviceComponent":Landroid/content/ComponentName;
    .restart local v6    # "curService":Ljava/lang/String;
    :catch_60
    move-exception v7

    .line 300
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v0, "VoiceInteractionManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad voice interaction service name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    const/4 v5, 0x0

    goto :goto_1e

    .line 315
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_7b
    const/4 v0, 0x0

    iput-object v0, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    goto :goto_5f
.end method

.method public switchUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    :try_start_1
    iput p1, p0, mCurUser:I

    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, switchImplementationIfNeededLocked(Z)V

    .line 288
    monitor-exit p0

    .line 289
    return-void

    .line 288
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public systemRunning(Z)V
    .registers 7
    .param p1, "safeMode"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, mSafeMode:Z

    .line 274
    iget-object v0, p0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 276
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/os/Handler;)V

    .line 278
    monitor-enter p0

    .line 279
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, mCurUser:I

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, switchImplementationIfNeededLocked(Z)V

    .line 281
    monitor-exit p0

    .line 282
    return-void

    .line 281
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .registers 6
    .param p1, "model"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .prologue
    .line 649
    const-string v2, "android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {p0, v2}, enforceCallingPermission(Ljava/lang/String;)V

    .line 650
    if-nez p1, :cond_f

    .line 651
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Model must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 654
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 656
    .local v0, "caller":J
    :try_start_13
    iget-object v2, p0, this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 657
    monitor-enter p0
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_36

    .line 659
    :try_start_1e
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v2, :cond_2d

    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v2, :cond_2d

    .line 660
    iget-object v2, p0, mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V

    .line 662
    :cond_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_33

    .line 663
    const/4 v2, 0x0

    .line 668
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_32
    return v2

    .line 662
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 668
    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 665
    :cond_3b
    const/high16 v2, -0x80000000

    .line 668
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_32
.end method
