.class public Lcom/android/settings/UCMHelpUtils;
.super Ljava/lang/Object;
.source "UCMHelpUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static miscInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/settings/UCMHelpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 303
    const-string v4, "com.samsung.ucs.ucsservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v2

    .line 305
    .local v2, "ucmBinder":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-eqz v2, :cond_1

    .line 307
    :try_start_0
    invoke-interface {v2, p0}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->generateKeyguardPassword(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 308
    .local v1, "response":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 319
    .end local v1    # "response":Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 311
    .restart local v1    # "response":Landroid/os/Bundle;
    :cond_0
    const-string v4, "stringresponse"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 312
    .local v3, "ucmpassword":Ljava/lang/String;
    goto :goto_0

    .line 313
    .end local v1    # "response":Landroid/os/Bundle;
    .end local v3    # "ucmpassword":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 317
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v4, "ChooseLockSettingsHelper"

    const-string v5, "mUcmBinder == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getStatus(Ljava/lang/String;)[I
    .locals 15
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x84

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 102
    const/4 v7, 0x3

    new-array v4, v7, [I

    .line 104
    .local v4, "ret":[I
    aput v14, v4, v11

    .line 105
    aput v10, v4, v12

    .line 106
    aput v10, v4, v13

    .line 107
    const-string v7, "UCM"

    const-string v8, "getstatusofUCMcard"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :try_start_0
    const-string v7, "com.samsung.ucs.ucsservice"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v2

    .line 112
    .local v2, "mUcmBinder":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    const/4 v6, 0x0

    .line 115
    .local v6, "status":Landroid/os/Bundle;
    invoke-interface {v2, p0}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 117
    if-eqz v6, :cond_0

    .line 118
    sget-object v7, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string v8, "status not null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v7, "state"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 121
    .local v5, "state":I
    const-string v7, "remainCnt"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 122
    .local v3, "remainCnt":I
    const-string v7, "errorresponse"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 123
    .local v1, "errorCode":I
    const-string v7, "miscInfo"

    const-string v8, "NONE"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    .line 125
    sget-object v7, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remain count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "error code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v7, 0x0

    aput v5, v4, v7

    .line 129
    const/4 v7, 0x1

    aput v3, v4, v7

    .line 130
    const/4 v7, 0x2

    aput v1, v4, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1    # "errorCode":I
    .end local v2    # "mUcmBinder":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    .end local v3    # "remainCnt":I
    .end local v5    # "state":I
    .end local v6    # "status":Landroid/os/Bundle;
    :goto_0
    return-object v4

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    aput v14, v4, v11

    .line 151
    aput v10, v4, v12

    .line 152
    aput v10, v4, v13

    goto :goto_0
.end method

.method private static getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1

    .prologue
    .line 323
    const-string v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    return-object v0
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 159
    if-nez p0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object v1

    .line 159
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static isStorageEnabled(Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;ILjava/lang/String;)Z
    .locals 7
    .param p0, "ucmService"    # Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    .param p1, "userId"    # I
    .param p2, "csName"    # Ljava/lang/String;

    .prologue
    .line 327
    sget-object v4, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isStorageEnabled() for userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v3, 0x0

    .line 330
    .local v3, "result":Z
    :try_start_0
    new-instance v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 332
    .local v0, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    const/4 v4, 0x0

    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "cspackagename":Ljava/lang/String;
    iput-object p2, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 335
    iput-object v1, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 337
    if-eqz p0, :cond_0

    .line 338
    invoke-interface {p0, p1, v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageManagedAsUser(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v3

    .line 342
    :goto_0
    sget-object v4, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isStorageEnabled() result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v0    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v1    # "cspackagename":Ljava/lang/String;
    :goto_1
    return v3

    .line 340
    .restart local v0    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v1    # "cspackagename":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string v5, "ucmService is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    .end local v0    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v1    # "cspackagename":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 344
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in isStorageEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static listPasswordSupportedProviders()[Ljava/lang/String;
    .locals 14

    .prologue
    .line 352
    const-string v12, "com.samsung.ucs.ucsservice"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v9

    .line 353
    .local v9, "ucmBinder":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    invoke-static {}, Lcom/android/settings/UCMHelpUtils;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v10

    .line 354
    .local v10, "ucmService":Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 357
    .local v11, "userid":I
    if-eqz v9, :cond_3

    .line 358
    const/4 v0, 0x0

    .line 360
    .local v0, "agentList":[Ljava/lang/String;
    :try_start_0
    invoke-interface {v9}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->listPasswordSupportedProviders()[Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v8, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 364
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v1, v5

    .line 365
    .local v2, "csname":Ljava/lang/String;
    invoke-static {v10, v11, v2}, Lcom/android/settings/UCMHelpUtils;->isStorageEnabled(Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 366
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 371
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "csname":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    const/4 v7, 0x0

    .line 373
    .local v7, "retAgentList":[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eqz v12, :cond_2

    .line 375
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v7, v12, [Ljava/lang/String;

    .line 377
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_2

    .line 378
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v7, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 383
    .end local v4    # "i":I
    .end local v7    # "retAgentList":[Ljava/lang/String;
    .end local v8    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 384
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 392
    .end local v0    # "agentList":[Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    const/4 v7, 0x0

    :cond_2
    return-object v7

    .line 387
    :cond_3
    const-string v12, "ChooseLockSettingsHelper"

    const-string v13, "mUcmBinder == null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static makeToast(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 243
    sget-object v0, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method public static resetUcmKeyguardSettings()Z
    .locals 4

    .prologue
    .line 248
    const-string v2, "com.samsung.ucs.ucsservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v1

    .line 250
    .local v1, "mUcmBinder":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-eqz v1, :cond_1

    .line 252
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->configureKeyguardSettings(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    const-string v2, "ChooseLockSettingsHelper"

    const-string v3, "success to ucm keyguard configure disable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 256
    :cond_0
    const-string v2, "ChooseLockSettingsHelper"

    const-string v3, "Failed to ucm keyguard configure disable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "ChooseLockSettingsHelper"

    const-string v3, "mUcmBinder == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static saveUCMPasswordAndSetConfigurationInfo(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;)V
    .locals 8
    .param p0, "csName"    # Ljava/lang/String;
    .param p1, "lockpatternutils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "oldExistingPassword"    # Ljava/lang/String;

    .prologue
    .line 270
    const-string v5, "com.samsung.ucs.ucsservice"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v2

    .line 272
    .local v2, "ucmBinder":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-eqz v2, :cond_3

    .line 274
    :try_start_0
    const-string v5, ""

    invoke-static {p0, v5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "uri":Ljava/lang/String;
    invoke-interface {v2, v4}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->generateKeyguardPassword(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 276
    .local v1, "response":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 299
    .end local v1    # "response":Landroid/os/Bundle;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 279
    .restart local v1    # "response":Landroid/os/Bundle;
    .restart local v4    # "uri":Ljava/lang/String;
    :cond_1
    const-string v5, "stringresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "ucmpassword":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 283
    if-eqz p1, :cond_2

    .line 284
    const-string v5, "ChooseLockSettingsHelper"

    const-string v6, "saved password to lockpatternutils"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/high16 v5, 0x60000

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {p1, v3, p2, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 286
    invoke-interface {v2, v4}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->configureKeyguardSettings(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    const-string v5, "ChooseLockSettingsHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "success to configureKeyguardSettings : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v1    # "response":Landroid/os/Bundle;
    .end local v3    # "ucmpassword":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 290
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "response":Landroid/os/Bundle;
    .restart local v3    # "ucmpassword":Ljava/lang/String;
    .restart local v4    # "uri":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v5, "ChooseLockSettingsHelper"

    const-string v6, "Could not set password recieved from UCM as mLockPatternUtils is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 297
    .end local v1    # "response":Landroid/os/Bundle;
    .end local v3    # "ucmpassword":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_3
    const-string v5, "ChooseLockSettingsHelper"

    const-string v6, "mUcmBinder == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static verfiyODEPin(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 10
    .param p0, "pw"    # Ljava/lang/String;
    .param p1, "csNameuri"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v7, 0x3

    new-array v4, v7, [I

    .line 56
    .local v4, "ret":[I
    const/4 v7, 0x0

    const/16 v8, 0x84

    aput v8, v4, v7

    .line 57
    const/4 v7, 0x1

    const/4 v8, -0x1

    aput v8, v4, v7

    .line 58
    const/4 v7, 0x2

    const/4 v8, -0x1

    aput v8, v4, v7

    .line 60
    const-string v7, "com.samsung.ucs.ucsservice"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v6

    .line 61
    .local v6, "ucmService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-nez v6, :cond_0

    .line 62
    sget-object v7, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string v8, "failed to get UCM service"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-object v4

    .line 66
    :cond_0
    :try_start_0
    invoke-interface {v6, p1, p0}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->verifyPin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "state"

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 68
    .local v5, "state":I
    const-string v7, "remainCnt"

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 69
    .local v3, "remainCnt":I
    const-string v7, "errorresponse"

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 70
    .local v2, "errorCode":I
    const-string v7, "miscInfo"

    const-string v8, "NONE"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    .line 72
    sget-object v7, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "state : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v7, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remainCnt : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v7, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "errorCode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/16 v7, 0x83

    if-ne v5, v7, :cond_1

    .line 77
    sget-object v7, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string v8, "PIN verfication succeed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_1
    const/4 v7, 0x0

    aput v5, v4, v7

    .line 85
    const/4 v7, 0x1

    aput v3, v4, v7

    .line 86
    const/4 v7, 0x2

    aput v2, v4, v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "errorCode":I
    .end local v3    # "remainCnt":I
    .end local v5    # "state":I
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 94
    const/4 v7, 0x0

    const/16 v8, 0x84

    aput v8, v4, v7

    .line 95
    const/4 v7, 0x1

    const/4 v8, -0x1

    aput v8, v4, v7

    .line 96
    const/4 v7, 0x2

    const/4 v8, -0x1

    aput v8, v4, v7

    goto/16 :goto_0

    .line 78
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "errorCode":I
    .restart local v3    # "remainCnt":I
    .restart local v5    # "state":I
    :cond_1
    const/16 v7, 0x84

    if-ne v5, v7, :cond_2

    .line 79
    :try_start_1
    sget-object v7, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string v8, "PIN verfication failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 81
    :cond_2
    sget-object v7, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string v8, "Mostly has gone to PUK case"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static verifyPUK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 12
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 171
    sget-object v9, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string v10, "verifyPUK enterd"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v9, 0x3

    new-array v4, v9, [I

    .line 174
    .local v4, "ret":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v4, v9

    .line 175
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v4, v9

    .line 176
    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v4, v9

    .line 178
    invoke-static {p1}, Lcom/android/settings/UCMHelpUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "tempPUK":Ljava/lang/String;
    sget-object v9, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tempPUK : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {p2}, Lcom/android/settings/UCMHelpUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, "tempPIN":Ljava/lang/String;
    sget-object v9, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tempPIN : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-eqz v7, :cond_0

    if-nez v6, :cond_1

    .line 184
    :cond_0
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v4, v9

    .line 238
    :goto_0
    return-object v4

    .line 188
    :cond_1
    const-string v9, "com.samsung.ucs.ucsservice"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v8

    .line 189
    .local v8, "ucmService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-nez v8, :cond_2

    .line 190
    sget-object v9, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    const-string v10, "failed to get UCM service"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v4, v9

    goto :goto_0

    .line 203
    :cond_2
    :try_start_0
    invoke-interface {v8, p0, p1, p2}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 204
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v9, "state"

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 205
    .local v5, "state":I
    const-string v9, "remainCnt"

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 206
    .local v3, "pukRemainCnt":I
    const-string v9, "errorresponse"

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 207
    .local v2, "errorCode":I
    const-string v9, "miscInfo"

    const-string v10, "NONE"

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    .line 208
    sget-object v9, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "state : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v9, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remainCnt : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v9, Lcom/android/settings/UCMHelpUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "errorCode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/16 v9, 0x84

    if-ne v5, v9, :cond_3

    .line 213
    const-string v9, "PUK verfication succeed : LOCKED"

    invoke-static {v9}, Lcom/android/settings/UCMHelpUtils;->makeToast(Ljava/lang/String;)V

    .line 214
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v4, v9

    .line 215
    const/4 v9, 0x1

    aput v3, v4, v9

    .line 216
    const/4 v9, 0x2

    aput v2, v4, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 234
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "errorCode":I
    .end local v3    # "pukRemainCnt":I
    .end local v5    # "state":I
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 217
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "errorCode":I
    .restart local v3    # "pukRemainCnt":I
    .restart local v5    # "state":I
    :cond_3
    const/16 v9, 0x83

    if-ne v5, v9, :cond_4

    .line 218
    :try_start_1
    const-string v9, "PUK verfication succeed : UNLOCKED"

    invoke-static {v9}, Lcom/android/settings/UCMHelpUtils;->makeToast(Ljava/lang/String;)V

    .line 219
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v4, v9

    .line 220
    const/4 v9, 0x1

    aput v3, v4, v9

    .line 221
    const/4 v9, 0x2

    aput v2, v4, v9

    goto/16 :goto_0

    .line 223
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Remain count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/UCMHelpUtils;->makeToast(Ljava/lang/String;)V

    .line 224
    const-string v9, "PUK verfication failed : BLOCKED"

    invoke-static {v9}, Lcom/android/settings/UCMHelpUtils;->makeToast(Ljava/lang/String;)V

    .line 225
    if-nez v3, :cond_5

    .line 226
    const-string v9, "PUK verfication failed : BLOCKED and PUK Remain count is 0"

    invoke-static {v9}, Lcom/android/settings/UCMHelpUtils;->makeToast(Ljava/lang/String;)V

    .line 229
    :cond_5
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v4, v9

    .line 230
    const/4 v9, 0x1

    aput v3, v4, v9

    .line 231
    const/4 v9, 0x2

    aput v2, v4, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
