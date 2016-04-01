.class public Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
.super Lcom/sec/enterprise/knox/certenroll/IEnterpriseCertEnrollPolicy$Stub;
.source "EnterpriseCertEnrollPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$1;,
        Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$AdminRemoveOperations;,
        Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$KeystoreUnlockOperations;,
        Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;,
        Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final KNOX_CERTENROL_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CERTENROLL"

.field private static final PACKAGENAME:Ljava/lang/String; = "com.samsung.android.certenrolservice"

.field private static TAG:Ljava/lang/String;

.field private static mScepServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private CEP_BIND_ACTION:Ljava/lang/String;

.field final interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;",
            ">;"
        }
    .end annotation
.end field

.field final interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private manager:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

.field private receiver:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 109
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DBG:Z

    .line 113
    const-string v0, "EnterpriseSCEPPolicy"

    sput-object v0, TAG:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, mScepServiceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Lcom/sec/enterprise/knox/certenroll/IEnterpriseCertEnrollPolicy$Stub;-><init>()V

    .line 110
    iput-object v1, p0, mContext:Landroid/content/Context;

    .line 111
    iput-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 115
    const-string v0, "com.samsung.android.CEP_BIND"

    iput-object v0, p0, CEP_BIND_ACTION:Ljava/lang/String;

    .line 121
    iput-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 123
    iput-object v1, p0, receiver:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    .line 125
    iput-object v1, p0, manager:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    .line 129
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    .line 130
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;

    .line 136
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_2c

    .line 137
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "EnterpriseSCEPPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2c
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 139
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 140
    invoke-direct {p0}, registerEnterpriseSCEPpolicyReciever()V

    .line 141
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 106
    sget-boolean v0, DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 106
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .prologue
    .line 106
    invoke-direct/range {p0 .. p6}, sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    .prologue
    .line 106
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, sendBroadcastToCEPAgent(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Ljava/util/Map;
    .registers 1

    .prologue
    .line 106
    sget-object v0, mScepServiceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/util/HashMap;ILjava/lang/String;IZ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct/range {p0 .. p5}, bindServiceAndCallPending(Ljava/util/HashMap;ILjava/lang/String;IZ)V

    return-void
.end method

.method private aliasExists(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;

    .prologue
    .line 981
    sget-object v10, TAG:Ljava/lang/String;

    const-string v11, "In aliasExists..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const/4 v5, 0x0

    .line 984
    .local v5, "exists":Z
    if-nez p2, :cond_13

    .line 985
    sget-object v10, TAG:Ljava/lang/String;

    const-string v11, "Profile null!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 1024
    .end local v5    # "exists":Z
    .local v6, "exists":I
    :goto_12
    return v6

    .line 989
    .end local v6    # "exists":I
    .restart local v5    # "exists":Z
    :cond_13
    iget-object v9, p2, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->credentialStorage:Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .line 990
    .local v9, "storage":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    if-nez v9, :cond_20

    .line 991
    sget-object v10, TAG:Ljava/lang/String;

    const-string v11, "Credential Storage null!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 992
    .restart local v6    # "exists":I
    goto :goto_12

    .line 995
    .end local v6    # "exists":I
    :cond_20
    iget-object v0, p2, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    .line 996
    .local v0, "aliasToFind":Ljava/lang/String;
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_37

    .line 997
    :cond_2e
    sget-object v10, TAG:Ljava/lang/String;

    const-string v11, "Alias provided is invalid!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 998
    .restart local v6    # "exists":I
    goto :goto_12

    .line 1001
    .end local v6    # "exists":I
    :cond_37
    invoke-direct {p0}, getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v10

    if-nez v10, :cond_46

    .line 1002
    sget-object v10, TAG:Ljava/lang/String;

    const-string v11, "Universal Certificate Storage Manager Service not found!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 1003
    .restart local v6    # "exists":I
    goto :goto_12

    .line 1007
    .end local v6    # "exists":I
    :cond_46
    :try_start_46
    iget-object v10, p0, manager:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    invoke-interface {v10, p1, v9}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getAliases(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v1

    .line 1008
    .local v1, "aliases":[Ljava/lang/String;
    if-nez v1, :cond_57

    .line 1009
    sget-object v10, TAG:Ljava/lang/String;

    const-string v11, "No alias found for given input!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 1010
    .restart local v6    # "exists":I
    goto :goto_12

    .line 1013
    .end local v6    # "exists":I
    :cond_57
    sget-object v10, TAG:Ljava/lang/String;

    const-string v11, "Alias List: "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_61
    if-ge v7, v8, :cond_91

    aget-object v4, v2, v7

    .line 1015
    .local v4, "existingAlias":Ljava/lang/String;
    sget-object v10, TAG:Ljava/lang/String;

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_6d} :catch_74

    move-result v10

    if-eqz v10, :cond_71

    .line 1017
    const/4 v5, 0x1

    .line 1014
    :cond_71
    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    .line 1020
    .end local v1    # "aliases":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "existingAlias":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catch_74
    move-exception v3

    .line 1021
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_91
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Alias \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 1024
    .restart local v6    # "exists":I
    goto/16 :goto_12
.end method

.method private bindSCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .registers 26
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;

    .prologue
    .line 337
    const/16 v17, -0x259

    .line 338
    .local v17, "ret":I
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 341
    .local v15, "pm":Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, CEP_BIND_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v11, "bindInent":Landroid/content/Intent;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindSCEPService - CEPBINDAction -- "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, CEP_BIND_ACTION:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 347
    .local v8, "adminId":I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 348
    .local v9, "containerId":I
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_78

    .line 349
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caller AdminUid is : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_78
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_98

    .line 351
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caller mContainerId is : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_98
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 354
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_b8

    .line 355
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caller mContainerId after correction: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_b8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 357
    .local v6, "callID":J
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    .line 359
    .local v20, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v21

    .line 360
    .local v21, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v22

    .line 361
    .local v22, "userlistSize":I
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device Userlist size : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v2, 0x0

    invoke-virtual {v15, v11, v2, v9}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v19

    .line 363
    .local v19, "servicesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v13, 0x0

    .line 364
    .local v13, "flag":Z
    const/4 v12, 0x0

    .line 365
    .local v12, "compName":Landroid/content/ComponentName;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_15e

    .line 366
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_fc
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 367
    .local v16, "resInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    .line 368
    .local v18, "servcInfo":Landroid/content/pm/ServiceInfo;
    new-instance v12, Landroid/content/ComponentName;

    .end local v12    # "compName":Landroid/content/ComponentName;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .restart local v12    # "compName":Landroid/content/ComponentName;
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_15b

    .line 372
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindSCEPService - Package  Name -- "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindSCEPService - Service  Name -- "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_15b
    if-eqz v12, :cond_fc

    .line 378
    const/4 v13, 0x1

    .line 383
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v18    # "servcInfo":Landroid/content/pm/ServiceInfo;
    :cond_15e
    if-nez v13, :cond_163

    const/16 v2, -0x259

    .line 387
    :goto_162
    return v2

    .line 384
    :cond_163
    new-instance v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v9, v1, v2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;ILjava/lang/String;Z)V

    .line 385
    .local v4, "cSCEPConnect":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 386
    .local v3, "action":Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 387
    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v10}, bindToService(Landroid/content/Intent;Landroid/content/ServiceConnection;Ljava/lang/String;JIIZ)I

    move-result v2

    goto :goto_162
.end method

.method private bindServiceAndCallPending(Ljava/util/HashMap;ILjava/lang/String;IZ)V
    .registers 20
    .param p2, "userId"    # I
    .param p3, "certProfileType"    # Ljava/lang/String;
    .param p4, "adminUid"    # I
    .param p5, "removal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;",
            ">;I",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 647
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    if-eqz p1, :cond_7e

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7e

    .line 648
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_3a

    .line 649
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binding for performKeyStoreUnlockedOperations/performPreAdminRemovalOperations for userId["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "] and protocol["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_3a
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    .line 651
    .local v13, "service":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    if-nez p5, :cond_78

    .line 652
    invoke-interface {v13}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->performKeyStoreUnlockedOperations()V

    .line 678
    .end local v13    # "service":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    :cond_47
    :goto_47
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_77

    .line 679
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End of performKeyStoreUnlockedOperations/performPreAdminRemovalOperations for userId["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "] and protocol["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_77
    :goto_77
    return-void

    .line 654
    .restart local v13    # "service":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    :cond_78
    move/from16 v0, p4

    invoke-interface {v13, v0}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->performPreAdminRemovalOperations(I)V

    goto :goto_47

    .line 656
    .end local v13    # "service":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    :cond_7e
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, getServiceComponent(ILjava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 657
    .local v11, "compName":Landroid/content/ComponentName;
    if-eqz v11, :cond_47

    .line 658
    new-instance v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;

    const/4 v2, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;ILjava/lang/String;Z)V

    .line 659
    .local v4, "cSCEPConnect":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 660
    .local v3, "action":Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 661
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 662
    .local v6, "callID":J
    const/4 v10, 0x1

    move-object v2, p0

    move-object/from16 v5, p3

    move/from16 v8, p4

    move/from16 v9, p2

    invoke-direct/range {v2 .. v10}, bindToService(Landroid/content/Intent;Landroid/content/ServiceConnection;Ljava/lang/String;JIIZ)I

    move-result v12

    .line 663
    .local v12, "res":I
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_e4

    .line 664
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binding status for performKeyStoreUnlockedOperations/performPreAdminRemovalOperations for userId["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "] and protocol["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "] status["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_e4
    const/16 v2, -0x258

    if-ne v12, v2, :cond_47

    .line 666
    sget-object v2, mScepServiceMap:Ljava/util/Map;

    if-eqz v2, :cond_10c

    sget-object v2, mScepServiceMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10c

    sget-object v2, mScepServiceMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_128

    .line 667
    :cond_10c
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find the service for userId:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77

    .line 670
    :cond_128
    sget-object v2, mScepServiceMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    .line 671
    .restart local v13    # "service":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    if-nez p5, :cond_143

    .line 672
    invoke-interface {v13}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->performKeyStoreUnlockedOperations()V

    goto/16 :goto_47

    .line 674
    :cond_143
    move/from16 v0, p4

    invoke-interface {v13, v0}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->performPreAdminRemovalOperations(I)V

    goto/16 :goto_47
.end method

.method private bindToService(Landroid/content/Intent;Landroid/content/ServiceConnection;Ljava/lang/String;JIIZ)I
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "cSCEPConnect"    # Landroid/content/ServiceConnection;
    .param p3, "mCepProtocol"    # Ljava/lang/String;
    .param p4, "callID"    # J
    .param p6, "adminId"    # I
    .param p7, "containerId"    # I
    .param p8, "withThread"    # Z

    .prologue
    const/4 v3, 0x1

    .line 392
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p7}, Landroid/os/UserHandle;-><init>(I)V

    .line 393
    .local v1, "uHandle":Landroid/os/UserHandle;
    if-eqz p8, :cond_2a

    iget-object v2, p0, interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 395
    :goto_d
    if-eqz p8, :cond_14

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, ensureNotOnMainThread(Landroid/content/Context;)V

    .line 396
    :cond_14
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2, v3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 397
    .local v0, "status":Z
    if-eqz v0, :cond_35

    .line 398
    if-eqz p8, :cond_30

    invoke-direct {p0, p7, p3, v3}, takeInterfaceOnBlockingQueue(ILjava/lang/String;Z)V

    .line 400
    :goto_21
    invoke-direct {p0, p6, p7, p3}, insertOrUpdateDB(IILjava/lang/String;)V

    .line 401
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 402
    const/16 v2, -0x258

    .line 406
    :goto_29
    return v2

    .line 394
    .end local v0    # "status":Z
    :cond_2a
    iget-object v2, p0, interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    goto :goto_d

    .line 399
    .restart local v0    # "status":Z
    :cond_30
    const/4 v2, 0x0

    invoke-direct {p0, p7, p3, v2}, takeInterfaceOnBlockingQueue(ILjava/lang/String;Z)V

    goto :goto_21

    .line 404
    :cond_35
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BindToServiceFailed AppId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | Container= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | protocol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    const/16 v2, -0x259

    goto :goto_29
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)V
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 150
    :cond_8
    :goto_8
    return-void

    .line 147
    :cond_9
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 148
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_8
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 627
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 628
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 629
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 632
    :cond_14
    return-void
.end method

.method private getCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;

    .prologue
    .line 616
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 617
    .local v0, "containerId":I
    sget-object v2, mScepServiceMap:Ljava/util/Map;

    if-eqz v2, :cond_31

    if-eqz p1, :cond_31

    sget-object v2, mScepServiceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 618
    sget-object v2, mScepServiceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 619
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    if-eqz v1, :cond_31

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 620
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    .line 623
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    :goto_30
    return-object v2

    .line 622
    :cond_31
    if-eqz p1, :cond_68

    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCEPService null mAdminUid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mContainerUid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] and packageName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_68
    const/4 v2, 0x0

    goto :goto_30
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 154
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 157
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageInfoOfAdmin(I)Ljava/lang/String;
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, "callerPkgName":Ljava/lang/String;
    iget-object v2, p0, mContext:Landroid/content/Context;

    if-eqz v2, :cond_20

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 606
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 608
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 609
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 612
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_20
    return-object v0
.end method

.method private getServiceComponent(ILjava/lang/String;)Landroid/content/ComponentName;
    .registers 13
    .param p1, "userId"    # I
    .param p2, "certProfileType"    # Ljava/lang/String;

    .prologue
    .line 683
    new-instance v0, Landroid/content/Intent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, CEP_BIND_ACTION:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    .local v0, "bindInent":Landroid/content/Intent;
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 685
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 686
    .local v6, "servicesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 687
    .local v1, "compName":Landroid/content/ComponentName;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8d

    .line 688
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 689
    .local v4, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 690
    .local v5, "servcInfo":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "compName":Landroid/content/ComponentName;
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .restart local v1    # "compName":Landroid/content/ComponentName;
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_89

    .line 694
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getServiceComponent - Package  Name -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getServiceComponent - Service  Name -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_89
    if-eqz v1, :cond_34

    move-object v7, v1

    .line 704
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "servcInfo":Landroid/content/pm/ServiceInfo;
    :goto_8c
    return-object v7

    :cond_8d
    const/4 v7, 0x0

    goto :goto_8c
.end method

.method private getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    .registers 2

    .prologue
    .line 940
    iget-object v0, p0, manager:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v0, :cond_11

    .line 941
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    iput-object v0, p0, manager:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    .line 943
    :cond_11
    iget-object v0, p0, manager:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    return-object v0
.end method

.method private insertOrUpdateDB(IILjava/lang/String;)V
    .registers 11
    .param p1, "adminId"    # I
    .param p2, "containerId"    # I
    .param p3, "cepProtocol"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 162
    const/4 v3, 0x0

    .line 165
    .local v3, "ret":Z
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v0, "cv":Landroid/content/ContentValues;
    if-eq p1, v6, :cond_12

    :try_start_9
    const-string v4, "cepAgentUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    :cond_12
    if-eq p2, v6, :cond_1d

    const-string v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    :cond_1d
    if-eqz p3, :cond_25

    const-string/jumbo v4, "protocol"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_25
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v1, "cvWhere":Landroid/content/ContentValues;
    if-eq p1, v6, :cond_35

    const-string v4, "cepAgentUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    :cond_35
    if-eq p2, v6, :cond_40

    const-string v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    :cond_40
    if-eqz p3, :cond_48

    const-string/jumbo v4, "protocol"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_48
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "EnterpriseCertEnrollPolicy"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    .line 177
    const/4 v4, 0x1

    if-eq v4, v3, :cond_5f

    .line 178
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_5f

    .line 179
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "insertOrUpdateDB - DB operation failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5f} :catch_60

    .line 185
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :cond_5f
    :goto_5f
    return-void

    .line 182
    :catch_60
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5f
.end method

.method private isCredentialStorageManaged(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "credentialStorage"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 951
    const/4 v1, 0x0

    .line 952
    .local v1, "result":Z
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "In isCredentialStorageManaged..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    if-nez p2, :cond_13

    .line 954
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "CredentialStorage is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 968
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_12
    return v2

    .line 957
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_13
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :try_start_2d
    invoke-direct {p0}, getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 960
    iget-object v3, p0, manager:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    invoke-interface {v3, p1, p2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageManaged(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_38} :catch_5b

    move-result v1

    .line 967
    :goto_39
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 968
    .restart local v2    # "result":I
    goto :goto_12

    .line 962
    .end local v2    # "result":I
    :cond_53
    :try_start_53
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "UCM service not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_5b

    goto :goto_39

    .line 964
    :catch_5b
    move-exception v0

    .line 965
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method private isUCMAllowedAndManaged(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "credentialStorage"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 947
    invoke-direct {p0}, knoxSupportUCM()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1, p2}, isCredentialStorageManaged(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private knoxSupportUCM()Z
    .registers 5

    .prologue
    .line 972
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "In knoxSupportUCM..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v0, 0x0

    .line 975
    .local v0, "result":Z
    const/4 v0, 0x1

    .line 976
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Does KNOX support UCM? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return v0
.end method

.method private registerEnterpriseSCEPpolicyReciever()V
    .registers 12

    .prologue
    const/4 v4, 0x0

    .line 188
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_d

    .line 189
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerEnterpriseSCEPpolicyReciever - Binding the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_d
    new-instance v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)V

    iput-object v0, p0, receiver:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    .line 192
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v3, "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, receiver:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 198
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    .restart local v3    # "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.action.CEP_CERT_ENROLL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    iget-object v5, p0, mContext:Landroid/content/Context;

    iget-object v6, p0, receiver:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL_INTERNAL"

    move-object v8, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 202
    return-void
.end method

.method private sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 19
    .param p1, "certHash"    # Ljava/lang/String;
    .param p2, "txId"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "refNumber"    # Ljava/lang/String;
    .param p6, "callerid"    # I

    .prologue
    .line 265
    iget-object v9, p0, mContext:Landroid/content/Context;

    if-nez v9, :cond_c

    .line 266
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, " SendBroadcastToMDMAgent mContext is null----- "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_b
    return-void

    .line 270
    :cond_c
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.samsung.action.knox.certenroll.CEP_CERT_ENROLL_STATUS"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v3, "intentCaller":Landroid/content/Intent;
    move/from16 v0, p6

    invoke-direct {p0, v0}, getPackageInfoOfAdmin(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v9, "com.samsung.extra.knox.certenroll.CERT_HASH"

    invoke-virtual {v3, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v9, "com.samsung.extra.knox.certenroll.TRANSACTION_ID"

    invoke-virtual {v3, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v9, "com.samsung.extra.knox.certenroll.STATUS"

    invoke-virtual {v3, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    const-string v9, "com.samsung.extra.knox.certenroll.ALIAS"

    move-object/from16 v0, p4

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v9, "com.samsung.extra.knox.certenroll.REFERENCE_NUMBER"

    move-object/from16 v0, p5

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 278
    .local v4, "id":J
    new-instance v8, Landroid/os/UserHandle;

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 279
    .local v8, "userHandleId":Landroid/os/UserHandle;
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL"

    invoke-virtual {v9, v3, v8, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 280
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    const-string v9, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 284
    .local v7, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 285
    .local v6, "message":Ljava/lang/String;
    if-eqz p3, :cond_1fc

    .line 286
    const-string v6, "CEP service handling request failed : "

    .line 287
    const/4 v9, 0x1

    if-ne p3, v9, :cond_e6

    .line 288
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Request Pending"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 316
    :goto_71
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    if-eqz v9, :cond_c3

    .line 317
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 318
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "severity"

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    const-string/jumbo v9, "group"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string/jumbo v9, "outcome"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 321
    const-string/jumbo v9, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    const-string v9, "component"

    const-string v10, "EnterpriseCertEnrollPolicy"

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string/jumbo v9, "message"

    invoke-virtual {v2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 328
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_c3
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, " SendBroadcastToMDMAgent ----- "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " SCEP Intent Calling UserId / UID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 289
    :cond_e6
    const/4 v9, -0x1

    if-ne p3, v9, :cond_fe

    .line 290
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Error From Server"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_71

    .line 291
    :cond_fe
    const/4 v9, -0x2

    if-ne p3, v9, :cond_116

    .line 292
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Network Error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_71

    .line 293
    :cond_116
    const/16 v9, -0x131

    if-ne p3, v9, :cond_12f

    .line 294
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Invalid Request"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_71

    .line 295
    :cond_12f
    const/16 v9, -0x1f8

    if-ne p3, v9, :cond_148

    .line 296
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "KeyStore is not locked"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_71

    .line 297
    :cond_148
    const/16 v9, -0x134

    if-ne p3, v9, :cond_161

    .line 298
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "CCM Not Supported"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_71

    .line 299
    :cond_161
    const/16 v9, -0x132

    if-ne p3, v9, :cond_17a

    .line 300
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Transaction ID not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_71

    .line 301
    :cond_17a
    const/16 v9, -0x191

    if-ne p3, v9, :cond_193

    .line 302
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Certificate Verification failed, Pass proper Hash"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_71

    .line 303
    :cond_193
    const/16 v9, -0x190

    if-ne p3, v9, :cond_1ac

    .line 304
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Certificate is missing, Pass proper Hash"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_71

    .line 305
    :cond_1ac
    const/16 v9, -0x135

    if-ne p3, v9, :cond_1c5

    .line 306
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Alias Exists"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_71

    .line 307
    :cond_1c5
    const/4 v9, -0x3

    if-ne p3, v9, :cond_1dd

    .line 308
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Unknown Error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_71

    .line 310
    :cond_1dd
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_71

    .line 313
    :cond_1fc
    const-string v6, "CEP service handling request succeeded"

    goto/16 :goto_71
.end method

.method private sendBroadcastToCEPAgent(Ljava/lang/String;IILjava/lang/String;)V
    .registers 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "mAdminId"    # I
    .param p3, "mContainerId"    # I
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 206
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v2, "statusIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-direct {p0, p2}, getPackageInfoOfAdmin(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v4, "com.samsung.extra.knox.certenroll.SERVICE_USERID"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    const-string v4, "com.samsung.extra.knox.certenroll.SERVICE_PROTOCOL"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 212
    .local v0, "id":J
    new-instance v3, Landroid/os/UserHandle;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 213
    .local v3, "userHandle":Landroid/os/UserHandle;
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL"

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 214
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_60

    .line 216
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " sendBroadcastToSCEP ------- SCEP Intent Calling UserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / Service UserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / Service pkgName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_60
    return-void
.end method

.method private takeInterfaceOnBlockingQueue(ILjava/lang/String;Z)V
    .registers 14
    .param p1, "containerId"    # I
    .param p2, "mCepProtocol"    # Ljava/lang/String;
    .param p3, "withThread"    # Z

    .prologue
    .line 411
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_26

    .line 412
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>>> takeInterfaceOnBlockingQueue, containerId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " :thread:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_26
    const/4 v3, 0x0

    .line 416
    .local v3, "interfaceSCEP":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    if-eqz p3, :cond_4a

    .line 417
    :try_start_29
    iget-object v6, p0, interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-object v3, v0

    .line 420
    :goto_33
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_3f

    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "take interface using queue"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_3f} :catch_59

    .line 425
    :cond_3f
    :goto_3f
    if-nez v3, :cond_64

    .line 426
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "takeInterfaceOnBlockingQueue bind service is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_49
    :goto_49
    return-void

    .line 419
    :cond_4a
    :try_start_4a
    iget-object v6, p0, interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v8, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v8, v9, v7}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-object v3, v0
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_58} :catch_59

    goto :goto_33

    .line 421
    :catch_59
    move-exception v2

    .line 422
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v6, TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 430
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_64
    sget-object v6, mScepServiceMap:Ljava/util/Map;

    if-eqz v6, :cond_c3

    sget-object v6, mScepServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_c3

    .line 431
    sget-object v6, mScepServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 432
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_89

    .line 433
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_89
    invoke-virtual {v4, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v6, mScepServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_49

    .line 437
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "takeInterfaceOnBlockingQueue service was present overwrite mAdminUid["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] pkgName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 439
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    :cond_c3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 440
    .local v5, "newEntry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    invoke-virtual {v5, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v6, mScepServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_49

    .line 443
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "takeInterfaceOnBlockingQueue service was not present overwrite mAdminUid["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] pkgName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49
.end method


# virtual methods
.method public activateEnrollCertService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;

    .prologue
    .line 252
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_b

    .line 253
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Framework activateEnrollCertService - calling....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_b
    invoke-direct {p0, p1}, enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 255
    if-eqz p1, :cond_15

    .line 256
    invoke-direct {p0, p1, p2}, bindSCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v0

    .line 258
    :goto_14
    return v0

    :cond_15
    const/16 v0, -0x259

    goto :goto_14
.end method

.method public deleteUserCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;
    .param p3, "certificateHash"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-direct {p0, p1}, enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 552
    invoke-direct {p0, p1, p2}, getCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-result-object v1

    .line 553
    .local v1, "mScepService":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    if-eqz v1, :cond_14

    .line 555
    :try_start_9
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-interface {v1, p3, v2}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->deleteUserCertificate(Ljava/lang/String;I)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v2

    .line 560
    :goto_f
    return v2

    .line 556
    :catch_10
    move-exception v0

    .line 557
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 560
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public enrollUserCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 27
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;
    .param p3, "enrollmentProfile"    # Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;
    .param p5, "hashCACert"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 462
    .local p4, "allowedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 463
    invoke-direct/range {p0 .. p2}, getCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-result-object v18

    .line 464
    .local v18, "mScepService":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    const/16 v17, 0x0

    .line 466
    .local v17, "exception":Z
    const/4 v7, -0x3

    .line 468
    .local v7, "errorCode":I
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    const-string v5, "UCM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 469
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "Keystore type -> UCM!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->credentialStorage:Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, isUCMAllowedAndManaged(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 471
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "Error in handling UCM Keystore type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/16 v17, 0x1

    .line 473
    const/16 v7, -0x136

    .line 477
    :goto_36
    if-nez v17, :cond_6a

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, aliasExists(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 479
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alias \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' already exists!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/16 v17, 0x1

    .line 481
    const/16 v7, -0x135

    .line 489
    :cond_6a
    :goto_6a
    if-eqz v18, :cond_d3

    if-nez v17, :cond_d3

    .line 491
    :try_start_6e
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->enrollUserCertificate(Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;Ljava/util/List;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_7d} :catch_c7

    move-result-object v4

    .line 502
    :goto_7e
    return-object v4

    .line 475
    :cond_7f
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Credential Storage \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->credentialStorage:Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    iget-object v6, v6, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is allowed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 483
    :cond_a4
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alias \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' does not exist!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 492
    :catch_c7
    move-exception v16

    .line 493
    .local v16, "e":Landroid/os/RemoteException;
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "Exception in handlePreAdminRemoval:"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    const/16 v17, 0x1

    .line 497
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_d3
    new-instance v19, Ljava/security/SecureRandom;

    invoke-direct/range {v19 .. v19}, Ljava/security/SecureRandom;-><init>()V

    .line 498
    .local v19, "secureRandomg":Ljava/security/SecureRandom;
    invoke-virtual/range {v19 .. v19}, Ljava/security/SecureRandom;->nextInt()I

    move-result v20

    .line 499
    .local v20, "uniqueId":I
    if-eqz p3, :cond_e4

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    if-nez v4, :cond_fe

    :cond_e4
    const-string v8, ""

    .line 500
    .local v8, "alias":Ljava/lang/String;
    :goto_e6
    if-eqz v17, :cond_103

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 502
    :goto_f9
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7e

    .line 499
    .end local v8    # "alias":Ljava/lang/String;
    :cond_fe
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    goto :goto_e6

    .line 501
    .restart local v8    # "alias":Ljava/lang/String;
    :cond_103
    const-string v10, ""

    const-string v11, ""

    const/16 v12, -0x259

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v9, p0

    move-object v13, v8

    invoke-direct/range {v9 .. v15}, sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_f9
.end method

.method public getCertEnrollmentStatus(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;

    .prologue
    .line 571
    invoke-direct {p0, p1}, enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 572
    invoke-direct {p0, p1, p2}, getCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-result-object v1

    .line 573
    .local v1, "mScepService":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    if-eqz v1, :cond_14

    .line 575
    :try_start_9
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-interface {v1, p3, v2}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->getCertEnrollmentStatus(Ljava/lang/String;I)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v2

    .line 580
    :goto_f
    return v2

    .line 576
    :catch_10
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 580
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public isEnrollCertServiceActivated(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;

    .prologue
    .line 593
    invoke-direct {p0, p1}, enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 594
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 595
    .local v0, "containerId":I
    invoke-direct {p0, p1, p2}, getCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 596
    if-eqz p1, :cond_14

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0, p2}, insertOrUpdateDB(IILjava/lang/String;)V

    .line 597
    :cond_14
    const/4 v1, 0x1

    .line 599
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public notifyUserKeystoreUnlocked(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 640
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Start of unlock of keystore happened."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$KeystoreUnlockOperations;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$KeystoreUnlockOperations;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$1;)V

    new-array v1, v2, [[Ljava/lang/Integer;

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$KeystoreUnlockOperations;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 642
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "End of unlock of keystore happened."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 918
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 935
    sget-object v0, mScepServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 936
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 923
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPreAdminRemoval started with thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    new-instance v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$AdminRemoveOperations;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v4, v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$AdminRemoveOperations;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;ILcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$1;)V

    new-array v1, v3, [[Ljava/lang/Integer;

    new-array v2, v3, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$AdminRemoveOperations;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 930
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPreAdminRemoval End with thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    return-void
.end method

.method public renewUserCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;
    .param p3, "certificateHash"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 522
    .local p4, "allowedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 523
    invoke-direct/range {p0 .. p2}, getCEPService(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-result-object v11

    .line 524
    .local v11, "mScepService":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    const/4 v10, 0x0

    .line 525
    .local v10, "exception":Z
    if-eqz v11, :cond_1e

    .line 527
    :try_start_a
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v11, v0, v1, v2}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;->renewUserCertificate(Ljava/lang/String;Ljava/util/List;I)Ljava/lang/String;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    move-result-object v2

    .line 537
    :goto_14
    return-object v2

    .line 528
    :catch_15
    move-exception v9

    .line 529
    .local v9, "e":Landroid/os/RemoteException;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Exception in handlePreAdminRemoval:"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    const/4 v10, 0x1

    .line 533
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_1e
    new-instance v12, Ljava/security/SecureRandom;

    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    .line 534
    .local v12, "secureRandomg":Ljava/security/SecureRandom;
    invoke-virtual {v12}, Ljava/security/SecureRandom;->nextInt()I

    move-result v13

    .line 535
    .local v13, "uniqueId":I
    if-eqz v10, :cond_3f

    const-string v3, ""

    const-string v4, ""

    const/4 v5, -0x3

    const-string v6, ""

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 537
    :goto_3a
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 536
    :cond_3f
    const-string v3, ""

    const-string v4, ""

    const/16 v5, -0x259

    const-string v6, ""

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3a
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 912
    return-void
.end method
