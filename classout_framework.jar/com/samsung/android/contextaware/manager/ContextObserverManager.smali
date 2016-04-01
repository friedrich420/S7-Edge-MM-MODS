.class Lcom/samsung/android/contextaware/manager/ContextObserverManager;
.super Ljava/lang/Object;
.source "ContextObserverManager.java"


# instance fields
.field private final mCmdProcessResultObservers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/IContextObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mCmdProcessResultObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method protected final notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 113
    iget-object v2, p0, mCmdProcessResultObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 114
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    .line 117
    .local v1, "observer":Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;
    if-eqz v1, :cond_6

    .line 118
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;->updateCmdProcessResult(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    .line 121
    .end local v1    # "observer":Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;
    :cond_18
    return-void
.end method

.method protected final notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 69
    iget-object v2, p0, mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/IContextObserver;

    .line 71
    .local v1, "observer":Lcom/samsung/android/contextaware/manager/IContextObserver;
    if-eqz v1, :cond_6

    .line 72
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/IContextObserver;->updateContext(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    .line 75
    .end local v1    # "observer":Lcom/samsung/android/contextaware/manager/IContextObserver;
    :cond_18
    return-void
.end method

.method protected final registerCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    .prologue
    .line 85
    if-eqz p1, :cond_f

    iget-object v0, p0, mCmdProcessResultObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 86
    iget-object v0, p0, mCmdProcessResultObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_f
    return-void
.end method

.method protected final registerObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;

    .prologue
    .line 43
    if-eqz p1, :cond_f

    iget-object v0, p0, mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 44
    iget-object v0, p0, mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_f
    return-void
.end method

.method protected final unregisterCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    .prologue
    .line 98
    if-eqz p1, :cond_f

    iget-object v0, p0, mCmdProcessResultObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 99
    iget-object v0, p0, mCmdProcessResultObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    :cond_f
    return-void
.end method

.method protected final unregisterObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;

    .prologue
    .line 55
    if-eqz p1, :cond_f

    iget-object v0, p0, mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 56
    iget-object v0, p0, mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    :cond_f
    return-void
.end method
