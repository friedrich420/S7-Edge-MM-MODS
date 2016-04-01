.class public final Landroid/webkit/CookieSyncManager;
.super Landroid/webkit/WebSyncManager;
.source "CookieSyncManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sGetInstanceAllowed:Z

.field private static sRef:Landroid/webkit/CookieSyncManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, sGetInstanceAllowed:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0, v0}, Landroid/webkit/WebSyncManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private static checkInstanceIsAllowed()V
    .registers 2

    .prologue
    .line 154
    sget-boolean v0, sGetInstanceAllowed:Z

    if-nez v0, :cond_c

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CookieSyncManager::createInstance() needs to be called before CookieSyncManager::getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_c
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const-class v1, Landroid/webkit/CookieSyncManager;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 95
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid context argument"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 94
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 97
    :cond_10
    :try_start_10
    invoke-static {}, setGetInstanceIsAllowed()V

    .line 98
    invoke-static {}, getInstance()Landroid/webkit/CookieSyncManager;
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_d

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getInstance()Landroid/webkit/CookieSyncManager;
    .registers 2

    .prologue
    .line 81
    const-class v1, Landroid/webkit/CookieSyncManager;

    monitor-enter v1

    :try_start_3
    invoke-static {}, checkInstanceIsAllowed()V

    .line 82
    sget-object v0, sRef:Landroid/webkit/CookieSyncManager;

    if-nez v0, :cond_11

    .line 83
    new-instance v0, Landroid/webkit/CookieSyncManager;

    invoke-direct {v0}, <init>()V

    sput-object v0, sRef:Landroid/webkit/CookieSyncManager;

    .line 85
    :cond_11
    sget-object v0, sRef:Landroid/webkit/CookieSyncManager;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static setGetInstanceIsAllowed()V
    .registers 1

    .prologue
    .line 147
    const/4 v0, 0x1

    sput-boolean v0, sGetInstanceAllowed:Z

    .line 148
    return-void
.end method


# virtual methods
.method public resetSync()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    return-void
.end method

.method public bridge synthetic run()V
    .registers 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->run()V

    return-void
.end method

.method public startSync()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    return-void
.end method

.method public stopSync()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    return-void
.end method

.method public sync()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 108
    return-void
.end method

.method protected syncFromRamToFlash()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 116
    return-void
.end method
