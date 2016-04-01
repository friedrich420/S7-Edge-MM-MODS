.class abstract Lcom/android/server/pm/PackageManagerService$InstallArgs;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "InstallArgs"
.end annotation


# instance fields
.field final abiOverride:Ljava/lang/String;

.field final installFlags:I

.field final installGrantPermissions:[Ljava/lang/String;

.field final installerPackageName:Ljava/lang/String;

.field final installerSourcePackageName:Ljava/lang/String;

.field instructionSets:[Ljava/lang/String;

.field final manifestDigest:Landroid/content/pm/ManifestDigest;

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final user:Landroid/os/UserHandle;

.field final volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13
    .param p1, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p2, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "installFlags"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "volumeUuid"    # Ljava/lang/String;
    .param p7, "manifestDigest"    # Landroid/content/pm/ManifestDigest;
    .param p8, "user"    # Landroid/os/UserHandle;
    .param p9, "instructionSets"    # [Ljava/lang/String;
    .param p10, "abiOverride"    # Ljava/lang/String;
    .param p11, "installGrantPermissions"    # [Ljava/lang/String;

    .prologue
    .line 16546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16547
    iput-object p1, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 16548
    iput-object p2, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 16549
    iput p4, p0, installFlags:I

    .line 16550
    iput-object p3, p0, observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 16551
    iput-object p5, p0, installerPackageName:Ljava/lang/String;

    .line 16552
    iput-object p6, p0, volumeUuid:Ljava/lang/String;

    .line 16553
    const/4 v0, 0x0

    iput-object v0, p0, installerSourcePackageName:Ljava/lang/String;

    .line 16554
    iput-object p7, p0, manifestDigest:Landroid/content/pm/ManifestDigest;

    .line 16555
    iput-object p8, p0, user:Landroid/os/UserHandle;

    .line 16556
    iput-object p9, p0, instructionSets:[Ljava/lang/String;

    .line 16557
    iput-object p10, p0, abiOverride:Ljava/lang/String;

    .line 16558
    iput-object p11, p0, installGrantPermissions:[Ljava/lang/String;

    .line 16559
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13
    .param p1, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p2, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "installFlags"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "installerSourcePackageName"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "manifestDigest"    # Landroid/content/pm/ManifestDigest;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "instructionSets"    # [Ljava/lang/String;
    .param p11, "abiOverride"    # Ljava/lang/String;
    .param p12, "installGrantPermissions"    # [Ljava/lang/String;

    .prologue
    .line 16565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16566
    iput-object p1, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 16567
    iput-object p2, p0, move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 16568
    iput p4, p0, installFlags:I

    .line 16569
    iput-object p3, p0, observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 16570
    iput-object p5, p0, installerPackageName:Ljava/lang/String;

    .line 16571
    iput-object p6, p0, installerSourcePackageName:Ljava/lang/String;

    .line 16572
    iput-object p7, p0, volumeUuid:Ljava/lang/String;

    .line 16573
    iput-object p8, p0, manifestDigest:Landroid/content/pm/ManifestDigest;

    .line 16574
    iput-object p9, p0, user:Landroid/os/UserHandle;

    .line 16575
    iput-object p10, p0, instructionSets:[Ljava/lang/String;

    .line 16576
    iput-object p11, p0, abiOverride:Ljava/lang/String;

    .line 16577
    iput-object p12, p0, installGrantPermissions:[Ljava/lang/String;

    .line 16578
    return-void
.end method


# virtual methods
.method abstract cleanUpResourcesLI()V
.end method

.method abstract copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method doPostCopy(I)I
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 16617
    const/4 v0, 0x1

    return v0
.end method

.method abstract doPostDeleteLI(Z)Z
.end method

.method abstract doPostInstall(II)I
.end method

.method doPreCopy()I
    .registers 2

    .prologue
    .line 16606
    const/4 v0, 0x1

    return v0
.end method

.method abstract doPreInstall(I)I
.end method

.method abstract doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
.end method

.method abstract getCodePath()Ljava/lang/String;
.end method

.method abstract getResourcePath()Ljava/lang/String;
.end method

.method getUser()Landroid/os/UserHandle;
    .registers 2

    .prologue
    .line 16629
    iget-object v0, p0, user:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected isExternalAsec()Z
    .registers 2

    .prologue
    .line 16625
    iget v0, p0, installFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected isFwdLocked()Z
    .registers 2

    .prologue
    .line 16621
    iget v0, p0, installFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
