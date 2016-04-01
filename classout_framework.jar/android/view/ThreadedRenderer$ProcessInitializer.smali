.class Landroid/view/ThreadedRenderer$ProcessInitializer;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInitializer"
.end annotation


# static fields
.field static sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

.field private static sProcToken:Landroid/os/IBinder;


# instance fields
.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 482
    new-instance v0, Landroid/view/ThreadedRenderer$ProcessInitializer;

    invoke-direct {v0}, <init>()V

    sput-object v0, sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, mInitialized:Z

    .line 487
    return-void
.end method

.method private static initAssetAtlas(Landroid/content/Context;J)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderProxy"    # J

    .prologue
    .line 514
    const-string v5, "assetatlas"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 515
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_9

    .line 537
    :cond_8
    :goto_8
    return-void

    .line 517
    :cond_9
    invoke-static {v1}, Landroid/view/IAssetAtlas$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAssetAtlas;

    move-result-object v0

    .line 519
    .local v0, "atlas":Landroid/view/IAssetAtlas;
    :try_start_d
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/IAssetAtlas;->isCompatible(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 520
    invoke-interface {v0}, Landroid/view/IAssetAtlas;->getBuffer()Landroid/view/GraphicBuffer;

    move-result-object v2

    .line 521
    .local v2, "buffer":Landroid/view/GraphicBuffer;
    if-eqz v2, :cond_8

    .line 522
    invoke-interface {v0}, Landroid/view/IAssetAtlas;->getMap()[J

    move-result-object v4

    .line 523
    .local v4, "map":[J
    if-eqz v4, :cond_26

    .line 524
    # invokes: Landroid/view/ThreadedRenderer;->nSetAtlas(JLandroid/view/GraphicBuffer;[J)V
    invoke-static {p1, p2, v2, v4}, Landroid/view/ThreadedRenderer;->access$100(JLandroid/view/GraphicBuffer;[J)V

    .line 529
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_8

    .line 530
    invoke-virtual {v2}, Landroid/view/GraphicBuffer;->destroy()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_33} :catch_34

    goto :goto_8

    .line 534
    .end local v2    # "buffer":Landroid/view/GraphicBuffer;
    .end local v4    # "map":[J
    :catch_34
    move-exception v3

    .line 535
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "HardwareRenderer"

    const-string v6, "Could not acquire atlas"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method private static initGraphicsStats(Landroid/content/Context;J)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderProxy"    # J

    .prologue
    .line 498
    :try_start_0
    const-string v5, "graphicsstats"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 499
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_9

    .line 511
    .end local v0    # "binder":Landroid/os/IBinder;
    :goto_8
    return-void

    .line 500
    .restart local v0    # "binder":Landroid/os/IBinder;
    :cond_9
    invoke-static {v0}, Landroid/view/IGraphicsStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGraphicsStats;

    move-result-object v1

    .line 502
    .local v1, "graphicsStatsService":Landroid/view/IGraphicsStats;
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    sput-object v5, sProcToken:Landroid/os/IBinder;

    .line 503
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 504
    .local v3, "pkg":Ljava/lang/String;
    sget-object v5, sProcToken:Landroid/os/IBinder;

    invoke-interface {v1, v3, v5}, Landroid/view/IGraphicsStats;->requestBufferForProcess(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 506
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    # invokes: Landroid/view/ThreadedRenderer;->nSetProcessStatsBuffer(JI)V
    invoke-static {p1, p2, v5}, Landroid/view/ThreadedRenderer;->access$000(JI)V

    .line 507
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_8

    .line 508
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "graphicsStatsService":Landroid/view/IGraphicsStats;
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "pkg":Ljava/lang/String;
    :catch_2b
    move-exception v4

    .line 509
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "HardwareRenderer"

    const-string v6, "Could not acquire gfx stats buffer"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method


# virtual methods
.method declared-synchronized init(Landroid/content/Context;J)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderProxy"    # J

    .prologue
    .line 490
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_7

    .line 494
    :goto_5
    monitor-exit p0

    return-void

    .line 491
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, mInitialized:Z

    .line 492
    invoke-static {p1, p2, p3}, initGraphicsStats(Landroid/content/Context;J)V

    .line 493
    invoke-static {p1, p2, p3}, initAssetAtlas(Landroid/content/Context;J)V
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_5

    .line 490
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
