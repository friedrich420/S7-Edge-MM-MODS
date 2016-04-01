.class public Lcom/android/server/execute/ExecuteManagerService;
.super Lcom/samsung/android/app/IExecuteManager$Stub;
.source "ExecuteManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/execute/ExecuteManagerService$1;,
        Lcom/android/server/execute/ExecuteManagerService$MyPackageMonitor;,
        Lcom/android/server/execute/ExecuteManagerService$UserReceiver;,
        Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExecuteManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutableInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/ExecutableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/IExecuteManager$Stub;-><init>()V

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mExecutableInfos:Ljava/util/HashMap;

    .line 61
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 64
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/execute/ExecuteManagerService;Lcom/android/server/execute/ExecuteManagerService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/execute/ExecuteManagerService$UserReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/execute/ExecuteManagerService$UserReceiver;-><init>(Lcom/android/server/execute/ExecuteManagerService;Lcom/android/server/execute/ExecuteManagerService$1;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    new-instance v1, Lcom/android/server/execute/ExecuteManagerService$MyPackageMonitor;

    invoke-direct {v1, p0}, Lcom/android/server/execute/ExecuteManagerService$MyPackageMonitor;-><init>(Lcom/android/server/execute/ExecuteManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v5, v2, v3}, Lcom/android/server/execute/ExecuteManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 68
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/execute/ExecuteManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/execute/ExecuteManagerService;

    .prologue
    .line 47
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/execute/ExecuteManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/execute/ExecuteManagerService;

    .prologue
    .line 47
    invoke-direct {p0}, updateExecutableInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/execute/ExecuteManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/execute/ExecuteManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, onUserRemoved(I)V

    return-void
.end method

.method private onUserRemoved(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 118
    return-void
.end method

.method private declared-synchronized updateExecutableInfo()V
    .registers 6

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_2a

    .line 83
    :try_start_2
    iget-object v3, p0, mExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 84
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/ExecutableInfo;->scanExecutableInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 85
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/ExecutableInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/ExecutableInfo;

    .line 86
    .local v1, "info":Lcom/samsung/android/app/ExecutableInfo;
    iget-object v3, p0, mExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/samsung/android/app/ExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 88
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/samsung/android/app/ExecutableInfo;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/ExecutableInfo;>;"
    :catchall_27
    move-exception v3

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_27

    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 82
    :catchall_2a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 88
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/ExecutableInfo;>;"
    :cond_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_27

    .line 89
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "ExecuteManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/ExecutableInfo;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 71
    monitor-enter p0

    .line 72
    :try_start_1
    iget-object v0, p0, mExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/ExecutableInfo;

    monitor-exit p0

    return-object v0

    .line 73
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getExecutableInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/ExecutableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    monitor-enter p0

    .line 77
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, mExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    .line 78
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method
