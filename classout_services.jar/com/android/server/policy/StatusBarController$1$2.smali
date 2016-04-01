.class Lcom/android/server/policy/StatusBarController$1$2;
.super Ljava/lang/Object;
.source "StatusBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/StatusBarController$1;->onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/StatusBarController$1;

.field final synthetic val$closeAnimation:Landroid/view/animation/Animation;

.field final synthetic val$openAnimation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/android/server/policy/StatusBarController$1;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 67
    iput-object p1, p0, this$1:Lcom/android/server/policy/StatusBarController$1;

    iput-object p2, p0, val$openAnimation:Landroid/view/animation/Animation;

    iput-object p3, p0, val$closeAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 71
    :try_start_0
    iget-object v6, p0, this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v6, v6, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v6}, Lcom/android/server/policy/StatusBarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .line 72
    .local v3, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_23

    .line 73
    iget-object v6, p0, this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v6, v6, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    iget-object v7, p0, val$openAnimation:Landroid/view/animation/Animation;

    iget-object v8, p0, val$closeAnimation:Landroid/view/animation/Animation;

    # invokes: Lcom/android/server/policy/StatusBarController;->calculateStatusBarTransitionStartTime(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J
    invoke-static {v6, v7, v8}, Lcom/android/server/policy/StatusBarController;->access$000(Lcom/android/server/policy/StatusBarController;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J

    move-result-wide v4

    .line 75
    .local v4, "startTime":J
    iget-object v6, p0, val$closeAnimation:Landroid/view/animation/Animation;

    if-nez v6, :cond_1e

    iget-object v6, p0, val$openAnimation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_24

    :cond_1e
    const-wide/16 v0, 0x78

    .line 77
    .local v0, "duration":J
    :goto_20
    invoke-interface {v3, v4, v5, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->appTransitionStarting(JJ)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_27

    .line 84
    .end local v0    # "duration":J
    .end local v3    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v4    # "startTime":J
    :cond_23
    :goto_23
    return-void

    .line 75
    .restart local v3    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    .restart local v4    # "startTime":J
    :cond_24
    const-wide/16 v0, 0x0

    goto :goto_20

    .line 79
    .end local v3    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v4    # "startTime":J
    :catch_27
    move-exception v2

    .line 80
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v6, p0, this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v6, v6, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    iget-object v6, v6, Lcom/android/server/policy/StatusBarController;->mTag:Ljava/lang/String;

    const-string v7, "RemoteException when app transition is starting"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    iget-object v6, p0, this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v6, v6, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/policy/StatusBarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_23
.end method
