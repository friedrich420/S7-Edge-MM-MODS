.class Lcom/android/server/LSManager$SetLockedInThread;
.super Ljava/lang/Object;
.source "LSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetLockedInThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LSManager;


# direct methods
.method private constructor <init>(Lcom/android/server/LSManager;)V
    .registers 2

    .prologue
    .line 647
    iput-object p1, p0, this$0:Lcom/android/server/LSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LSManager;Lcom/android/server/LSManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/LSManager;
    .param p2, "x1"    # Lcom/android/server/LSManager$1;

    .prologue
    .line 647
    invoke-direct {p0, p1}, <init>(Lcom/android/server/LSManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 650
    iget-object v3, p0, this$0:Lcom/android/server/LSManager;

    const-string v4, "SetLockedInThread.run()"

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 651
    const-wide/16 v0, 0x0

    .line 653
    .local v0, "completedCount":J
    :cond_b
    # getter for: Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/android/server/LSManager;->access$100()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v0

    .line 657
    :try_start_13
    iget-object v3, p0, this$0:Lcom/android/server/LSManager;

    const-string/jumbo v4, "l:Going to wait 666 ms..."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 658
    const-wide/16 v4, 0x29a

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_20} :catch_b3

    .line 680
    :goto_20
    iget-object v3, p0, this$0:Lcom/android/server/LSManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "l:mSetPasswordExecutor.getQueue().size() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/android/server/LSManager;->access$100()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 681
    iget-object v3, p0, this$0:Lcom/android/server/LSManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "l:mSetPasswordExecutor.getActiveCount() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/android/server/LSManager;->access$100()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 682
    # getter for: Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/android/server/LSManager;->access$100()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    if-gtz v3, :cond_b

    # getter for: Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/android/server/LSManager;->access$100()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v3

    if-gtz v3, :cond_b

    .line 684
    iget-object v3, p0, this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->setLockedState(Z)V
    invoke-static {v3, v7}, Lcom/android/server/LSManager;->access$200(Lcom/android/server/LSManager;Z)V

    .line 685
    iget-object v3, p0, this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->isLockedState()Z
    invoke-static {v3}, Lcom/android/server/LSManager;->access$300(Lcom/android/server/LSManager;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 686
    iget-object v3, p0, this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->setPasswordReady(Z)V
    invoke-static {v3, v6}, Lcom/android/server/LSManager;->access$400(Lcom/android/server/LSManager;Z)V

    .line 687
    iget-object v3, p0, this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->passwordIsProtected()Z
    invoke-static {v3}, Lcom/android/server/LSManager;->access$500(Lcom/android/server/LSManager;)Z

    move-result v3

    if-eqz v3, :cond_b9

    iget-object v3, p0, this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->secretIsReady()Z
    invoke-static {v3}, Lcom/android/server/LSManager;->access$600(Lcom/android/server/LSManager;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 688
    # getter for: Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;
    invoke-static {}, Lcom/android/server/LSManager;->access$700()Landroid/os/storage/sensitive/SecureStorageLSM;

    move-result-object v3

    new-array v4, v6, [B

    new-array v5, v6, [B

    invoke-virtual {v3, v4, v5, v7}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([B[BI)I

    .line 689
    iget-object v3, p0, this$0:Lcom/android/server/LSManager;

    const-string v4, "Locked."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 694
    :cond_b2
    :goto_b2
    return-void

    .line 659
    :catch_b3
    move-exception v2

    .line 660
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_20

    .line 691
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_b9
    iget-object v3, p0, this$0:Lcom/android/server/LSManager;

    const-string v4, "Wait for pass."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    goto :goto_b2
.end method
