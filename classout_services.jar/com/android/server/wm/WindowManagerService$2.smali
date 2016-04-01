.class Lcom/android/server/wm/WindowManagerService$2;
.super Landroid/view/WindowManagerInternal$AppTransitionListener;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .prologue
    .line 1573
    iput-object p1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/view/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 1577
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1578
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_a

    .line 1597
    :cond_9
    :goto_9
    return-void

    .line 1581
    :cond_a
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_1a

    .line 1583
    :try_start_e
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_2f

    .line 1586
    :goto_17
    iput-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    goto :goto_9

    .line 1588
    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1589
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    if-eqz v1, :cond_9

    .line 1590
    iput-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 1592
    :try_start_23
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2c} :catch_2d

    goto :goto_9

    .line 1593
    :catch_2d
    move-exception v1

    goto :goto_9

    .line 1584
    :catch_2f
    move-exception v1

    goto :goto_17
.end method
