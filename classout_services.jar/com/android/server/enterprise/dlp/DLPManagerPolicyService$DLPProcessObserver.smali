.class Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "DLPManagerPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLPProcessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .param p2, "x1"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;

    .prologue
    .line 168
    invoke-direct {p0, p1}, <init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    return-void
.end method

.method public onProcessDied(II)V
    .registers 13
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 210
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 211
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OnProcessDied Called uid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pid :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_2b
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    iget-object v6, v6, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, "pkgList":[Ljava/lang/String;
    if-nez v5, :cond_54

    .line 215
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OnProcessDied uid : pkgList is null for Uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_53
    :goto_53
    return-void

    .line 218
    :cond_54
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    # invokes: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    invoke-static {v6}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$300(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v6

    if-nez v6, :cond_66

    .line 219
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "In onProcessDied: DLPHelper is not initialized"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 223
    :cond_66
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_69
    if-ge v2, v3, :cond_53

    aget-object v4, v0, v2

    .line 224
    .local v4, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 225
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_8e
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    invoke-static {v6}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$400(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v6

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getAppType(ILjava/lang/String;)I

    move-result v6

    if-ne v9, v6, :cond_c2

    .line 228
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 229
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DLP consumer app.package sendDLPCommand"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_ad
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    iget-object v6, v6, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v1

    .line 232
    .local v1, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v9, v9, v6}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z

    goto :goto_53

    .line 223
    .end local v1    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    :cond_c2
    add-int/lit8 v2, v2, 0x1

    goto :goto_69
.end method

.method public onProcessStateChanged(III)V
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
    .line 242
    return-void
.end method

.method public registerObserver()V
    .registers 5

    .prologue
    .line 171
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 173
    .local v1, "mActivityManagerNative":Landroid/app/IActivityManager;
    if-nez v1, :cond_10

    .line 174
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManagerNative.getDefault() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_f
    return-void

    .line 177
    :cond_10
    :try_start_10
    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 178
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "registerObserver() was successful"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1e

    goto :goto_f

    .line 179
    :catch_1e
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public unregister()V
    .registers 5

    .prologue
    .line 186
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 188
    .local v1, "mActivityManagerNative":Landroid/app/IActivityManager;
    if-nez v1, :cond_10

    .line 189
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManagerNative.getDefault() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_f
    return-void

    .line 192
    :cond_10
    :try_start_10
    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 193
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unregister() was successful"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1e

    goto :goto_f

    .line 194
    :catch_1e
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method
