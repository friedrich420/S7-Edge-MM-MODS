.class Lcom/android/server/policy/StatusBarController$1$1;
.super Ljava/lang/Object;
.source "StatusBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/StatusBarController$1;->onAppTransitionPendingLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/StatusBarController$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/StatusBarController$1;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, this$1:Lcom/android/server/policy/StatusBarController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 51
    :try_start_0
    iget-object v2, p0, this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v2, v2, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 52
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_d

    .line 53
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->appTransitionPending()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 60
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_d
    :goto_d
    return-void

    .line 55
    :catch_e
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v2, v2, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    iget-object v2, v2, Lcom/android/server/policy/StatusBarController;->mTag:Ljava/lang/String;

    const-string v3, "RemoteException when app transition is pending"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    iget-object v2, p0, this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v2, v2, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/policy/StatusBarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_d
.end method
