.class Lcom/android/server/policy/BarController$1;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BarController;->updateStateLw(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BarController;

.field final synthetic val$displayId:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/BarController;II)V
    .registers 4

    .prologue
    .line 435
    iput-object p1, p0, this$0:Lcom/android/server/policy/BarController;

    iput p2, p0, val$state:I

    iput p3, p0, val$displayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 439
    :try_start_0
    iget-object v2, p0, this$0:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 440
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_13

    .line 445
    iget-object v2, p0, this$0:Lcom/android/server/policy/BarController;

    # getter for: Lcom/android/server/policy/BarController;->mStatusBarManagerId:I
    invoke-static {v2}, Lcom/android/server/policy/BarController;->access$000(Lcom/android/server/policy/BarController;)I

    move-result v2

    iget v3, p0, val$state:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->setWindowState(II)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 455
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_13
    :goto_13
    return-void

    .line 450
    :catch_14
    move-exception v0

    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/policy/BarController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/BarController;->access$100()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, this$0:Lcom/android/server/policy/BarController;

    iget-object v2, v2, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    const-string v3, "Error posting window state"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    :cond_24
    iget-object v2, p0, this$0:Lcom/android/server/policy/BarController;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/policy/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_13
.end method
