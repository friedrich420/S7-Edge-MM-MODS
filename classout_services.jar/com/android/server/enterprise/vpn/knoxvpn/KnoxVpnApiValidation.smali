.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
.super Ljava/lang/Object;
.source "KnoxVpnApiValidation.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "KnoxVpnApiValidation"

.field private static mContext:Landroid/content/Context;

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

.field private static mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

.field private static mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field private static mPersonaManager:Landroid/os/IPersonaManager;


# instance fields
.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x0

    :cond_9
    sput-boolean v0, DBG:Z

    .line 69
    sput-object v2, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 73
    sput-object v2, mPersonaManager:Landroid/os/IPersonaManager;

    .line 75
    sput-object v2, mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    .line 77
    sput-object v2, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 81
    sput-object v2, mContext:Landroid/content/Context;

    .line 83
    sput-object v2, mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 88
    sput-object p1, mContext:Landroid/content/Context;

    .line 89
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 90
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 91
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 92
    return-void
.end method

.method private static getEnterpriseDeviceManager()Landroid/app/enterprise/IEnterpriseDeviceManager;
    .registers 1

    .prologue
    .line 109
    sget-object v0, mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 110
    const-string/jumbo v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    sput-object v0, mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    .line 112
    :cond_11
    sget-object v0, mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    monitor-enter v1

    :try_start_3
    sget-object v0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    if-nez v0, :cond_e

    .line 96
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 98
    :cond_e
    sget-object v0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getKnoxVpnPacProcessor()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .registers 2

    .prologue
    .line 116
    sget-object v0, mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez v0, :cond_c

    .line 117
    sget-object v0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v0

    sput-object v0, mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 119
    :cond_c
    sget-object v0, mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-object v0
.end method

.method private static getPersonaManager()Landroid/os/IPersonaManager;
    .registers 1

    .prologue
    .line 102
    sget-object v0, mPersonaManager:Landroid/os/IPersonaManager;

    if-nez v0, :cond_11

    .line 103
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v0

    sput-object v0, mPersonaManager:Landroid/os/IPersonaManager;

    .line 105
    :cond_11
    sget-object v0, mPersonaManager:Landroid/os/IPersonaManager;

    return-object v0
.end method


# virtual methods
.method public activateVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)I
    .registers 13
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 517
    const/16 v4, 0x64

    .line 520
    .local v4, "validationResult":I
    if-eqz p2, :cond_8

    :try_start_4
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_c

    .line 521
    :cond_8
    const/16 v4, 0x68

    move v5, v4

    .line 561
    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_b
    return v5

    .line 525
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_c
    iget-object v6, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 526
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_18

    .line 527
    const/16 v4, 0x6c

    move v5, v4

    .line 528
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b

    .line 530
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_18
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_24

    .line 531
    const/16 v4, 0x70

    move v5, v4

    .line 532
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b

    .line 536
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_24
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 537
    .local v3, "routeType":I
    if-nez v3, :cond_2e

    .line 538
    const/16 v4, 0x6d

    move v5, v4

    .line 539
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b

    .line 542
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_2e
    if-eqz p3, :cond_3b

    .line 543
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 544
    .local v0, "currentStateOfProfile":I
    const/4 v6, 0x1

    if-ne v0, v6, :cond_64

    .line 545
    const/16 v4, 0x73

    move v5, v4

    .line 546
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b

    .line 549
    .end local v0    # "currentStateOfProfile":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_3b
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_45

    move-result v0

    .line 550
    .restart local v0    # "currentStateOfProfile":I
    if-nez v0, :cond_64

    .line 551
    const/16 v4, 0x74

    move v5, v4

    .line 552
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b

    .line 556
    .end local v0    # "currentStateOfProfile":I
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_45
    move-exception v1

    .line 557
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at activateVpnProfileValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/16 v4, 0x65

    .line 560
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_64
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activateVpnProfileValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 561
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b
.end method

.method public addAllContainerPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)I
    .registers 16
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 815
    const/16 v7, 0x64

    .line 819
    .local v7, "validationResult":I
    if-eqz p3, :cond_8

    :try_start_4
    iget-object v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v9, :cond_c

    .line 820
    :cond_8
    const/16 v7, 0x68

    move v8, v7

    .line 893
    .end local v7    # "validationResult":I
    .local v8, "validationResult":I
    :goto_b
    return v8

    .line 824
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_c
    iget-object v9, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 825
    .local v5, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v5, :cond_18

    .line 826
    const/16 v7, 0x6c

    move v8, v7

    .line 827
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_b

    .line 829
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_18
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v9

    iget v10, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v9, v10, :cond_24

    .line 830
    const/16 v7, 0x70

    move v8, v7

    .line 831
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_b

    .line 835
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_24
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v6

    .line 836
    .local v6, "routeType":I
    if-nez v6, :cond_2e

    .line 837
    const/16 v7, 0x6d

    move v8, v7

    .line 838
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_b

    .line 841
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_2e
    invoke-static {}, getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v9

    invoke-interface {v9, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v3

    .line 842
    .local v3, "isPersonaIdIsValid":Z
    if-nez v3, :cond_3c

    .line 843
    const/16 v7, 0x71

    move v8, v7

    .line 844
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_b

    .line 847
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_3c
    sget-object v9, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 848
    .local v0, "containerOwner":I
    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v9, :cond_4a

    .line 849
    const/16 v7, 0x72

    move v8, v7

    .line 850
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_b

    .line 854
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_4a
    invoke-static {}, getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v3

    .line 855
    if-eqz v3, :cond_62

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v9

    if-eq v9, p2, :cond_62

    .line 856
    const/16 v7, 0x71

    move v8, v7

    .line 857
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_b

    .line 860
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_62
    iget-object v9, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v9

    if-eqz v9, :cond_78

    .line 861
    iget-object v9, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v10, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v9, p3, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_78

    .line 862
    const/16 v7, 0x7b

    move v8, v7

    .line 863
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto :goto_b

    .line 867
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_78
    iget-object v9, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v9

    if-eqz v9, :cond_94

    .line 868
    iget-object v9, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v9

    iget v10, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v9, v10, :cond_8f

    .line 869
    const/16 v7, 0x75

    move v8, v7

    .line 870
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto/16 :goto_b

    .line 872
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_8f
    const/16 v7, 0x76

    move v8, v7

    .line 873
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto/16 :goto_b

    .line 879
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :cond_94
    if-eqz v5, :cond_e1

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e1

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isProxyAuthRequired()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e1

    .line 880
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 881
    .local v4, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_ba} :catch_c2

    move-result v9

    if-eq v9, p2, :cond_ab

    .line 882
    const/16 v7, 0x324

    move v8, v7

    .line 883
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto/16 :goto_b

    .line 888
    .end local v0    # "containerOwner":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isPersonaIdIsValid":Z
    .end local v4    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v5    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v6    # "routeType":I
    .end local v8    # "validationResult":I
    .restart local v7    # "validationResult":I
    :catch_c2
    move-exception v1

    .line 889
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "KnoxVpnApiValidation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception at addAllContainerPackagesToVpnValidation API "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/16 v7, 0x65

    .line 892
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_e1
    const-string v9, "KnoxVpnApiValidation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addAllContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 893
    .end local v7    # "validationResult":I
    .restart local v8    # "validationResult":I
    goto/16 :goto_b
