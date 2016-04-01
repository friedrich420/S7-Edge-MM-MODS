.class public Lcom/android/server/job/controllers/AppIdleController;
.super Lcom/android/server/job/controllers/StateController;
.source "AppIdleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/AppIdleController$1;,
        Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AppIdleController"

.field private static volatile sController:Lcom/android/server/job/controllers/AppIdleController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field mAppIdleParoleOn:Z

.field final mTrackedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sCreationLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V
    .registers 6
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTrackedTasks:Ljava/util/ArrayList;

    .line 59
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 60
    iget-object v0, p0, mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v0

    iput-boolean v0, p0, mAppIdleParoleOn:Z

    .line 61
    iget-object v0, p0, mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v1, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;-><init>(Lcom/android/server/job/controllers/AppIdleController;Lcom/android/server/job/controllers/AppIdleController$1;)V

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 62
    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/AppIdleController;
    .registers 4
    .param p0, "service"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    .line 49
    sget-object v1, sCreationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_3
    sget-object v0, sController:Lcom/android/server/job/controllers/AppIdleController;

    if-nez v0, :cond_12

    .line 51
    new-instance v0, Lcom/android/server/job/controllers/AppIdleController;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    sput-object v0, sController:Lcom/android/server/job/controllers/AppIdleController;

    .line 53
    :cond_12
    sget-object v0, sController:Lcom/android/server/job/controllers/AppIdleController;

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public dumpControllerState(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 88
    const-string v2, "AppIdle"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parole On: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mAppIdleParoleOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 91
    :try_start_20
    iget-object v2, p0, mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 92
    .local v1, "task":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":idle="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_67

    const/4 v2, 0x1

    :goto_53
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_26

    .line 97
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "task":Lcom/android/server/job/controllers/JobStatus;
    :catchall_64
    move-exception v2

    monitor-exit v3
    :try_end_66
    .catchall {:try_start_20 .. :try_end_66} :catchall_64

    throw v2

    .line 93
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "task":Lcom/android/server/job/controllers/JobStatus;
    :cond_67
    const/4 v2, 0x0

    goto :goto_53

    .line 96
    .end local v1    # "task":Lcom/android/server/job/controllers/JobStatus;
    :cond_69
    :try_start_69
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 97
    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_64

    .line 98
    return-void
.end method

.method public maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 10
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    iget-object v4, p0, mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 67
    :try_start_5
    iget-object v5, p0, mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "packageName":Ljava/lang/String;
    iget-boolean v5, p0, mAppIdleParoleOn:Z

    if-nez v5, :cond_30

    iget-object v5, p0, mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget v6, p1, Lcom/android/server/job/controllers/JobStatus;->uId:I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v7

    invoke-virtual {v5, v1, v6, v7}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_30

    move v0, v2

    .line 75
    .local v0, "appIdle":Z
    :goto_27
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_32

    :goto_2b
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    monitor-exit v4

    .line 77
    return-void

    .end local v0    # "appIdle":Z
    :cond_30
    move v0, v3

    .line 69
    goto :goto_27

    .restart local v0    # "appIdle":Z
    :cond_32
    move v2, v3

    .line 75
    goto :goto_2b

    .line 76
    .end local v0    # "appIdle":Z
    .end local v1    # "packageName":Ljava/lang/String;
    :catchall_34
    move-exception v2

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_34

    throw v2
.end method

.method public maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 81
    iget-object v1, p0, mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 82
    :try_start_3
    iget-object v0, p0, mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method setAppIdleParoleOn(Z)V
    .registers 13
    .param p1, "isAppIdleParoleOn"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "changed":Z
    iget-object v8, p0, mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v8

    .line 104
    :try_start_6
    iget-boolean v5, p0, mAppIdleParoleOn:Z

    if-ne v5, p1, :cond_c

    .line 105
    monitor-exit v8

    .line 124
    :cond_b
    :goto_b
    return-void

    .line 107
    :cond_c
    iput-boolean p1, p0, mAppIdleParoleOn:Z

    .line 108
    iget-object v5, p0, mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 109
    .local v4, "task":Lcom/android/server/job/controllers/JobStatus;
    iget-object v5, v4, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "packageName":Ljava/lang/String;
    iget-boolean v5, p0, mAppIdleParoleOn:Z

    if-nez v5, :cond_4f

    iget-object v5, p0, mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget v9, v4, Lcom/android/server/job/controllers/JobStatus;->uId:I

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v10

    invoke-virtual {v5, v3, v9, v10}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_4f

    move v0, v6

    .line 115
    .local v0, "appIdle":Z
    :goto_3d
    iget-object v5, v4, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-ne v5, v0, :cond_14

    .line 116
    iget-object v9, v4, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_51

    move v5, v6

    :goto_4a
    invoke-virtual {v9, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 117
    const/4 v1, 0x1

    goto :goto_14

    .end local v0    # "appIdle":Z
    :cond_4f
    move v0, v7

    .line 110
    goto :goto_3d

    .restart local v0    # "appIdle":Z
    :cond_51
    move v5, v7

    .line 116
    goto :goto_4a

    .line 120
    .end local v0    # "appIdle":Z
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "task":Lcom/android/server/job/controllers/JobStatus;
    :cond_53
    monitor-exit v8
    :try_end_54
    .catchall {:try_start_6 .. :try_end_54} :catchall_5c

    .line 121
    if-eqz v1, :cond_b

    .line 122
    iget-object v5, p0, mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v5}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    goto :goto_b

    .line 120
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_5c
    move-exception v5

    :try_start_5d
    monitor-exit v8
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v5
.end method
