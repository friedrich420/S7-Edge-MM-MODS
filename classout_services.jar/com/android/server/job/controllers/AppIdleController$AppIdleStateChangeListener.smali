.class Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "AppIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/AppIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppIdleStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/AppIdleController;


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/AppIdleController;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, this$0:Lcom/android/server/job/controllers/AppIdleController;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/AppIdleController;Lcom/android/server/job/controllers/AppIdleController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/job/controllers/AppIdleController;
    .param p2, "x1"    # Lcom/android/server/job/controllers/AppIdleController$1;

    .prologue
    .line 126
    invoke-direct {p0, p1}, <init>(Lcom/android/server/job/controllers/AppIdleController;)V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZ)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "changed":Z
    iget-object v3, p0, this$0:Lcom/android/server/job/controllers/AppIdleController;

    iget-object v6, v3, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v6

    .line 132
    :try_start_8
    iget-object v3, p0, this$0:Lcom/android/server/job/controllers/AppIdleController;

    iget-boolean v3, v3, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    if-eqz v3, :cond_10

    .line 133
    monitor-exit v6

    .line 152
    :cond_f
    :goto_f
    return-void

    .line 135
    :cond_10
    iget-object v3, p0, this$0:Lcom/android/server/job/controllers/AppIdleController;

    iget-object v3, v3, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 136
    .local v2, "task":Lcom/android/server/job/controllers/JobStatus;
    iget-object v3, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_18

    .line 138
    iget-object v3, v2, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez p3, :cond_4f

    move v3, v4

    :goto_43
    if-eq v7, v3, :cond_18

    .line 143
    iget-object v7, v2, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p3, :cond_51

    move v3, v4

    :goto_4a
    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 144
    const/4 v0, 0x1

    goto :goto_18

    :cond_4f
    move v3, v5

    .line 138
    goto :goto_43

    :cond_51
    move v3, v5

    .line 143
    goto :goto_4a

    .line 148
    .end local v2    # "task":Lcom/android/server/job/controllers/JobStatus;
    :cond_53
    monitor-exit v6
    :try_end_54
    .catchall {:try_start_8 .. :try_end_54} :catchall_5e

    .line 149
    if-eqz v0, :cond_f

    .line 150
    iget-object v3, p0, this$0:Lcom/android/server/job/controllers/AppIdleController;

    iget-object v3, v3, Lcom/android/server/job/controllers/AppIdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v3}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    goto :goto_f

    .line 148
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_5e
    move-exception v3

    :try_start_5f
    monitor-exit v6
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v3
.end method

.method public onParoleStateChanged(Z)V
    .registers 3
    .param p1, "isParoleOn"    # Z

    .prologue
    .line 159
    iget-object v0, p0, this$0:Lcom/android/server/job/controllers/AppIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/AppIdleController;->setAppIdleParoleOn(Z)V

    .line 160
    return-void
.end method
