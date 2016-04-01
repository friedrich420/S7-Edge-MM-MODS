.class Landroid/service/media/MediaBrowserService$ServiceBinder$1;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService$ServiceBinder;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field final synthetic val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rootHints:Landroid/os/Bundle;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 6

    .prologue
    .line 173
    iput-object p1, p0, this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iput-object p2, p0, val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object p3, p0, val$pkg:Ljava/lang/String;

    iput-object p4, p0, val$rootHints:Landroid/os/Bundle;

    iput p5, p0, val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 176
    iget-object v3, p0, val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v3}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 179
    .local v0, "b":Landroid/os/IBinder;
    iget-object v3, p0, this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v3, v3, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    # getter for: Landroid/service/media/MediaBrowserService;->mConnections:Landroid/util/ArrayMap;
    invoke-static {v3}, Landroid/service/media/MediaBrowserService;->access$100(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v3, p0, this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v3, v3, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/service/media/MediaBrowserService$ConnectionRecord;-><init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$1;)V

    .line 182
    .local v1, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    iget-object v3, p0, val$pkg:Ljava/lang/String;

    iput-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    .line 183
    iget-object v3, p0, val$rootHints:Landroid/os/Bundle;

    iput-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    .line 184
    iget-object v3, p0, val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 186
    iget-object v3, p0, this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v3, v3, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    iget-object v4, p0, val$pkg:Ljava/lang/String;

    iget v5, p0, val$uid:I

    iget-object v6, p0, val$rootHints:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5, v6}, Landroid/service/media/MediaBrowserService;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;

    move-result-object v3

    iput-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 189
    iget-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    if-nez v3, :cond_89

    .line 190
    const-string v3, "MediaBrowserService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No root for client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :try_start_67
    iget-object v3, p0, val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v3}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnectFailed()V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6c} :catch_6d

    .line 211
    :cond_6c
    :goto_6c
    return-void

    .line 194
    :catch_6d
    move-exception v2

    .line 195
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MediaBrowserService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 200
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_89
    :try_start_89
    iget-object v3, p0, this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v3, v3, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    # getter for: Landroid/service/media/MediaBrowserService;->mConnections:Landroid/util/ArrayMap;
    invoke-static {v3}, Landroid/service/media/MediaBrowserService;->access$100(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v3, p0, this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v3, v3, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    iget-object v3, v3, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    if-eqz v3, :cond_6c

    .line 202
    iget-object v3, p0, val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iget-object v4, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v4}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v5, v5, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    iget-object v5, v5, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    iget-object v6, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v6}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_b3} :catch_b4

    goto :goto_6c

    .line 205
    :catch_b4
    move-exception v2

    .line 206
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v3, "MediaBrowserService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onConnect() failed. Dropping client. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v3, p0, this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v3, v3, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    # getter for: Landroid/service/media/MediaBrowserService;->mConnections:Landroid/util/ArrayMap;
    invoke-static {v3}, Landroid/service/media/MediaBrowserService;->access$100(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c
.end method
