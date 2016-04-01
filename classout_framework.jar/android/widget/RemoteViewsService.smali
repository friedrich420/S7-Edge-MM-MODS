.class public abstract Landroid/widget/RemoteViewsService;
.super Landroid/app/Service;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;,
        Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    }
.end annotation


# static fields
.field private static final DEBUG_LEVEL_HIGH:I = 0x4948

.field private static final DEBUG_LEVEL_LOW:I = 0x4f4c

.field private static final DEBUG_LEVEL_MID:I = 0x494d

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViewsService"

.field private static mNoProductShip:Z

.field private static final sLock:Ljava/lang/Object;

.field private static final sRemoteViewFactories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sRemoteViewFactories:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sLock:Ljava/lang/Object;

    .line 47
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_15
    sput-boolean v0, mNoProductShip:Z

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 139
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 35
    sget-boolean v0, mNoProductShip:Z

    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 35
    invoke-static {}, getDebugLevel()I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 35
    sget-object v0, sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 35
    sget-object v0, sRemoteViewFactories:Ljava/util/HashMap;

    return-object v0
.end method

.method private static getDebugLevel()I
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 273
    const-string/jumbo v5, "ro.debug_level"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "state":Ljava/lang/String;
    const/4 v0, -0x1

    .line 277
    .local v0, "debugLevel":I
    const-string v5, "Unknown"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 294
    :cond_14
    :goto_14
    return v3

    .line 281
    :cond_15
    const/4 v5, 0x2

    :try_start_16
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1f} :catch_2a

    move-result v0

    .line 286
    const/16 v5, 0x4f4c

    if-eq v0, v5, :cond_14

    .line 288
    const/16 v5, 0x494d

    if-ne v0, v5, :cond_2c

    .line 289
    const/4 v3, 0x1

    goto :goto_14

    .line 282
    :catch_2a
    move-exception v1

    .line 283
    .local v1, "ne":Ljava/lang/NumberFormatException;
    goto :goto_14

    .line 290
    .end local v1    # "ne":Ljava/lang/NumberFormatException;
    :cond_2c
    const/16 v5, 0x4948

    if-ne v0, v5, :cond_14

    move v3, v4

    .line 291
    goto :goto_14
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 249
    sget-object v4, sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 250
    :try_start_3
    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 251
    .local v1, "fc":Landroid/content/Intent$FilterComparison;
    const/4 v0, 0x0

    .line 252
    .local v0, "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    const/4 v2, 0x0

    .line 253
    .local v2, "isCreated":Z
    sget-object v3, sRemoteViewFactories:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 254
    invoke-virtual {p0, p1}, onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    move-result-object v0

    .line 255
    sget-object v3, sRemoteViewFactories:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onCreate()V

    .line 257
    const/4 v2, 0x0

    .line 262
    :goto_1f
    new-instance v3, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;

    invoke-direct {v3, v0, v2}, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;-><init>(Landroid/widget/RemoteViewsService$RemoteViewsFactory;Z)V

    monitor-exit v4

    return-object v3

    .line 259
    :cond_26
    sget-object v3, sRemoteViewFactories:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    check-cast v0, Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    .line 260
    .restart local v0    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    const/4 v2, 0x1

    goto :goto_1f

    .line 263
    .end local v0    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .end local v1    # "fc":Landroid/content/Intent$FilterComparison;
    .end local v2    # "isCreated":Z
    :catchall_30
    move-exception v3

    monitor-exit v4
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v3
.end method

.method public abstract onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.end method
