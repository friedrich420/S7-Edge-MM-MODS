.class Lcom/android/server/wm/WindowManagerService$13$1;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/WindowManagerService$13;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService$13;)V
    .registers 2

    .prologue
    .line 23458
    iput-object p1, p0, this$1:Lcom/android/server/wm/WindowManagerService$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 23461
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-eqz v0, :cond_32

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle delayed resize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$1:Lcom/android/server/wm/WindowManagerService$13;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService$13;->val$win:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$1:Lcom/android/server/wm/WindowManagerService$13;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService$13;->val$win:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23463
    :cond_32
    iget-object v0, p0, this$1:Lcom/android/server/wm/WindowManagerService$13;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$13;->val$win:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mDelayedResize:Z

    .line 23464
    iget-object v0, p0, this$1:Lcom/android/server/wm/WindowManagerService$13;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$13;->val$win:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 23465
    iget-object v0, p0, this$1:Lcom/android/server/wm/WindowManagerService$13;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$13;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    iget-object v1, p0, this$1:Lcom/android/server/wm/WindowManagerService$13;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService$13;->val$win:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23466
    return-void
.end method
