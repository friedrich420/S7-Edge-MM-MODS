.class Landroid/telecom/Connection$FailureSignalingConnection;
.super Landroid/telecom/Connection;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FailureSignalingConnection"
.end annotation


# instance fields
.field private mImmutable:Z


# direct methods
.method public constructor <init>(Landroid/telecom/DisconnectCause;)V
    .registers 3
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1871
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    .line 1870
    const/4 v0, 0x0

    iput-boolean v0, p0, mImmutable:Z

    .line 1872
    invoke-virtual {p0, p1}, setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 1873
    const/4 v0, 0x1

    iput-boolean v0, p0, mImmutable:Z

    .line 1874
    return-void
.end method


# virtual methods
.method public checkImmutable()V
    .registers 3

    .prologue
    .line 1877
    iget-boolean v0, p0, mImmutable:Z

    if-eqz v0, :cond_c

    .line 1878
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Connection is immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1880
    :cond_c
    return-void
.end method
