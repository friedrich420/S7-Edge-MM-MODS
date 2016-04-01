.class public abstract Lcom/android/server/job/controllers/StateController;
.super Ljava/lang/Object;
.source "StateController.java"


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDeviceIdleMode:Z

.field protected mStateChangedListener:Lcom/android/server/job/StateChangedListener;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V
    .registers 3
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    .line 39
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public deviceIdleModeChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, mDeviceIdleMode:Z

    .line 44
    return-void
.end method

.method public abstract dumpControllerState(Ljava/io/PrintWriter;)V
.end method

.method public abstract maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
.end method

.method public abstract maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
.end method
