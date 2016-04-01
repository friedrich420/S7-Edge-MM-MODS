.class public Lcom/android/server/pm/PackagePrefetcher;
.super Ljava/lang/Object;
.source "PackagePrefetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackagePrefetcher$1;,
        Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;,
        Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    }
.end annotation


# static fields
.field private static final DEBUG_DEV:Z

.field private static final LOG_PREF_PREFETCH:Ljava/lang/String; = "PREFETCH"

.field private static final NUM_THREADS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "PackagePrefetcher"

.field private static sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;


# instance fields
.field private final mAppDirs:[Ljava/io/File;

.field mDefParseFlags:I

.field private final mHasSettingsFile:Z

.field private mParseFlags:[I

.field private final mPrefetchedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mSeparateProcesses:[Ljava/lang/String;

.field private prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DEBUG_DEV:Z

    .line 56
    const/4 v0, 0x0

    sput-object v0, sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 59
    invoke-direct {p0}, hasSettingsFile()Z

    move-result v1

    iput-boolean v1, p0, mHasSettingsFile:Z

    .line 63
    new-array v1, v7, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "app"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v1, v6

    const/4 v2, 0x1

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "priv-app"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "app"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "container"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v2

    iput-object v1, p0, mAppDirs:[Ljava/io/File;

    .line 71
    new-array v1, v7, [I

    fill-array-data v1, :array_b8

    iput-object v1, p0, mParseFlags:[I

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mPrefetchedPackages:Ljava/util/HashMap;

    .line 117
    const-string/jumbo v1, "debug.separate_processes"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "separateProcesses":Ljava/lang/String;
    if-eqz v0, :cond_b3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b3

    .line 121
    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 122
    const/16 v1, 0x8

    iput v1, p0, mDefParseFlags:I

    .line 123
    iput-object v8, p0, mSeparateProcesses:[Ljava/lang/String;

    .line 124
    sget-boolean v1, DEBUG_DEV:Z

    if-eqz v1, :cond_8b

    .line 125
    const-string v1, "PackagePrefetcher"

    const-string v2, "PREFETCH"

    const-string v3, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_8b
    :goto_8b
    return-void

    .line 129
    :cond_8c
    iput v6, p0, mDefParseFlags:I

    .line 130
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mSeparateProcesses:[Ljava/lang/String;

    .line 131
    sget-boolean v1, DEBUG_DEV:Z

    if-eqz v1, :cond_8b

    .line 132
    const-string v1, "PackagePrefetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running with debug.separate_processes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 137
    :cond_b3
    iput v6, p0, mDefParseFlags:I

    .line 138
    iput-object v8, p0, mSeparateProcesses:[Ljava/lang/String;

    goto :goto_8b

    .line 71
    :array_b8
    .array-data 4
        0x45
        0xc5
        0x4
        0x45
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;

    .prologue
    .line 44
    iget-object v0, p0, prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackagePrefetcher;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;

    .prologue
    .line 44
    iget-object v0, p0, mSeparateProcesses:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;
    .param p1, "x1"    # Landroid/content/pm/PackageParser;
    .param p2, "x2"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, preCollectCert(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;

    .prologue
    .line 44
    iget-object v0, p0, mPrefetchedPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 44
    sget-boolean v0, DEBUG_DEV:Z

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/pm/PackagePrefetcher;
    .registers 2

    .prologue
    .line 102
    const-class v1, Lcom/android/server/pm/PackagePrefetcher;

    monitor-enter v1

    :try_start_3
    sget-object v0, sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;

    if-nez v0, :cond_e

    .line 103
    new-instance v0, Lcom/android/server/pm/PackagePrefetcher;

    invoke-direct {v0}, <init>()V

    sput-object v0, sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;

    .line 105
    :cond_e
    sget-object v0, sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 102
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasSettingsFile()Z
    .registers 7

    .prologue
    .line 281
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 282
    .local v1, "dataDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "system"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 283
    .local v4, "systemDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v5, "packages.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    .local v3, "settingsFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v5, "packages.xml.bak"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    .local v0, "backupSettingsFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "packages.xml.mbak"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    .local v2, "moreBackupSettingsFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_36

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_36

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 290
    :cond_36
    const/4 v5, 0x1

    .line 292
    :goto_37
    return v5

    :cond_38
    const/4 v5, 0x0

    goto :goto_37
.end method

.method private preCollectCert(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .registers 11
    .param p1, "pp"    # Landroid/content/pm/PackageParser;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "parseFlags"    # I

    .prologue
    const/4 v6, 0x1

    .line 256
    const/4 v1, 0x0

    .line 258
    .local v1, "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    iget-boolean v2, p0, mHasSettingsFile:Z

    if-nez v2, :cond_46

    .line 260
    :try_start_6
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V

    .line 261
    new-instance v1, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    .end local v1    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;-><init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V
    :try_end_f
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_6 .. :try_end_f} :catch_10

    .line 277
    .restart local v1    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    :goto_f
    return-object v1

    .line 262
    .end local v1    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    :catch_10
    move-exception v0

    .line 263
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    sget-boolean v2, DEBUG_DEV:Z

    if-eqz v2, :cond_40

    .line 264
    const-string v2, "PackagePrefetcher"

    const-string v3, "PREFETCH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "faild collect cert : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_40
    new-instance v1, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    invoke-direct {v1, p0, p2, v6}, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;-><init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V

    .line 269
    .restart local v1    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    goto :goto_f

    .line 271
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_46
    sget-boolean v2, DEBUG_DEV:Z

    if-eqz v2, :cond_6b

    .line 272
    const-string v2, "PackagePrefetcher"

    const-string v3, "PREFETCH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "need to collect cert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_6b
    new-instance v1, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    .end local v1    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    invoke-direct {v1, p0, p2, v6}, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;-><init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V

    .restart local v1    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    goto :goto_f
.end method


# virtual methods
.method checkDone(Ljava/lang/String;)Z
    .registers 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, mPrefetchedPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public free()V
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x0

    sput-object v0, sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;

    .line 110
    iget-object v0, p0, mPrefetchedPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 111
    return-void
.end method

.method getPrefetchedPackage(Ljava/lang/String;)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 181
    .local v1, "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    iget-object v2, p0, mPrefetchedPackages:Ljava/util/HashMap;

    if-eqz v2, :cond_38

    .line 182
    iget-object v3, p0, mPrefetchedPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 183
    :try_start_8
    iget-object v2, p0, mPrefetchedPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    move-object v1, v0

    .line 184
    if-nez v1, :cond_37

    sget-boolean v2, DEBUG_DEV:Z

    if-eqz v2, :cond_37

    .line 185
    const-string v2, "PackagePrefetcher"

    const-string v4, "PREFETCH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not yet prefetched: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_37
    monitor-exit v3

    .line 192
    :cond_38
    return-object v1

    .line 189
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public prefetchPackages()V
    .registers 15

    .prologue
    .line 157
    iget-object v8, p0, mAppDirs:[Ljava/io/File;

    array-length v3, v8

    .line 158
    .local v3, "dirs":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v3, :cond_64

    .line 159
    iget-object v8, p0, mAppDirs:[Ljava/io/File;

    aget-object v2, v8, v4

    .line 160
    .local v2, "dir":Ljava/io/File;
    if-eqz v2, :cond_61

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_61

    .line 161
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_18
    if-ge v5, v6, :cond_61

    aget-object v0, v1, v5

    .line 162
    .local v0, "appFile":Ljava/lang/String;
    iget-object v8, p0, mAppDirs:[Ljava/io/File;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->isSystemDir(Ljava/io/File;)Z

    move-result v7

    .line 163
    .local v7, "systemDir":Z
    if-eqz v7, :cond_2f

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->isSkippingApk(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 161
    :goto_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 166
    :cond_2f
    iget-object v8, p0, prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v9, Ljava/util/AbstractMap$SimpleEntry;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/Integer;

    iget-object v12, p0, mParseFlags:[I

    aget v12, v12, v4

    iget v13, p0, mDefParseFlags:I

    or-int/2addr v12, v13

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v9, v10, v11}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 158
    .end local v0    # "appFile":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "systemDir":Z
    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 172
    .end local v2    # "dir":Ljava/io/File;
    :cond_64
    const/4 v4, 0x0

    :goto_65
    const/4 v8, 0x6

    if-ge v4, v8, :cond_79

    .line 173
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;-><init>(Lcom/android/server/pm/PackagePrefetcher;Lcom/android/server/pm/PackagePrefetcher$1;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 172
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 175
    :cond_79
    return-void
.end method

.method public prefetchPermissions()V
    .registers 1

    .prologue
    .line 251
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 252
    return-void
.end method
