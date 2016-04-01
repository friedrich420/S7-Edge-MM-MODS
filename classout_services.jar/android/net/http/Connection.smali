.class abstract Landroid/net/http/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# instance fields
.field protected mCertificate:Landroid/net/http/SslCertificate;

.field protected mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
