.class Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;
.super Ljava/lang/Thread;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnInstallPkgsThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;
    }
.end annotation


# instance fields
.field activeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field givenMsg:I

.field packagesList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field personaId:I

.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;ILjava/util/Set;I)V
    .registers 8
    .param p2, "id"    # I
    .param p4, "msg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 6602
    iput-object p1, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6596
    const/4 v0, 0x0

    iput v0, p0, personaId:I

    .line 6597
    iput-object v1, p0, packagesList:Ljava/util/Set;

    .line 6598
    iput-object v1, p0, activeList:Ljava/util/List;

    .line 6599
    iput-object v1, p0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 6603
    iput p2, p0, personaId:I

    .line 6604
    iput-object p3, p0, packagesList:Ljava/util/Set;

    .line 6605
    iput p4, p0, givenMsg:I

    .line 6606
    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 6607
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getActiveAdminsInfo for personaId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, personaId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6608
    iget-object v0, p0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget v1, p0, personaId:I

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, activeList:Ljava/util/List;

    .line 6609
    return-void
.end method

.method private deletePackage(ILjava/lang/String;)Z
    .registers 8
    .param p1, "personaId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 6674
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deletePackage request for personaId -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and pkg-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6676
    new-instance v1, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;-><init>(Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;)V

    .line 6679
    .local v1, "obs":Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;
    :try_start_28
    iget-object v2, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v1, p1, v3}, Lcom/android/server/pm/PackageManagerService;->deletePackageAsUserAndPersona(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 6680
    monitor-enter v1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_33} :catch_5e

    .line 6681
    :goto_33
    :try_start_33
    iget-boolean v2, v1, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;->finished:Z
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_5b

    if-nez v2, :cond_57

    .line 6683
    :try_start_37
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting in while loop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;->finished:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6684
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_54} :catch_55
    .catchall {:try_start_37 .. :try_end_54} :catchall_5b

    goto :goto_33

    .line 6685
    :catch_55
    move-exception v2

    goto :goto_33

    .line 6688
    :cond_57
    :try_start_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_5b

    .line 6693
    :goto_58
    iget-boolean v2, v1, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread$PackageDeleteObserver;->result:Z

    return v2

    .line 6688
    :catchall_5b
    move-exception v2

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v2
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5e} :catch_5e

    .line 6689
    :catch_5e
    move-exception v0

    .line 6690
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deletePackage exception -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method

.method private setInstalledPkgList(ILjava/util/Set;)V
    .registers 8
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6627
    .local p2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInstalledPkgList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "installed pkg count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6628
    iget-object v2, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 6629
    :try_start_2f
    iget-object v2, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 6630
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_41

    .line 6631
    const-string v2, "PersonaManagerService"

    const-string/jumbo v4, "setInstalledPkgList personaInfo is null "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6632
    monitor-exit v3

    .line 6638
    :goto_40
    return-void

    .line 6634
    :cond_41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6635
    .local v1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Landroid/content/pm/PersonaInfo;->setInstalledPkgList(Ljava/util/List;)V

    .line 6636
    iget-object v2, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 6637
    monitor-exit v3

    goto :goto_40

    .end local v0    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v1    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_50
    move-exception v2

    monitor-exit v3
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_50

    throw v2
.end method

.method private unInstallPackages(ILjava/util/Set;)V
    .registers 9
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6641
    .local p2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unInstallPackages request for personaid -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6642
    if-nez p2, :cond_1c

    .line 6653
    :cond_1b
    return-void

    .line 6643
    :cond_1c
    const/4 v2, 0x0

    .line 6644
    .local v2, "result":Z
    invoke-direct {p0, p1, p2}, setInstalledPkgList(ILjava/util/Set;)V

    .line 6645
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6646
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, deletePackage(ILjava/lang/String;)Z

    move-result v2

    .line 6647
    if-nez v2, :cond_56

    .line 6648
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unInstallPackages : package ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed to uninstall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 6650
    :cond_56
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unInstallPackages : package ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") successfully uninstalled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 6613
    const-string v1, "PersonaManagerService"

    const-string v2, "UnInstallPkgsThread has started..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6614
    iget v1, p0, personaId:I

    iget-object v2, p0, packagesList:Ljava/util/Set;

    invoke-direct {p0, v1, v2}, unInstallPackages(ILjava/util/Set;)V

    .line 6616
    iget v1, p0, givenMsg:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    .line 6617
    const-string v1, "PersonaManagerService"

    const-string v2, " msg was -1 and removing the Persona"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6618
    iget-object v1, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v2, p0, personaId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService;->finishRemoveUser(I)V

    .line 6624
    :cond_22
    :goto_22
    return-void

    .line 6619
    :cond_23
    iget v1, p0, givenMsg:I

    if-ne v1, v3, :cond_22

    .line 6620
    iget-object v1, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6621
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, personaId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 6622
    iget-object v1, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_22
.end method
