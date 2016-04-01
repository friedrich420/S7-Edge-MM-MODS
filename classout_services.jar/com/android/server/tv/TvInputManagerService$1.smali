.class Lcom/android/server/tv/TvInputManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private buildTvInputList([Ljava/lang/String;)V
    .registers 5
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 162
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {p0}, getChangingUserId()I

    move-result v2

    # invokes: Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V
    invoke-static {v0, v2, p1}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {p0}, getChangingUserId()I

    move-result v2

    # invokes: Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService;->access$400(Lcom/android/server/tv/TvInputManagerService;I)V

    .line 164
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v0
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 224
    iget-object v7, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 225
    :try_start_7
    iget-object v7, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {p0}, getChangingUserId()I

    move-result v9

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v7, v9}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v6

    .line 226
    .local v6, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 228
    monitor-exit v8

    .line 258
    :goto_1c
    return-void

    .line 230
    :cond_1d
    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_71

    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string/jumbo v4, "package_name=?"

    .line 235
    .local v4, "selection":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    .line 237
    .local v5, "selectionArgs":[Ljava/lang/String;
    sget-object v7, Landroid/media/tv/TvContract$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v7, Landroid/media/tv/TvContract$Programs;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v7, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    const/4 v3, 0x0

    .line 247
    .local v3, "results":[Landroid/content/ContentProviderResult;
    :try_start_60
    iget-object v7, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {p0}, getChangingUserId()I

    move-result v8

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getContentResolverForUser(I)Landroid/content/ContentResolver;
    invoke-static {v7, v8}, Lcom/android/server/tv/TvInputManagerService;->access$700(Lcom/android/server/tv/TvInputManagerService;I)Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v7, "android.media.tv"

    invoke-virtual {v0, v7, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_6f} :catch_74
    .catch Landroid/content/OperationApplicationException; {:try_start_60 .. :try_end_6f} :catch_7e

    move-result-object v3

    goto :goto_1c

    .line 230
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v3    # "results":[Landroid/content/ContentProviderResult;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_71
    move-exception v7

    :try_start_72
    monitor-exit v8
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v7

    .line 249
    .restart local v2    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3    # "results":[Landroid/content/ContentProviderResult;
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catch_74
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/Exception;
    :goto_75
    const-string v7, "TvInputManagerService"

    const-string/jumbo v8, "error in applyBatch"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_7e
    move-exception v1

    goto :goto_75
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 172
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, buildTvInputList([Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 3
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 182
    invoke-virtual {p0}, isReplacing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 183
    invoke-direct {p0, p1}, buildTvInputList([Ljava/lang/String;)V

    .line 185
    :cond_9
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 3
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 195
    invoke-virtual {p0}, isReplacing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 196
    invoke-direct {p0, p1}, buildTvInputList([Ljava/lang/String;)V

    .line 198
    :cond_9
    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 2

    .prologue
    .line 205
    invoke-virtual {p0}, isReplacing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    :goto_6
    return-void

    .line 211
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, buildTvInputList([Ljava/lang/String;)V

    goto :goto_6
.end method
