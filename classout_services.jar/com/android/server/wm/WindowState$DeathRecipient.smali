.class Lcom/android/server/wm/WindowState$DeathRecipient;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowState;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .prologue
    .line 1759
    iput-object p1, p0, this$0:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/WindowState;
    .param p2, "x1"    # Lcom/android/server/wm/WindowState$1;

    .prologue
    .line 1759
    invoke-direct {p0, p1}, <init>(Lcom/android/server/wm/WindowState;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .prologue
    .line 1763
    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_5e

    .line 1764
    :try_start_7
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, this$0:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v4, p0, this$0:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1765
    .local v0, "win":Lcom/android/server/wm/WindowState;
    const-string v1, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIN DEATH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    if-eqz v0, :cond_44

    .line 1767
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_3b

    .line 1768
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 1770
    :cond_3b
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 1775
    :cond_42
    :goto_42
    monitor-exit v2

    .line 1780
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :goto_43
    return-void

    .line 1771
    .restart local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_44
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_42

    .line 1772
    const-string v1, "WindowState"

    const-string v3, "!!! LEAK !!! Window removed but surface still valid."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget-object v1, p0, this$0:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, this$0:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    goto :goto_42

    .line 1775
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :catchall_5b
    move-exception v1

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v1
    :try_end_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d .. :try_end_5e} :catch_5e

    .line 1776
    :catch_5e
    move-exception v1

    goto :goto_43
.end method
