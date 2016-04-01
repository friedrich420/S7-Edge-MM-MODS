.class abstract Lcom/android/server/accounts/AccountManagerService$Session;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Session"
.end annotation


# instance fields
.field final mAccountName:Ljava/lang/String;

.field final mAccountType:Ljava/lang/String;

.field protected final mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field final mAuthDetailsRequired:Z

.field mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field final mCreationTime:J

.field final mExpectActivityLaunch:Z

.field private mNumErrors:I

.field private mNumRequestContinued:I

.field public mNumResults:I

.field mResponse:Landroid/accounts/IAccountManagerResponse;

.field private final mStripAuthTokenFromResult:Z

.field final mUpdateLastAuthenticatedTime:Z

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .registers 19
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "stripAuthTokenFromResult"    # Z
    .param p7, "accountName"    # Ljava/lang/String;
    .param p8, "authDetailsRequired"    # Z

    .prologue
    .line 3088
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 3090
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V
    .registers 15
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "stripAuthTokenFromResult"    # Z
    .param p7, "accountName"    # Ljava/lang/String;
    .param p8, "authDetailsRequired"    # Z
    .param p9, "updateLastAuthenticatedTime"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 3094
    iput-object p1, p0, this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3095
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    .line 3076
    iput v1, p0, mNumResults:I

    .line 3077
    iput v1, p0, mNumRequestContinued:I

    .line 3078
    iput v1, p0, mNumErrors:I

    .line 3080
    iput-object v4, p0, mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 3097
    if-nez p4, :cond_19

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3098
    :cond_19
    iput-object p2, p0, mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 3099
    iput-boolean p6, p0, mStripAuthTokenFromResult:Z

    .line 3100
    iput-object p3, p0, mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 3101
    iput-object p4, p0, mAccountType:Ljava/lang/String;

    .line 3102
    iput-boolean p5, p0, mExpectActivityLaunch:Z

    .line 3103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, mCreationTime:J

    .line 3104
    iput-object p7, p0, mAccountName:Ljava/lang/String;

    .line 3105
    iput-boolean p8, p0, mAuthDetailsRequired:Z

    .line 3106
    iput-boolean p9, p0, mUpdateLastAuthenticatedTime:Z

    .line 3108
    # getter for: Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->access$2900(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v2

    monitor-enter v2

    .line 3109
    :try_start_34
    # getter for: Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->access$2900(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3110
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_4b

    .line 3111
    if-eqz p3, :cond_4a

    .line 3113
    :try_start_42
    invoke-interface {p3}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4a} :catch_4e

    .line 3119
    :cond_4a
    :goto_4a
    return-void

    .line 3110
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1

    .line 3114
    :catch_4e
    move-exception v0

    .line 3115
    .local v0, "e":Landroid/os/RemoteException;
    iput-object v4, p0, mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 3116
    invoke-virtual {p0}, binderDied()V

    goto :goto_4a
.end method