.end method

.method public addAllPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 13
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 959
    const/16 v5, 0x64

    .line 963
    .local v5, "validationResult":I
    if-eqz p2, :cond_8

    :try_start_4
    iget-object v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v7, :cond_c

    .line 964
    :cond_8
    const/16 v5, 0x68

    move v6, v5

    .line 1018
    .end local v5    # "validationResult":I
    .local v6, "validationResult":I
    :goto_b
    return v6

    .line 968
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_c
    iget-object v7, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 969
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_18

    .line 970
    const/16 v5, 0x6c

    move v6, v5

    .line 971
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 973
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_18
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_24

    .line 974
    const/16 v5, 0x70

    move v6, v5

    .line 975
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 979
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_24
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .line 980
    .local v4, "routeType":I
    if-nez v4, :cond_2e

    .line 981
    const/16 v5, 0x6d

    move v6, v5

    .line 982
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 985
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_2e
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 986
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, p2, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_46

    .line 987
    const/16 v5, 0x7b

    move v6, v5

    .line 988
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 992
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_46
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 993
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v7, v8, :cond_60

    .line 994
    const/16 v5, 0x75

    move v6, v5

    .line 995
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 997
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_60
    const/16 v5, 0x76

    move v6, v5

    .line 998
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 1004
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_64
    if-eqz v3, :cond_b3

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b3

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isProxyAuthRequired()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b3

    .line 1005
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 1006
    .local v2, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8d} :catch_94

    if-eq v7, v8, :cond_7b

    .line 1007
    const/16 v5, 0x324

    move v6, v5

    .line 1008
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto/16 :goto_b

    .line 1013
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :catch_94
    move-exception v0

    .line 1014
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at addAllPackagesToVpnValidation API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const/16 v5, 0x65

    .line 1017
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b3
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAllPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 1018
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto/16 :goto_b
.end method

.method public addContainerPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .registers 24
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;

    .prologue
    .line 597
    const/16 v14, 0x64

    .line 601
    .local v14, "validationResult":I
    if-eqz p4, :cond_1b

    if-eqz p3, :cond_1b

    :try_start_6
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_1b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_1f

    .line 602
    :cond_1b
    const/16 v14, 0x68

    move v15, v14

    .line 690
    .end local v14    # "validationResult":I
    .local v15, "validationResult":I
    :goto_1e
    return v15

    .line 606
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v10

    .line 607
    .local v10, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v10, :cond_33

    .line 608
    const/16 v14, 0x6c

    move v15, v14

    .line 609
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_1e

    .line 611
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_33
    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_47

    .line 612
    const/16 v14, 0x70

    move v15, v14

    .line 613
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_1e

    .line 617
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_47
    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v12

    .line 618
    .local v12, "routeType":I
    if-nez v12, :cond_51

    .line 619
    const/16 v14, 0x6d

    move v15, v14

    .line 620
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_1e

    .line 623
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_51
    invoke-static {}, getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v7

    .line 624
    .local v7, "isPersonaIdIsValid":Z
    if-nez v7, :cond_63

    .line 625
    const/16 v14, 0x71

    move v15, v14

    .line 626
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_1e

    .line 629
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_63
    sget-object v16, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    .line 630
    .local v4, "containerOwner":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v4, v0, :cond_7b

    .line 631
    const/16 v14, 0x72

    move v15, v14

    .line 632
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_1e

    .line 636
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_7b
    invoke-static {}, getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v17

    invoke-interface/range {v16 .. v17}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v7

    .line 637
    if-eqz v7, :cond_97

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v16

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_97

    .line 638
    const/16 v14, 0x71

    move v15, v14

    .line 639
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto :goto_1e

    .line 642
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_97
    move-object/from16 v3, p3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_9b
    if-ge v6, v8, :cond_c1

    aget-object v13, v3, v6

    .line 643
    .local v13, "tempPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v16, v0

    const-string v17, "ADD_ALL_PACKAGES"

    move-object/from16 v0, v16

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_be

    .line 644
    const/16 v14, 0x89

    move v15, v14

    .line 645
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_1e

    .line 642
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_be
    add-int/lit8 v6, v6, 0x1

    goto :goto_9b

    .line 649
    .end local v13    # "tempPackage":Ljava/lang/String;
    :cond_c1
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v16

    if-eqz v16, :cond_132

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_12d

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v17, v0

    const-string v18, "ADD_ALL_PACKAGES"

    move-object/from16 v0, v17

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 654
    .local v11, "profileOwningPackage":Ljava/lang/String;
    if-eqz v11, :cond_132

    .line 655
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_128

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v16

    packed-switch v16, :pswitch_data_1a6

    .line 660
    const/16 v14, 0x77

    move v15, v14

    .line 661
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_1e

    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :pswitch_125
    move v15, v14

    .line 658
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_1e

    .line 664
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_128
    const/16 v14, 0x77

    move v15, v14

    .line 665
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_1e

    .line 669
    .end local v11    # "profileOwningPackage":Ljava/lang/String;
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_12d
    const/16 v14, 0x78

    move v15, v14

    .line 670
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_1e

    .line 676
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :cond_132
    if-eqz v10, :cond_188

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_188

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isProxyAuthRequired()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_188

    .line 677
    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_14e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_188

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 678
    .local v9, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15d} :catch_169

    move-result v16

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_14e

    .line 679
    const/16 v14, 0x324

    move v15, v14

    .line 680
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_1e

    .line 685
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "containerOwner":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "isPersonaIdIsValid":Z
    .end local v8    # "len$":I
    .end local v9    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v10    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v12    # "routeType":I
    .end local v15    # "validationResult":I
    .restart local v14    # "validationResult":I
    :catch_169
    move-exception v5

    .line 686
    .local v5, "e":Ljava/lang/Exception;
    const-string v16, "KnoxVpnApiValidation"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception at addContainerPackagesToVpnValidation API "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/16 v14, 0x65

    .line 689
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_188
    const-string v16, "KnoxVpnApiValidation"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "addContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v14

    .line 690
    .end local v14    # "validationResult":I
    .restart local v15    # "validationResult":I
    goto/16 :goto_1e

    .line 656
    nop

    :pswitch_data_1a6
    .packed-switch 0x1
        :pswitch_125
    .end packed-switch
