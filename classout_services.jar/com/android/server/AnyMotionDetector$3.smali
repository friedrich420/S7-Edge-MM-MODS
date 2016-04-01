.class Lcom/android/server/AnyMotionDetector$3;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .registers 2

    .prologue
    .line 281
    iput-object p1, p0, this$0:Lcom/android/server/AnyMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 284
    const/4 v0, -0x1

    .line 285
    .local v0, "status":I
    iget-object v1, p0, this$0:Lcom/android/server/AnyMotionDetector;

    # getter for: Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->access$100(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 289
    :try_start_8
    iget-object v1, p0, this$0:Lcom/android/server/AnyMotionDetector;

    # invokes: Lcom/android/server/AnyMotionDetector;->stopOrientationMeasurementLocked()I
    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->access$400(Lcom/android/server/AnyMotionDetector;)I

    move-result v0

    .line 290
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_1c

    .line 291
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 292
    iget-object v1, p0, this$0:Lcom/android/server/AnyMotionDetector;

    # getter for: Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;
    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->access$500(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;->onAnyMotionResult(I)V

    .line 294
    :cond_1b
    return-void

    .line 290
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method
