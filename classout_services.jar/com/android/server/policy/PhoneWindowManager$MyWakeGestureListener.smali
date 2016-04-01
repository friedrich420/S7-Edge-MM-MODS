.class Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;
.super Lcom/android/server/policy/WakeGestureListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWakeGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1407
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 1408
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/WakeGestureListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1409
    return-void
.end method


# virtual methods
.method public onWakeUp()V
    .registers 7

    .prologue
    .line 1413
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1900(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1414
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2000(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1415
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1416
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z
    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->access$2100(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v4

    const/4 v5, 0x7

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->access$2200(Lcom/android/server/policy/PhoneWindowManager;JZI)Z

    .line 1418
    :cond_27
    monitor-exit v1

    .line 1419
    return-void

    .line 1418
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v0
.end method