.end method

.method public addPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 20
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 382
    const/16 v10, 0x64

    .line 385
    .local v10, "validationResult":I
    if-eqz p3, :cond_12

    if-eqz p2, :cond_12

    :try_start_6
    move-object/from16 v0, p2

    array-length v12, v0

    const/4 v13, 0x1

    if-lt v12, v13, :cond_12

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v12, :cond_16

    .line 386
    :cond_12
    const/16 v10, 0x68

    move v11, v10

    .line 454
    .end local v10    # "validationResult":I
    .local v11, "validationResult":I
    :goto_15
    return v11

    .line 390
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    .line 391
    .local v6, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v6, :cond_26

    .line 392
    const/16 v10, 0x6c

    move v11, v10

    .line 393
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto :goto_15

    .line 395
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_26
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v12

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v12, v13, :cond_34

    .line 396
    const/16 v10, 0x70

    move v11, v10

    .line 397
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto :goto_15

    .line 401
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_34
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v8

    .line 402
    .local v8, "routeType":I
    if-nez v8, :cond_3e

    .line 403
    const/16 v10, 0x6d

    move v11, v10

    .line 404
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto :goto_15

    .line 407
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_3e
    move-object/from16 v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_42
    if-ge v3, v4, :cond_61

    aget-object v9, v1, v3

    .line 408
    .local v9, "tempPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v14, "ADD_ALL_PACKAGES"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5e

    .line 409
    const/16 v10, 0x89

    move v11, v10

    .line 410
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto :goto_15

    .line 407
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 414
    .end local v9    # "tempPackage":Ljava/lang/String;
    :cond_61
    move-object/from16 v0, p0

    iget-object v12, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v12

    if-eqz v12, :cond_be

    .line 415
    move-object/from16 v0, p0

    iget-object v12, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v12

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v12, v13, :cond_b9

    .line 417
    move-object/from16 v0, p0

    iget-object v12, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v15, "ADD_ALL_PACKAGES"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 418
    .local v7, "profileOwningPackage":Ljava/lang/String;
    if-eqz v7, :cond_be

    .line 419
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b4

    .line 420
    move-object/from16 v0, p0

    iget-object v12, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v12, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v12

    packed-switch v12, :pswitch_data_12a

    .line 424
    const/16 v10, 0x77

    move v11, v10

    .line 425
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_15

    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :pswitch_b1
    move v11, v10

    .line 422
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_15

    .line 428
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_b4
    const/16 v10, 0x77

    move v11, v10

    .line 429
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_15

    .line 433
    .end local v7    # "profileOwningPackage":Ljava/lang/String;
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_b9
    const/16 v10, 0x78

    move v11, v10

    .line 434
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_15

    .line 440
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :cond_be
    if-eqz v6, :cond_10f

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_10f

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isProxyAuthRequired()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10f

    .line 441
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_d5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 442
    .local v5, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v12

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e9} :catch_f0

    if-eq v12, v13, :cond_d5

    .line 443
    const/16 v10, 0x324

    move v11, v10

    .line 444
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_15

    .line 449
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "len$":I
    .end local v5    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v6    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v8    # "routeType":I
    .end local v11    # "validationResult":I
    .restart local v10    # "validationResult":I
    :catch_f0
    move-exception v2

    .line 450
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "KnoxVpnApiValidation"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception at addPackagesToVpnValidation API "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/16 v10, 0x65

    .line 453
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_10f
    const-string v12, "KnoxVpnApiValidation"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 454
    .end local v10    # "validationResult":I
    .restart local v11    # "validationResult":I
    goto/16 :goto_15

    .line 420
    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_b1
    .end packed-switch
.end method

