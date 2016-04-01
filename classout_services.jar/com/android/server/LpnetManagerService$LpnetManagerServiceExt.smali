.class Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LpnetManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LpnetManagerServiceExt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;,
        Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerThread;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;

.field final synthetic this$0:Lcom/android/server/LpnetManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LpnetManagerService;)V
    .registers 6

    .prologue
    .line 2184
    iput-object p1, p0, this$0:Lcom/android/server/LpnetManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2185
    const-string v2, "LpnetManagerService"

    const-string v3, "LpnetManagerServiceExt is instantiated"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    new-instance v1, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerThread;

    const-string v2, "LpnetManagerWorker"

    invoke-direct {v1, p0, v2}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerThread;-><init>(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Ljava/lang/String;)V

    .line 2187
    .local v1, "mWorker":Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerThread;
    invoke-virtual {v1}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerThread;->start()V

    .line 2189
    const-wide/16 v2, 0xc8

    :try_start_18
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 2191
    :goto_1b
    return-void

    .line 2190
    :catch_1c
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1b
.end method

.method static synthetic access$5600(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 2181
    invoke-direct {p0, p1}, handleSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5802(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;)Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;
    .param p1, "x1"    # Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;

    .prologue
    .line 2181
    iput-object p1, p0, mHandler:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;

    return-object p1
.end method

.method private handleSendMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2194
    iget-object v0, p0, mHandler:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2195
    return-void
.end method
