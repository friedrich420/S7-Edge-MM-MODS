.class Lcom/sec/epdg/EpdgService$MapconDatabaseTask;
.super Landroid/os/AsyncTask;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapconDatabaseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppPolicy:Z

.field private final mHandler:Landroid/os/Handler;

.field private mMapcon:Z

.field private mUpdate:Z

.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;ZZZ)V
    .registers 7
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "update"    # Z
    .param p4, "mapcon"    # Z
    .param p5, "appPolicy"    # Z

    .prologue
    .line 5628
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5629
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 5630
    iput-boolean p3, p0, mUpdate:Z

    .line 5631
    iput-boolean p4, p0, mMapcon:Z

    .line 5632
    iput-boolean p5, p0, mAppPolicy:Z

    .line 5633
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 5634
    return-void
.end method

.method private doExec()Ljava/lang/Boolean;
    .registers 7

    .prologue
    .line 5637
    const/4 v0, 0x0

    .line 5638
    .local v0, "ret":Z
    const-string v1, "[EPDGService]"

    const-string v2, "MapconDatabaseTask:doExec - started"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5639
    const-class v2, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;

    monitor-enter v2

    .line 5640
    :try_start_b
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v1

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, mMapcon:Z

    iget-boolean v5, p0, mAppPolicy:Z

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/epdg/mapcon/PolicyManager;->createPolicyTable(Landroid/content/Context;ZZ)Z

    move-result v0

    .line 5641
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_29

    .line 5642
    const-string v1, "[EPDGService]"

    const-string v2, "MapconDatabaseTask:doExec - completed"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5643
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v1

    .line 5641
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 5648
    const-string v0, "[EPDGService]"

    const-string v1, "MapconDatabaseTask:doInBackground - started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5649
    invoke-direct {p0}, doExec()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 5622
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 5654
    const-string v1, "[EPDGService]"

    const-string v2, "MapconDatabaseTask:onPostExecute - started"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5655
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, p0, mUpdate:Z

    if-eqz v1, :cond_24

    iget-boolean v1, p0, mMapcon:Z

    if-eqz v1, :cond_24

    .line 5656
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1200()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 5657
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5658
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5660
    .end local v0    # "msg":Landroid/os/Message;
    :cond_24
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5622
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
