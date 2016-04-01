.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect$1;
.super Landroid/os/Handler;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 2413
    iput-object p1, p0, this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    iput-object p3, p0, val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2416
    iget-object v1, p0, this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2417
    :try_start_7
    iget-object v1, p0, this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    iget-object v3, p0, val$myConn:Landroid/content/ServiceConnection;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;

    .line 2418
    .local v0, "runnable":Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;
    if-eqz v0, :cond_36

    .line 2419
    iget-object v1, p0, this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, val$myConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2420
    iget-object v1, p0, this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2421
    iget-object v1, p0, this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    iget-object v3, p0, val$myConn:Landroid/content/ServiceConnection;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2423
    :cond_36
    monitor-exit v2

    .line 2424
    return-void

    .line 2423
    .end local v0    # "runnable":Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;
    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_38

    throw v1
.end method
