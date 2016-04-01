.class public Lcom/android/server/im/InjectionManagerService;
.super Landroid/app/im/IInjectionManager$Stub;
.source "InjectionManagerService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ELASTIC:Z = false

.field public static TAG:Ljava/lang/String; = null

.field private static final THREAD_COUNT:I = 0x3

.field private static final XML_META_DATA:Ljava/lang/String; = "samsung.injection"


# instance fields
.field private final FEATURE_PERMISSION:Ljava/lang/String;

.field private featureAppReplacing:Z

.field private isBootAllParsingDone:Z

.field private isBootComplete:Z

.field private mAppFeature:Lcom/android/server/im/AppFeature;

.field private mBlockingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFutureTask:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const-string v0, "InjectionManagerService"

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Landroid/app/im/IInjectionManager$Stub;-><init>()V

    .line 73
    const-string v1, "com.samsung.android.permission.FEATURE_INJECTION"

    iput-object v1, p0, FEATURE_PERMISSION:Ljava/lang/String;

    .line 75
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, mBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mFutureTask:Ljava/util/ArrayList;

    .line 77
    iput-boolean v3, p0, isBootComplete:Z

    .line 78
    iput-boolean v3, p0, isBootAllParsingDone:Z

    .line 79
    iput-boolean v3, p0, featureAppReplacing:Z

    .line 214
    new-instance v1, Lcom/android/server/im/InjectionManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/im/InjectionManagerService$1;-><init>(Lcom/android/server/im/InjectionManagerService;)V

    iput-object v1, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 90
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 91
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, mBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 93
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v9, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 94
    .local v9, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lcom/android/server/im/AppFeature;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v9}, Lcom/android/server/im/AppFeature;-><init>(Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v1, p0, mAppFeature:Lcom/android/server/im/AppFeature;

    .line 95
    iget-object v1, p0, mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v1}, Lcom/android/server/im/AppFeature;->start()V

    .line 97
    :try_start_50
    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_53} :catch_82

    .line 102
    :goto_53
    invoke-direct {p0}, parseFeatureAppPackages()V

    .line 103
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void

    .line 98
    .end local v8    # "intentFilter":Landroid/content/IntentFilter;
    :catch_82
    move-exception v0

    .line 99
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_53
.end method

.method static synthetic access$002(Lcom/android/server/im/InjectionManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/im/InjectionManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, isBootComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/im/InjectionManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/im/InjectionManagerService;

    .prologue
    .line 59
    iget-boolean v0, p0, isBootAllParsingDone:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/im/InjectionManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/im/InjectionManagerService;

    .prologue
    .line 59
    invoke-direct {p0}, killAllParent()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/im/InjectionManagerService;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/im/InjectionManagerService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, doAdd(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/im/InjectionManagerService;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/im/InjectionManagerService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, doRemove(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/im/InjectionManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/im/InjectionManagerService;

    .prologue
    .line 59
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method private doAdd(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 268
    const/4 v2, 0x0

    .line 270
    .local v2, "isFeatureApp":Z
    :try_start_3
    iget-object v6, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x1000

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 275
    .local v3, "pInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_2c

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_2c

    .line 276
    const/4 v5, 0x0

    .local v5, "permissionIndex":I
    :goto_12
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_2c

    .line 277
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, v6, v5

    .line 280
    .local v4, "permission":Ljava/lang/String;
    const-string v6, "com.samsung.android.permission.FEATURE_INJECTION"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 281
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v6, v6, v5
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_27} :catch_68

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_65

    .line 282
    const/4 v2, 0x1

    .line 293
    .end local v3    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "permissionIndex":I
    :cond_2c
    :goto_2c
    if-eqz v2, :cond_64

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_2f
    iget-object v6, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_36} :catch_6d

    move-result-object v0

    .line 301
    :goto_37
    if-eqz v0, :cond_64

    .line 302
    invoke-virtual {p0, v0, v9}, packageAdded(Landroid/content/pm/ApplicationInfo;Z)V

    .line 303
    iget-boolean v6, p0, featureAppReplacing:Z

    if-eqz v6, :cond_72

    .line 304
    iget-object v6, p0, mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Feature app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " replaced"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 308
    iput-boolean v9, p0, featureAppReplacing:Z

    .line 317
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_64
    :goto_64
    return-void

    .line 276
    .restart local v3    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "permission":Ljava/lang/String;
    .restart local v5    # "permissionIndex":I
    :cond_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 290
    .end local v3    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "permissionIndex":I
    :catch_68
    move-exception v1

    .line 291
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2c

    .line 298
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_6d
    move-exception v1

    .line 299
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_37

    .line 310
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_72
    iget-object v6, p0, mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New feature app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " installed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_64
.end method

.method private doRemove(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 257
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 259
    .local v0, "featureAppReplacing":Z
    invoke-virtual {p0, p2}, packageRemoved(Ljava/lang/String;)Z

    move-result v1

    .line 260
    .local v1, "removed":Z
    if-eqz v1, :cond_32

    if-nez v0, :cond_32

    .line 261
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Feature app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 266
    :cond_32
    return-void
.end method

.method private killAllParent()V
    .registers 4

    .prologue
    .line 436
    iget-object v2, p0, mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v2}, Lcom/android/server/im/AppFeature;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 437
    .local v0, "appHandler":Landroid/os/Handler;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 441
    .local v1, "msgObj":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 442
    return-void
.end method

.method private parseFeatureAppPackages()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 116
    iget-object v5, p0, mPackageManager:Landroid/content/pm/PackageManager;

    new-array v6, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "com.samsung.android.permission.FEATURE_INJECTION"

    aput-object v8, v6, v7

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 122
    .local v4, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v4, :cond_2e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2e

    .line 125
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 126
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v5, v9}, packageAdded(Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_1c

    .line 130
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2e
    :try_start_2e
    iget-object v5, p0, mFutureTask:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 131
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5

    if-nez v5, :cond_34

    .line 135
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_49} :catch_4a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2e .. :try_end_49} :catch_58

    goto :goto_34

    .line 138
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_4a
    move-exception v0

    .line 139
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 143
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_4e
    :goto_4e
    iput-boolean v9, p0, isBootAllParsingDone:Z

    .line 144
    iget-boolean v5, p0, isBootComplete:Z

    if-ne v5, v9, :cond_57

    .line 147
    invoke-direct {p0}, killAllParent()V

    .line 154
    :cond_57
    return-void

    .line 140
    :catch_58
    move-exception v0

    .line 141
    .local v0, "ex":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_4e