.method private bindToAuthenticator(Ljava/lang/String;)Z
    .registers 11
    .param p1, "authenticatorType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x2

    const/4 v3, 0x0

    .line 3381
    iget-object v5, p0, this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService;->access$3400(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-result-object v5

    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v6

    iget-object v7, p0, mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v1

    .line 3383
    .local v1, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-nez v1, :cond_41

    .line 3384
    const-string v4, "AccountManagerService"

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 3385
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "there is no authenticator for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bailing out"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    :cond_40
    :goto_40
    return v3

    .line 3391
    :cond_41
    iget-object v0, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 3392
    .local v0, "authCompName":Landroid/content/ComponentName;
    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7b

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sec_container_1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 3393
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindToAuthenticator: target package is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hence return false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 3397
    :cond_7b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3398
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.accounts.AccountAuthenticator"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3399
    iget-object v5, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3400
    const-string v5, "AccountManagerService"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 3401
    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performing bindService to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    :cond_ad
    iget-object v5, p0, this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService;->access$1400(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    iget-object v7, p0, mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v2, p0, v4, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 3405
    const-string v4, "AccountManagerService"

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 3406
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindService to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40

    :cond_ee
    move v3, v4

    .line 3412
    goto/16 :goto_40
.end method

.method private close()V
    .registers 4

    .prologue
    .line 3132
    iget-object v0, p0, this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$2900(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    .line 3133
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$2900(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    .line 3135
    monitor-exit v1

    .line 3147
    :goto_18
    return-void

    .line 3137
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_32

    .line 3138
    iget-object v0, p0, mResponse:Landroid/accounts/IAccountManagerResponse;

    if-eqz v0, :cond_2b

    .line 3140
    iget-object v0, p0, mResponse:Landroid/accounts/IAccountManagerResponse;

    invoke-interface {v0}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3143
    const/4 v0, 0x0

    iput-object v0, p0, mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 3145
    :cond_2b
    invoke-virtual {p0}, cancelTimeout()V

    .line 3146
    invoke-direct {p0}, unbind()V

    goto :goto_18

    .line 3137
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method private unbind()V
    .registers 2

    .prologue
    .line 3178
    iget-object v0, p0, mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_10

    .line 3179
    const/4 v0, 0x0

    iput-object v0, p0, mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 3180
    iget-object v0, p0, this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$1400(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3182
    :cond_10
    return-void
.end method


# virtual methods
.method bind()V
    .registers 4

    .prologue
    .line 3168
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3169
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initiating bind to authenticator type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    :cond_24
    iget-object v0, p0, mAccountType:Ljava/lang/String;

    invoke-direct {p0, v0}, bindToAuthenticator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 3172
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind attempt failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    const/4 v0, 0x1

    const-string v1, "bind failure"

    invoke-virtual {p0, v0, v1}, onError(ILjava/lang/String;)V

    .line 3175
    :cond_4e
    return-void
.end method

.method public binderDied()V
    .registers 2

    .prologue
    .line 3151
    const/4 v0, 0x0

    iput-object v0, p0, mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 3152
    invoke-direct {p0}, close()V

    .line 3153
    return-void
.end method

.method public cancelTimeout()V
    .registers 3

    .prologue
    .line 3185
    iget-object v0, p0, this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$3000(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3186
    return-void
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .registers 3

    .prologue
    .line 3122
    iget-object v1, p0, mResponse:Landroid/accounts/IAccountManagerResponse;

    if-nez v1, :cond_6

    .line 3124
    const/4 v0, 0x0

    .line 3128
    :goto_5
    return-object v0

    .line 3126
    :cond_6
    iget-object v0, p0, mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 3127
    .local v0, "response":Landroid/accounts/IAccountManagerResponse;
    invoke-direct {p0}, close()V

    goto :goto_5
.end method

.method public onError(ILjava/lang/String;)V
    .registers 9
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 3354
    iget v2, p0, mNumErrors:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mNumErrors:I

    .line 3355
    invoke-virtual {p0}, getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 3356
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_4e

    .line 3357
    const-string v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3358
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " calling onError() on response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    :cond_39
    :try_start_39
    invoke-interface {v1, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 3373
    :cond_3c
    :goto_3c
    return-void

    .line 3363
    :catch_3d
    move-exception v0

    .line 3364
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 3365
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onError: caught RemoteException while responding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 3369
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4e
    const-string v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 3370
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onError: already closed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public onRequestContinued()V
    .registers 2

    .prologue
    .line 3349
    iget v0, p0, mNumRequestContinued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mNumRequestContinued:I

    .line 3350
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 29
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 3235
    move-object/from16 v0, p0

    iget v0, v0, mNumResults:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mNumResults:I

    .line 3236
    const/4 v12, 0x0

    .line 3237
    .local v12, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_cc

    .line 3238
    const-string v22, "booleanResult"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 3240
    .local v13, "isSuccessfulConfirmCreds":Z
    const-string v22, "authAccount"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_132

    const-string v22, "accountType"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_132

    const/4 v14, 0x1

    .line 3246
    .local v14, "isSuccessfulUpdateCredsOrAddAccount":Z
    :goto_38
    move-object/from16 v0, p0

    iget-boolean v0, v0, mUpdateLastAuthenticatedTime:Z

    move/from16 v22, v0

    if-eqz v22, :cond_135

    if-nez v13, :cond_44

    if-eqz v14, :cond_135

    :cond_44
    const/4 v15, 0x1

    .line 3248
    .local v15, "needUpdate":Z
    :goto_45
    if-nez v15, :cond_4f

    move-object/from16 v0, p0

    iget-boolean v0, v0, mAuthDetailsRequired:Z

    move/from16 v22, v0

    if-eqz v22, :cond_cc

    .line 3249
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mAccountName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mAccountType:Ljava/lang/String;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/accounts/AccountManagerService;->isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v22 .. v24}, Lcom/android/server/accounts/AccountManagerService;->access$3100(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 3250
    .local v6, "accountPresent":Z
    if-eqz v15, :cond_83

    if-eqz v6, :cond_83

    .line 3251
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v22, v0

    new-instance v23, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, mAccountName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mAccountType:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    invoke-static/range {v22 .. v23}, Lcom/android/server/accounts/AccountManagerService;->access$3200(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z

    .line 3253
    :cond_83
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAuthDetailsRequired:Z

    move/from16 v22, v0

    if-eqz v22, :cond_cc

    .line 3254
    const-wide/16 v16, -0x1

    .line 3255
    .local v16, "lastAuthenticatedTime":J
    if-eqz v6, :cond_c0

    .line 3256
    move-object/from16 v0, p0

    iget-object v0, v0, mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {v22 .. v22}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    const-string/jumbo v23, "select last_password_entry_time_millis_epoch from accounts WHERE name=? AND type=?"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mAccountName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, mAccountType:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v16

    .line 3266
    :cond_c0
    const-string/jumbo v22, "lastAuthenticatedTime"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3271
    .end local v6    # "accountPresent":Z
    .end local v13    # "isSuccessfulConfirmCreds":Z
    .end local v14    # "isSuccessfulUpdateCredsOrAddAccount":Z
    .end local v15    # "needUpdate":Z
    .end local v16    # "lastAuthenticatedTime":J
    :cond_cc
    if-eqz p1, :cond_13b

    const-string/jumbo v22, "intent"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    .end local v12    # "intent":Landroid/content/Intent;
    check-cast v12, Landroid/content/Intent;

    .restart local v12    # "intent":Landroid/content/Intent;
    if-eqz v12, :cond_13b

    .line 3279
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3280
    .local v8, "authenticatorUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3282
    .local v10, "bid":J
    :try_start_e5
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/server/accounts/AccountManagerService;->access$1400(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 3283
    .local v18, "pm":Landroid/content/pm/PackageManager;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v19

    .line 3284
    .local v19, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v0

    .line 3285
    .local v21, "targetUid":I
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v22

    if-eqz v22, :cond_138

    .line 3287
    new-instance v22, Ljava/lang/SecurityException;

    const-string v23, "Activity to be started with KEY_INTENT must share Authenticator\'s signatures"

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_12d
    .catchall {:try_start_e5 .. :try_end_12d} :catchall_12d

    .line 3292
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v19    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v21    # "targetUid":I
    :catchall_12d
    move-exception v22

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22

    .line 3240
    .end local v8    # "authenticatorUid":I
    .end local v10    # "bid":J
    .restart local v13    # "isSuccessfulConfirmCreds":Z
    :cond_132
    const/4 v14, 0x0

    goto/16 :goto_38

    .line 3246
    .restart local v14    # "isSuccessfulUpdateCredsOrAddAccount":Z
    :cond_135
    const/4 v15, 0x0

    goto/16 :goto_45

    .line 3292
    .end local v13    # "isSuccessfulConfirmCreds":Z
    .end local v14    # "isSuccessfulUpdateCredsOrAddAccount":Z
    .restart local v8    # "authenticatorUid":I
    .restart local v10    # "bid":J
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v19    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v21    # "targetUid":I
    :cond_138
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3295
    .end local v8    # "authenticatorUid":I
    .end local v10    # "bid":J
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v19    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v21    # "targetUid":I
    :cond_13b
    if-eqz p1, :cond_1a2

    const-string v22, "authtoken"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1a2

    .line 3297
    const-string v22, "authAccount"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3298
    .local v5, "accountName":Ljava/lang/String;
    const-string v22, "accountType"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3299
    .local v7, "accountType":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1a2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1a2

    .line 3300
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v5, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3301
    .local v4, "account":Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    # invokes: Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    invoke-static {v0, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->access$3300(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    new-instance v24, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v25

    invoke-direct/range {v24 .. v25}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual/range {v22 .. v24}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 3306
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "accountName":Ljava/lang/String;
    .end local v7    # "accountType":Ljava/lang/String;
    :cond_1a2
    move-object/from16 v0, p0

    iget-boolean v0, v0, mExpectActivityLaunch:Z

    move/from16 v22, v0

    if-eqz v22, :cond_204

    if-eqz p1, :cond_204

    const-string/jumbo v22, "intent"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_204

    .line 3308
    move-object/from16 v0, p0

    iget-object v0, v0, mResponse:Landroid/accounts/IAccountManagerResponse;

    move-object/from16 v20, v0

    .line 3312
    .local v20, "response":Landroid/accounts/IAccountManagerResponse;
    :goto_1bf
    if-eqz v20, :cond_203

    .line 3314
    if-nez p1, :cond_209

    .line 3315
    :try_start_1c3
    const-string v22, "AccountManagerService"

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_1f5

    .line 3316
    const-string v22, "AccountManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " calling onError() on response "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    :cond_1f5
    const/16 v22, 0x5

    const-string/jumbo v23, "null bundle returned"

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_203
    .catch Landroid/os/RemoteException; {:try_start_1c3 .. :try_end_203} :catch_27f

    .line 3345
    :cond_203
    :goto_203
    return-void

    .line 3310
    .end local v20    # "response":Landroid/accounts/IAccountManagerResponse;
    :cond_204
    invoke-virtual/range {p0 .. p0}, getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v20

    .restart local v20    # "response":Landroid/accounts/IAccountManagerResponse;
    goto :goto_1bf

    .line 3322
    :cond_209
    :try_start_209
    move-object/from16 v0, p0

    iget-boolean v0, v0, mStripAuthTokenFromResult:Z

    move/from16 v22, v0

    if-eqz v22, :cond_21a

    .line 3323
    const-string v22, "authtoken"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3325
    :cond_21a
    const-string v22, "AccountManagerService"

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_24c

    .line 3326
    const-string v22, "AccountManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " calling onResult() on response "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    :cond_24c
    const-string/jumbo v22, "errorCode"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    if-lez v22, :cond_298

    if-nez v12, :cond_298

    .line 3332
    const-string/jumbo v22, "errorCode"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    const-string/jumbo v23, "errorMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_27e
    .catch Landroid/os/RemoteException; {:try_start_209 .. :try_end_27e} :catch_27f

    goto :goto_203

    .line 3338
    :catch_27f
    move-exception v9

    .line 3340
    .local v9, "e":Landroid/os/RemoteException;
    const-string v22, "AccountManagerService"

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_203

    .line 3341
    const-string v22, "AccountManagerService"

    const-string/jumbo v23, "failure while notifying response"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_203

    .line 3335
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_298
    :try_start_298
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_29f
    .catch Landroid/os/RemoteException; {:try_start_298 .. :try_end_29f} :catch_27f

    goto/16 :goto_203
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 3190
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    move-result-object v1

    iput-object v1, p0, mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 3192
    :try_start_6
    invoke-virtual {p0}, run()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 3197
    :goto_9
    return-void

    .line 3193
    :catch_a
    move-exception v0

    .line 3194
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    const-string/jumbo v2, "remote exception"

    invoke-virtual {p0, v1, v2}, onError(ILjava/lang/String;)V

    goto :goto_9
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 3201
    const/4 v2, 0x0

    iput-object v2, p0, mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 3202
    invoke-virtual {p0}, getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 3203
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_10

    .line 3205
    const/4 v2, 0x1

    :try_start_a
    const-string/jumbo v3, "disconnected"

    invoke-interface {v1, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    .line 3214
    :cond_10
    :goto_10
    return-void

    .line 3207
    :catch_11
    move-exception v0

    .line 3208
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3209
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onServiceDisconnected: caught RemoteException while responding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public onTimedOut()V
    .registers 5

    .prologue
    .line 3219
    invoke-virtual {p0}, getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 3220
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_d

    .line 3222
    const/4 v2, 0x1

    :try_start_7
    const-string/jumbo v3, "timeout"

    invoke-interface {v1, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    .line 3231
    :cond_d
    :goto_d
    return-void

    .line 3224
    :catch_e
    move-exception v0

    .line 3225
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3226
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onTimedOut: caught RemoteException while responding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected toDebugString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, toDebugString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 10
    .param p1, "now"    # J

    .prologue
    .line 3160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: expectLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mExpectActivityLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_64

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stats ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mNumResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mNumRequestContinued:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mNumErrors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lifetime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mCreationTime:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_64
    const/4 v0, 0x0

    goto :goto_1c
.end method