.method public createVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 41
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;

    .prologue
    .line 123
    const/16 v32, 0x64

    .line 126
    .local v32, "validationResult":I
    if-eqz p2, :cond_c

    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v35, v0

    if-nez v35, :cond_11

    .line 127
    :cond_c
    const/16 v32, 0x68

    move/from16 v33, v32

    .line 318
    .end local v32    # "validationResult":I
    .local v33, "validationResult":I
    :goto_10
    return v33

    .line 131
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_11
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .local v22, "profileObj":Lorg/json/JSONObject;
    const-string v35, "KNOX_VPN_PARAMETERS"

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 133
    .local v16, "parentAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v35, "profile_attribute"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 134
    .local v18, "profileAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v35, "knox"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 136
    .local v13, "knoxAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v35, "profileName"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 137
    .local v21, "profileName":Ljava/lang/String;
    const-string/jumbo v35, "vpn_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 138
    .local v23, "protocolType":Ljava/lang/String;
    const-string/jumbo v35, "vpn_route_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 140
    .local v29, "routeType":I
    const-string v35, "chaining_enabled"

    const/16 v36, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 141
    .local v3, "chainingEnabled":I
    const-string/jumbo v35, "uidpid_search_enabled"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v30

    .line 142
    .local v30, "uidPidSearchEnabled":I
    const-string v35, "connectionType"

    const-string/jumbo v36, "keepon"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "connectionType":Ljava/lang/String;
    const-string/jumbo v35, "proxy-server"

    sget-object v36, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 145
    .local v26, "proxyServer":Ljava/lang/String;
    const-string/jumbo v35, "proxy-port"

    const/16 v36, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v25

    .line 146
    .local v25, "proxyPort":I
    const-string/jumbo v35, "proxy-username"

    sget-object v36, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 147
    .local v27, "proxyUsername":Ljava/lang/String;
    const-string/jumbo v35, "proxy-password"

    sget-object v36, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 148
    .local v24, "proxyPassword":Ljava/lang/String;
    const-string/jumbo v35, "pac-url"

    sget-object v36, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 149
    .local v15, "pacurl":Ljava/lang/String;
    const-string/jumbo v35, "ipv6-enable"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 150
    .local v7, "enableIPv6":I
    const-string/jumbo v35, "proxy-auth"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v28

    .line 152
    .local v28, "proxy_auth":I
    if-eqz v21, :cond_e6

    if-eqz v23, :cond_e6

    const/16 v35, 0x1

    move/from16 v0, v29

    move/from16 v1, v35

    if-eq v0, v1, :cond_ec

    if-eqz v29, :cond_ec

    .line 153
    :cond_e6
    const/16 v32, 0x69

    move/from16 v33, v32

    .line 154
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 157
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_ec
    if-nez v29, :cond_129

    .line 158
    if-eqz v3, :cond_f6

    const/16 v35, 0x1

    move/from16 v0, v35

    if-ne v3, v0, :cond_fc

    .line 159
    :cond_f6
    const/16 v32, 0x1f9

    move/from16 v33, v32

    .line 160
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 162
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_fc
    const-string/jumbo v35, "ondemand"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_10d

    .line 163
    const/16 v32, 0x2be

    move/from16 v33, v32

    .line 164
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 166
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_10d
    if-nez v26, :cond_117

    const/16 v35, -0x1

    move/from16 v0, v25

    move/from16 v1, v35

    if-eq v0, v1, :cond_11d

    .line 167
    :cond_117
    const/16 v32, 0x321

    move/from16 v33, v32

    .line 168
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 170
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_11d
    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v35

    if-eq v15, v0, :cond_129

    .line 171
    const/16 v32, 0x321

    move/from16 v33, v32

    .line 172
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 176
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_129
    const/16 v35, -0x1

    move/from16 v0, v35

    if-eq v3, v0, :cond_13d

    if-eqz v3, :cond_13d

    const/16 v35, 0x1

    move/from16 v0, v35

    if-eq v3, v0, :cond_13d

    .line 177
    const/16 v32, 0x1f5

    move/from16 v33, v32

    .line 178
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 181
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_13d
    const/16 v35, 0x1

    move/from16 v0, v30

    move/from16 v1, v35

    if-eq v0, v1, :cond_14d

    if-eqz v30, :cond_14d

    .line 182
    const/16 v32, 0x259

    move/from16 v33, v32

    .line 183
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 186
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_14d
    const-string/jumbo v35, "keepon"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_169

    const-string/jumbo v35, "ondemand"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_169

    .line 187
    const/16 v32, 0x2bd

    move/from16 v33, v32

    .line 188
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 191
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_169
    const-string/jumbo v35, "ondemand"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_17c

    if-nez v3, :cond_17c

    .line 192
    const/16 v32, 0x2be

    move/from16 v33, v32

    .line 193
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 197
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_17c
    if-eqz v7, :cond_18a

    const/16 v35, 0x1

    move/from16 v0, v35

    if-eq v7, v0, :cond_18a

    .line 198
    const/16 v32, 0x325

    move/from16 v33, v32

    .line 199
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 202
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_18a
    const-string v35, "\\s"

    invoke-static/range {v35 .. v35}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    .line 203
    .local v17, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 204
    .local v14, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    .line 205
    .local v8, "found":Z
    if-eqz v8, :cond_1a4

    .line 206
    const/16 v32, 0x6a

    move/from16 v33, v32

    .line 207
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 210
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_1a4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v20

    .line 211
    .local v20, "profileLength":I
    const/16 v35, 0x1

    move/from16 v0, v20

    move/from16 v1, v35

    if-lt v0, v1, :cond_1b8

    const/16 v35, 0x80

    move/from16 v0, v20

    move/from16 v1, v35

    if-le v0, v1, :cond_1be

    .line 212
    :cond_1b8
    const/16 v32, 0x6b

    move/from16 v33, v32

    .line 213
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 216
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_1be
    move-object/from16 v0, p0

    iget-object v0, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v19

    .line 217
    .local v19, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v19, :cond_1ea

    .line 218
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v35

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1e4

    .line 219
    const/16 v32, 0x6f

    move/from16 v33, v32

    .line 220
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 222
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_1e4
    const/16 v32, 0x70

    move/from16 v33, v32

    .line 223
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 227
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_1ea
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 228
    .local v34, "vendorName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v31, v0

    .line 230
    .local v31, "userId":I
    const-string v35, "chaining_enabled"

    const/16 v36, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 231
    .local v4, "chainingValue":I
    const/16 v35, -0x1

    move/from16 v0, v35

    if-ne v4, v0, :cond_232

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v31

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I

    move-result v9

    .line 233
    .local v9, "isChainingEnabled":I
    const/16 v35, 0x1

    move/from16 v0, v35

    if-eq v9, v0, :cond_22c

    if-nez v9, :cond_25a

    .line 234
    :cond_22c
    const/16 v32, 0x1f7

    move/from16 v33, v32

    .line 235
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 238
    .end local v9    # "isChainingEnabled":I
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_232
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v31

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v36

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I

    move-result v11

    .line 239
    .local v11, "isVpnEnabled":I
    const/16 v35, -0x1

    move/from16 v0, v35

    if-ne v11, v0, :cond_25a

    .line 240
    const/16 v32, 0x1f8

    move/from16 v33, v32

    .line 241
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 245
    .end local v11    # "isVpnEnabled":I
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_25a
    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v35

    if-eq v15, v0, :cond_314

    .line 246
    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_276

    const/16 v35, -0x1

    move/from16 v0, v25

    move/from16 v1, v35

    if-ne v0, v1, :cond_276

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-eqz v35, :cond_27c

    .line 247
    :cond_276
    const/16 v32, 0x324

    move/from16 v33, v32

    .line 248
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 250
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_27c
    if-nez v3, :cond_284

    .line 251
    const/16 v32, 0x324

    move/from16 v33, v32

    .line 252
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 254
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_284
    if-eqz v27, :cond_314

    if-eqz v24, :cond_314

    .line 255
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_30e

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_30e

    .line 256
    const/16 v35, 0x1

    move/from16 v0, v28

    move/from16 v1, v35

    if-eq v0, v1, :cond_2a2

    .line 257
    const/16 v32, 0x324

    move/from16 v33, v32

    .line 258
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 260
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_2a2
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "_"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "proxy-username"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 261
    .local v10, "isUserSaved":Z
    if-nez v10, :cond_2d8

    .line 262
    const/16 v32, 0x322

    move/from16 v33, v32

    .line 263
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 265
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_2d8
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "_"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "proxy-password"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 266
    .local v12, "ispasswordSaved":Z
    if-nez v12, :cond_314

    .line 267
    const/16 v32, 0x323

    move/from16 v33, v32

    .line 268
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 271
    .end local v10    # "isUserSaved":Z
    .end local v12    # "ispasswordSaved":Z
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_30e
    const/16 v32, 0x324

    move/from16 v33, v32

    .line 272
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 277
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_314
    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_324

    const/16 v35, -0x1

    move/from16 v0, v25

    move/from16 v1, v35

    if-eq v0, v1, :cond_3c0

    .line 278
    :cond_324
    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v35

    if-ne v15, v0, :cond_330

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-eqz v35, :cond_336

    .line 279
    :cond_330
    const/16 v32, 0x324

    move/from16 v33, v32

    .line 280
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 282
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_336
    if-nez v3, :cond_33e

    .line 283
    const/16 v32, 0x324

    move/from16 v33, v32

    .line 284
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 286
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_33e
    if-eqz v27, :cond_3c0

    if-eqz v24, :cond_3c0

    .line 287
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_3ba

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_3ba

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "_"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "proxy-username"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 289
    .restart local v10    # "isUserSaved":Z
    if-nez v10, :cond_384

    .line 290
    const/16 v32, 0x322

    move/from16 v33, v32

    .line 291
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 293
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_384
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "_"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "proxy-password"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 294
    .restart local v12    # "ispasswordSaved":Z
    if-nez v12, :cond_3c0

    .line 295
    const/16 v32, 0x323

    move/from16 v33, v32

    .line 296
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 299
    .end local v10    # "isUserSaved":Z
    .end local v12    # "ispasswordSaved":Z
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_3ba
    const/16 v32, 0x324

    move/from16 v33, v32

    .line 300
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 305
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :cond_3c0
    sget-object v35, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v35

    if-eq v15, v0, :cond_3d4

    .line 306
    const-string v35, "KnoxVpnApiValidation"

    const-string v36, "Binding to knox pac service during create profile validation"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct/range {p0 .. p0}, getKnoxVpnPacProcessor()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindPacService()V
    :try_end_3d4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_3d4} :catch_3f5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3d4} :catch_415

    .line 317
    .end local v3    # "chainingEnabled":I
    .end local v4    # "chainingValue":I
    .end local v5    # "connectionType":Ljava/lang/String;
    .end local v7    # "enableIPv6":I
    .end local v8    # "found":Z
    .end local v13    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    .end local v15    # "pacurl":Ljava/lang/String;
    .end local v16    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v17    # "pattern":Ljava/util/regex/Pattern;
    .end local v18    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v19    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v20    # "profileLength":I
    .end local v21    # "profileName":Ljava/lang/String;
    .end local v22    # "profileObj":Lorg/json/JSONObject;
    .end local v23    # "protocolType":Ljava/lang/String;
    .end local v24    # "proxyPassword":Ljava/lang/String;
    .end local v25    # "proxyPort":I
    .end local v26    # "proxyServer":Ljava/lang/String;
    .end local v27    # "proxyUsername":Ljava/lang/String;
    .end local v28    # "proxy_auth":I
    .end local v29    # "routeType":I
    .end local v30    # "uidPidSearchEnabled":I
    .end local v31    # "userId":I
    .end local v34    # "vendorName":Ljava/lang/String;
    :cond_3d4
    :goto_3d4
    const-string v35, "KnoxVpnApiValidation"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "createVpnProfileValidation : validationResult value is "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v33, v32

    .line 318
    .end local v32    # "validationResult":I
    .restart local v33    # "validationResult":I
    goto/16 :goto_10

    .line 310
    .end local v33    # "validationResult":I
    .restart local v32    # "validationResult":I
    :catch_3f5
    move-exception v6

    .line 311
    .local v6, "e":Lorg/json/JSONException;
    const-string v35, "KnoxVpnApiValidation"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "JSONException at createVpnProfileValidation API "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/16 v32, 0x67

    .line 316
    goto :goto_3d4

    .line 313
    .end local v6    # "e":Lorg/json/JSONException;
    :catch_415
    move-exception v6

    .line 314
    .local v6, "e":Ljava/lang/Exception;
    const-string v35, "KnoxVpnApiValidation"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Exception at createVpnProfileValidation API "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/16 v32, 0x65

    goto :goto_3d4
