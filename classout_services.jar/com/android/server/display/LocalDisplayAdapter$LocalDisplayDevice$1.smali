.class Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestDisplayStateLocked(II)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

.field final synthetic val$displayId:I

.field final synthetic val$oldState:I

.field final synthetic val$state:I

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIILandroid/os/IBinder;)V
    .registers 6

    .prologue
    .line 499
    iput-object p1, p0, this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iput p2, p0, val$oldState:I

    iput p3, p0, val$state:I

    iput p4, p0, val$displayId:I

    iput-object p5, p0, val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setDisplayBrightness(I)V
    .registers 6
    .param p1, "brightness"    # I

    .prologue
    const-wide/32 v2, 0x20000

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayBrightness(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, val$displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 558
    :try_start_2c
    iget-object v0, p0, this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    # getter for: Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$000(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_39

    .line 560
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 562
    return-void

    .line 560
    :catchall_39
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setDisplayState(I)V
    .registers 8
    .param p1, "state"    # I

    .prologue
    const-wide/32 v4, 0x20000

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayState(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, val$displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 542
    :try_start_30
    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->getPowerModeForState(I)I

    move-result v0

    .line 543
    .local v0, "mode":I
    iget-object v1, p0, val$token:Landroid/os/IBinder;

    invoke-static {v1, v0}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_3d

    .line 545
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 547
    return-void

    .line 545
    .end local v0    # "mode":I
    :catchall_3d
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 503
    iget v0, p0, val$oldState:I

    .line 504
    .local v0, "currentState":I
    iget v1, p0, val$oldState:I

    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    if-nez v1, :cond_f

    iget v1, p0, val$oldState:I

    if-nez v1, :cond_1e

    .line 506
    :cond_f
    iget v1, p0, val$state:I

    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 507
    iget v1, p0, val$state:I

    invoke-direct {p0, v1}, setDisplayState(I)V

    .line 508
    iget v0, p0, val$state:I

    .line 526
    :cond_1e
    :goto_1e
    iget v1, p0, val$state:I

    if-eq v1, v0, :cond_27

    .line 527
    iget v1, p0, val$state:I

    invoke-direct {p0, v1}, setDisplayState(I)V

    .line 529
    :cond_27
    return-void

    .line 509
    :cond_28
    iget v1, p0, val$state:I

    if-eq v1, v2, :cond_30

    iget v1, p0, val$oldState:I

    if-ne v1, v2, :cond_27

    .line 511
    :cond_30
    const/4 v1, 0x3

    invoke-direct {p0, v1}, setDisplayState(I)V

    .line 512
    const/4 v0, 0x3

    goto :goto_1e
.end method
