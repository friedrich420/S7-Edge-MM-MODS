.class Lcom/sec/epdg/EpdgService$WfcProfileTask;
.super Landroid/os/AsyncTask;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcProfileTask"
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
.field private final mHandler:Landroid/os/Handler;

.field private mSsid:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 5
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "ssid"    # Ljava/lang/String;

    .prologue
    .line 5719
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5720
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 5721
    iput-object p3, p0, mSsid:Ljava/lang/String;

    .line 5722
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 5723
    return-void
.end method

.method private doExec()Ljava/lang/Boolean;
    .registers 8

    .prologue
    .line 5726
    const-class v4, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    monitor-enter v4

    .line 5727
    const/4 v1, 0x0

    .line 5729
    .local v1, "status":Z
    :try_start_4
    invoke-static {}, Lcom/sec/epdg/EpdgWfcProfileReader;->getInstance()Lcom/sec/epdg/EpdgWfcProfileReader;

    move-result-object v3

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/epdg/EpdgWfcProfileReader;->checkWfcStatus(Landroid/content/Context;)I

    move-result v2

    .line 5730
    .local v2, "wfc_state":I
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "wifi_call_enable"

    const/4 v6, -0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_27

    .line 5732
    iget-object v3, p0, this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->setVowifiSetting(I)V
    invoke-static {v3, v2}, Lcom/sec/epdg/EpdgService;->access$10600(Lcom/sec/epdg/EpdgService;I)V

    .line 5734
    :cond_27
    invoke-static {}, Lcom/sec/epdg/EpdgWfcProfileReader;->getInstance()Lcom/sec/epdg/EpdgWfcProfileReader;

    move-result-object v3

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, mSsid:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/sec/epdg/EpdgWfcProfileReader;->checkWfcProfileStatus(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_34
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_34} :catch_54
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_34} :catch_63
    .catchall {:try_start_4 .. :try_end_34} :catchall_60

    move-result v1

    .line 5743
    .end local v2    # "wfc_state":I
    :goto_35
    :try_start_35
    const-string v3, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfcProfileTask:doInBackground - completed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5744
    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v1}, Ljava/lang/Boolean;-><init>(Z)V

    monitor-exit v4

    return-object v3

    .line 5735
    :catch_54
    move-exception v0

    .line 5736
    .local v0, "e":Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "[EPDGService]"

    const-string v5, "WfcProfileTask:doInBackground - CursorIndexOutOfBoundsException"

    invoke-static {v3, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5738
    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_35

    .line 5745
    .end local v0    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_60
    move-exception v3

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_35 .. :try_end_62} :catchall_60

    throw v3

    .line 5739
    :catch_63
    move-exception v0

    .line 5740
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_64
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 5741
    const-string v3, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled exception in reading Content Provider objects:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/epdg/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_64 .. :try_end_7f} :catchall_60

    goto :goto_35
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 5750
    const-string v0, "[EPDGService]"

    const-string v1, "WfcProfileTask:doInBackground - started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5751
    invoke-direct {p0}, doExec()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 5716
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 5756
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WfcProfileTask:onPostExecute: result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5760
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 5761
    const-string v1, "[EPDGService]"

    const-string v2, "AP WFC enable"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5765
    :goto_25
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1200()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 5766
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5767
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4a

    const/4 v1, 0x1

    :goto_38
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 5768
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5769
    const/4 v1, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$2702(Lcom/sec/epdg/EpdgService$WfcProfileTask;)Lcom/sec/epdg/EpdgService$WfcProfileTask;

    .line 5770
    return-void

    .line 5763
    .end local v0    # "msg":Landroid/os/Message;
    :cond_42
    const-string v1, "[EPDGService]"

    const-string v2, "AP WFC disable"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 5767
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_4a
    const/4 v1, 0x0

    goto :goto_38
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5716
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
