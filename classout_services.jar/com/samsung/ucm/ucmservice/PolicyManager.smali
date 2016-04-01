.class public Lcom/samsung/ucm/ucmservice/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# static fields
.field private static final ALIASACCESSIBLE:I = 0x1

.field private static final ALIASINACCESSIBLE:I = 0x0

.field private static final ALIASUNKNOWN:I = 0x2

.field public static final BUNDLE_EXTRA_ACCESS_TYPE:Ljava/lang/String; = "access_type"

.field public static final BUNDLE_EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final BUNDLE_EXTRA_ESE_STORAGE_OPTION:Ljava/lang/String; = "ese_storage_option"

.field private static final TAG:Ljava/lang/String; = "PolicyManager"

.field public static final UCM_ACCESS_TYPE_CERTIFICATE:I = 0x68

.field public static final UCM_ACCESS_TYPE_STORAGE:I = 0x67

.field public static final UCM_AUTH_TYPE_LOCKED:I = 0x64

.field public static final UCM_EXEMPT_TYPE_AUTH:I = 0x6a

.field public static final UCM_STORAGE_OPTION_INSIDE:I = 0x65

.field public static final UCM_STORAGE_OPTION_OUTSIDE:I = 0x66


# instance fields
.field public hiddenPluginPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.sec.smartcard.manager"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.samsung.ucs.agent.boot"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, hiddenPluginPackages:Ljava/util/ArrayList;

    .line 60
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private getPackageNameForUid(I)Z
    .registers 9
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 457
    const/4 v2, 0x0

    .line 459
    .local v2, "packageName":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 460
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_53

    .line 464
    :goto_34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_52

    if-eqz v2, :cond_52

    .line 465
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 466
    .local v1, "index":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_49

    .line 467
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 469
    :cond_49
    const-string v4, "android.uid.systemui"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 470
    const/4 v3, 0x1

    .line 473
    .end local v1    # "index":I
    :cond_52
    return v3

    .line 461
    :catch_53
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    const-string v5, "Exception in getPackageNameForUid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private declared-synchronized getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    .registers 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v0, :cond_12

    .line 65
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    iput-object v0, p0, mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    .line 67
    :cond_12
    iget-object v0, p0, mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .line 64
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isAuthEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)Z
    .registers 9
    .param p1, "userid"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .param p3, "calleruid"    # I

    .prologue
    .line 299
    const-string v2, "PolicyManager"

    const-string/jumbo v3, "isAuthEnabled() called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0, p1, p2}, getStorageAuthenticationType(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I

    move-result v0

    .line 301
    .local v0, "authType":I
    const/4 v1, 0x0

    .line 302
    .local v1, "status":Z
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAuthEnabled authType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/16 v2, 0x64

    if-ne v2, v0, :cond_53

    .line 305
    invoke-virtual {p0, p3, p2}, isPackageFromExemptList(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 306
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAuthEnabled calleruid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not auth exempt package"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0, p1}, isAuthTypeLockforUser(I)Z

    move-result v1

    .line 312
    :cond_53
    :goto_53
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAuthEnabled() status - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return v1

    .line 309
    :cond_6d
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAuthEnabled calleruid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is auth exempt package"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53
.end method

.method private isAuthTypeLockforUser(I)Z
    .registers 10
    .param p1, "userid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 317
    const-string v5, "PolicyManager"

    const-string/jumbo v6, "isAuthTypeLockforUser() called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-nez p1, :cond_3a

    .line 320
    const-string v5, "PolicyManager"

    const-string/jumbo v6, "isAuthTypeLockforUser() userid == UserHandle.USER_OWNER"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 322
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-nez v0, :cond_2a

    .line 323
    const-string v4, "PolicyManager"

    const-string/jumbo v5, "isAuthTypeLockforUser() KeyguardManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v0    # "kgm":Landroid/app/KeyguardManager;
    :cond_29
    :goto_29
    return v3

    .line 326
    .restart local v0    # "kgm":Landroid/app/KeyguardManager;
    :cond_2a
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 327
    const-string v3, "PolicyManager"

    const-string/jumbo v5, "isAuthTypeLockforUser() Keyguard is locked."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 328
    goto :goto_29

    .line 332
    .end local v0    # "kgm":Landroid/app/KeyguardManager;
    :cond_3a
    const-string v5, "PolicyManager"

    const-string/jumbo v6, "isAuthTypeLockforUser() userid can be KNOX"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 334
    .local v1, "pm":Landroid/os/PersonaManager;
    if-nez v1, :cond_58

    .line 335
    const-string v4, "PolicyManager"

    const-string/jumbo v5, "isAuthTypeLockforUser() PersonaManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 340
    :cond_58
    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-nez v5, :cond_78

    .line 341
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAuthTypeLockforUser():  userid is not KNOX container: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 344
    :cond_78
    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    .line 345
    .local v2, "sm":Landroid/os/PersonaManager$StateManager;
    const-string v5, "PolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAuthTypeLockforUser():  Knox state is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-object v5, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v5}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v5

    if-nez v5, :cond_29

    move v3, v4

    .line 347
    goto :goto_29
.end method


# virtual methods
.method public addGrantKeychainAccess(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "grant"    # Z

    .prologue
    .line 536
    return-void
.end method

.method public clearKeychainAccess(I)V
    .registers 2
    .param p1, "user"    # I

    .prologue
    .line 544
    return-void
.end method

.method public delGrantKeychainAccess(Ljava/lang/String;I)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 540
    return-void
.end method

.method protected final getCertificateAliases(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Ljava/util/List;
    .registers 10
    .param p1, "uid"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 482
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.getCertificateAliases() for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :try_start_19
    invoke-direct {p0}, getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 485
    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliases(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "aliasesStrArr":[Ljava/lang/String;
    if-nez v1, :cond_24

    .line 496
    .end local v1    # "aliasesStrArr":[Ljava/lang/String;
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_23
    return-object v0

    .line 489
    .restart local v1    # "aliasesStrArr":[Ljava/lang/String;
    .restart local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :cond_24
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.getCertificateAliases():  size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_40} :catch_42

    move-result-object v0

    .line 491
    .local v0, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_23

    .line 492
    .end local v0    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "aliasesStrArr":[Ljava/lang/String;
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :catch_42
    move-exception v2

    .line 493
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in getCertificateAliases: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method protected getStorageAuthenticationType(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 117
    const-string v2, "PolicyManager"

    const-string v3, "PolicyManager.getStorageAuthenticationType() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :try_start_7
    invoke-direct {p0}, getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    .line 120
    .local v1, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v1, p1, p2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getStorageAuthenticationType(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_10

    move-result v2

    .line 125
    .end local v1    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_f
    return v2

    .line 121
    :catch_10
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in getStorageAuthenticationType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .registers 9
    .param p1, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 279
    new-instance v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 280
    .local v1, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 282
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.getallAliasesforCS() for csname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 284
    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 287
    :cond_35
    :try_start_35
    invoke-direct {p0}, getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 288
    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, v1}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getAllCertificateAliases(Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_3e

    move-result-object v0

    .line 294
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_3d
    return-object v0

    .line 290
    :catch_3e
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in getallAliasesforCS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method public getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .registers 10
    .param p1, "uid"    # I
    .param p2, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 228
    new-instance v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 229
    .local v1, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 231
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.getallAliasesforUid() for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 233
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 236
    :cond_33
    :try_start_33
    invoke-direct {p0}, getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 237
    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, v1}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliases(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_3c

    move-result-object v0

    .line 243
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_3b
    return-object v0

    .line 239
    :catch_3c
    move-exception v2

    .line 240
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in getallAliasesforUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
    .registers 10
    .param p1, "userid"    # I
    .param p2, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 254
    new-instance v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 255
    .local v1, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 257
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.getallAliasesforUserId() for userid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 259
    iget-object v4, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 262
    :cond_33
    :try_start_33
    invoke-direct {p0}, getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 263
    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, v1}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliasesAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_3c

    move-result-object v0

    .line 269
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_3b
    return-object v0

    .line 265
    :catch_3c
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in getallAliasesforUserId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public isAccessAllowedforUid(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 154
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.isAccessAllowedforUid() for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "access_type"

    const/16 v5, 0x67

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    :try_start_24
    invoke-direct {p0}, getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 160
    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p2, v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isAccessAllowed(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Z

    move-result v2

    .line 161
    .local v2, "result":Z
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.isAccessAllowedforUid():  result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_44} :catch_45

    .line 167
    .end local v2    # "result":Z
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_44
    return v2

    .line 163
    :catch_45
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in isAccessAllowedforUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    const/4 v2, 0x0

    goto :goto_44
.end method

.method public isAliasAllowedforUid(ILjava/lang/String;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 11
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 180
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.isAliasAllowedforUid() for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "access_type"

    const/16 v5, 0x68

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    const-string v4, "alias"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :try_start_29
    invoke-direct {p0}, getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 187
    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p3, v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isAccessAllowed(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Z

    move-result v2

    .line 188
    .local v2, "result":Z
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.isAliasAllowedforUid():  result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_49} :catch_4a

    .line 194
    .end local v2    # "result":Z
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_49
    return v2

    .line 190
    :catch_4a
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in isAliasAllowedforUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    const/4 v2, 0x0

    goto :goto_49
.end method

.method public isAliasknown(ILjava/lang/String;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 11
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 207
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyManager.isAliasknown() for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :try_start_18
    invoke-direct {p0}, getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    .line 211
    .local v3, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v3, p1, p3}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliases(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "aliasArray":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_29

    move-result v2

    .line 218
    .end local v0    # "aliasArray":[Ljava/lang/String;
    .end local v3    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_28
    return v2

    .line 214
    :catch_29
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in isAliasknown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    const/4 v2, 0x0

    goto :goto_28
.end method

.method public isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .registers 7
    .param p1, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 356
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "cspkgname":Ljava/lang/String;
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SE visibility being checked for cs Name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Package name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_35
    if-nez v0, :cond_42

    .line 363
    const-string v2, "PolicyManager"

    const-string/jumbo v3, "cspkgname = NULL. Unknown CS. CS Not Obscure"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_3f
    :goto_3f
    return v1

    .line 359
    .end local v0    # "cspkgname":Ljava/lang/String;
    :cond_40
    const/4 v0, 0x0

    .restart local v0    # "cspkgname":Ljava/lang/String;
    goto :goto_35

    .line 366
    :cond_42
    iget-object v2, p0, hiddenPluginPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 367
    const/4 v1, 0x1

    goto :goto_3f
.end method

.method public isKeychainAccessGranted(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 531
    const/4 v0, 0x1

    return v0
.end method

.method protected isPackageFromExemptList(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 134
    const-string v2, "PolicyManager"

    const-string v3, "PolicyManager.isPackageFromExemptList() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :try_start_7
    invoke-direct {p0}, getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    .line 137
    .local v1, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    const/16 v2, 0x6a

    invoke-interface {v1, p1, p2, v2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isPackageFromExemptList(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_12

    move-result v2

    .line 142
    .end local v1    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_11
    return v2

    .line 138
    :catch_12
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in isPackageFromExemptList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I
    .registers 14
    .param p1, "csAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .param p2, "userid"    # I
    .param p3, "uid"    # I
    .param p4, "isRequestByMdmOrKnox"    # Z
    .param p5, "aliasName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 373
    const-string v5, "PolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--isSEStorageAccessAllowed()-- for Source="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; UserId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move v0, p3

    .line 377
    .local v0, "calleruid":I
    new-instance v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 378
    .local v1, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v5, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v5, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 379
    iget-object v5, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7b

    .line 380
    iget-object v5, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 381
    const-string v5, "PolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SE access being checked for cs Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Package name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {p0, p1}, isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 453
    :goto_7a
    return v3

    .line 383
    :cond_7b
    const-string v3, "PolicyManager"

    const-string v5, "Package name for CS found NULL. Denying CS access."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 384
    goto :goto_7a

    .line 392
    :cond_84
    invoke-virtual {p0, p2, v1}, isStorageEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_d7

    .line 393
    iget-object v5, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v2, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    .line 394
    .local v2, "enforceManagement":Z
    if-eqz v2, :cond_b4

    .line 395
    const-string v3, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! Storage is not allowed for userid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and uid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 396
    goto :goto_7a

    .line 398
    :cond_b4
    const-string v4, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storage is allowed for userid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and  uid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 404
    .end local v2    # "enforceManagement":Z
    :cond_d7
    invoke-virtual {p0, p2, v1}, isStorageLocked(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-eqz v5, :cond_f7

    .line 405
    const-string v3, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! Storage access is temporary NOT allowed from MDM for mUserId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 406
    goto :goto_7a

    .line 410
    :cond_f7
    if-eqz p4, :cond_102

    .line 411
    const-string v4, "PolicyManager"

    const-string v5, "MDM or KNOX licensed caller. Skipping additional validation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7a

    .line 414
    :cond_102
    const-string v5, "PolicyManager"

    const-string v6, "Not a MDM or KNOX licensed caller. Performing additional validation checks"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {p0, p2, v1, v0}, isAuthEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v5

    if-eqz v5, :cond_12a

    .line 419
    const-string v3, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storage access is locked currently for userid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 420
    goto/16 :goto_7a

    .line 424
    :cond_12a
    const/16 v5, 0x3f2

    if-eq v0, v5, :cond_132

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_13b

    .line 425
    :cond_132
    const-string v4, "PolicyManager"

    const-string v5, "Calling Id is either WIFI or System; skip additional validation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7a

    .line 430
    :cond_13b
    invoke-direct {p0, v0}, getPackageNameForUid(I)Z

    move-result v5

    if-eqz v5, :cond_14a

    .line 431
    const-string v4, "PolicyManager"

    const-string v5, "Calling Id is SystemUI application"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7a

    .line 436
    :cond_14a
    invoke-virtual {p0, v0, v1}, isAccessAllowedforUid(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_16b

    .line 437
    const-string v3, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!!  isAccessAllowedforUid() returned false: SE access is NOT allowed for calleruid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 438
    goto/16 :goto_7a

    .line 440
    :cond_16b
    if-eqz p5, :cond_1af

    .line 441
    invoke-virtual {p0, v0, p5, v1}, isAliasknown(ILjava/lang/String;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_18e

    .line 442
    const-string v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING!!!!  isAliasknown() returned false: ALIAS not known to MDM for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v3, 0x2

    goto/16 :goto_7a

    .line 445
    :cond_18e
    invoke-virtual {p0, v0, p5, v1}, isAliasAllowedforUid(ILjava/lang/String;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_1af

    .line 446
    const-string v3, "PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!!  isAliasAllowedforUid() returned false: ALIAS access is NOT allowed for calleruid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 447
    goto/16 :goto_7a

    .line 451
    :cond_1af
    const-string v4, "PolicyManager"

    const-string/jumbo v5, "isSEStorageAccessAllowed() VALIDATED....."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7a
.end method

.method protected final isStorageEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 77
    const-string v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyManager.isStorageEnabled() for userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v1, 0x0

    .line 80
    .local v1, "result":Z
    :try_start_19
    invoke-direct {p0}, getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v2

    .line 81
    .local v2, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v2, p1, p2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageManagedAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

    .line 82
    const-string v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyManager.isStorageEnabled() result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_39} :catch_3a

    .line 87
    .end local v2    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_39
    return v1

    .line 83
    :catch_3a
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in isStorageEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method protected final isStorageLocked(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "cs"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 96
    const-string v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyManager.isStorageLocked() for userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "result":Z
    :try_start_19
    invoke-direct {p0}, getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v2

    .line 100
    .local v2, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-interface {v2, p1, p2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageLockedAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

    .line 101
    const-string v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyManager.isStorageLocked() result result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_39} :catch_3a

    .line 106
    .end local v2    # "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :goto_39
    return v1

    .line 102
    :catch_3a
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in isStorageLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method
