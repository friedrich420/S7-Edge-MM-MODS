.class Lcom/android/server/AnyMotionDetector$2;
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
    .line 272
    iput-object p1, p0, this$0:Lcom/android/server/AnyMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, this$0:Lcom/android/server/AnyMotionDetector;

    # getter for: Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AnyMotionDetector;->access$100(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 276
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/AnyMotionDetector;

    # invokes: Lcom/android/server/AnyMotionDetector;->startOrientationMeasurement()V
    invoke-static {v0}, Lcom/android/server/AnyMotionDetector;->access$600(Lcom/android/server/AnyMotionDetector;)V

    .line 277
    monitor-exit v1

    .line 278
    return-void

    .line 277
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method
