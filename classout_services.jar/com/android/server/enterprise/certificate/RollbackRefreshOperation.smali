.class Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
.super Ljava/lang/Object;
.source "RollbackRefreshOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;,
        Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;,
        Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    }
.end annotation


# static fields
.field public static final INIT_ROLLBACK_REFRESH_PENDING_LIST:I = 0x3

.field private static final KEYSTORE_ADD_OPERATION:I = 0x0

.field private static final KEYSTORE_DELETE_OPERATION:I = 0x1

.field public static final KEYSTORE_REFRESH_OPERATION:I = 0x1

.field public static final KEYSTORE_ROLLBACK_OPERATION:I = 0x0

.field public static final KEYSTORE_ROLLBACK_REFRESH_OPERATION:I = 0x2

.field public static final REMOVE_ROLLBACK_REFRESH_PENDING_LIST:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RollbackRefreshOperation"


# instance fields
.field private final ALIAS_SEPARATOR:Ljava/lang/String;

.field private final mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

.field private mContext:Landroid/content/Context;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeyStoreLock:Ljava/lang/Object;

.field private mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mOperation:I

.field private mPendingKeystoreAction:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPriority:I

.field private mUserId:I

.field private mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Context;)V
    .registers 4
    .param p1, "certPolicy"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "_#_"

    iput-object v0, p0, ALIAS_SEPARATOR:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mKeyStoreLock:Ljava/lang/Object;

    .line 67
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mPendingKeystoreAction:Ljava/util/Set;

    .line 77
    const/16 v0, 0xa

    iput v0, p0, mPriority:I

    .line 78
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-direct {v0, p2}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 79
    iput-object p1, p0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 80
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 81
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 82
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .prologue
    .line 37
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .prologue
    .line 37
    iget-object v0, p0, mKeyStoreLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/security/KeyStore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .prologue
    .line 37
    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method private executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .registers 10
    .param p1, "unlockedKeystores"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_1c

    aget-object v3, v0, v1

    .line 87
    .local v3, "userId":Ljava/lang/Integer;
    const/4 v5, 0x4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v5, v6}, refreshNativeKeyStoreAsUser(II)V

    .line 88
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_19

    .line 90
    const/4 v5, 0x2

    invoke-direct {p0, v5}, refreshNativeKeyStore(I)V

    .line 86
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 93
    .end local v3    # "userId":Ljava/lang/Integer;
    :cond_1c
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 94
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-direct {p0, v5}, refreshSystemKeyStoreAsUser(I)V

    goto :goto_20

    .line 96
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_38
    return-void
.end method

.method private executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .registers 10
    .param p1, "unlockedKeystores"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_1c

    aget-object v3, v0, v1

    .line 100
    .local v3, "userId":Ljava/lang/Integer;
    const/4 v5, 0x4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v5, v6}, rollbackNativeKeyStoreAsUser(II)V

    .line 101
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_19

    .line 103
    const/4 v5, 0x2

    invoke-direct {p0, v5}, rollbackNativeKeyStore(I)V

    .line 99
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 106
    .end local v3    # "userId":Ljava/lang/Integer;
    :cond_1c
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 107
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-direct {p0, v5}, rollbackSystemKeyStoreAsUser(I)V

    goto :goto_20

    .line 109
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_38
    return-void
.end method

