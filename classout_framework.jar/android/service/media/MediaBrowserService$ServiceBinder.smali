.class Landroid/service/media/MediaBrowserService$ServiceBinder;
.super Landroid/service/media/IMediaBrowserService$Stub;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/MediaBrowserService;


# direct methods
.method private constructor <init>(Landroid/service/media/MediaBrowserService;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, this$0:Landroid/service/media/MediaBrowserService;

    invoke-direct {p0}, Landroid/service/media/IMediaBrowserService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p2, "x1"    # Landroid/service/media/MediaBrowserService$1;

    .prologue
    .line 162
    invoke-direct {p0, p1}, <init>(Landroid/service/media/MediaBrowserService;)V

    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .prologue
    .line 234
    iget-object v0, p0, this$0:Landroid/service/media/MediaBrowserService;

    # getter for: Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->access$300(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$3;

    invoke-direct {v1, p0, p2, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder$3;-><init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method

.method public connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rootHints"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 168
    .local v5, "uid":I
    iget-object v0, p0, this$0:Landroid/service/media/MediaBrowserService;

    # invokes: Landroid/service/media/MediaBrowserService;->isValidPackage(Ljava/lang/String;I)Z
    invoke-static {v0, p1, v5}, Landroid/service/media/MediaBrowserService;->access$000(Landroid/service/media/MediaBrowserService;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package/uid mismatch: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2f
    iget-object v0, p0, this$0:Landroid/service/media/MediaBrowserService;

    # getter for: Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->access$300(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/service/media/MediaBrowserService$ServiceBinder$1;-><init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method

.method public disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .prologue
    .line 217
    iget-object v0, p0, this$0:Landroid/service/media/MediaBrowserService;

    # getter for: Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->access$300(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$2;

    invoke-direct {v1, p0, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder$2;-><init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method

.method public getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 276
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_9

    .line 286
    :cond_8
    :goto_8
    return-void

    .line 280
    :cond_9
    iget-object v0, p0, this$0:Landroid/service/media/MediaBrowserService;

    # getter for: Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->access$300(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/media/MediaBrowserService$ServiceBinder$5;-><init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method public removeSubscription(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .prologue
    .line 255
    iget-object v0, p0, this$0:Landroid/service/media/MediaBrowserService;

    # getter for: Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->access$300(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$4;

    invoke-direct {v1, p0, p2, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder$4;-><init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void
.end method
