.class Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;
.super Ljava/lang/Object;
.source "PackagePrefetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackagePrefetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefetchRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackagePrefetcher;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackagePrefetcher;)V
    .registers 2

    .prologue
    .line 199
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackagePrefetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackagePrefetcher;Lcom/android/server/pm/PackagePrefetcher$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/PackagePrefetcher;
    .param p2, "x1"    # Lcom/android/server/pm/PackagePrefetcher$1;

    .prologue
    .line 199
    invoke-direct {p0, p1}, <init>(Lcom/android/server/pm/PackagePrefetcher;)V

    return-void
.end method


# virtual methods
.method public doPrefetch(Ljava/lang/String;I)V
    .registers 12
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "parseFlags"    # I

    .prologue
    .line 213
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "file":Ljava/io/File;
    new-instance v4, Landroid/content/pm/PackageParser;

    invoke-direct {v4}, Landroid/content/pm/PackageParser;-><init>()V

    .line 216
    .local v4, "pp":Landroid/content/pm/PackageParser;
    iget-object v5, p0, this$0:Lcom/android/server/pm/PackagePrefetcher;

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->mSeparateProcesses:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/pm/PackagePrefetcher;->access$200(Lcom/android/server/pm/PackagePrefetcher;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 217
    invoke-virtual {v4, v1, p2}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 219
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v5, p0, this$0:Lcom/android/server/pm/PackagePrefetcher;

    # invokes: Lcom/android/server/pm/PackagePrefetcher;->preCollectCert(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    invoke-static {v5, v4, v3, p2}, Lcom/android/server/pm/PackagePrefetcher;->access$300(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    move-result-object v2

    .line 221
    .local v2, "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    iget-object v5, p0, this$0:Lcom/android/server/pm/PackagePrefetcher;

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/pm/PackagePrefetcher;->access$400(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_57

    .line 222
    :try_start_24
    const-string v5, "PackagePrefetcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "put: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-nez v2, :cond_47

    .line 224
    const-string v5, "PackagePrefetcher"

    const-string/jumbo v7, "pPkg is null"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_47
    iget-object v5, p0, this$0:Lcom/android/server/pm/PackagePrefetcher;

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/pm/PackagePrefetcher;->access$400(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    monitor-exit v6

    .line 230
    if-eqz v2, :cond_53

    .line 244
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "pp":Landroid/content/pm/PackageParser;
    :cond_53
    :goto_53
    return-void

    .line 228
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .restart local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "pp":Landroid/content/pm/PackageParser;
    :catchall_54
    move-exception v5

    monitor-exit v6
    :try_end_56
    .catchall {:try_start_24 .. :try_end_56} :catchall_54

    :try_start_56
    throw v5
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_57} :catch_57

    .line 234
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "pp":Landroid/content/pm/PackageParser;
    :catch_57
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/pm/PackagePrefetcher;->DEBUG_DEV:Z
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->access$500()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 236
    const-string v5, "PackagePrefetcher"

    const-string v6, "PREFETCH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while prefetch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v5, "PackagePrefetcher"

    const-string v6, "PREFETCH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "give up prefetch : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53
.end method

.method public run()V
    .registers 4

    .prologue
    .line 201
    :goto_0
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackagePrefetcher;

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v1}, Lcom/android/server/pm/PackagePrefetcher;->access$100(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 202
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackagePrefetcher;

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v1}, Lcom/android/server/pm/PackagePrefetcher;->access$100(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 203
    .local v0, "entry":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2e

    .line 204
    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, doPrefetch(Ljava/lang/String;I)V

    goto :goto_0

    .line 206
    :cond_2e
    const-string v1, "PackagePrefetcher"

    const-string v2, "Entry is null prefetch wiil finish"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    .end local v0    # "entry":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_36
    return-void
.end method
