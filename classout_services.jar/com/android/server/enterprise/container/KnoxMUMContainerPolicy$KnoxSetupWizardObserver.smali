.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KnoxSetupWizardObserver"
.end annotation


# instance fields
.field mPid:I

.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .registers 3

    .prologue
    .line 737
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 738
    const/4 v0, -0x1

    iput v0, p0, mPid:I

    return-void
.end method


# virtual methods
.method getPackageNameFromPID(I)Ljava/lang/String;
    .registers 5
    .param p1, "pid"    # I

    .prologue
    .line 744
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 745
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_e

    .line 746
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 749
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_20
    return-object v2

    :cond_21
    const-string v2, ""

    goto :goto_20
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "btop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, -0x1

    if-eq p1, v1, :cond_8

    .line 757
    invoke-virtual {p0, p1}, getPackageNameFromPID(I)Ljava/lang/String;

    move-result-object v0

    .line 759
    :cond_8
    if-eqz v0, :cond_3a

    const-string v1, "com.sec.knox.knoxsetupwizardclient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 760
    iput p1, p0, mPid:I

    .line 761
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Packagename : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_3a
    return-void
.end method

.method public onImportanceChanged(III)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 776
    return-void
.end method

.method public onProcessDied(II)V
    .registers 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 784
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 785
    :try_start_7
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onProcessDied mPid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget v4, p0, mPid:I

    if-ne v4, p1, :cond_102

    .line 787
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "It seems SetupWizard got killed. Lets see if any request id needs to be cleaned! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_102

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/knox/container/ContainerCreationParams;

    .line 789
    .local v2, "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v2}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestState()I

    move-result v4

    if-nez v4, :cond_c8

    .line 790
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing param:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z
    invoke-static {v4, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;)Z

    .line 792
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Unregister observer in STATE_SETUP_PROGRESS"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-virtual {p0}, reset()V

    .line 794
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v6, p0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;
    invoke-static {v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    move-result-object v6

    invoke-interface {v4, v6}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 805
    :cond_a2
    :goto_a2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.knox.died.SETUP_WIZARD"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 806
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.knox.knoxsetupwizardclient"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Landroid/content/Context;

    move-result-object v4

    new-instance v6, Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 808
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Sending broadcast com.sec.knox.died.SETUP_WIZARD"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 811
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    :catchall_c5
    move-exception v4

    monitor-exit v5
    :try_end_c7
    .catchall {:try_start_7 .. :try_end_c7} :catchall_c5

    throw v4

    .line 795
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_c8
    :try_start_c8
    invoke-virtual {v2}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestState()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_a2

    .line 797
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;
    invoke-static {v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-result-object v4

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 798
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;
    invoke-static {v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 799
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z
    invoke-static {v4, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;)Z

    .line 800
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Unregister observer in STATE_SETUP_POST_CREATE"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual {p0}, reset()V

    .line 802
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v6, p0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;
    invoke-static {v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    move-result-object v6

    invoke-interface {v4, v6}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    goto :goto_a2

    .line 811
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_102
    monitor-exit v5
    :try_end_103
    .catchall {:try_start_c8 .. :try_end_103} :catchall_c5

    .line 812
    return-void
.end method

.method public onProcessStateChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 779
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 740
    const/4 v0, -0x1

    iput v0, p0, mPid:I

    .line 741
    return-void
.end method
