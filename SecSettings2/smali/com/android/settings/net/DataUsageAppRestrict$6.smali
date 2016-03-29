.class Lcom/android/settings/net/DataUsageAppRestrict$6;
.super Ljava/lang/Object;
.source "DataUsageAppRestrict.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/net/DataUsageAppRestrict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/net/NetworkStatsHistory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/net/DataUsageAppRestrict;


# direct methods
.method constructor <init>(Lcom/android/settings/net/DataUsageAppRestrict;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$6;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    new-instance v0, Lcom/android/settings/net/AppRestictDataLoader;

    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$6;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    invoke-virtual {v1}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$6;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/settings/net/DataUsageAppRestrict;->access$600(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/net/AppRestictDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStatsHistory;)V
    .locals 2
    .param p2, "data"    # Landroid/net/NetworkStatsHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStatsHistory;",
            ">;",
            "Landroid/net/NetworkStatsHistory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStatsHistory;>;"
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$6;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mBackGroundDataMap:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/android/settings/net/DataUsageAppRestrict;->access$800(Lcom/android/settings/net/DataUsageAppRestrict;)Ljava/util/LinkedHashMap;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/net/AppRestictDataLoader;

    iget v0, v0, Lcom/android/settings/net/AppRestictDataLoader;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$6;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # invokes: Lcom/android/settings/net/DataUsageAppRestrict;->checkLoadedAppNum()V
    invoke-static {v0}, Lcom/android/settings/net/DataUsageAppRestrict;->access$900(Lcom/android/settings/net/DataUsageAppRestrict;)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$6;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    # invokes: Lcom/android/settings/net/DataUsageAppRestrict;->DestroyLoader(I)V
    invoke-static {v0, v1}, Lcom/android/settings/net/DataUsageAppRestrict;->access$700(Lcom/android/settings/net/DataUsageAppRestrict;I)V

    .line 503
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 477
    check-cast p2, Landroid/net/NetworkStatsHistory;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/net/DataUsageAppRestrict$6;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStatsHistory;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStatsHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStatsHistory;>;"
    return-void
.end method
