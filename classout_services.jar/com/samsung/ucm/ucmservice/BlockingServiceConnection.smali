.class public Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;
.super Ljava/lang/Object;
.source "BlockingServiceConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final context:Landroid/content/Context;

.field private final service:Landroid/os/IBinder;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceConnection"    # Landroid/content/ServiceConnection;
    .param p3, "service"    # Landroid/os/IBinder;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, serviceConnection:Landroid/content/ServiceConnection;

    .line 29
    iput-object p3, p0, service:Landroid/os/IBinder;

    .line 30
    return-void
.end method

.method public static bindAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 77
    if-nez p0, :cond_b

    .line 78
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "context == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_b
    if-nez p1, :cond_16

    .line 81
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "intent == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_16
    invoke-static {p0}, ensureNotOnMainThread(Landroid/content/Context;)V

    .line 84
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 85
    .local v2, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/os/IBinder;>;"
    new-instance v1, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;

    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 106
    .local v1, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    invoke-virtual {p0, p1, v1, v3, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 108
    .local v0, "isBound":Z
    if-nez v0, :cond_42

    .line 109
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not bind to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 111
    :cond_42
    new-instance v4, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-direct {v4, p0, v1, v3}, <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/IBinder;)V

    return-object v4
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 118
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 119
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_14
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, context:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 49
    :goto_4
    return-void

    .line 44
    :cond_5
    :try_start_5
    iget-object v0, p0, context:Landroid/content/Context;

    iget-object v1, p0, serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_4

    .line 46
    :catch_d
    move-exception v0

    goto :goto_4
.end method

.method public getService()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, service:Landroid/os/IBinder;

    return-object v0
.end method
