.class public Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;
.super Landroid/os/AsyncTask;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartWifiTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/concurrent/Callable;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mReturnRunnable:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;)V
    .registers 5
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "r"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;

    .prologue
    .line 1450
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1451
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 1452
    iput-object p3, p0, mReturnRunnable:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;

    .line 1453
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 1454
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/concurrent/Callable;)Ljava/lang/Boolean;
    .registers 9
    .param p1, "cbs"    # [Ljava/util/concurrent/Callable;

    .prologue
    .line 1464
    move-object v0, p1

    .local v0, "arr$":[Ljava/util/concurrent/Callable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v4, :cond_26

    aget-object v1, v0, v3

    .line 1465
    .local v1, "cb":Ljava/util/concurrent/Callable;
    const-string v5, "[SMARTWIFI]"

    const-string/jumbo v6, "doInBackground"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    :try_start_f
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_15} :catch_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_21

    .line 1474
    .end local v1    # "cb":Ljava/util/concurrent/Callable;
    :goto_15
    return-object v5

    .line 1468
    .restart local v1    # "cb":Ljava/util/concurrent/Callable;
    :catch_16
    move-exception v2

    .line 1469
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v5, "[SMARTWIFI]"

    const-string v6, "InterruptedException smarwifitask"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1470
    :catch_21
    move-exception v2

    .line 1471
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    .line 1474
    .end local v1    # "cb":Ljava/util/concurrent/Callable;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_26
    new-instance v5, Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_15
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1446
    check-cast p1, [Ljava/util/concurrent/Callable;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, doInBackground([Ljava/util/concurrent/Callable;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "ret"    # Ljava/lang/Boolean;

    .prologue
    .line 1479
    const-string v0, "[SMARTWIFI]"

    const-string/jumbo v1, "onPostExecute"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p0}, isCancelled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1481
    const-string v0, "[SMARTWIFI]"

    const-string/jumbo v1, "result for cancelled task.. ignore"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    :goto_16
    return-void

    .line 1484
    :cond_17
    iget-object v0, p0, mReturnRunnable:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;->setReturn(Z)V

    .line 1485
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mReturnRunnable:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1486
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mOutStandingTasks:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1446
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .prologue
    .line 1458
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mOutStandingTasks:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1459
    return-void
.end method
