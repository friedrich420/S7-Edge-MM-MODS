.class Lcom/android/server/telecom/TelecomLoaderService$3;
.super Ljava/lang/Object;
.source "TelecomLoaderService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .registers 2

    .prologue
    .line 251
    iput-object p1, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackages(I)[Ljava/lang/String;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v3, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/telecom/TelecomLoaderService;->access$200(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 255
    :try_start_8
    iget-object v4, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    invoke-static {v4}, Lcom/android/server/telecom/TelecomLoaderService;->access$700(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    move-result-object v4

    if-nez v4, :cond_2d

    .line 256
    iget-object v4, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    invoke-static {v4}, Lcom/android/server/telecom/TelecomLoaderService;->access$500(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v4

    if-nez v4, :cond_22

    .line 257
    iget-object v4, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5}, Landroid/util/IntArray;-><init>()V

    # setter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    invoke-static {v4, v5}, Lcom/android/server/telecom/TelecomLoaderService;->access$502(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;

    .line 259
    :cond_22
    iget-object v4, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    invoke-static {v4}, Lcom/android/server/telecom/TelecomLoaderService;->access$500(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/util/IntArray;->add(I)V

    .line 260
    monitor-exit v3

    .line 269
    :cond_2c
    :goto_2c
    return-object v2

    .line 262
    :cond_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_52

    .line 263
    iget-object v3, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 265
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v1, p1}, Landroid/telecom/TelecomManager;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 266
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v0, :cond_2c

    .line 267
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_2c

    .line 262
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    :catchall_52
    move-exception v2

    :try_start_53
    monitor-exit v3
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v2
.end method
