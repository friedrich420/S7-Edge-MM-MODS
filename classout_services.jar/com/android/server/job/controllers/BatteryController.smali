.class public Lcom/android/server/job/controllers/BatteryController;
.super Lcom/android/server/job/controllers/StateController;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JobScheduler.Batt"

.field private static volatile sController:Lcom/android/server/job/controllers/BatteryController;

.field private static final sCreationLock:Ljava/lang/Object;


# instance fields
.field private mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

.field private mTrackedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sCreationLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V
    .registers 4
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTrackedTasks:Ljava/util/List;

    .line 77
    new-instance v0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;-><init>(Lcom/android/server/job/controllers/BatteryController;)V

    iput-object v0, p0, mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 78
    iget-object v0, p0, mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->startTracking()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/controllers/BatteryController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/BatteryController;

    .prologue
    .line 45
    invoke-direct {p0}, maybeReportNewChargingState()V

    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/BatteryController;
    .registers 4
    .param p0, "taskManagerService"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    .line 55
    sget-object v1, sCreationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_3
    sget-object v0, sController:Lcom/android/server/job/controllers/BatteryController;

    if-nez v0, :cond_12

    .line 57
    new-instance v0, Lcom/android/server/job/controllers/BatteryController;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    sput-object v0, sController:Lcom/android/server/job/controllers/BatteryController;

    .line 60
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    .line 61
    sget-object v0, sController:Lcom/android/server/job/controllers/BatteryController;

    return-object v0

    .line 60
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static getForTesting(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)Lcom/android/server/job/controllers/BatteryController;
    .registers 3
    .param p0, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    new-instance v0, Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {v0, p0, p1}, <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    return-object v0
.end method

.method private maybeReportNewChargingState()V
    .registers 8

    .prologue
    .line 102
    iget-object v5, p0, mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v5}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v3

    .line 106
    .local v3, "stablePower":Z
    const/4 v2, 0x0

    .line 107
    .local v2, "reportChange":Z
    iget-object v6, p0, mTrackedTasks:Ljava/util/List;

    monitor-enter v6

    .line 108
    :try_start_a
    iget-object v5, p0, mTrackedTasks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 109
    .local v4, "ts":Lcom/android/server/job/controllers/JobStatus;
    iget-object v5, v4, Lcom/android/server/job/controllers/JobStatus;->chargingConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    .line 110
    .local v1, "previous":Z
    if-eq v1, v3, :cond_10

    .line 111
    const/4 v2, 0x1

    goto :goto_10

    .line 114
    .end local v1    # "previous":Z
    .end local v4    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_26
    monitor-exit v6
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_37

    .line 117
    if-eqz v2, :cond_2e

    .line 118
    iget-object v5, p0, mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v5}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 121
    :cond_2e
    if-eqz v3, :cond_36

    .line 122
    iget-object v5, p0, mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 124
    :cond_36
    return-void

    .line 114
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_37
    move-exception v5

    :try_start_38
    monitor-exit v6
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v5
.end method


# virtual methods
.method public dumpControllerState(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 203
    const-string v1, "Batt."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stable power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, mTrackedTasks:Ljava/util/List;

    monitor-enter v2

    .line 206
    :try_start_24
    iget-object v1, p0, mTrackedTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 207
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    :cond_41
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_41

    .line 214
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_6c
    move-exception v1

    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_24 .. :try_end_6e} :catchall_6c

    throw v1

    .line 213
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_6f
    :try_start_6f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 214
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_6c

    .line 215
    return-void
.end method

.method public getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    return-object v0
.end method

.method public maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 83
    iget-object v1, p0, mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v0

    .line 84
    .local v0, "isOnStablePower":Z
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 85
    iget-object v2, p0, mTrackedTasks:Ljava/util/List;

    monitor-enter v2

    .line 86
    :try_start_f
    iget-object v1, p0, mTrackedTasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->chargingConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    monitor-exit v2

    .line 90
    :cond_1a
    return-void

    .line 88
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 95
    iget-object v1, p0, mTrackedTasks:Ljava/util/List;

    monitor-enter v1

    .line 96
    :try_start_9
    iget-object v0, p0, mTrackedTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 97
    monitor-exit v1

    .line 99
    :cond_f
    return-void

    .line 97
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v0
.end method
