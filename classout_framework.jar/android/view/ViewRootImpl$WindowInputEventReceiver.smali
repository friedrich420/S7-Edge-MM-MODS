.class final Landroid/view/ViewRootImpl$WindowInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 7409
    iput-object p1, p0, this$0:Landroid/view/ViewRootImpl;

    .line 7410
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 7411
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 7440
    iget-object v0, p0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 7441
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 7442
    return-void
.end method

.method public onBatchedInputEventPending()V
    .registers 2

    .prologue
    .line 7431
    iget-object v0, p0, this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-eqz v0, :cond_a

    .line 7432
    invoke-super {p0}, Landroid/view/InputEventReceiver;->onBatchedInputEventPending()V

    .line 7436
    :goto_9
    return-void

    .line 7434
    :cond_a
    iget-object v0, p0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    goto :goto_9
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const-wide/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7415
    const/4 v1, 0x0

    .line 7416
    .local v1, "traceKey":Ljava/lang/String;
    # getter for: Landroid/view/ViewRootImpl;->SAFE_DEBUG:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$200()Z

    move-result v2

    if-eqz v2, :cond_40

    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_40

    move-object v0, p1

    .line 7417
    check-cast v0, Landroid/view/MotionEvent;

    .line 7418
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    const-string/jumbo v2, "onInputEvent(Action=%d, X=%d, Y=%d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7419
    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7422
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    :cond_40
    iget-object v2, p0, this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, p1, p0, v6, v7}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 7424
    if-eqz v1, :cond_4a

    .line 7425
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 7427
    :cond_4a
    return-void
.end method
