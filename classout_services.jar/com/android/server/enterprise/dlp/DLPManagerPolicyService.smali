.class public Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
.super Lcom/sec/enterprise/knox/dlp/IDLPManagerPolicy$Stub;
.source "DLPManagerPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$ClearUserDataObserver;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;
    }
.end annotation


# static fields
.field static final ContentProviderRestrictingApps:[Ljava/lang/String;

.field private static final DBG:Z

.field private static final DLP_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.DLP_SERVICE_BIND_ACTION"

.field private static final DLP_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.dlp.service"

.field private static final DOWNLOAD_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.providers.downloads"

.field private static final EMP_DLP_CMD_NOTIFY_PROCESS_DIED:I = 0x1

.field private static final EMP_DLP_CMD_SET_EXPIRY_AFTER:I = 0x3

.field private static final EMP_DLP_CMD_SET_FILE_EXPIRY:I = 0x2

.field private static final ENTERPRISE_DLP_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_DLP"

.field private static final MEDIA_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.providers.media"

.field private static final SERVICECONNECTIONWAIT:Ljava/lang/Object;

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x30d40L

.field private static TAG:Ljava/lang/String;

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static mBootReceiver:Landroid/content/BroadcastReceiver;

.field private static mDLPConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;


# instance fields
.field private dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mClearDataObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$ClearUserDataObserver;

.field mContext:Landroid/content/Context;

.field private mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 86
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_3a

    move v0, v1

    :goto_a
    sput-boolean v0, DBG:Z

    .line 87
    const-string v0, "DLPManagerPolicyService"

    sput-object v0, TAG:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, mDLPConnectionMap:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, SERVICECONNECTIONWAIT:Ljava/lang/Object;

    .line 106
    sput-object v3, sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    .line 115
    sput-object v3, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 1172
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.microsoft.office"

    aput-object v3, v0, v1

    const-string v1, "com.hancom.office.editor"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "com.infraware.office"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.mobisystems.editor"

    aput-object v2, v0, v1

    sput-object v0, ContentProviderRestrictingApps:[Ljava/lang/String;

    return-void

    :cond_3a
    move v0, v2

    .line 86
    goto :goto_a
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-direct {p0}, Lcom/sec/enterprise/knox/dlp/IDLPManagerPolicy$Stub;-><init>()V

    .line 85
    iput-object v2, p0, mContext:Landroid/content/Context;

    .line 96
    iput-object v2, p0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .line 102
    iput-object v2, p0, receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    .line 246
    new-instance v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;)V

    iput-object v1, p0, mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    .line 255
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_1c

    .line 256
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "DLPManagerPolicyService Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_1c
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 259
    :try_start_1e
    invoke-virtual {p0}, registerEnterpriseDLPpolicyReciever()V

    .line 260
    invoke-direct {p0}, registerBootReceiver()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_27

    .line 266
    :goto_24
    sput-object p0, sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    .line 267
    return-void

    .line 261
    :catch_27
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "DLPManagerPolicyService Constructor >> Exception Occured"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method private _addPackagesToAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 666
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 667
    :cond_4
    const/4 v0, 0x0

    .line 670
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addWhitelistApps(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v0

    goto :goto_5
.end method

.method private _getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1062
    if-nez p1, :cond_4

    .line 1063
    const/4 v0, 0x0

    .line 1066
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3
.end method

.method private _getPackagesFromAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    if-nez p1, :cond_4

    .line 724
    const/4 v0, 0x0

    .line 727
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method

.method private _removePackagesFromAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 700
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 701
    :cond_4
    const/4 v0, 0x0

    .line 704
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->removeWhitelistApps(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v0

    goto :goto_5
.end method

.method private _setDLPConfig(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Z
    .registers 31
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "config"    # Landroid/os/Bundle;

    .prologue
    .line 901
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v21, v0

    .line 902
    .local v21, "userId":I
    invoke-direct/range {p0 .. p1}, _getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v19

    .line 904
    .local v19, "oldConfig":Landroid/os/Bundle;
    const/4 v13, 0x1

    .line 905
    .local v13, "finalRes":Z
    const/16 v18, 0x0

    .line 906
    .local v18, "notifyDLPService":Z
    if-eqz p2, :cond_2f9

    .line 909
    const/16 v20, 0x0

    .line 910
    .local v20, "res":Z
    :try_start_11
    const-string v23, "ExpiryAfter"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e9

    .line 911
    const-string v23, "ExpiryAfter"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 913
    .local v12, "expiry_after":I
    const-string v23, "ExpiryAfter"

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    if-eq v12, v0, :cond_e9

    .line 914
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "DLP : In setDLPExpiry userId : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " expiry_after : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-direct/range {p0 .. p0}, getDLPManagerService()Lcom/android/server/DLPManagerService;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/android/server/DLPManagerService;->setDLPExpiry(II)Z

    move-result v20

    .line 917
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_74} :catch_229

    move-result-wide v8

    .line 919
    .local v8, "calling_uid":J
    :try_start_75
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v11

    .line 920
    .local v11, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    const/16 v23, 0x3

    const/16 v24, 0x2

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v11, v0, v1, v2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_a4
    .catchall {:try_start_75 .. :try_end_a4} :catchall_224

    .line 922
    :try_start_a4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 925
    if-eqz v13, :cond_254

    if-eqz v20, :cond_254

    const/4 v13, 0x1

    .line 926
    :goto_ac
    const-string v23, "Activate"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e9

    .line 927
    const/16 v18, 0x1

    .line 928
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 929
    .local v15, "in":Landroid/content/Intent;
    const-string v23, "android.intent.extra.user_handle"

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 930
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 932
    new-instance v6, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v6, v0, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    .line 933
    .local v6, "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v15, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_e9} :catch_229

    .line 944
    .end local v6    # "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    .end local v8    # "calling_uid":J
    .end local v11    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v12    # "expiry_after":I
    .end local v15    # "in":Landroid/content/Intent;
    :cond_e9
    :goto_e9
    const/16 v20, 0x0

    .line 945
    :try_start_eb
    const-string v23, "Lock"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_18a

    .line 946
    const-string v23, "Lock"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 947
    .local v17, "isLocked":Z
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "DLP : isLocked : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-string v23, "Lock"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_18a

    .line 950
    if-eqz v17, :cond_26a

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v4

    .line 953
    .local v4, "DLPAppList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    if-eqz v4, :cond_257

    .line 954
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_143
    :goto_143
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_257

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;

    .line 955
    .local v7, "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    iget-object v5, v7, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/sec/enterprise/AppIdentity;

    .line 956
    .local v5, "ai":Lcom/sec/enterprise/AppIdentity;
    if-eqz v5, :cond_143

    .line 957
    invoke-virtual {v5}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, forceStopPackage(ILjava/lang/String;)V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_160} :catch_161

    goto :goto_143

    .line 968
    .end local v4    # "DLPAppList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    .end local v5    # "ai":Lcom/sec/enterprise/AppIdentity;
    .end local v7    # "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "isLocked":Z
    :catch_161
    move-exception v10

    .line 969
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 970
    invoke-direct/range {p0 .. p0}, getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "_setDLPConfig Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 971
    const/4 v13, 0x0

    .line 975
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_18a
    :goto_18a
    const/16 v20, 0x0

    .line 977
    :try_start_18c
    const-string v23, "Activate"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_20d

    .line 978
    const-string v23, "Activate"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 981
    .local v16, "isActivated":Z
    const-string v23, "Activate"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    move/from16 v0, v16

    move/from16 v1, v23

    if-eq v0, v1, :cond_20d

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v22

    .line 984
    .local v22, "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    if-eqz v22, :cond_279

    .line 985
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_1c6
    :goto_1c6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_279

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;

    .line 986
    .restart local v7    # "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    iget-object v5, v7, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/sec/enterprise/AppIdentity;

    .line 987
    .restart local v5    # "ai":Lcom/sec/enterprise/AppIdentity;
    if-eqz v5, :cond_1c6

    .line 988
    invoke-virtual {v5}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, forceStopPackage(ILjava/lang/String;)V
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_1e3} :catch_1e4

    goto :goto_1c6

    .line 1009
    .end local v5    # "ai":Lcom/sec/enterprise/AppIdentity;
    .end local v7    # "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "isActivated":Z
    .end local v22    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    :catch_1e4
    move-exception v10

    .line 1010
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1011
    invoke-direct/range {p0 .. p0}, getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "_setDLPConfig Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 1012
    const/4 v13, 0x0

    .line 1019
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v20    # "res":Z
    :cond_20d
    :goto_20d
    if-eqz v13, :cond_303

    move-object/from16 v0, p0

    iget-object v0, v0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->setDLPConfig(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Z

    move-result v23

    if-eqz v23, :cond_303

    const/16 v23, 0x1

    :goto_223
    return v23

    .line 922
    .restart local v8    # "calling_uid":J
    .restart local v12    # "expiry_after":I
    .restart local v20    # "res":Z
    :catchall_224
    move-exception v23

    :try_start_225
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_225 .. :try_end_229} :catch_229

    .line 937
    .end local v8    # "calling_uid":J
    .end local v12    # "expiry_after":I
    :catch_229
    move-exception v10

    .line 938
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 939
    invoke-direct/range {p0 .. p0}, getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "_setDLPConfig Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 940
    const/4 v13, 0x0

    goto/16 :goto_e9

    .line 925
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "calling_uid":J
    .restart local v11    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .restart local v12    # "expiry_after":I
    :cond_254
    const/4 v13, 0x0

    goto/16 :goto_ac

    .line 961
    .end local v8    # "calling_uid":J
    .end local v11    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v12    # "expiry_after":I
    .restart local v4    # "DLPAppList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    .restart local v17    # "isLocked":Z
    :cond_257
    :try_start_257
    invoke-direct/range {p0 .. p0}, getDLPManagerService()Lcom/android/server/DLPManagerService;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/DLPManagerService;->lockDLP(I)Z

    move-result v20

    .line 965
    .end local v4    # "DLPAppList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    :goto_263
    if-eqz v13, :cond_277

    if-eqz v20, :cond_277

    const/4 v13, 0x1

    :goto_268
    goto/16 :goto_18a

    .line 963
    :cond_26a
    invoke-direct/range {p0 .. p0}, getDLPManagerService()Lcom/android/server/DLPManagerService;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/DLPManagerService;->unlockDLP(I)Z
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_257 .. :try_end_275} :catch_161

    move-result v20

    goto :goto_263

    .line 965
    :cond_277
    const/4 v13, 0x0

    goto :goto_268

    .line 993
    .end local v17    # "isLocked":Z
    .restart local v16    # "isActivated":Z
    .restart local v22    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    :cond_279
    :try_start_279
    const-string v23, "com.android.providers.media"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, forceStopPackage(ILjava/lang/String;)V

    .line 995
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "DLP : isActivated : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    if-nez v18, :cond_2d1

    .line 997
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 998
    .restart local v15    # "in":Landroid/content/Intent;
    const-string v23, "android.intent.extra.user_handle"

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 999
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1001
    new-instance v6, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;

    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v6, v0, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    .line 1002
    .restart local v6    # "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v15, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1004
    .end local v6    # "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    .end local v15    # "in":Landroid/content/Intent;
    :cond_2d1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, registerOrUnregisterProcessObserver(Z)Z

    move-result v23

    if-nez v23, :cond_20d

    .line 1005
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "DLP : registerOrUnregisterProcessObserver failed for isActive : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f7
    .catch Ljava/lang/Exception; {:try_start_279 .. :try_end_2f7} :catch_1e4

    goto/16 :goto_20d

    .line 1015
    .end local v16    # "isActivated":Z
    .end local v20    # "res":Z
    .end local v22    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    :cond_2f9
    sget-object v23, TAG:Ljava/lang/String;

    const-string v24, "DLP: config is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/4 v13, 0x0

    goto/16 :goto_20d

    .line 1019
    :cond_303
    const/16 v23, 0x0

    goto/16 :goto_223
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 84
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, registerOrUnregisterProcessObserver(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000()Ljava/util/Map;
    .registers 1

    .prologue
    .line 84
    sget-object v0, mDLPConnectionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .prologue
    .line 84
    sget-object v0, countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 84
    sget-boolean v0, DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    .prologue
    .line 84
    invoke-direct {p0}, getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    .prologue
    .line 84
    iget-object v0, p0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, getDLPInterface(I)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, bindToDLPService(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, isMdmActivated(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, getPackageMetaData(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private bindToDLPService(I)V
    .registers 24
    .param p1, "userId"    # I

    .prologue
    .line 566
    sget-boolean v17, DBG:Z

    if-eqz v17, :cond_20

    .line 567
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "In bindToDLPService: uId is: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_20
    new-instance v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;

    move/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;-><init>(I)V

    .line 569
    .local v5, "connection":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;
    new-instance v9, Landroid/content/Intent;

    const-string v17, "com.samsung.android.DLP_SERVICE_BIND_ACTION"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v9, "intent":Landroid/content/Intent;
    sget-boolean v17, DBG:Z

    if-eqz v17, :cond_50

    .line 571
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "In bindToDLPService: action is: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_50
    sget-object v18, SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v18

    .line 574
    :try_start_53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_13c

    move-result-wide v10

    .line 576
    .local v10, "id":J
    :try_start_57
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 577
    .local v12, "pm":Landroid/content/pm/PackageManager;
    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 578
    .local v16, "userHandle":Landroid/os/UserHandle;
    if-eqz v12, :cond_14c

    .line 579
    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v12, v9, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    .line 580
    .local v14, "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_125

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_125

    .line 581
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_82
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_125

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 582
    .local v13, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v15, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 583
    .local v15, "servInfo":Landroid/content/pm/ServiceInfo;
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "In bindToService: serviceInfo : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .local v4, "cn":Landroid/content/ComponentName;
    sget-object v17, TAG:Ljava/lang/String;

    const-string v19, "In bindToService: Got the component name, Binding to the service..."

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {v9, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v9, v5, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v17

    if-eqz v17, :cond_13f

    .line 588
    sget-object v17, TAG:Ljava/lang/String;

    const-string v19, "In bindToService: Success >>> Bind DLP service"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catchall {:try_start_57 .. :try_end_fa} :catchall_137

    .line 590
    :try_start_fa
    new-instance v17, Ljava/util/concurrent/CountDownLatch;

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v17, countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 591
    sget-object v17, countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v20, 0x30d40

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    .line 592
    .local v6, "countDownTimeout":Z
    if-nez v6, :cond_125

    .line 593
    sget-object v17, TAG:Ljava/lang/String;

    const-string v19, "In bindToService: CoutnDownLatch return false"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catch Ljava/lang/InterruptedException; {:try_start_fa .. :try_end_125} :catch_12a
    .catchall {:try_start_fa .. :try_end_125} :catchall_137

    .line 608
    .end local v4    # "cn":Landroid/content/ComponentName;
    .end local v6    # "countDownTimeout":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v14    # "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "servInfo":Landroid/content/pm/ServiceInfo;
    :cond_125
    :goto_125
    :try_start_125
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 610
    monitor-exit v18
    :try_end_129
    .catchall {:try_start_125 .. :try_end_129} :catchall_13c

    .line 611
    return-void

    .line 595
    .restart local v4    # "cn":Landroid/content/ComponentName;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v13    # "resInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "servInfo":Landroid/content/pm/ServiceInfo;
    :catch_12a
    move-exception v7

    .line 596
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_12b
    sget-object v17, TAG:Ljava/lang/String;

    const-string v19, "In bindToService: InterruptedException"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_136
    .catchall {:try_start_12b .. :try_end_136} :catchall_137

    goto :goto_125

    .line 608
    .end local v4    # "cn":Landroid/content/ComponentName;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v14    # "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "servInfo":Landroid/content/pm/ServiceInfo;
    .end local v16    # "userHandle":Landroid/os/UserHandle;
    :catchall_137
    move-exception v17

    :try_start_138
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v17

    .line 610
    .end local v10    # "id":J
    :catchall_13c
    move-exception v17

    monitor-exit v18
    :try_end_13e
    .catchall {:try_start_138 .. :try_end_13e} :catchall_13c

    throw v17

    .line 600
    .restart local v4    # "cn":Landroid/content/ComponentName;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "id":J
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "resInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "servInfo":Landroid/content/pm/ServiceInfo;
    .restart local v16    # "userHandle":Landroid/os/UserHandle;
    :cond_13f
    :try_start_13f
    sget-object v17, TAG:Ljava/lang/String;

    const-string v19, "In bindToService: Fail to bind to DLP service"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_82

    .line 605
    .end local v4    # "cn":Landroid/content/ComponentName;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v14    # "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "servInfo":Landroid/content/pm/ServiceInfo;
    :cond_14c
    sget-object v17, TAG:Ljava/lang/String;

    const-string v19, "In bindToService: PackageManager : Null"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_157
    .catchall {:try_start_13f .. :try_end_157} :catchall_137

    goto :goto_125
.end method

.method private checkCaller()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1267
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1268
    .local v1, "pkgList":[Ljava/lang/String;
    if-nez v1, :cond_2e

    .line 1269
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCaller pkgList is null for Uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const/4 v0, 0x0

    .line 1274
    :goto_2d
    return-object v0

    .line 1272
    :cond_2e
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 1273
    .local v0, "actualPackage":Ljava/lang/String;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller Uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method private checkDLPCaller()Z
    .registers 4

    .prologue
    .line 1255
    invoke-direct {p0}, checkCaller()Ljava/lang/String;

    move-result-object v0

    .line 1256
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1257
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_16

    const-string v2, "android"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_16

    .line 1258
    const/4 v2, 0x1

    .line 1260
    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static checkLaunchIntentForAccessDLP(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;IILjava/lang/String;II)Z
    .registers 15
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "realCallingPid"    # I
    .param p6, "realCallingUid"    # I

    .prologue
    .line 1162
    sget-object v0, sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-nez v0, :cond_11

    .line 1163
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_f

    .line 1164
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "checkLaunchIntentForAccessDLP() DLP is not instantiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_f
    const/4 v0, 0x1

    .line 1169
    :goto_10
    return v0

    :cond_11
    sget-object v0, sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, checkLaunchIntentForAccessDLPInternal(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;IILjava/lang/String;II)Z

    move-result v0

    goto :goto_10
.end method

.method private enableClipboard(Lcom/sec/enterprise/knox/container/KnoxContainerManager;Ljava/util/List;)Z
    .registers 11
    .param p1, "kcm"    # Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/container/KnoxContainerManager;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 871
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v1

    .line 872
    .local v1, "applicationPolicy":Landroid/app/enterprise/ApplicationPolicy;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 873
    .local v4, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 874
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/AppIdentity;

    .line 875
    .local v0, "app":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual {v0}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkgList["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 878
    .end local v0    # "app":Lcom/sec/enterprise/AppIdentity;
    :cond_4b
    invoke-virtual {v1, v4}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromDisableClipboardBlackList(Ljava/util/List;)Z

    move-result v5

    return v5
.end method

.method private enableNetwork(Lcom/sec/enterprise/knox/container/KnoxContainerManager;Ljava/util/List;)Z
    .registers 13
    .param p1, "kcm"    # Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/container/KnoxContainerManager;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 882
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getFirewall()Lcom/sec/enterprise/firewall/Firewall;

    move-result-object v1

    .line 883
    .local v1, "firewall":Lcom/sec/enterprise/firewall/Firewall;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/sec/enterprise/firewall/Firewall;->enableFirewall(Z)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v5

    .line 884
    .local v5, "response":Lcom/sec/enterprise/firewall/FirewallResponse;
    if-eqz v5, :cond_a9

    .line 885
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "firewall.enableFirewall response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "firewall.enableFirewall response message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :goto_45
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getFirewallPolicy()Landroid/app/enterprise/FirewallPolicy;

    move-result-object v2

    .line 891
    .local v2, "firewallPolicy":Landroid/app/enterprise/FirewallPolicy;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .local v6, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 893
    .local v3, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/AppIdentity;

    .line 894
    .local v0, "app":Lcom/sec/enterprise/AppIdentity;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*:*;*;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rulelist["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 888
    .end local v0    # "app":Lcom/sec/enterprise/AppIdentity;
    .end local v2    # "firewallPolicy":Landroid/app/enterprise/FirewallPolicy;
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a9
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "Firewall response is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 897
    .restart local v2    # "firewallPolicy":Landroid/app/enterprise/FirewallPolicy;
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b1
    invoke-virtual {v2, v6}, Landroid/app/enterprise/FirewallPolicy;->removeIptablesDenyRules(Ljava/util/List;)Z

    move-result v7

    return v7
.end method

.method private enforceKnoxDLPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 622
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.permission.KNOX_DLP"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private feederToMdmMigration(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)V
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "config"    # Landroid/os/Bundle;

    .prologue
    .line 779
    if-nez p2, :cond_3

    .line 836
    :cond_2
    :goto_2
    return-void

    .line 784
    :cond_3
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 785
    .local v3, "callerUid":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 786
    .local v5, "containerId":I
    sget-object v13, TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "callerUid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "containerId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    new-instance v13, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    .line 789
    .local v6, "containerOwner":I
    if-ne v3, v6, :cond_14e

    .line 791
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, isMdmActivated(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 792
    sget-object v13, TAG:Ljava/lang/String;

    const-string/jumbo v14, "setDLPConfig: called by MDM - updating DBEntries for system and disabling the receiver"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4f} :catch_120

    move-result-wide v8

    .line 799
    .local v8, "id":J
    :try_start_50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-static {v5, v13}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 800
    .local v2, "adminUid":I
    sget-object v13, TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AdminUid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/ SystemCallerUid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance v10, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-direct {v10, v13, v5}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 804
    .local v10, "newCtxInfo":Landroid/app/enterprise/ContextInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v13, v10}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v11

    .line 805
    .local v11, "oldConfig":Landroid/os/Bundle;
    const/4 v12, 0x0

    .line 806
    .local v12, "res":Z
    const-string v13, "Activate"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_147

    const-string v13, "Activate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_147

    .line 807
    const-string v13, "CLIPBOARD"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_ca

    .line 808
    int-to-long v14, v2

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14, v15, v13}, revertPolicy(Landroid/app/enterprise/ContextInfo;JZ)Z

    move-result v12

    .line 809
    sget-object v13, TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Clipboard revert policy res : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_ca
    const-string v13, "NETWORK"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_f2

    .line 812
    int-to-long v14, v2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14, v15, v13}, revertPolicy(Landroid/app/enterprise/ContextInfo;JZ)Z

    move-result v12

    .line 813
    sget-object v13, TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Firewall revert policy res : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_f2
    :goto_f2
    move-object/from16 v0, p0

    iget-object v13, v0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    int-to-long v14, v2

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v15}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->updateAdminUid(Landroid/app/enterprise/ContextInfo;J)I

    move-result v4

    .line 821
    .local v4, "cnt":I
    sget-object v13, TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AdminUid updated for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " rows."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catchall {:try_start_50 .. :try_end_11b} :catchall_149

    .line 824
    :try_start_11b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_11e} :catch_120

    goto/16 :goto_2

    .line 832
    .end local v2    # "adminUid":I
    .end local v3    # "callerUid":I
    .end local v4    # "cnt":I
    .end local v5    # "containerId":I
    .end local v6    # "containerOwner":I
    .end local v8    # "id":J
    .end local v10    # "newCtxInfo":Landroid/app/enterprise/ContextInfo;
    .end local v11    # "oldConfig":Landroid/os/Bundle;
    .end local v12    # "res":Z
    :catch_120
    move-exception v7

    .line 833
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 834
    invoke-direct/range {p0 .. p0}, getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setDLPConfig Exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 816
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "adminUid":I
    .restart local v3    # "callerUid":I
    .restart local v5    # "containerId":I
    .restart local v6    # "containerOwner":I
    .restart local v8    # "id":J
    .restart local v10    # "newCtxInfo":Landroid/app/enterprise/ContextInfo;
    .restart local v11    # "oldConfig":Landroid/os/Bundle;
    .restart local v12    # "res":Z
    :cond_147
    const/4 v12, 0x1

    goto :goto_f2

    .line 824
    .end local v2    # "adminUid":I
    .end local v10    # "newCtxInfo":Landroid/app/enterprise/ContextInfo;
    .end local v11    # "oldConfig":Landroid/os/Bundle;
    .end local v12    # "res":Z
    :catchall_149
    move-exception v13

    :try_start_14a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    .line 829
    .end local v8    # "id":J
    :cond_14e
    sget-object v13, TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setDLPConfig: caller : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not owner for container: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_171} :catch_120

    goto/16 :goto_2
.end method

.method private forceStopPackage(ILjava/lang/String;)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 284
    if-nez p2, :cond_3

    .line 322
    :goto_2
    return-void

    .line 288
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 291
    .local v4, "id":J
    :try_start_7
    invoke-direct {p0}, getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    .line 292
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v10, "activity"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .line 294
    .local v1, "ams":Lcom/android/server/am/ActivityManagerService;
    const/16 v10, 0x14

    const/16 v11, 0xb

    invoke-virtual {v1, v10, v11, p1}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks(III)Ljava/util/List;

    move-result-object v9

    .line 299
    .local v9, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 300
    .local v7, "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v10, :cond_1f

    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_1f

    .line 302
    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, "taskPackage":Ljava/lang/String;
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 304
    iget v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/app/ActivityManager;->removeTask(II)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 305
    invoke-virtual {v1, v8, p1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_54

    goto :goto_1f

    .line 320
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v8    # "taskPackage":Ljava/lang/String;
    .end local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catchall_54
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 310
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "ams":Lcom/android/server/am/ActivityManagerService;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_59
    :try_start_59
    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/ActivityManagerService;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 311
    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 313
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v6, "in":Landroid/content/Intent;
    const-string v10, "android.intent.extra.user_handle"

    invoke-virtual {v6, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v10, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v6, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    new-instance v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;

    const/4 v10, 0x3

    invoke-direct {v2, p0, v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    .line 318
    .local v2, "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    const/4 v10, 0x1

    new-array v10, v10, [Landroid/content/Intent;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v2, v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_7d
    .catchall {:try_start_59 .. :try_end_7d} :catchall_54

    .line 320
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2
.end method

.method public static getAccessInfo(ILjava/lang/String;)I
    .registers 7
    .param p0, "userId"    # I
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1115
    const/4 v0, 0x0

    .line 1118
    .local v0, "accessInfo":I
    sget-object v3, sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-nez v3, :cond_e

    .line 1119
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "DLP is not instantiated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_d
    :goto_d
    return v2

    .line 1123
    :cond_e
    invoke-static {p0}, isActivated(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1127
    sget-object v2, sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {v2}, getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getAppType(ILjava/lang/String;)I

    move-result v1

    .line 1129
    .local v1, "app_type":I
    if-nez v1, :cond_5b

    .line 1130
    const/16 v0, 0x80

    .line 1138
    :cond_22
    :goto_22
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAccessInfo END "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 1140
    goto :goto_d

    .line 1131
    :cond_5b
    const/4 v2, 0x1

    if-ne v1, v2, :cond_61

    .line 1132
    const/16 v0, 0x100

    goto :goto_22

    .line 1133
    :cond_61
    const-string v2, "com.android.providers.media"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 1134
    const/16 v0, 0x80

    goto :goto_22

    .line 1135
    :cond_6c
    const-string v2, "com.android.providers.downloads"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1136
    const/16 v0, 0x80

    goto :goto_22
.end method

.method private getActivityManager()Landroid/app/ActivityManager;
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_10

    .line 271
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, mActivityManager:Landroid/app/ActivityManager;

    .line 274
    :cond_10
    iget-object v0, p0, mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method private getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    if-nez v0, :cond_c

    .line 326
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v0

    iput-object v0, p0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .line 328
    :cond_c
    iget-object v0, p0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    return-object v0
.end method

.method private getDLPInterface(I)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;
    .registers 12
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 497
    sget-object v1, mDLPConnectionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 498
    sget-object v1, mDLPConnectionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->getDLPService()Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    move-result-object v1

    .line 516
    :goto_1e
    return-object v1

    .line 500
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 502
    .local v8, "id":J
    :try_start_23
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 505
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const-string v1, "com.samsung.android.dlp.service"

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_46

    .line 506
    const-string v1, "com.samsung.android.dlp.service"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 508
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "DLP : dlp service enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_46} :catch_4b
    .catchall {:try_start_23 .. :try_end_46} :catchall_53

    .line 513
    :cond_46
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    :goto_49
    move-object v1, v7

    .line 516
    goto :goto_1e

    .line 510
    :catch_4b
    move-exception v6

    .line 511
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4c
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_53

    .line 513
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_49

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_53
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private getDLPManagerService()Lcom/android/server/DLPManagerService;
    .registers 3

    .prologue
    .line 249
    const-string/jumbo v1, "dlp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/DLPManagerService;

    .line 251
    .local v0, "service":Lcom/android/server/DLPManagerService;
    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 614
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 615
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 618
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageMetaData(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 432
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageMetaData: getting metadata for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :try_start_19
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 435
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_6e

    .line 436
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageMetaData: Application Meta data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_50} :catch_51

    .line 442
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_50
    return-object v2

    .line 439
    :catch_51
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6e
    const/4 v2, 0x0

    goto :goto_50
.end method

.method public static isActivated(I)Z
    .registers 7
    .param p0, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1146
    sget-object v3, sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-nez v3, :cond_f

    .line 1147
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v3, "isActivated() DLP is not instantiated"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :goto_e
    return v2

    .line 1151
    :cond_f
    sget-object v3, sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {v3}, getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isActivated(I)I

    move-result v0

    .line 1153
    .local v0, "activated":I
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isActivated() END "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    if-ne v0, v1, :cond_36

    :goto_34
    move v2, v1

    goto :goto_e

    :cond_36
    move v1, v2

    goto :goto_34
.end method

.method private isDLPKernelEnabled()Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 758
    const/4 v0, 0x0

    .line 760
    .local v0, "dev":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v6, "/dev/sdp_dlp"

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_9} :catch_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_22
    .catchall {:try_start_2 .. :try_end_9} :catchall_2e

    .line 767
    .end local v0    # "dev":Ljava/io/FileOutputStream;
    .local v1, "dev":Ljava/io/FileOutputStream;
    if-eqz v1, :cond_e

    .line 768
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_11

    .line 775
    :cond_e
    :goto_e
    const/4 v5, 0x1

    move-object v0, v1

    .end local v1    # "dev":Ljava/io/FileOutputStream;
    .restart local v0    # "dev":Ljava/io/FileOutputStream;
    :cond_10
    :goto_10
    return v5

    .line 770
    .end local v0    # "dev":Ljava/io/FileOutputStream;
    .restart local v1    # "dev":Ljava/io/FileOutputStream;
    :catch_11
    move-exception v2

    .line 771
    .local v2, "err":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 761
    .end local v1    # "dev":Ljava/io/FileOutputStream;
    .end local v2    # "err":Ljava/io/IOException;
    .restart local v0    # "dev":Ljava/io/FileOutputStream;
    :catch_16
    move-exception v3

    .line 767
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_10

    .line 768
    :try_start_19
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_10

    .line 770
    :catch_1d
    move-exception v2

    .line 771
    .restart local v2    # "err":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 763
    .end local v2    # "err":Ljava/io/IOException;
    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_22
    move-exception v4

    .line 767
    .local v4, "ioe":Ljava/io/IOException;
    if-eqz v0, :cond_10

    .line 768
    :try_start_25
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_10

    .line 770
    :catch_29
    move-exception v2

    .line 771
    .restart local v2    # "err":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 766
    .end local v2    # "err":Ljava/io/IOException;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_2e
    move-exception v5

    .line 767
    if-eqz v0, :cond_34

    .line 768
    :try_start_31
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    .line 772
    :cond_34
    :goto_34
    throw v5

    .line 770
    :catch_35
    move-exception v2

    .line 771
    .restart local v2    # "err":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34
.end method

.method public static isFirewallDenyRuleEnabledForUid(Landroid/content/Context;I)Z
    .registers 14
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    .line 1278
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1279
    .local v0, "containerId":I
    const/4 v5, 0x0

    .line 1280
    .local v5, "isConsumerApp":Z
    invoke-static {v0}, isActivated(I)Z

    move-result v9

    if-eqz v9, :cond_d0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    const/16 v10, 0x3e8

    if-eq v9, v10, :cond_d0

    .line 1281
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 1282
    .local v8, "pkgNames":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1c
    array-length v9, v8

    if-ge v6, v9, :cond_44

    .line 1283
    const/16 v9, 0x100

    aget-object v10, v8, v6

    invoke-static {v0, v10}, getAccessInfo(ILjava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_b6

    .line 1284
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package is consumer app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/4 v5, 0x1

    .line 1289
    :cond_44
    if-eqz v5, :cond_d0

    .line 1290
    new-instance v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-direct {v1, p0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 1291
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getFirewall()Lcom/sec/enterprise/firewall/Firewall;

    move-result-object v2

    .line 1292
    .local v2, "firewallPolicy":Lcom/sec/enterprise/firewall/Firewall;
    if-eqz v2, :cond_c8

    .line 1293
    const/4 v9, 0x2

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$Status;->ENABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {v2, v9, v10}, Lcom/sec/enterprise/firewall/Firewall;->getRules(ILcom/sec/enterprise/firewall/FirewallRule$Status;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v3

    .line 1294
    .local v3, "firewallRule":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_59
    array-length v9, v3

    if-ge v4, v9, :cond_d0

    .line 1295
    aget-object v9, v3, v4

    if-eqz v9, :cond_c5

    .line 1296
    if-eqz v8, :cond_bd

    const-string v9, "*"

    aget-object v10, v3, v4

    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bd

    const-string v9, "*"

    aget-object v10, v3, v4

    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bd

    .line 1297
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_7f
    array-length v9, v8

    if-ge v7, v9, :cond_c5

    .line 1298
    aget-object v9, v3, v4

    invoke-virtual {v9}, Lcom/sec/enterprise/firewall/FirewallRule;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v8, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ba

    .line 1299
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Network is  blocked for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const/4 v9, 0x1

    .line 1313
    .end local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v2    # "firewallPolicy":Lcom/sec/enterprise/firewall/Firewall;
    .end local v3    # "firewallRule":[Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v4    # "i":I
    .end local v6    # "j":I
    .end local v7    # "k":I
    .end local v8    # "pkgNames":[Ljava/lang/String;
    :goto_b5
    return v9

    .line 1282
    .restart local v6    # "j":I
    .restart local v8    # "pkgNames":[Ljava/lang/String;
    :cond_b6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1c

    .line 1297
    .restart local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v2    # "firewallPolicy":Lcom/sec/enterprise/firewall/Firewall;
    .restart local v3    # "firewallRule":[Lcom/sec/enterprise/firewall/FirewallRule;
    .restart local v4    # "i":I
    .restart local v7    # "k":I
    :cond_ba
    add-int/lit8 v7, v7, 0x1

    goto :goto_7f

    .line 1304
    .end local v7    # "k":I
    :cond_bd
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "pkgNames is null OR firewall rules are not fully deny rules"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_c5
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 1309
    .end local v3    # "firewallRule":[Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v4    # "i":I
    :cond_c8
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "firewallPolicy is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    .end local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v2    # "firewallPolicy":Lcom/sec/enterprise/firewall/Firewall;
    .end local v6    # "j":I
    .end local v8    # "pkgNames":[Ljava/lang/String;
    :cond_d0
    const/4 v9, 0x0

    goto :goto_b5
.end method

.method private isMdmActivated(I)Z
    .registers 16
    .param p1, "userID"    # I

    .prologue
    .line 143
    invoke-direct {p0}, getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v4

    .line 144
    .local v4, "dbHelper":Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    const/4 v7, 0x0

    .line 145
    .local v7, "isMdmActivated":Z
    invoke-virtual {v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getPolicyConfigOwners()Landroid/util/SparseLongArray;

    move-result-object v8

    .line 146
    .local v8, "policyConfigOwners":Landroid/util/SparseLongArray;
    if-eqz v8, :cond_61

    invoke-virtual {v8}, Landroid/util/SparseLongArray;->size()I

    move-result v9

    if-lez v9, :cond_61

    .line 147
    new-instance v5, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 148
    .local v5, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_19
    invoke-virtual {v8}, Landroid/util/SparseLongArray;->size()I

    move-result v9

    if-ge v6, v9, :cond_5a

    .line 149
    invoke-virtual {v8, v6}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 150
    .local v1, "containerId":I
    if-ne p1, v1, :cond_5e

    .line 151
    invoke-virtual {v8, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    .line 153
    .local v2, "adminUid":J
    invoke-virtual {v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 154
    .local v0, "actualOwnerUid":I
    invoke-static {v1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    int-to-long v10, v9

    .line 155
    .local v10, "realContainerOwnerUid":J
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getPolicyOwner:: For containerId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", actual ownerId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    cmp-long v9, v2, v10

    if-nez v9, :cond_5c

    const/4 v7, 0x1

    .end local v0    # "actualOwnerUid":I
    .end local v1    # "containerId":I
    .end local v2    # "adminUid":J
    .end local v10    # "realContainerOwnerUid":J
    :cond_5a
    :goto_5a
    move v9, v7

    .line 165
    .end local v5    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v6    # "i":I
    :goto_5b
    return v9

    .line 157
    .restart local v0    # "actualOwnerUid":I
    .restart local v1    # "containerId":I
    .restart local v2    # "adminUid":J
    .restart local v5    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v6    # "i":I
    .restart local v10    # "realContainerOwnerUid":J
    :cond_5c
    const/4 v7, 0x0

    goto :goto_5a

    .line 148
    .end local v0    # "actualOwnerUid":I
    .end local v2    # "adminUid":J
    .end local v10    # "realContainerOwnerUid":J
    :cond_5e
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 162
    .end local v1    # "containerId":I
    .end local v5    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v6    # "i":I
    :cond_61
    sget-object v9, TAG:Ljava/lang/String;

    const-string v12, "No config entry found in DB !"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v9, 0x0

    goto :goto_5b
.end method

.method private registerBootReceiver()V
    .registers 4

    .prologue
    .line 118
    sget-object v1, mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_19

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)V

    sput-object v1, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_19
    return-void
.end method

.method private registerOrUnregisterProcessObserver(Z)Z
    .registers 6
    .param p1, "isActivated"    # Z

    .prologue
    .line 1023
    iget-object v2, p0, mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    if-nez v2, :cond_6

    .line 1025
    const/4 v2, 0x0

    .line 1040
    :goto_5
    return v2

    .line 1027
    :cond_6
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "DLP: registerOrUnregisterProcessObserver :: calling clear calling identity on binder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1031
    .local v0, "token":J
    if-eqz p1, :cond_24

    .line 1032
    :try_start_13
    iget-object v2, p0, mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;->registerObserver()V

    .line 1035
    :goto_18
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "DLP: registerOrUnregisterProcessObserver :: restoring identity on binder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_2a

    .line 1037
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1040
    const/4 v2, 0x1

    goto :goto_5

    .line 1034
    :cond_24
    :try_start_24
    iget-object v2, p0, mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;->unregister()V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2a

    goto :goto_18

    .line 1037
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private revertPolicy(Landroid/app/enterprise/ContextInfo;JZ)Z
    .registers 15
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "adminUid"    # J
    .param p4, "CF"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 839
    const/4 v1, 0x1

    .line 840
    .local v1, "finalRes":Z
    iget-object v7, p0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v7, p1, v5, p2, p3}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Landroid/app/enterprise/ContextInfo;IJ)Ljava/util/List;

    move-result-object v3

    .line 842
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    if-eqz v3, :cond_6b

    .line 843
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v0

    .line 845
    .local v0, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    if-eqz v0, :cond_50

    .line 846
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v2

    .line 847
    .local v2, "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-nez v2, :cond_34

    .line 848
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Knox container manager is null:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    .end local v0    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v2    # "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    :goto_33
    return v6

    .line 851
    .restart local v0    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v2    # "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    :cond_34
    const/4 v4, 0x0

    .line 852
    .local v4, "res":Z
    if-eqz p4, :cond_44

    .line 853
    invoke-direct {p0, v2, v3}, enableClipboard(Lcom/sec/enterprise/knox/container/KnoxContainerManager;Ljava/util/List;)Z

    move-result v4

    .line 854
    if-eqz v1, :cond_42

    if-eqz v4, :cond_42

    move v1, v5

    .end local v0    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v2    # "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v4    # "res":Z
    :goto_40
    move v6, v1

    .line 867
    goto :goto_33

    .restart local v0    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v2    # "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v4    # "res":Z
    :cond_42
    move v1, v6

    .line 854
    goto :goto_40

    .line 856
    :cond_44
    invoke-direct {p0, v2, v3}, enableNetwork(Lcom/sec/enterprise/knox/container/KnoxContainerManager;Ljava/util/List;)Z

    move-result v4

    .line 857
    if-eqz v1, :cond_4e

    if-eqz v4, :cond_4e

    move v1, v5

    :goto_4d
    goto :goto_40

    :cond_4e
    move v1, v6

    goto :goto_4d

    .line 861
    .end local v2    # "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v4    # "res":Z
    :cond_50
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EnterpriseKnoxManager is null:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 865
    .end local v0    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    :cond_6b
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "OldList is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method


# virtual methods
.method public addPackagesToAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    const/4 v6, 0x0

    .line 629
    invoke-direct {p0, p1}, enforceKnoxDLPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 630
    if-eqz p1, :cond_9

    if-nez p2, :cond_a

    .line 662
    :cond_9
    :goto_9
    return v6

    .line 634
    :cond_a
    invoke-direct {p0}, getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v7

    if-nez v7, :cond_18

    .line 635
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "In addPackagesToAllowDLPWhiteList: DLPHelper is not initialized"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 639
    :cond_18
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 641
    .local v5, "userId":I
    iget-object v6, p0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {p0, p1, v6}, feederToMdmMigration(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)V

    .line 643
    invoke-static {v5}, isActivated(I)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 644
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;

    .line 646
    .local v1, "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    if-eqz v1, :cond_2d

    .line 650
    iget-object v0, v1, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/sec/enterprise/AppIdentity;

    .line 651
    .local v0, "ai":Lcom/sec/enterprise/AppIdentity;
    if-eqz v0, :cond_2d

    .line 652
    invoke-virtual {v0}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 653
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v4

    .line 654
    .local v4, "signature":Ljava/lang/String;
    iget-object v6, p0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v6, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isListAppsContainsDLPPackageInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 656
    invoke-direct {p0, v5, v3}, forceStopPackage(ILjava/lang/String;)V

    goto :goto_2d

    .line 662
    .end local v0    # "ai":Lcom/sec/enterprise/AppIdentity;
    .end local v1    # "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "signature":Ljava/lang/String;
    :cond_53
    invoke-direct {p0, p1, p2}, _addPackagesToAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v6

    goto :goto_9
.end method

.method public checkLaunchIntentForAccessDLPInternal(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;IILjava/lang/String;II)Z
    .registers 27
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "realCallingPid"    # I
    .param p7, "realCallingUid"    # I

    .prologue
    .line 1179
    if-eqz p2, :cond_4

    if-nez p1, :cond_6

    .line 1180
    :cond_4
    const/4 v1, 0x1

    .line 1247
    :goto_5
    return v1

    .line 1183
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1185
    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_e

    .line 1186
    const/4 v1, 0x1

    goto :goto_5

    .line 1189
    :cond_e
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 1192
    .local v8, "authority":Ljava/lang/String;
    :try_start_12
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1194
    .local v9, "calleePkgName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 1196
    .local v18, "userid":I
    if-nez v9, :cond_26

    .line 1197
    const/4 v1, 0x1

    goto :goto_5

    .line 1200
    :cond_26
    const/4 v15, 0x0

    .line 1201
    .local v15, "isInterestedApp":Z
    sget-object v7, ContentProviderRestrictingApps:[Ljava/lang/String;

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_2d
    move/from16 v0, v16

    if-ge v14, v0, :cond_3c

    aget-object v17, v7, v14

    .line 1202
    .local v17, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1203
    const/4 v15, 0x1

    .line 1208
    .end local v17    # "pkgName":Ljava/lang/String;
    :cond_3c
    if-nez v15, :cond_43

    .line 1209
    const/4 v1, 0x1

    goto :goto_5

    .line 1201
    .restart local v17    # "pkgName":Ljava/lang/String;
    :cond_40
    add-int/lit8 v14, v14, 0x1

    goto :goto_2d

    .line 1212
    .end local v17    # "pkgName":Ljava/lang/String;
    :cond_43
    invoke-static/range {v18 .. v18}, isActivated(I)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1213
    const/4 v1, 0x1

    goto :goto_5

    .line 1216
    :cond_4b
    move/from16 v0, v18

    invoke-static {v0, v9}, getAccessInfo(ILjava/lang/String;)I

    move-result v1

    const/16 v3, 0x100

    if-eq v1, v3, :cond_57

    .line 1217
    const/4 v1, 0x1

    goto :goto_5

    .line 1220
    :cond_57
    const-string/jumbo v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "@media"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    const-string/jumbo v1, "downloads"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "@downloads"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 1221
    :cond_9f
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedUserInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_dc

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1225
    :cond_dc
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1227
    .local v10, "cur":Landroid/database/Cursor;
    if-eqz v10, :cond_12e

    .line 1228
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 1231
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1233
    .local v13, "filepath":Ljava/lang/String;
    if-eqz v13, :cond_12b

    const-string v1, "/"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 1234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1235
    .local v12, "file_uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1239
    .end local v12    # "file_uri":Landroid/net/Uri;
    .end local v13    # "filepath":Ljava/lang/String;
    :cond_12b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12e} :catch_131

    .line 1247
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "calleePkgName":Ljava/lang/String;
    .end local v10    # "cur":Landroid/database/Cursor;
    .end local v14    # "i$":I
    .end local v15    # "isInterestedApp":Z
    .end local v16    # "len$":I
    .end local v18    # "userid":I
    :cond_12e
    :goto_12e
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 1243
    :catch_131
    move-exception v11

    .line 1244
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12e
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1402
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3f

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump DLPManagerPolicyService from from pid="

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

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    :goto_3e
    return-void

    .line 1408
    :cond_3f
    invoke-direct {p0}, getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1045
    const/4 v0, 0x0

    .line 1047
    .local v0, "ret":Landroid/os/Bundle;
    if-nez p1, :cond_5

    .line 1058
    :goto_4
    return-object v1

    .line 1051
    :cond_5
    invoke-direct {p0}, getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v2

    if-nez v2, :cond_13

    .line 1052
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "In getDLPConfig: DLPHelper is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1056
    :cond_13
    invoke-direct {p0, p1}, _getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v0

    .line 1058
    goto :goto_4
.end method

.method public getPackagesFromAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 710
    if-nez p1, :cond_4

    .line 719
    :goto_3
    return-object v0

    .line 714
    :cond_4
    invoke-direct {p0}, getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v1

    if-nez v1, :cond_12

    .line 715
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "In getPackagesFromAllowDLPWhiteList: DLPHelper is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 719
    :cond_12
    invoke-direct {p0, p1}, _getPackagesFromAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method

.method public isDLPActivated(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1251
    invoke-static {p1}, isActivated(I)Z

    move-result v0

    return v0
.end method

.method public isShareAllowed(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 28
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .prologue
    .line 1317
    const/4 v11, 0x1

    .line 1319
    .local v11, "isShareAllowed":Z
    :try_start_1
    invoke-static/range {p4 .. p4}, isActivated(I)Z

    move-result v19

    if-eqz v19, :cond_118

    .line 1320
    const/16 v19, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v20

    packed-switch v20, :pswitch_data_120

    :cond_10
    :goto_10
    packed-switch v19, :pswitch_data_126

    .line 1358
    sget-object v19, TAG:Ljava/lang/String;

    const-string v20, "In the default case"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const/16 v19, 0x0

    .line 1368
    :goto_1c
    return v19

    .line 1320
    :pswitch_1d
    const-string/jumbo v20, "isAllowedToShare"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/16 v19, 0x0

    goto :goto_10

    .line 1322
    :pswitch_2d
    invoke-virtual/range {p0 .. p1}, getPackagesFromAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v14

    .line 1323
    .local v14, "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    const/4 v10, 0x0

    .line 1324
    .local v10, "isConsumerAppDLP":Z
    const/4 v7, 0x0

    .line 1325
    .local v7, "isCallerAppDLP":Z
    if-eqz v14, :cond_10b

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_10b

    .line 1326
    const/16 v19, 0x0

    aget-object v19, p2, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1327
    .local v18, "uid":I
    const-string/jumbo v19, "package"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v16

    .line 1328
    .local v16, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_52
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;

    .line 1329
    .local v13, "pkgInfo":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    iget-object v0, v13, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/sec/enterprise/AppIdentity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1330
    .local v12, "packageName":Ljava/lang/String;
    iget-object v0, v13, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/sec/enterprise/AppIdentity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v17

    .line 1332
    .local v17, "signature":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v4

    .line 1333
    .local v4, "ctx":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_87} :catch_fd

    move-result-wide v8

    .line 1335
    .local v8, "identity":J
    :try_start_88
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_96

    move-object/from16 v0, v17

    invoke-static {v4, v12, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f8

    .line 1336
    :cond_96
    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-interface {v0, v12, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v15

    .line 1337
    .local v15, "pkguid":I
    move/from16 v0, v18

    if-ne v0, v15, :cond_cb

    .line 1338
    sget-object v19, TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DLPWhitelist isConsumerAppDLP true:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const/4 v10, 0x1

    .line 1341
    :cond_cb
    move/from16 v0, p5

    if-ne v0, v15, :cond_f8

    .line 1342
    sget-object v19, TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DLPWhitelist isCallerAppDLP true:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catchall {:try_start_88 .. :try_end_f7} :catchall_106

    .line 1343
    const/4 v7, 0x1

    .line 1347
    .end local v15    # "pkguid":I
    :cond_f8
    :try_start_f8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fb} :catch_fd

    goto/16 :goto_52

    .line 1364
    .end local v4    # "ctx":Landroid/content/Context;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "isCallerAppDLP":Z
    .end local v8    # "identity":J
    .end local v10    # "isConsumerAppDLP":Z
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "pkgInfo":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    .end local v14    # "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    .end local v16    # "pm":Landroid/content/pm/IPackageManager;
    .end local v17    # "signature":Ljava/lang/String;
    .end local v18    # "uid":I
    :catch_fd
    move-exception v5

    .line 1365
    .local v5, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 1366
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_102
    :goto_102
    move/from16 v19, v11

    .line 1368
    goto/16 :goto_1c

    .line 1347
    .restart local v4    # "ctx":Landroid/content/Context;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "isCallerAppDLP":Z
    .restart local v8    # "identity":J
    .restart local v10    # "isConsumerAppDLP":Z
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v13    # "pkgInfo":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    .restart local v14    # "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    .restart local v16    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v17    # "signature":Ljava/lang/String;
    .restart local v18    # "uid":I
    :catchall_106
    move-exception v19

    :try_start_107
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19

    .line 1352
    .end local v4    # "ctx":Landroid/content/Context;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "identity":J
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "pkgInfo":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    .end local v16    # "pm":Landroid/content/pm/IPackageManager;
    .end local v17    # "signature":Ljava/lang/String;
    .end local v18    # "uid":I
    :cond_10b
    if-nez v10, :cond_102

    if-eqz v7, :cond_102

    .line 1353
    sget-object v19, TAG:Ljava/lang/String;

    const-string v20, "DLPWhitelist user app of uri is not whitelisted DLP app, however caller is DLP App"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const/4 v11, 0x0

    goto :goto_102

    .line 1362
    .end local v7    # "isCallerAppDLP":Z
    .end local v10    # "isConsumerAppDLP":Z
    .end local v14    # "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    :cond_118
    sget-object v19, TAG:Ljava/lang/String;

    const-string v20, "DLP Is not activated"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_11f} :catch_fd

    goto :goto_102

    .line 1320
    :pswitch_data_120
    .packed-switch 0x67e79726
        :pswitch_1d
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_2d
    .end packed-switch
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 1096
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 1101
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 1106
    return-void
.end method

.method public registerEnterpriseDLPpolicyReciever()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 485
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_d

    .line 486
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerEnterpriseDLPpolicyReciever - Binding the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_d
    new-instance v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)V

    iput-object v0, p0, receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    .line 488
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 489
    .local v3, "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 493
    return-void
.end method

.method public removeDLPFiles(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "onlyExpired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1071
    const/4 v0, 0x0

    .line 1073
    .local v0, "ret":Z
    invoke-direct {p0, p1}, enforceKnoxDLPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1074
    if-nez p1, :cond_9

    .line 1075
    const/4 v0, 0x0

    .line 1089
    .end local v0    # "ret":Z
    :cond_8
    :goto_8
    return v0

    .line 1078
    .restart local v0    # "ret":Z
    :cond_9
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1079
    .local v2, "userId":I
    invoke-direct {p0, v2}, getDLPInterface(I)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    move-result-object v3

    if-nez v3, :cond_14

    .line 1080
    invoke-direct {p0, v2}, bindToDLPService(I)V

    .line 1082
    :cond_14
    invoke-direct {p0}, getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeDLPFiles => onlyExpired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 1083
    invoke-direct {p0, v2}, getDLPInterface(I)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    move-result-object v1

    .line 1084
    .local v1, "serviceConn":Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;
    if-eqz v1, :cond_8

    .line 1085
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "DLP : notify DLPService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-interface {v1, p2}, Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;->removeDLPFiles(Z)Z

    move-result v0

    goto :goto_8
.end method

.method public removePackagesFromAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 675
    invoke-direct {p0, p1}, enforceKnoxDLPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 676
    if-eqz p1, :cond_9

    if-nez p2, :cond_a

    .line 696
    :cond_9
    :goto_9
    return v3

    .line 680
    :cond_a
    invoke-direct {p0}, getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v4

    if-nez v4, :cond_18

    .line 681
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "In removePackagesFromAllowDLPWhiteList: DLPHelper is not initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 685
    :cond_18
    iget-object v3, p0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, p1, v3}, feederToMdmMigration(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)V

    .line 687
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 688
    .local v2, "userId":I
    invoke-static {v2}, isActivated(I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 689
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 690
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v1, v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isListAppsContainsDLPPackageInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 691
    invoke-direct {p0, v2, v1}, forceStopPackage(ILjava/lang/String;)V

    goto :goto_2d

    .line 696
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_46
    invoke-direct {p0, p1, p2}, _removePackagesFromAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v3

    goto :goto_9
.end method

.method public setDLPConfig(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "config"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 733
    const/4 v0, 0x0

    .line 735
    .local v0, "ret":Z
    invoke-direct {p0, p1}, enforceKnoxDLPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 736
    if-nez p1, :cond_10

    .line 737
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "DLP: cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :goto_f
    return v1

    .line 741
    :cond_10
    invoke-direct {p0}, isDLPKernelEnabled()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 742
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "In setDLPConfig: /dev/sdp_dlp is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 746
    :cond_1e
    invoke-direct {p0}, getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 747
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "In setDLPConfig: DLPHelper is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 751
    :cond_2c
    invoke-direct {p0, p1, p2}, feederToMdmMigration(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)V

    .line 752
    invoke-direct {p0, p1, p2}, _setDLPConfig(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Z

    move-result v0

    move v1, v0

    .line 754
    goto :goto_f
.end method

.method public setExpiryDate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1374
    const/4 v4, 0x0

    .line 1375
    .local v4, "ret":Z
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setExpiryDate() called with containerID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-direct {p0}, checkDLPCaller()Z

    move-result v6

    if-nez v6, :cond_40

    .line 1380
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "setExpiryDate() caller is not authorised permission denied"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :goto_3f
    return v5

    .line 1384
    :cond_40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1386
    .local v0, "calling_uid":J
    :try_start_44
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {p2, v5}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1387
    .local v3, "realPath":Ljava/lang/String;
    if-eqz v3, :cond_52

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1388
    :cond_52
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "path translation failed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    move-object v3, p2

    .line 1391
    :cond_6c
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v2

    .line 1392
    .local v2, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v5, v6, v7}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_8d
    .catchall {:try_start_44 .. :try_end_8d} :catchall_93

    move-result v4

    .line 1394
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v4

    .line 1397
    goto :goto_3f

    .line 1394
    .end local v2    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v3    # "realPath":Ljava/lang/String;
    :catchall_93
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1111
    return-void
.end method
