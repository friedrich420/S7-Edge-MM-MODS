.class Lcom/android/server/net/NetworkStatsService$7;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2

    .prologue
    .line 910
    iput-object p1, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 913
    const-string/jumbo v1, "from_quickboot"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 914
    .local v0, "fromQuickBoot":Z
    if-eqz v0, :cond_b

    .line 920
    :goto_a
    return-void

    .line 917
    :cond_b
    iget-object v1, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 918
    :try_start_12
    iget-object v1, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->shutdownLocked()V
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$1800(Lcom/android/server/net/NetworkStatsService;)V

    .line 919
    monitor-exit v2

    goto :goto_a

    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v1
.end method