.end method

.method public getAllContainerPackagesInVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 773
    if-eqz p3, :cond_7

    :try_start_3
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_11

    .line 774
    :cond_7
    const-string v6, "KnoxVpnApiValidation"

    const-string/jumbo v7, "getAllContainerPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 811
    .end local p3    # "profileName":Ljava/lang/String;
    :cond_10
    :goto_10
    return-object p3

    .line 778
    .restart local p3    # "profileName":Ljava/lang/String;
    :cond_11
    iget-object v6, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 779
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_23

    .line 780
    const-string v6, "KnoxVpnApiValidation"

    const-string/jumbo v7, "getAllContainerPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 781
    goto :goto_10

    .line 783
    :cond_23
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_35

    .line 784
    const-string v6, "KnoxVpnApiValidation"

    const-string/jumbo v7, "getAllContainerPackagesInVpnProfileValidation: Not the same admin"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 785
    goto :goto_10

    .line 789
    :cond_35
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .line 790
    .local v4, "routeType":I
    if-nez v4, :cond_45

    .line 791
    const-string v6, "KnoxVpnApiValidation"

    const-string/jumbo v7, "getAllContainerPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 792
    goto :goto_10

    .line 795
    :cond_45
    invoke-static {}, getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 796
    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_59

    .line 797
    const-string v6, "KnoxVpnApiValidation"

    const-string/jumbo v7, "getAllContainerPackagesInVpnProfileValidation: user id is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 798
    goto :goto_10

    .line 801
    :cond_59
    sget-object v6, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 802
    .local v0, "containerOwner":I
    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v6, :cond_10

    .line 803
    const-string v6, "KnoxVpnApiValidation"

    const-string/jumbo v7, "getAllContainerPackagesInVpnProfileValidation: Admin does not own the container"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6b} :catch_6d

    move-object p3, v5

    .line 804
    goto :goto_10

    .line 807
    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    :catch_6d
    move-exception v1

    .line 808
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at getAllContainerPackagesInVpnProfileValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 809
    goto :goto_10