.end method


# virtual methods
.method public getClassLibPath(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v20, "sourceDetail":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mAppFeature:Lcom/android/server/im/AppFeature;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/im/AppFeature;->getCoreFeaturePkgList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 329
    .local v16, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v21, "toBeSent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 331
    .local v5, "classLibPathF":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 336
    .local v6, "classLibPathT":Ljava/lang/StringBuffer;
    const/4 v14, 0x0

    .line 337
    .local v14, "lenght":I
    const/4 v12, 0x0

    .line 338
    .local v12, "index":I
    if-eqz v16, :cond_154

    .line 339
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v8, "dexPathsT":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v7, "dexPathsF":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 342
    .local v15, "nativeLibPaths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v16, :cond_154

    .line 343
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_90

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 345
    .local v18, "pkgName":Ljava/lang/String;
    :try_start_47
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const/16 v23, 0x480

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 355
    .local v3, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_81

    .line 359
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_75
    if-ge v11, v13, :cond_81

    aget-object v19, v4, v11

    .line 360
    .local v19, "sharedLib":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v11, v11, 0x1

    goto :goto_75

    .line 363
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .end local v19    # "sharedLib":Ljava/lang/String;
    :cond_81
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_47 .. :try_end_8a} :catch_8b

    goto :goto_3b

    .line 366
    .end local v3    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_8b
    move-exception v9

    .line 368
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3b

    .line 375
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "pkgName":Ljava/lang/String;
    :cond_90
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 376
    const/4 v12, 0x0

    .line 377
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_99
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_ba

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 378
    .local v17, "path":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v12, v0, :cond_b7

    .line 380
    const-string v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    :cond_b7
    add-int/lit8 v12, v12, 0x1

    .line 383
    goto :goto_99

    .line 385
    .end local v17    # "path":Ljava/lang/String;
    :cond_ba
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 386
    const/4 v12, 0x0

    .line 387
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 388
    .restart local v17    # "path":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v12, v0, :cond_e1

    .line 390
    const-string v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    :cond_e1
    add-int/lit8 v12, v12, 0x1

    .line 393
    goto :goto_c3

    .line 395
    .end local v17    # "path":Ljava/lang/String;
    :cond_e4
    const/4 v12, 0x0

    .line 396
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 397
    const-string v22, "#"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_f4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_115

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 399
    .restart local v17    # "path":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v12, v0, :cond_112

    .line 401
    const-string v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    :cond_112
    add-int/lit8 v12, v12, 0x1

    .line 404
    goto :goto_f4

    .line 408
    .end local v17    # "path":Ljava/lang/String;
    :cond_115
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    const/4 v12, 0x0

    .line 410
    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v14

    .line 411
    const-string v22, "#"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_12c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_14d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 413
    .restart local v17    # "path":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v12, v0, :cond_14a

    .line 415
    const-string v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    :cond_14a
    add-int/lit8 v12, v12, 0x1

    .line 419
    goto :goto_12c

    .line 422
    .end local v17    # "path":Ljava/lang/String;
    :cond_14d
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    .end local v7    # "dexPathsF":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "dexPathsT":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v15    # "nativeLibPaths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_154
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    return-object v20
.end method

.method public bridge synthetic getClassLibPath(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1}, getClassLibPath(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "featureType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/im/AppFeature;->getCategorisedPackageFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPackageFeatures(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v2, p0, mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v2, p1}, Lcom/android/server/im/AppFeature;->getPackageFeatures(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 186
    .local v1, "pkgFeature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    if-nez v1, :cond_16

    .line 187
    iget-object v2, p0, mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v2, p1}, Lcom/android/server/im/AppFeature;->getCorePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "corePackage":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 191
    iget-object v2, p0, mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v2, v0}, Lcom/android/server/im/AppFeature;->getPackageFeatures(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 194
    .end local v0    # "corePackage":Ljava/lang/String;
    .end local v1    # "pkgFeature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_16
    return-object v1
.end method

.method public bridge synthetic getPackageFeatures(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1}, getPackageFeatures(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public packageAdded(Landroid/content/pm/ApplicationInfo;Z)V
    .registers 7
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "isFirstBoot"    # Z

    .prologue
    .line 160
    iget-object v2, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "samsung.injection"

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 164
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v0, :cond_23

    .line 165
    new-instance v1, Lcom/android/server/im/FeatureInfoParser;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v3}, Lcom/android/server/im/AppFeature;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/server/im/FeatureInfoParser;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/res/XmlResourceParser;Z)V

    .line 167
    .local v1, "xmlParser":Lcom/android/server/im/FeatureInfoParser;
    iget-object v2, p0, mFutureTask:Ljava/util/ArrayList;

    iget-object v3, p0, mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v1    # "xmlParser":Lcom/android/server/im/FeatureInfoParser;
    :cond_23
    return-void
.end method

.method public packageRemoved(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v0, p1}, Lcom/android/server/im/AppFeature;->removeFeatureFromList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
