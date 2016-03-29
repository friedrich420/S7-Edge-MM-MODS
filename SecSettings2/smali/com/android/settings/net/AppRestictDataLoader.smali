.class public Lcom/android/settings/net/AppRestictDataLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AppRestictDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/net/NetworkStatsHistory;",
        ">;"
    }
.end annotation


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mSession:Landroid/net/INetworkStatsSession;

.field public uid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Landroid/net/INetworkStatsSession;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/android/settings/net/AppRestictDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    .line 51
    iput-object p3, p0, Lcom/android/settings/net/AppRestictDataLoader;->mArgs:Landroid/os/Bundle;

    .line 52
    return-void
.end method

.method private collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "existing"    # Landroid/net/NetworkStatsHistory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/net/AppRestictDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v6

    .line 110
    .local v6, "history":Landroid/net/NetworkStatsHistory;
    return-object v6
.end method

.method private loadInBackground(Landroid/net/NetworkTemplate;II)Landroid/net/NetworkStatsHistory;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "fields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "data":Landroid/net/NetworkStatsHistory;
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/settings/net/AppRestictDataLoader;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 80
    return-object v0
.end method


# virtual methods
.method public loadInBackground()Landroid/net/NetworkStatsHistory;
    .locals 5

    .prologue
    .line 62
    iget-object v3, p0, Lcom/android/settings/net/AppRestictDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v4, "template"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 63
    .local v2, "template":Landroid/net/NetworkTemplate;
    iget-object v3, p0, Lcom/android/settings/net/AppRestictDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v4, "uid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/net/AppRestictDataLoader;->uid:I

    .line 64
    iget-object v3, p0, Lcom/android/settings/net/AppRestictDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v4, "fields"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 67
    .local v1, "fields":I
    :try_start_0
    iget v3, p0, Lcom/android/settings/net/AppRestictDataLoader;->uid:I

    invoke-direct {p0, v2, v3, v1}, Lcom/android/settings/net/AppRestictDataLoader;->loadInBackground(Landroid/net/NetworkTemplate;II)Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 68
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "problem reading network stats"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/net/AppRestictDataLoader;->loadInBackground()Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/net/AppRestictDataLoader;->cancelLoad()Z

    .line 92
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/net/AppRestictDataLoader;->forceLoad()V

    .line 58
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/net/AppRestictDataLoader;->cancelLoad()Z

    .line 87
    return-void
.end method
