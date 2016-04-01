.class Lcom/android/server/wm/WindowManagerService$13;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->postDelayedResize(Lcom/android/server/wm/WindowState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$win:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .prologue
    .line 23442
    iput-object p1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, val$win:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 23445
    const-wide/16 v2, 0x0

    .line 23446
    .local v2, "inputMethodAnimationDuration":J
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_65

    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_65

    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_65

    .line 23448
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 23449
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz v0, :cond_58

    .line 23450
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x96

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x64

    add-long v2, v4, v6

    .line 23452
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-eqz v1, :cond_50

    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input method animation duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23454
    :cond_50
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_58

    .line 23455
    const-wide/16 v2, 0x0

    .line 23458
    :cond_58
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v4, Lcom/android/server/wm/WindowManagerService$13$1;

    invoke-direct {v4, p0}, Lcom/android/server/wm/WindowManagerService$13$1;-><init>(Lcom/android/server/wm/WindowManagerService$13;)V

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23475
    .end local v0    # "a":Landroid/view/animation/Animation;
    :goto_64
    return-void

    .line 23469
    :cond_65
    const-string v1, "WindowManager"

    const-string v4, "Failed to get input method animation duration, use default only"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23471
    iget-object v1, p0, val$win:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/wm/WindowState;->mDelayedResize:Z

    .line 23472
    iget-object v1, p0, val$win:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 23473
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    iget-object v4, p0, val$win:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_64
.end method
