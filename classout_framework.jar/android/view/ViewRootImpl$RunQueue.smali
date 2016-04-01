.class final Landroid/view/ViewRootImpl$RunQueue;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    }
.end annotation


# instance fields
.field private final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl$RunQueue$HandlerAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 8526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mActions:Ljava/util/ArrayList;

    .line 8570
    return-void
.end method


# virtual methods
.method executeActions(Landroid/os/Handler;)V
    .registers 10
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 8557
    iget-object v5, p0, mActions:Ljava/util/ArrayList;

    monitor-enter v5

    .line 8558
    :try_start_3
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    .line 8559
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8561
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v1, :cond_1c

    .line 8562
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;

    .line 8563
    .local v2, "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    iget-object v4, v2, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    iget-wide v6, v2, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->delay:J

    invoke-virtual {p1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8561
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 8566
    .end local v2    # "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8567
    monitor-exit v5

    .line 8568
    return-void

    .line 8567
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    :catchall_21
    move-exception v4

    monitor-exit v5
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v4
.end method

.method post(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 8530
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, postDelayed(Ljava/lang/Runnable;J)V

    .line 8531
    return-void
.end method

.method postDelayed(Ljava/lang/Runnable;J)V
    .registers 8
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 8534
    new-instance v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;-><init>(Landroid/view/ViewRootImpl$1;)V

    .line 8535
    .local v0, "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    iput-object p1, v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 8536
    iput-wide p2, v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->delay:J

    .line 8538
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 8539
    :try_start_d
    iget-object v1, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8540
    monitor-exit v2

    .line 8541
    return-void

    .line 8540
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v1
.end method

.method removeCallbacks(Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 8544
    new-instance v1, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;-><init>(Landroid/view/ViewRootImpl$1;)V

    .line 8545
    .local v1, "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    iput-object p1, v1, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 8547
    iget-object v3, p0, mActions:Ljava/util/ArrayList;

    monitor-enter v3

    .line 8548
    :try_start_b
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    .line 8550
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    :cond_d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 8553
    monitor-exit v3

    .line 8554
    return-void

    .line 8553
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    :catchall_15
    move-exception v2

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v2
.end method
