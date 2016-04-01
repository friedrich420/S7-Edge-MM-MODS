.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "VoiceInteractionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V
    .registers 2

    .prologue
    .line 964
    iput-object p1, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    .line 969
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 970
    .local v7, "userHandle":I
    iget-object v8, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v8, v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurInteractor(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 971
    .local v1, "curInteractor":Landroid/content/ComponentName;
    iget-object v8, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v8, v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurRecognizer(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 972
    .local v2, "curRecognizer":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 973
    .local v3, "hit":Z
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_14
    if-ge v4, v5, :cond_25

    aget-object v6, v0, v4

    .line 974
    .local v6, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_67

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    .line 975
    const/4 v3, 0x1

    .line 983
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_25
    :goto_25
    if-eqz v3, :cond_66

    if-eqz p4, :cond_66

    .line 986
    iget-object v8, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v9, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    monitor-enter v9

    .line 987
    :try_start_2e
    iget-object v8, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-virtual {v8}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->stopAllRecognitions()V

    .line 988
    iget-object v8, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v8, :cond_49

    .line 989
    iget-object v8, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v8}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->shutdownLocked()V

    .line 990
    iget-object v8, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 992
    :cond_49
    iget-object v8, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 993
    iget-object v8, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 994
    iget-object v8, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v8, v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->resetCurAssistant(I)V

    .line 995
    iget-object v8, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v8, v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 996
    iget-object v8, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 997
    monitor-exit v9
    :try_end_66
    .catchall {:try_start_2e .. :try_end_66} :catchall_78

    .line 999
    :cond_66
    return v3

    .line 977
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_67
    if-eqz v2, :cond_75

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 979
    const/4 v3, 0x1

    .line 980
    goto :goto_25

    .line 973
    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 997
    .end local v6    # "pkg":Ljava/lang/String;
    :catchall_78
    move-exception v8

    :try_start_79
    monitor-exit v9
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v8
.end method

.method public onHandleUserStop(Landroid/content/Intent;I)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # I

    .prologue
    .line 1004
    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 11

    .prologue
    const/4 v9, 0x3

    .line 1008
    invoke-virtual {p0}, getChangingUserId()I

    move-result v4

    .line 1011
    .local v4, "userHandle":I
    iget-object v6, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v7, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    monitor-enter v7

    .line 1013
    :try_start_a
    iget-object v6, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 1014
    .local v5, "userManager":Landroid/os/UserManager;
    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1015
    .local v3, "user":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_aa

    .line 1016
    iget-object v6, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v6, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurInteractor(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 1017
    .local v1, "curInteractor":Landroid/content/ComponentName;
    iget-object v6, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v6, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurRecognizer(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 1018
    .local v2, "curRecognizer":Landroid/content/ComponentName;
    if-nez v2, :cond_43

    .line 1020
    invoke-virtual {p0}, anyPackagesAppearing()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1021
    iget-object v6, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v2

    .line 1022
    if-eqz v2, :cond_41

    .line 1023
    iget-object v6, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 1026
    :cond_41
    monitor-exit v7

    .line 1064
    .end local v1    # "curInteractor":Landroid/content/ComponentName;
    .end local v2    # "curRecognizer":Landroid/content/ComponentName;
    :goto_42
    return-void

    .line 1029
    .restart local v1    # "curInteractor":Landroid/content/ComponentName;
    .restart local v2    # "curRecognizer":Landroid/content/ComponentName;
    :cond_43
    if-eqz v1, :cond_91

    .line 1030
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 1031
    .local v0, "change":I
    if-ne v0, v9, :cond_65

    .line 1034
    iget-object v6, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 1035
    iget-object v6, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 1036
    iget-object v6, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v6, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 1037
    monitor-exit v7

    goto :goto_42

    .line 1063
    .end local v0    # "change":I
    .end local v1    # "curInteractor":Landroid/content/ComponentName;
    .end local v2    # "curRecognizer":Landroid/content/ComponentName;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "userManager":Landroid/os/UserManager;
    :catchall_62
    move-exception v6

    monitor-exit v7
    :try_end_64
    .catchall {:try_start_a .. :try_end_64} :catchall_62

    throw v6

    .line 1040
    .restart local v0    # "change":I
    .restart local v1    # "curInteractor":Landroid/content/ComponentName;
    .restart local v2    # "curRecognizer":Landroid/content/ComponentName;
    .restart local v3    # "user":Landroid/content/pm/UserInfo;
    .restart local v5    # "userManager":Landroid/os/UserManager;
    :cond_65
    :try_start_65
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, isPackageAppearing(Ljava/lang/String;)I

    move-result v0

    .line 1041
    if-eqz v0, :cond_8f

    .line 1044
    iget-object v6, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v6, :cond_8f

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 1046
    iget-object v6, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 1049
    :cond_8f
    monitor-exit v7

    goto :goto_42

    .line 1053
    .end local v0    # "change":I
    :cond_91
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 1054
    .restart local v0    # "change":I
    if-eq v0, v9, :cond_9e

    const/4 v6, 0x2

    if-ne v0, v6, :cond_ac

    .line 1056
    :cond_9e
    iget-object v6, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v8, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v6, v8, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 1063
    .end local v0    # "change":I
    .end local v1    # "curInteractor":Landroid/content/ComponentName;
    .end local v2    # "curRecognizer":Landroid/content/ComponentName;
    :cond_aa
    :goto_aa
    monitor-exit v7

    goto :goto_42

    .line 1058
    .restart local v0    # "change":I
    .restart local v1    # "curInteractor":Landroid/content/ComponentName;
    .restart local v2    # "curRecognizer":Landroid/content/ComponentName;
    :cond_ac
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, isPackageModified(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 1059
    iget-object v6, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v8, p0, this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v6, v8, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V
    :try_end_c5
    .catchall {:try_start_65 .. :try_end_c5} :catchall_62

    goto :goto_aa
.end method