.end method

.method public getAllPackagesInVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 567
    if-eqz p2, :cond_7

    :try_start_3
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_11

    .line 568
    :cond_7
    const-string v4, "KnoxVpnApiValidation"

    const-string/jumbo v5, "getAllPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 593
    .end local p2    # "profileName":Ljava/lang/String;
    :cond_10
    :goto_10
    return-object p2

    .line 572
    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_11
    iget-object v4, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 573
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_23

    .line 574
    const-string v4, "KnoxVpnApiValidation"

    const-string/jumbo v5, "getAllPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 575
    goto :goto_10

    .line 577
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v4, v5, :cond_35

    .line 578
    const-string v4, "KnoxVpnApiValidation"

    const-string/jumbo v5, "getAllPackagesInVpnProfileValidation: Not the same Admin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 579
    goto :goto_10

    .line 583
    :cond_35
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    .line 584
    .local v2, "routeType":I
    if-nez v2, :cond_10

    .line 585
    const-string v4, "KnoxVpnApiValidation"

    const-string/jumbo v5, "getAllPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_45

    move-object p2, v3

    .line 586
    goto :goto_10

    .line 589
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "routeType":I
    :catch_45
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at getAllPackagesInVpnProfileValidation API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 591
    goto :goto_10
.end method

.method public getErrorStringValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1089
    if-eqz p2, :cond_7

    :try_start_3
    iget-object v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v3, :cond_11

    .line 1090
    :cond_7
    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getErrorStringValidation: profileName value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 1106
    .end local p2    # "profileName":Ljava/lang/String;
    :cond_10
    :goto_10
    return-object p2

    .line 1093
    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_11
    iget-object v3, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1094
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_23

    .line 1095
    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getErrorStringValidation: profileInfo value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 1096
    goto :goto_10

    .line 1098
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_10

    .line 1099
    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getErrorStringValidation: Not the same admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_33} :catch_35

    move-object p2, v2

    .line 1100
    goto :goto_10

    .line 1103
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_35
    move-exception v0

    .line 1104
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getErrorStringValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public getStateValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1063
    const/16 v2, 0x64

    .line 1065
    .local v2, "validationResult":I
    if-eqz p2, :cond_8

    :try_start_4
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_c

    .line 1066
    :cond_8
    const/16 v2, 0x68

    move v3, v2

    .line 1084
    .end local v2    # "validationResult":I
    .local v3, "validationResult":I
    :goto_b
    return v3

    .line 1069
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_c
    iget-object v4, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1070
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_18

    .line 1071
    const/16 v2, 0x6c

    move v3, v2

    .line 1072
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b

    .line 1074
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_24

    if-eq v4, v5, :cond_43

    .line 1075
    const/16 v2, 0x70

    move v3, v2

    .line 1076
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b

    .line 1079
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :catch_24
    move-exception v0

    .line 1080
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at getStateValidation API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const/16 v2, 0x65

    .line 1083
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_43
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getStateValidation : validationResult value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1084
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b
.end method

.method public getVpnModeOfOperationValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1139
    const/16 v2, 0x64

    .line 1141
    .local v2, "validationResult":I
    if-eqz p2, :cond_8

    :try_start_4
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_c

    .line 1142
    :cond_8
    const/16 v2, 0x68

    move v3, v2

    .line 1160
    .end local v2    # "validationResult":I
    .local v3, "validationResult":I
    :goto_b
    return v3

    .line 1145
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_c
    iget-object v4, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1146
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_18

    .line 1147
    const/16 v2, 0x6c

    move v3, v2

    .line 1148
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b

    .line 1150
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_24

    if-eq v4, v5, :cond_43

    .line 1151
    const/16 v2, 0x70

    move v3, v2

    .line 1152
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b

    .line 1155
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :catch_24
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at getVpnModeOfOperationValidation API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const/16 v2, 0x65

    .line 1159
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_43
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1160
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b
.end method

