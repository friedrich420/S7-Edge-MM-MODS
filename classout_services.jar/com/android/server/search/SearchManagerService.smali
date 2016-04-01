.class public Lcom/android/server/search/SearchManagerService;
.super Landroid/app/ISearchManager$Stub;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/search/SearchManagerService$1;,
        Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;,
        Lcom/android/server/search/SearchManagerService$MyPackageMonitor;,
        Lcom/android/server/search/SearchManagerService$UserReceiver;,
        Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSearchables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/search/Searchables;",
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

    .line 76
    invoke-direct {p0}, Landroid/app/ISearchManager$Stub;-><init>()V

    .line 68
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, mSearchables:Landroid/util/SparseArray;

    .line 77
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 80
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/search/SearchManagerService;Lcom/android/server/search/SearchManagerService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/search/SearchManagerService$UserReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/search/SearchManagerService$UserReceiver;-><init>(Lcom/android/server/search/SearchManagerService;Lcom/android/server/search/SearchManagerService$1;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    new-instance v1, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;

    invoke-direct {v1, p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;-><init>(Lcom/android/server/search/SearchManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v5, v2, v3}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 84
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;

    .prologue
    .line 59
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/search/SearchManagerService;I)Lcom/android/server/search/Searchables;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/search/SearchManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;

    .prologue
    .line 59
    iget-object v0, p0, mSearchables:Landroid/util/SparseArray;

    return-object v0
.end method

.method private getLegacyAssistComponent(I)Landroid/content/ComponentName;
    .registers 15
    .param p1, "userHandle"    # I

    .prologue
    const/4 v12, 0x0

    .line 263
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "getLegacyAssistComponent"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 265
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 266
    .local v10, "pm":Landroid/content/pm/IPackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.ASSIST"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v7, "assistIntent":Landroid/content/Intent;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-interface {v10, v7, v0, v1, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 271
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_5a

    .line 272
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_40} :catch_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_5c

    .line 282
    .end local v7    # "assistIntent":Landroid/content/Intent;
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    :goto_40
    return-object v0

    .line 276
    :catch_41
    move-exception v11

    .line 278
    .local v11, "re":Landroid/os/RemoteException;
    const-string v0, "SearchManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException in getLegacyAssistComponent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11    # "re":Landroid/os/RemoteException;
    :cond_5a
    :goto_5a
    move-object v0, v12

    .line 282
    goto :goto_40

    .line 279
    :catch_5c
    move-exception v8

    .line 280
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "SearchManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getLegacyAssistComponent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method

.method private getSearchables(I)Lcom/android/server/search/Searchables;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 87
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 89
    .local v0, "origId":J
    :try_start_4
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_43

    move-result-object v4

    if-eqz v4, :cond_1d

    const/4 v3, 0x1

    .line 91
    .local v3, "userExists":Z
    :goto_16
    if-nez v3, :cond_1f

    const/4 v2, 0x0

    .line 93
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    :goto_1c
    return-object v2

    .line 89
    .end local v3    # "userExists":Z
    :cond_1d
    const/4 v3, 0x0

    goto :goto_16

    .line 93
    .restart local v3    # "userExists":Z
    :cond_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    iget-object v5, p0, mSearchables:Landroid/util/SparseArray;

    monitor-enter v5

    .line 96
    :try_start_25
    iget-object v4, p0, mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/search/Searchables;

    .line 98
    .local v2, "searchables":Lcom/android/server/search/Searchables;
    if-nez v2, :cond_3e

    .line 100
    new-instance v2, Lcom/android/server/search/Searchables;

    .end local v2    # "searchables":Lcom/android/server/search/Searchables;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p1}, Lcom/android/server/search/Searchables;-><init>(Landroid/content/Context;I)V

    .line 101
    .restart local v2    # "searchables":Lcom/android/server/search/Searchables;
    invoke-virtual {v2}, Lcom/android/server/search/Searchables;->buildSearchableList()V

    .line 102
    iget-object v4, p0, mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 104
    :cond_3e
    monitor-exit v5

    goto :goto_1c

    .line 105
    .end local v2    # "searchables":Lcom/android/server/search/Searchables;
    :catchall_40
    move-exception v4

    monitor-exit v5
    :try_end_42
    .catchall {:try_start_25 .. :try_end_42} :catchall_40

    throw v4

    .line 93
    .end local v3    # "userExists":Z
    :catchall_43
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private onUserRemoved(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 109
    if-eqz p1, :cond_b

    .line 110
    iget-object v1, p0, mSearchables:Landroid/util/SparseArray;

    monitor-enter v1

    .line 111
    :try_start_5
    iget-object v0, p0, mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 112
    monitor-exit v1

    .line 114
    :cond_b
    return-void

    .line 112
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 307
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "SearchManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 310
    .local v1, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v3, p0, mSearchables:Landroid/util/SparseArray;

    monitor-enter v3

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    :try_start_14
    iget-object v2, p0, mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3e

    .line 312
    const-string v2, "\nUser: "

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 313
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 314
    iget-object v2, p0, mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/search/Searchables;

    invoke-virtual {v2, p1, v1, p3}, Lcom/android/server/search/Searchables;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 315
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 317
    :cond_3e
    monitor-exit v3

    .line 318
    return-void

    .line 317
    :catchall_40
    move-exception v2

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_14 .. :try_end_42} :catchall_40

    throw v2
.end method

.method public getGlobalSearchActivities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getGlobalSearchActivities()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalSearchActivity()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 242
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .registers 4
    .param p1, "launchActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 212
    if-nez p1, :cond_c

    .line 213
    const-string v0, "SearchManagerService"

    const-string/jumbo v1, "getSearchableInfo(), activity == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x0

    .line 216
    :goto_b
    return-object v0

    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/search/Searchables;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    goto :goto_b
.end method

.method public getSearchablesInGlobalSearch()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getSearchablesInGlobalSearchList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSearchablesInInsightSearch(Z)Ljava/util/List;
    .registers 3
    .param p1, "includeGlobalSearch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/search/Searchables;->getSearchablesInInsightSearchList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWebSearchActivity()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 249
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public launchAssist(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 254
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 256
    .local v0, "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_d

    .line 257
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    .line 259
    :cond_d
    return-void
.end method

.method public launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 14
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-direct {p0, p2}, getLegacyAssistComponent(I)Landroid/content/ComponentName;

    move-result-object v6

    .line 288
    .local v6, "comp":Landroid/content/ComponentName;
    if-nez v6, :cond_8

    .line 302
    :goto_7
    return v2

    .line 291
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 293
    .local v8, "ident":J
    :try_start_c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ASSIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 295
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 296
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_21} :catch_26
    .catchall {:try_start_c .. :try_end_21} :catchall_2c

    move-result v2

    .line 300
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    .line 298
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_26
    move-exception v2

    .line 300
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 302
    const/4 v2, 0x1

    goto :goto_7

    .line 300
    :catchall_2c
    move-exception v2

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
