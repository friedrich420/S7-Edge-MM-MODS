.class final Lcom/sec/epdg/EpdgService$EpdgContentObserver;
.super Lcom/sec/epdg/EpdgContentObserverBase;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EpdgContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1933
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    .line 1934
    invoke-direct {p0, p2}, Lcom/sec/epdg/EpdgContentObserverBase;-><init>(Landroid/os/Handler;)V

    .line 1935
    return-void
.end method


# virtual methods
.method public onChangeSlowPath(ZLandroid/net/Uri;)V
    .registers 15
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1939
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    if-nez p2, :cond_1d

    .line 1963
    :cond_1c
    :goto_1c
    return-void

    .line 1944
    :cond_1d
    sget-object v0, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1946
    new-instance v0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;

    iget-object v1, p0, this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1200()Landroid/os/Handler;

    move-result-object v2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;ZZZ)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1c

    .line 1947
    :cond_37
    sget-object v0, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1951
    new-instance v6, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;

    iget-object v7, p0, this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1200()Landroid/os/Handler;

    move-result-object v8

    move v9, v5

    move v10, v5

    move v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;ZZZ)V

    new-array v0, v5, [Ljava/lang/Void;

    invoke-virtual {v6, v0}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1c

    .line 1952
    :cond_53
    sget-object v0, Lcom/sec/epdg/EpdgWfcProfileReader;->CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1956
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$1900(Lcom/sec/epdg/EpdgService;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1957
    new-instance v0, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    iget-object v1, p0, this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1200()Landroid/os/Handler;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    # setter for: Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$2702(Lcom/sec/epdg/EpdgService$WfcProfileTask;)Lcom/sec/epdg/EpdgService$WfcProfileTask;

    .line 1958
    # getter for: Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgService$WfcProfileTask;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1c

    .line 1961
    :cond_83
    new-instance v0, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    iget-object v1, p0, this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1200()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1c
.end method