.method public getVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 324
    if-eqz p2, :cond_7

    :try_start_3
    iget-object v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v3, :cond_11

    .line 325
    :cond_7
    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getVpnProfileValidation: profileName value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 343
    .end local p2    # "profileName":Ljava/lang/String;
    :cond_10
    :goto_10
    return-object p2

    .line 329
    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_11
    iget-object v3, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 330
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_23

    .line 331
    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getVpnProfileValidation: profileInfo value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 332
    goto :goto_10

    .line 334
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_10

    .line 335
    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getVpnProfileValidation: Not the same admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_33} :catch_35

    move-object p2, v2

    .line 336
    goto :goto_10

    .line 339
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_35
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public removeAllContainerPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)I
    .registers 14
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 898
    const/16 v5, 0x64

    .line 902
    .local v5, "validationResult":I
    if-eqz p3, :cond_8

    :try_start_4
    iget-object v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v7, :cond_c

    .line 903
    :cond_8
    const/16 v5, 0x68

    move v6, v5

    .line 955
    .end local v5    # "validationResult":I
    .local v6, "validationResult":I
    :goto_b
    return v6

    .line 907
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_c
    iget-object v7, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 908
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_18

    .line 909
    const/16 v5, 0x6c

    move v6, v5

    .line 910
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 912
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_18
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_24

    .line 913
    const/16 v5, 0x70

    move v6, v5

    .line 914
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 918
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_24
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .line 919
    .local v4, "routeType":I
    if-nez v4, :cond_2e

    .line 920
    const/16 v5, 0x6d

    move v6, v5

    .line 921
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 924
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_2e
    invoke-static {}, getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 925
    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_3c

    .line 926
    const/16 v5, 0x71

    move v6, v5

    .line 927
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 930
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_3c
    sget-object v7, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 931
    .local v0, "containerOwner":I
    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v7, :cond_4a

    .line 932
    const/16 v5, 0x72

    move v6, v5

    .line 933
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 937
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_4a
    invoke-static {}, getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 938
    if-eqz v2, :cond_62

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v7

    if-eq v7, p2, :cond_62

    .line 939
    const/16 v5, 0x71

    move v6, v5

    .line 940
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 943
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_62
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v7

    if-eqz v7, :cond_97

    .line 944
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, p3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_71} :catch_78

    move-result v7

    if-nez v7, :cond_97

    .line 945
    const/16 v5, 0x7c

    move v6, v5

    .line 946
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 950
    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :catch_78
    move-exception v1

    .line 951
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/16 v5, 0x65

    .line 954
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_97
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 955
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto/16 :goto_b
.end method

.method public removeAllPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1022
    const/16 v3, 0x64

    .line 1025
    .local v3, "validationResult":I
    if-eqz p2, :cond_8

    :try_start_4
    iget-object v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v5, :cond_c

    .line 1026
    :cond_8
    const/16 v3, 0x68

    move v4, v3

    .line 1059
    .end local v3    # "validationResult":I
    .local v4, "validationResult":I
    :goto_b
    return v4

    .line 1030
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_c
    iget-object v5, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1031
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_18

    .line 1032
    const/16 v3, 0x6c

    move v4, v3

    .line 1033
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 1035
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v5

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v5, v6, :cond_24

    .line 1036
    const/16 v3, 0x70

    move v4, v3

    .line 1037
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 1041
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    .line 1042
    .local v2, "routeType":I
    if-nez v2, :cond_2e

    .line 1043
    const/16 v3, 0x6d

    move v4, v3

    .line 1044
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 1047
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_2e
    iget-object v5, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 1048
    iget-object v5, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, p2, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3f} :catch_46

    move-result v5

    if-nez v5, :cond_65

    .line 1049
    const/16 v3, 0x7c

    move v4, v3

    .line 1050
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 1054
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "routeType":I
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :catch_46
    move-exception v0

    .line 1055
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const/16 v3, 0x65

    .line 1058
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_65
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1059
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b
.end method