.method private getUsersKeystoreUnlocked(I)[Ljava/lang/Integer;
    .registers 10
    .param p1, "callingUserId"    # I

    .prologue
    .line 740
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v5, "userKeystoresUnlocked":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v4

    .line 743
    .local v4, "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_23

    .line 744
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 745
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .restart local v4    # "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 753
    .local v2, "token":J
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 754
    .local v1, "userId":I
    invoke-direct {p0, v1}, isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 755
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 748
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "userId":I
    .end local v2    # "token":J
    :cond_49
    const/4 v6, 0x0

    .line 762
    :goto_4a
    return-object v6

    .line 757
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "userId":I
    .restart local v2    # "token":J
    :cond_4b
    iget-object v6, p0, mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 760
    .end local v1    # "userId":I
    :cond_55
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 762
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Integer;

    goto :goto_4a
.end method

.method private isNativeKeyStoreUnlockedAsUser(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 783
    const/4 v1, 0x0

    .line 785
    .local v1, "isUnlocked":Z
    :try_start_1
    iget-object v2, p0, mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;
    :try_end_9
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_9} :catch_d

    if-ne v2, v3, :cond_c

    .line 786
    const/4 v1, 0x1

    .line 794
    :cond_c
    :goto_c
    return v1

    .line 788
    :catch_d
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/AssertionError;
    const-string v2, "RollbackRefreshOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore State Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private pruneDeletedContainerProfiles(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v5, p0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPersonaManager()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v1

    .line 178
    .local v1, "activePersonas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "activePersonaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2c

    .line 180
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 181
    .local v3, "tempPersonaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v3, :cond_29

    .line 182
    new-instance v5, Ljava/lang/Integer;

    iget v6, v3, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 185
    .end local v3    # "tempPersonaInfo":Landroid/content/pm/PersonaInfo;
    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5c

    .line 186
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 187
    .local v4, "tempUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_59

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0x64

    if-lt v5, v6, :cond_59

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_59

    .line 189
    new-instance v5, Ljava/lang/Integer;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    .line 191
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 192
    add-int/lit8 v2, v2, -0x1

    .line 185
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 197
    .end local v4    # "tempUserInfo":Landroid/content/pm/UserInfo;
    :cond_5c
    return-object p1
.end method

.method private refreshNativeKeyStore(I)V
    .registers 3
    .param p1, "keystoreUid"    # I

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, refreshNativeKeyStoreAsUser(II)V

    .line 473
    return-void
.end method

.method private refreshNativeKeyStoreAsUser(II)V
    .registers 26
    .param p1, "keystoreUid"    # I
    .param p2, "userId"    # I

    .prologue
    .line 477
    invoke-direct/range {p0 .. p1}, selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v18

    .line 481
    .local v18, "keystoreTypeKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v22

    .line 483
    .local v22, "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v19, 0x3f2

    .line 484
    .local v19, "keystoreTypeUid":I
    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_19

    .line 485
    move/from16 v19, p2

    .line 491
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v21

    .line 495
    .local v21, "removedUserNativeKeyStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v4

    .line 496
    :try_start_2a
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, mKeyStore:Landroid/security/KeyStore;

    const-string v5, "CACERT_"

    invoke-static/range {p1 .. p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 499
    .local v10, "aliasList":[Ljava/lang/String;
    if-eqz v10, :cond_c9

    .line 500
    move-object v11, v10

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .local v17, "i$":I
    :goto_4c
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_c9

    aget-object v9, v11, v17

    .line 501
    .local v9, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v13

    .line 503
    .local v13, "certBytes":[B
    if-eqz v13, :cond_c4

    .line 504
    invoke-static {v13}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v14

    .line 505
    .local v14, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c4

    .line 506
    const/4 v15, 0x1

    .line 507
    .local v15, "i":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v17    # "i$":I
    .local v16, "i$":Ljava/util/Iterator;
    :goto_84
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    .line 508
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v12, :cond_c1

    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v5, 0x3

    move/from16 v0, p2

    invoke-virtual {v3, v12, v5, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-nez v3, :cond_c1

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_#_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    :cond_c1
    add-int/lit8 v15, v15, 0x1

    .line 514
    goto :goto_84

    .line 500
    .end local v12    # "cert":Ljava/security/cert/X509Certificate;
    .end local v14    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v15    # "i":I
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_c4
    add-int/lit8 v16, v17, 0x1

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    goto :goto_4c

    .line 519
    .end local v9    # "alias":Ljava/lang/String;
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v13    # "certBytes":[B
    .end local v17    # "i$":I
    .end local v20    # "len$":I
    :cond_c9
    move-object/from16 v0, p0

    iget-object v3, v0, mKeyStore:Landroid/security/KeyStore;

    const-string v5, "USRCERT_"

    invoke-static/range {p1 .. p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 521
    if-eqz v10, :cond_15e

    .line 522
    move-object v11, v10

    .restart local v11    # "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v20, v0

    .restart local v20    # "len$":I
    const/16 v16, 0x0

    .restart local v16    # "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    :goto_e1
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_15e

    aget-object v9, v11, v17

    .line 523
    .restart local v9    # "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v13

    .line 525
    .restart local v13    # "certBytes":[B
    if-eqz v13, :cond_159

    .line 526
    invoke-static {v13}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v14

    .line 527
    .restart local v14    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_159

    .line 528
    const/4 v15, 0x1

    .line 529
    .restart local v15    # "i":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v17    # "i$":I
    .local v16, "i$":Ljava/util/Iterator;
    :goto_119
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_159

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    .line 530
    .restart local v12    # "cert":Ljava/security/cert/X509Certificate;
    if-eqz v12, :cond_156

    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v5, 0x3

    move/from16 v0, p2

    invoke-virtual {v3, v12, v5, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-nez v3, :cond_156

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_#_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_156
    add-int/lit8 v15, v15, 0x1

    .line 536
    goto :goto_119

    .line 522
    .end local v12    # "cert":Ljava/security/cert/X509Certificate;
    .end local v14    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v15    # "i":I
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_159
    add-int/lit8 v16, v17, 0x1

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    goto :goto_e1

    .line 542
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "aliasList":[Ljava/lang/String;
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v13    # "certBytes":[B
    .end local v17    # "i$":I
    .end local v20    # "len$":I
    :cond_15e
    monitor-exit v4
    :try_end_15f
    .catchall {:try_start_2a .. :try_end_15f} :catchall_1a1

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;I)Ljava/util/List;

    .line 547
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_191

    .line 548
    new-instance v2, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;

    const/4 v4, 0x1

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    .line 551
    .local v2, "nativeSystemOperation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 555
    .end local v2    # "nativeSystemOperation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;
    :cond_191
    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v3, v0, v4, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 556
    return-void

    .line 542
    :catchall_1a1
    move-exception v3

    :try_start_1a2
    monitor-exit v4
    :try_end_1a3
    .catchall {:try_start_1a2 .. :try_end_1a3} :catchall_1a1

    throw v3
.end method

.method private refreshSystemKeyStoreAsUser(I)V
    .registers 27
    .param p1, "userId"    # I

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemDisabledList"

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    .line 371
    .local v12, "disabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemPrevDisabledList"

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v19

    .line 373
    .local v19, "prevDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-object/from16 v0, p0

    iget-object v4, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v6, "userRemovedList"

    move/from16 v0, p1

    invoke-virtual {v4, v6, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v20

    .line 376
    .local v20, "removedUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 378
    .local v22, "token":J
    :try_start_35
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v3, v4}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_43} :catch_12d
    .catch Ljava/lang/AssertionError; {:try_start_35 .. :try_end_43} :catch_1a7
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_43} :catch_1f1
    .catchall {:try_start_35 .. :try_end_43} :catchall_221

    move-result-object v16

    .line 381
    .local v16, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_44
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_a8
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_10f
    .catch Ljava/security/cert/CertificateException; {:try_start_44 .. :try_end_47} :catch_1d2
    .catchall {:try_start_44 .. :try_end_47} :catchall_21c

    move-result-object v17

    .line 382
    .local v17, "keyChainService":Landroid/security/IKeyChainService;
    if-nez v17, :cond_51

    .line 451
    :try_start_4a
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4d} :catch_12d
    .catch Ljava/lang/AssertionError; {:try_start_4a .. :try_end_4d} :catch_1a7
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4d} :catch_1f1
    .catchall {:try_start_4a .. :try_end_4d} :catchall_221

    .line 464
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    .end local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v17    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_50
    return-void

    .line 387
    .restart local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v17    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_51
    :try_start_51
    invoke-interface/range {v17 .. v17}, Landroid/security/IKeyChainService;->allSystemAliases()Ljava/util/List;

    move-result-object v21

    .line 388
    .local v21, "systemAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_59
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 390
    .local v9, "alias":Ljava/lang/String;
    invoke-interface {v12, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 391
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v9, v3}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v11

    .line 393
    .local v11, "certData":[B
    if-eqz v11, :cond_59

    .line 394
    invoke-static {v11}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v18

    .line 395
    .local v18, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_7c
    :goto_7c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 396
    .local v10, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v10, :cond_7c

    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x2

    move/from16 v0, p1

    invoke-virtual {v3, v10, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 398
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Landroid/security/IKeyChainService;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 402
    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_a7} :catch_a8
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_a7} :catch_10f
    .catch Ljava/security/cert/CertificateException; {:try_start_51 .. :try_end_a7} :catch_1d2
    .catchall {:try_start_51 .. :try_end_a7} :catchall_21c

    goto :goto_7c

    .line 444
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    .end local v11    # "certData":[B
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v21    # "systemAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_a8
    move-exception v13

    .line 445
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_a9
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catchall {:try_start_a9 .. :try_end_c2} :catchall_21c

    .line 451
    :try_start_c2
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_c5
    .catch Ljava/lang/InterruptedException; {:try_start_c2 .. :try_end_c5} :catch_12d
    .catch Ljava/lang/AssertionError; {:try_start_c2 .. :try_end_c5} :catch_1a7
    .catch Ljava/lang/RuntimeException; {:try_start_c2 .. :try_end_c5} :catch_1f1
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_221

    .line 464
    .end local v13    # "e":Landroid/os/RemoteException;
    :goto_c5
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_50

    .line 411
    .restart local v17    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v21    # "systemAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c9
    :try_start_c9
    invoke-interface/range {v17 .. v17}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v24

    .line 412
    .local v24, "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_d1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 413
    .restart local v9    # "alias":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v9, v3}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v11

    .line 415
    .restart local v11    # "certData":[B
    if-eqz v11, :cond_d1

    .line 416
    invoke-static {v11}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v18

    .line 417
    .restart local v18    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_ee
    :goto_ee
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 418
    .restart local v10    # "cert":Ljava/security/cert/X509Certificate;
    if-eqz v10, :cond_ee

    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x3

    move/from16 v0, p1

    invoke-virtual {v3, v10, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-nez v3, :cond_ee

    .line 420
    move-object/from16 v0, v20

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_10e} :catch_a8
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_10e} :catch_10f
    .catch Ljava/security/cert/CertificateException; {:try_start_c9 .. :try_end_10e} :catch_1d2
    .catchall {:try_start_c9 .. :try_end_10e} :catchall_21c

    goto :goto_ee

    .line 446
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    .end local v11    # "certData":[B
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v21    # "systemAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_10f
    move-exception v13

    .line 447
    .local v13, "e":Ljava/io/IOException;
    :try_start_110
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_129
    .catchall {:try_start_110 .. :try_end_129} :catchall_21c

    .line 451
    :try_start_129
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_12c
    .catch Ljava/lang/InterruptedException; {:try_start_129 .. :try_end_12c} :catch_12d
    .catch Ljava/lang/AssertionError; {:try_start_129 .. :try_end_12c} :catch_1a7
    .catch Ljava/lang/RuntimeException; {:try_start_129 .. :try_end_12c} :catch_1f1
    .catchall {:try_start_129 .. :try_end_12c} :catchall_221

    goto :goto_c5

    .line 453
    .end local v13    # "e":Ljava/io/IOException;
    .end local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_12d
    move-exception v13

    .line 454
    .local v13, "e":Ljava/lang/InterruptedException;
    :try_start_12e
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_147
    .catchall {:try_start_12e .. :try_end_147} :catchall_221

    .line 464
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_50

    .line 427
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .restart local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v17    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v21    # "systemAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14c
    :try_start_14c
    move-object/from16 v0, p0

    iget-object v3, v0, mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;I)Ljava/util/List;

    .line 430
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v5, "deleteAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 432
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 433
    new-instance v2, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    .line 435
    .local v2, "operation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemDisabledList"

    move/from16 v0, p1

    invoke-virtual {v3, v4, v12, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemPrevDisabledList"

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "userRemovedList"

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v3, v4, v6, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    :try_end_1a2
    .catch Landroid/os/RemoteException; {:try_start_14c .. :try_end_1a2} :catch_a8
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_1a2} :catch_10f
    .catch Ljava/security/cert/CertificateException; {:try_start_14c .. :try_end_1a2} :catch_1d2
    .catchall {:try_start_14c .. :try_end_1a2} :catchall_21c

    .line 451
    :try_start_1a2
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_1a5
    .catch Ljava/lang/InterruptedException; {:try_start_1a2 .. :try_end_1a5} :catch_12d
    .catch Ljava/lang/AssertionError; {:try_start_1a2 .. :try_end_1a5} :catch_1a7
    .catch Ljava/lang/RuntimeException; {:try_start_1a2 .. :try_end_1a5} :catch_1f1
    .catchall {:try_start_1a2 .. :try_end_1a5} :catchall_221

    goto/16 :goto_c5

    .line 455
    .end local v2    # "operation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    .end local v5    # "deleteAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v17    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v21    # "systemAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1a7
    move-exception v13

    .line 458
    .local v13, "e":Ljava/lang/AssertionError;
    :try_start_1a8
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1cd
    .catchall {:try_start_1a8 .. :try_end_1cd} :catchall_221

    .line 464
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_50

    .line 448
    .end local v13    # "e":Ljava/lang/AssertionError;
    .restart local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1d2
    move-exception v13

    .line 449
    .local v13, "e":Ljava/security/cert/CertificateException;
    :try_start_1d3
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ec
    .catchall {:try_start_1d3 .. :try_end_1ec} :catchall_21c

    .line 451
    :try_start_1ec
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_1ef
    .catch Ljava/lang/InterruptedException; {:try_start_1ec .. :try_end_1ef} :catch_12d
    .catch Ljava/lang/AssertionError; {:try_start_1ec .. :try_end_1ef} :catch_1a7
    .catch Ljava/lang/RuntimeException; {:try_start_1ec .. :try_end_1ef} :catch_1f1
    .catchall {:try_start_1ec .. :try_end_1ef} :catchall_221

    goto/16 :goto_c5

    .line 459
    .end local v13    # "e":Ljava/security/cert/CertificateException;
    .end local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1f1
    move-exception v13

    .line 462
    .local v13, "e":Ljava/lang/RuntimeException;
    :try_start_1f2
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_217
    .catchall {:try_start_1f2 .. :try_end_217} :catchall_221

    .line 464
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_50

    .line 451
    .end local v13    # "e":Ljava/lang/RuntimeException;
    .restart local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_21c
    move-exception v3

    :try_start_21d
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v3
    :try_end_221
    .catch Ljava/lang/InterruptedException; {:try_start_21d .. :try_end_221} :catch_12d
    .catch Ljava/lang/AssertionError; {:try_start_21d .. :try_end_221} :catch_1a7
    .catch Ljava/lang/RuntimeException; {:try_start_21d .. :try_end_221} :catch_1f1
    .catchall {:try_start_21d .. :try_end_221} :catchall_221

    .line 464
    .end local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_221
    move-exception v3

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private rollbackNativeKeyStore(I)V
    .registers 3
    .param p1, "keystoreUid"    # I

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, rollbackNativeKeyStoreAsUser(II)V

    .line 312
    return-void
.end method

.method private rollbackNativeKeyStoreAsUser(II)V
    .registers 20
    .param p1, "keystoreUid"    # I
    .param p2, "userId"    # I

    .prologue
    .line 316
    invoke-direct/range {p0 .. p1}, selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v12

    .line 320
    .local v12, "keystoreTypeKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move/from16 v0, p2

    invoke-virtual {v3, v12, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v16

    .line 322
    .local v16, "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v13, 0x3f2

    .line 323
    .local v13, "keystoreTypeUid":I
    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_17

    .line 324
    move/from16 v13, p2

    .line 330
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v13}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v15

    .line 334
    .local v15, "removedNativeKeyStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v14, "removeEdmNativeAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 339
    .local v7, "installNativeCerts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 341
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3d
    :goto_3d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 342
    .local v9, "alias":Ljava/lang/String;
    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 343
    .local v10, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v10, :cond_3d

    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x3

    move/from16 v0, p2

    invoke-virtual {v3, v10, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 345
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 350
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    :cond_65
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_69
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 351
    .restart local v9    # "alias":Ljava/lang/String;
    invoke-interface {v15, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    .line 355
    .end local v9    # "alias":Ljava/lang/String;
    :cond_79
    new-instance v2, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    .line 357
    .local v2, "nativeSystemOperation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 361
    .end local v2    # "nativeSystemOperation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_92
    move-object/from16 v0, p0

    iget-object v3, v0, mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v3, v14, v13}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;I)Ljava/util/List;

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v3, v12, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 365
    return-void
.end method

.method private rollbackSystemKeyStoreAsUser(I)V
    .registers 30
    .param p1, "userId"    # I

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemDisabledList"

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    .line 208
    .local v12, "disabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemPrevDisabledList"

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v22

    .line 210
    .local v22, "prevDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "userRemovedList"

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v24

    .line 213
    .local v24, "removedUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v6, "installCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v14, "enabledUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 218
    .local v26, "token":J
    :try_start_35
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v3, v4}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_43} :catch_e8
    .catch Ljava/lang/AssertionError; {:try_start_35 .. :try_end_43} :catch_139
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_43} :catch_1b0
    .catchall {:try_start_35 .. :try_end_43} :catchall_223

    move-result-object v18

    .line 221
    .local v18, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_44
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_a3
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_ca
    .catch Ljava/security/cert/CertificateException; {:try_start_44 .. :try_end_47} :catch_11b
    .catchall {:try_start_44 .. :try_end_47} :catchall_1ab

    move-result-object v19

    .line 222
    .local v19, "keyChainService":Landroid/security/IKeyChainService;
    if-nez v19, :cond_51

    .line 290
    :try_start_4a
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4d} :catch_e8
    .catch Ljava/lang/AssertionError; {:try_start_4a .. :try_end_4d} :catch_139
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4d} :catch_1b0
    .catchall {:try_start_4a .. :try_end_4d} :catchall_223

    .line 303
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    .end local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_50
    return-void

    .line 227
    .restart local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_51
    :try_start_51
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v23, "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_107

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 229
    .local v9, "alias":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v9, v3}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v11

    .line 231
    .local v11, "certData":[B
    if-eqz v11, :cond_5a

    .line 232
    invoke-static {v11}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v20

    .line 233
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_77
    :goto_77
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 234
    .local v10, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v10, :cond_77

    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x2

    move/from16 v0, p1

    invoke-virtual {v3, v10, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 238
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c4

    .line 240
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_a2} :catch_a3
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_a2} :catch_ca
    .catch Ljava/security/cert/CertificateException; {:try_start_51 .. :try_end_a2} :catch_11b
    .catchall {:try_start_51 .. :try_end_a2} :catchall_1ab

    goto :goto_77

    .line 283
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    .end local v11    # "certData":[B
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_a3
    move-exception v13

    .line 284
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_a4
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_a4 .. :try_end_bd} :catchall_1ab

    .line 290
    :try_start_bd
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_c0
    .catch Ljava/lang/InterruptedException; {:try_start_bd .. :try_end_c0} :catch_e8
    .catch Ljava/lang/AssertionError; {:try_start_bd .. :try_end_c0} :catch_139
    .catch Ljava/lang/RuntimeException; {:try_start_bd .. :try_end_c0} :catch_1b0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_223

    .line 303
    .end local v13    # "e":Landroid/os/RemoteException;
    :goto_c0
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_50

    .line 242
    .restart local v9    # "alias":Ljava/lang/String;
    .restart local v10    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v11    # "certData":[B
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v20    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c4
    :try_start_c4
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_c9} :catch_a3
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c9} :catch_ca
    .catch Ljava/security/cert/CertificateException; {:try_start_c4 .. :try_end_c9} :catch_11b
    .catchall {:try_start_c4 .. :try_end_c9} :catchall_1ab

    goto :goto_77

    .line 285
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    .end local v11    # "certData":[B
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_ca
    move-exception v13

    .line 286
    .local v13, "e":Ljava/io/IOException;
    :try_start_cb
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_cb .. :try_end_e4} :catchall_1ab

    .line 290
    :try_start_e4
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_e7
    .catch Ljava/lang/InterruptedException; {:try_start_e4 .. :try_end_e7} :catch_e8
    .catch Ljava/lang/AssertionError; {:try_start_e4 .. :try_end_e7} :catch_139
    .catch Ljava/lang/RuntimeException; {:try_start_e4 .. :try_end_e7} :catch_1b0
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_223

    goto :goto_c0

    .line 292
    .end local v13    # "e":Ljava/io/IOException;
    .end local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_e8
    move-exception v13

    .line 293
    .local v13, "e":Ljava/lang/InterruptedException;
    :try_start_e9
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_102
    .catchall {:try_start_e9 .. :try_end_102} :catchall_223

    .line 303
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_50

    .line 248
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .restart local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_107
    :try_start_107
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_10b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_164

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 249
    .restart local v9    # "alias":Ljava/lang/String;
    invoke-interface {v12, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_11a
    .catch Landroid/os/RemoteException; {:try_start_107 .. :try_end_11a} :catch_a3
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_11a} :catch_ca
    .catch Ljava/security/cert/CertificateException; {:try_start_107 .. :try_end_11a} :catch_11b
    .catchall {:try_start_107 .. :try_end_11a} :catchall_1ab

    goto :goto_10b

    .line 287
    .end local v9    # "alias":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_11b
    move-exception v13

    .line 288
    .local v13, "e":Ljava/security/cert/CertificateException;
    :try_start_11c
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_135
    .catchall {:try_start_11c .. :try_end_135} :catchall_1ab

    .line 290
    :try_start_135
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_138
    .catch Ljava/lang/InterruptedException; {:try_start_135 .. :try_end_138} :catch_e8
    .catch Ljava/lang/AssertionError; {:try_start_135 .. :try_end_138} :catch_139
    .catch Ljava/lang/RuntimeException; {:try_start_135 .. :try_end_138} :catch_1b0
    .catchall {:try_start_135 .. :try_end_138} :catchall_223

    goto :goto_c0

    .line 294
    .end local v13    # "e":Ljava/security/cert/CertificateException;
    .end local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_139
    move-exception v13

    .line 297
    .local v13, "e":Ljava/lang/AssertionError;
    :try_start_13a
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15f
    .catchall {:try_start_13a .. :try_end_15f} :catchall_223

    .line 303
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_50

    .line 253
    .end local v13    # "e":Ljava/lang/AssertionError;
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_164
    :try_start_164
    move-object/from16 v0, p0

    iget-object v3, v0, mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v21

    .line 255
    .local v21, "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_178
    :goto_178
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1db

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 256
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 257
    .restart local v9    # "alias":Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 258
    .restart local v10    # "cert":Ljava/security/cert/X509Certificate;
    if-eqz v10, :cond_178

    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x3

    move/from16 v0, p1

    invoke-virtual {v3, v10, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-eqz v3, :cond_178

    .line 262
    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1aa
    .catch Landroid/os/RemoteException; {:try_start_164 .. :try_end_1aa} :catch_a3
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_1aa} :catch_ca
    .catch Ljava/security/cert/CertificateException; {:try_start_164 .. :try_end_1aa} :catch_11b
    .catchall {:try_start_164 .. :try_end_1aa} :catchall_1ab

    goto :goto_178

    .line 290
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v21    # "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .end local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1ab
    move-exception v3

    :try_start_1ac
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v3
    :try_end_1b0
    .catch Ljava/lang/InterruptedException; {:try_start_1ac .. :try_end_1b0} :catch_e8
    .catch Ljava/lang/AssertionError; {:try_start_1ac .. :try_end_1b0} :catch_139
    .catch Ljava/lang/RuntimeException; {:try_start_1ac .. :try_end_1b0} :catch_1b0
    .catchall {:try_start_1ac .. :try_end_1b0} :catchall_223

    .line 298
    .end local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1b0
    move-exception v13

    .line 301
    .local v13, "e":Ljava/lang/RuntimeException;
    :try_start_1b1
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d6
    .catchall {:try_start_1b1 .. :try_end_1d6} :catchall_223

    .line 303
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_50

    .line 269
    .end local v13    # "e":Ljava/lang/RuntimeException;
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v21    # "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .restart local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1db
    :try_start_1db
    move-object/from16 v0, p0

    iget-object v3, v0, mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move/from16 v0, p1

    invoke-virtual {v3, v14, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;I)Ljava/util/List;

    .line 272
    new-instance v2, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    .line 274
    .local v2, "operation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemDisabledList"

    move/from16 v0, p1

    invoke-virtual {v3, v4, v12, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemPrevDisabledList"

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "userRemovedList"

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    :try_end_21e
    .catch Landroid/os/RemoteException; {:try_start_1db .. :try_end_21e} :catch_a3
    .catch Ljava/io/IOException; {:try_start_1db .. :try_end_21e} :catch_ca
    .catch Ljava/security/cert/CertificateException; {:try_start_1db .. :try_end_21e} :catch_11b
    .catchall {:try_start_1db .. :try_end_21e} :catchall_1ab

    .line 290
    :try_start_21e
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_221
    .catch Ljava/lang/InterruptedException; {:try_start_21e .. :try_end_221} :catch_e8
    .catch Ljava/lang/AssertionError; {:try_start_21e .. :try_end_221} :catch_139
    .catch Ljava/lang/RuntimeException; {:try_start_21e .. :try_end_221} :catch_1b0
    .catchall {:try_start_21e .. :try_end_221} :catchall_223

    goto/16 :goto_c0

    .line 303
    .end local v2    # "operation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v21    # "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .end local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_223
    move-exception v3

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private selectNativeKeystoreUid(I)Ljava/lang/String;
    .registers 4
    .param p1, "keystoreUid"    # I

    .prologue
    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 561
    const-string/jumbo v0, "nativeRemovedList_wifi"

    .line 565
    :cond_7
    :goto_7
    return-object v0

    .line 562
    :cond_8
    const/4 v1, 0x4

    if-ne p1, v1, :cond_7

    .line 563
    const-string/jumbo v0, "nativeRemovedList"

    goto :goto_7
.end method


# virtual methods
.method public execute(II)V
    .registers 14
    .param p1, "operation"    # I
    .param p2, "userId"    # I

    .prologue
    .line 112
    iput p1, p0, mOperation:I

    .line 113
    iput p2, p0, mUserId:I

    .line 115
    iget v9, p0, mPriority:I

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 117
    iget v9, p0, mUserId:I

    invoke-direct {p0, v9}, getUsersKeystoreUnlocked(I)[Ljava/lang/Integer;

    move-result-object v4

    .line 118
    .local v4, "unlockedKeystores":[Ljava/lang/Integer;
    if-nez v4, :cond_12

    .line 164
    :cond_11
    return-void

    .line 123
    :cond_12
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v7, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v9, p0, mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v9}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersInfo()Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget v9, p0, mUserId:I

    if-nez v9, :cond_63

    .line 126
    move-object v7, v0

    .line 134
    :cond_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 136
    .local v2, "token":J
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v8

    .line 137
    .local v8, "versionInfo":Landroid/os/Bundle;
    const-string v9, "2.0"

    const-string/jumbo v10, "version"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 138
    invoke-direct {p0, v7}, pruneDeletedContainerProfiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 142
    :cond_3d
    iget v9, p0, mOperation:I

    packed-switch v9, :pswitch_data_8c

    .line 156
    :goto_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 161
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v9, p0, mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendIntentToSettings(I)V

    goto :goto_49

    .line 128
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "token":J
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v8    # "versionInfo":Landroid/os/Bundle;
    :cond_63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_67
    :goto_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 129
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    iget v10, p0, mUserId:I

    if-ne v9, v10, :cond_67

    .line 130
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 144
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .restart local v2    # "token":J
    .restart local v8    # "versionInfo":Landroid/os/Bundle;
    :pswitch_7d
    invoke-direct {p0, v4, v7}, executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V

    goto :goto_42

    .line 147
    :pswitch_81
    invoke-direct {p0, v4, v7}, executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V

    goto :goto_42

    .line 150
    :pswitch_85
    invoke-direct {p0, v4, v7}, executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V

    .line 151
    invoke-direct {p0, v4, v7}, executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V

    goto :goto_42

    .line 142
    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_81
        :pswitch_7d
        :pswitch_85
    .end packed-switch
.end method

.method hasPendingActionForUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 766
    iget-object v0, p0, mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method initPendingActionList()V
    .registers 6

    .prologue
    .line 774
    iget-object v3, p0, mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v2

    .line 775
    .local v2, "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 776
    .local v1, "userId":I
    invoke-direct {p0, v1}, isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 777
    iget-object v3, p0, mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 780
    .end local v1    # "userId":I
    :cond_2a
    return-void
.end method

.method removeUserIdFromPendingList(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 770
    iget-object v0, p0, mPendingKeystoreAction:Ljava/util/Set;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
