.class public Lcom/samsung/android/contextaware/aggregator/InterruptAggregator;
.super Lcom/samsung/android/contextaware/manager/InterruptContextProvider;
.source "InterruptAggregator.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/manager/ContextComponent;)V
    .registers 2
    .param p1, "provider"    # Lcom/samsung/android/contextaware/manager/ContextComponent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;-><init>(Lcom/samsung/android/contextaware/manager/ContextComponent;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 50
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 51
    iget-object v2, p0, mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/Aggregator;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    .line 52
    iget-object v2, p0, mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/Aggregator;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->registerObserver()V

    .line 54
    iget-object v2, p0, mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/Aggregator;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 55
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 57
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_1d

    .line 58
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_1d

    .line 62
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    :cond_2f
    invoke-super {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 63
    return-void
.end method

.method public final stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 74
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 75
    iget-object v2, p0, mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/Aggregator;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    .line 77
    iget-object v2, p0, mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/Aggregator;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 78
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 80
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_16

    .line 81
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_16

    .line 85
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    :cond_28
    invoke-super {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/InterruptContextProvider;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 86
    return-void
.end method