.method public removeContainerPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;

    .prologue
    .line 694
    const/16 v6, 0x64

    .line 697
    .local v6, "validationResult":I
    if-eqz p4, :cond_e

    if-eqz p3, :cond_e

    :try_start_6
    array-length v8, p3

    const/4 v9, 0x1

    if-lt v8, v9, :cond_e

    iget-object v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v8, :cond_12

    .line 698
    :cond_e
    const/16 v6, 0x68

    move v7, v6

    .line 768
    .end local v6    # "validationResult":I
    .local v7, "validationResult":I
    :goto_11
    return v7

    .line 702
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_12
    iget-object v8, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 703
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_1e

    .line 704
    const/16 v6, 0x6c

    move v7, v6

    .line 705
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 707
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_1e
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_2a

    .line 708
    const/16 v6, 0x70

    move v7, v6

    .line 709
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 713
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_2a
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v5

    .line 714
    .local v5, "routeType":I
    if-nez v5, :cond_34

    .line 715
    const/16 v6, 0x6d

    move v7, v6

    .line 716
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 719
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_34
    invoke-static {}, getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v8

    invoke-interface {v8, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 720
    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_42

    .line 721
    const/16 v6, 0x71

    move v7, v6

    .line 722
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 725
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_42
    sget-object v8, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 726
    .local v0, "containerOwner":I
    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v8, :cond_50

    .line 727
    const/16 v6, 0x72

    move v7, v6

    .line 728
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 732
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_50
    invoke-static {}, getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 733
    if-eqz v2, :cond_68

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v8

    if-eq v8, p2, :cond_68

    .line 734
    const/16 v6, 0x71

    move v7, v6

    .line 735
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 738
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_68
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v8

    if-eqz v8, :cond_ca

    .line 739
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v8

    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v8, v9, :cond_a6

    .line 742
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v9, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v10, "ADD_ALL_PACKAGES"

    invoke-virtual {v9, p2, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 743
    .local v4, "profileOwningPackage":Ljava/lang/String;
    if-eqz v4, :cond_ca

    .line 744
    invoke-virtual {v4, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a1

    .line 745
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_95} :catch_ab

    move-result v8

    packed-switch v8, :pswitch_data_e6

    .line 749
    const/16 v6, 0x79

    move v7, v6

    .line 750
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_11

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :pswitch_9e
    move v7, v6

    .line 747
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_11

    .line 753
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_a1
    const/16 v6, 0x79

    move v7, v6

    .line 754
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_11

    .line 758
    .end local v4    # "profileOwningPackage":Ljava/lang/String;
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_a6
    const/16 v6, 0x7a

    move v7, v6

    .line 759
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_11

    .line 763
    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "routeType":I
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :catch_ab
    move-exception v1

    .line 764
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxVpnApiValidation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception at removeContainerPackagesFromVpnValidation API "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/16 v6, 0x65

    .line 767
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_ca
    const-string v8, "KnoxVpnApiValidation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeContainerPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 768
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_11

    .line 745
    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_9e
    .end packed-switch
.end method

.method public removePackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 458
    const/16 v4, 0x64

    .line 461
    .local v4, "validationResult":I
    if-eqz p3, :cond_e

    if-eqz p2, :cond_e

    :try_start_6
    array-length v6, p2

    const/4 v7, 0x1

    if-lt v6, v7, :cond_e

    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_12

    .line 462
    :cond_e
    const/16 v4, 0x68

    move v5, v4

    .line 513
    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_11
    return v5

    .line 466
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_12
    iget-object v6, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 467
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_1e

    .line 468
    const/16 v4, 0x6c

    move v5, v4

    .line 469
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 471
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_1e
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_2a

    .line 472
    const/16 v4, 0x70

    move v5, v4

    .line 473
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 477
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 478
    .local v3, "routeType":I
    if-nez v3, :cond_34

    .line 479
    const/16 v4, 0x6d

    move v5, v4

    .line 480
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 483
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_34
    iget-object v6, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 484
    iget-object v6, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v6, v7, :cond_75

    .line 487
    iget-object v6, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v9, "ADD_ALL_PACKAGES"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "profileOwningPackage":Ljava/lang/String;
    if-eqz v2, :cond_98

    .line 489
    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_71

    .line 490
    iget-object v6, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_67} :catch_79

    move-result v6

    packed-switch v6, :pswitch_data_b4

    .line 494
    const/16 v4, 0x79

    move v5, v4

    .line 495
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :pswitch_6f
    move v5, v4

    .line 492
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 498
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_71
    const/16 v4, 0x79

    move v5, v4

    .line 499
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 503
    .end local v2    # "profileOwningPackage":Ljava/lang/String;
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_75
    const/16 v4, 0x7a

    move v5, v4

    .line 504
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 508
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_79
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at removePackagesFromVpnValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/16 v4, 0x65

    .line 512
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_98
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removePackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 513
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto/16 :goto_11

    .line 490
    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_6f
    .end packed-switch
.end method

.method public removeVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 12
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 348
    const/16 v4, 0x64

    .line 351
    .local v4, "validationResult":I
    if-eqz p2, :cond_9

    :try_start_5
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_d

    .line 352
    :cond_9
    const/16 v4, 0x68

    move v5, v4

    .line 378
    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_c
    return v5

    .line 356
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_d
    iget-object v6, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 357
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_19

    .line 358
    const/16 v4, 0x6c

    move v5, v4

    .line 359
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_c

    .line 361
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_19
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_25

    .line 362
    const/16 v4, 0x70

    move v5, v4

    .line 363
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_c

    .line 367
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_25
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 368
    .local v3, "routeType":I
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_4e

    move-result v2

    .line 369
    .local v2, "profileState":I
    if-ne v3, v8, :cond_33

    if-ne v2, v8, :cond_33

    .line 370
    const/16 v4, 0x7d

    .line 377
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "profileState":I
    .end local v3    # "routeType":I
    :cond_33
    :goto_33
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeVpnProfileValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 378
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_c

    .line 373
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_4e
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at removeVpnProfileValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/16 v4, 0x65

    goto :goto_33
.end method

.method public setVpnModeOfOperationValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;I)I
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "vpnMode"    # I

    .prologue
    .line 1110
    const/16 v2, 0x64

    .line 1112
    .local v2, "validationResult":I
    if-eqz p2, :cond_8

    :try_start_4
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_c

    .line 1113
    :cond_8
    const/16 v2, 0x68

    move v3, v2

    .line 1135
    .end local v2    # "validationResult":I
    .local v3, "validationResult":I
    :goto_b
    return v3

    .line 1116
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_c
    iget-object v4, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 1117
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_18

    .line 1118
    const/16 v2, 0x6c

    move v3, v2

    .line 1119
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b

    .line 1121
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_2d

    if-eq v4, v5, :cond_24

    .line 1122
    const/16 v2, 0x70

    move v3, v2

    .line 1123
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b

    .line 1126
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :cond_24
    if-eqz p3, :cond_4c

    const/4 v4, 0x1

    if-eq p3, v4, :cond_4c

    .line 1127
    const/16 v2, 0x8a

    move v3, v2

    .line 1128
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b

    .line 1130
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "validationResult":I
    .restart local v2    # "validationResult":I
    :catch_2d
    move-exception v0

    .line 1131
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at setVpnModeOfOperationValidation API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const/16 v2, 0x65

    .line 1134
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4c
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1135
    .end local v2    # "validationResult":I
    .restart local v3    # "validationResult":I
    goto :goto_b
.end method
