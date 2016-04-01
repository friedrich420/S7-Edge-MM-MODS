.class final Lcom/android/server/wm/DualScreenTransition$H;
.super Landroid/os/Handler;
.source "DualScreenTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DualScreenTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final DUALSCREEN_TRANSIT_SCREENSHOT_FREEZE_TIMEOUT:I = 0x1

.field public static final FREEZE_TIMEOUT_VAL:I = 0x1770


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DualScreenTransition;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DualScreenTransition;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2339
    iput-object p1, p0, this$0:Lcom/android/server/wm/DualScreenTransition;

    .line 2340
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2341
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2345
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    .line 2357
    const-string v0, "DualScreenTransition"

    const-string v1, "No Valid Message To Handle"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    :goto_c
    return-void

    .line 2347
    :pswitch_d
    iget-object v0, p0, this$0:Lcom/android/server/wm/DualScreenTransition;

    # getter for: Lcom/android/server/wm/DualScreenTransition;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/DualScreenTransition;->access$000(Lcom/android/server/wm/DualScreenTransition;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2348
    :try_start_18
    const-string v0, "DualScreenTransition"

    const-string v2, "Exceeded Freeze timeout. Destroy layers.[DUALSCREEN_TRANSIT_SCREENSHOT_FREEZE_TIMEOUT]"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    iget-object v0, p0, this$0:Lcom/android/server/wm/DualScreenTransition;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DualScreenTransition;->kill(Z)V

    .line 2351
    iget-object v0, p0, this$0:Lcom/android/server/wm/DualScreenTransition;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DualScreenTransition;->setTransition(I)V

    .line 2352
    iget-object v0, p0, this$0:Lcom/android/server/wm/DualScreenTransition;

    # getter for: Lcom/android/server/wm/DualScreenTransition;->mWindowAnimator:Lcom/android/server/wm/WindowAnimator;
    invoke-static {v0}, Lcom/android/server/wm/DualScreenTransition;->access$100(Lcom/android/server/wm/DualScreenTransition;)Lcom/android/server/wm/WindowAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowAnimator;->setDualScreenTransitionLocked(Lcom/android/server/wm/DualScreenTransition;)V

    .line 2353
    monitor-exit v1

    goto :goto_c

    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_37

    throw v0

    .line 2345
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method
