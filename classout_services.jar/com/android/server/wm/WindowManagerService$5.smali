.class Lcom/android/server/wm/WindowManagerService$5;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V
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
    .line 1697
    iput-object p1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLowPowerModeChanged(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1700
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1701
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    if-eq v0, p1, :cond_1b

    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAllowAnimationsInLowPowerMode:Z

    if-nez v0, :cond_1b

    .line 1702
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    .line 1703
    iget-object v0, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    .line 1705
    :cond_1b
    monitor-exit v1

    .line 1706
    return-void

    .line 1705
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw v0
.end method
