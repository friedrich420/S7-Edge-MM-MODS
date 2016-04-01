.class public abstract Landroid/service/media/MediaBrowserService;
.super Landroid/app/Service;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/media/MediaBrowserService$BrowserRoot;,
        Landroid/service/media/MediaBrowserService$ServiceBinder;,
        Landroid/service/media/MediaBrowserService$Result;,
        Landroid/service/media/MediaBrowserService$ConnectionRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final KEY_MEDIA_ITEM:Ljava/lang/String; = "media_item"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.browse.MediaBrowserService"

.field private static final TAG:Ljava/lang/String; = "MediaBrowserService"


# instance fields
.field private mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field private final mConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/media/MediaBrowserService$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mSession:Landroid/media/session/MediaSession$Token;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 85
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mConnections:Landroid/util/ArrayMap;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 526
    return-void
.end method

.method static synthetic access$000(Landroid/service/media/MediaBrowserService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, isValidPackage(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;

    .prologue
    .line 68
    iget-object v0, p0, mConnections:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;

    .prologue
    .line 68
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .registers 3
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, addSubscription(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    return-void
.end method

.method static synthetic access$500(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 3
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/ResultReceiver;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, performLoadItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$700(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .registers 3
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    return-void
.end method

.method private addSubscription(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .prologue
    .line 456
    iget-object v0, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-direct {p0, p1, p2}, performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 460
    return-void
.end method

.method private isValidPackage(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 437
    if-nez p1, :cond_4

    .line 448
    :cond_3
    :goto_3
    return v4

    .line 440
    :cond_4
    invoke-virtual {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 441
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "packages":[Ljava/lang/String;
    array-length v0, v2

    .line 443
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_3

    .line 444
    aget-object v5, v2, v1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 445
    const/4 v4, 0x1

    goto :goto_3

    .line 443
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .registers 7
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .prologue
    .line 468
    new-instance v0, Landroid/service/media/MediaBrowserService$3;

    invoke-direct {v0, p0, p1, p1, p2}, Landroid/service/media/MediaBrowserService$3;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 495
    .local v0, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    invoke-virtual {p0, p1, v0}, onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    .line 497
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->isDone()Z

    move-result v1

    if-nez v1, :cond_34

    .line 498
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    :cond_34
    return-void
.end method

.method private performLoadItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 7
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 504
    new-instance v0, Landroid/service/media/MediaBrowserService$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/media/MediaBrowserService$4;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;Landroid/os/ResultReceiver;)V

    .line 514
    .local v0, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    invoke-virtual {p0, p1, v0}, onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    .line 516
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->isDone()Z

    move-result v1

    if-nez v1, :cond_28

    .line 517
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 520
    :cond_28
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 305
    return-void
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, mSession:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "parentId"    # Ljava/lang/String;

    .prologue
    .line 417
    if-nez p1, :cond_b

    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_b
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/media/MediaBrowserService$2;

    invoke-direct {v1, p0, p1}, Landroid/service/media/MediaBrowserService$2;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 431
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 297
    const-string v0, "android.media.browse.MediaBrowserService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 298
    iget-object v0, p0, mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

    .line 300
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 292
    new-instance v0, Landroid/service/media/MediaBrowserService$ServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/media/MediaBrowserService$ServiceBinder;-><init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$1;)V

    iput-object v0, p0, mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

    .line 293
    return-void
.end method

.method public abstract onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .registers 4
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    .line 365
    return-void
.end method

.method public setSessionToken(Landroid/media/session/MediaSession$Token;)V
    .registers 4
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    .prologue
    .line 376
    if-nez p1, :cond_a

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session token may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_a
    iget-object v0, p0, mSession:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_16

    .line 380
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The session token has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_16
    iput-object p1, p0, mSession:Landroid/media/session/MediaSession$Token;

    .line 383
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/media/MediaBrowserService$1;

    invoke-direct {v1, p0, p1}, Landroid/service/media/MediaBrowserService$1;-><init>(Landroid/service/media/MediaBrowserService;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    return-void
.end method
