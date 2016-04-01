.class Lcom/android/server/statusbar/StatusBarManagerService$4;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->topAppWindowChangedToDisplay(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$displayId:I

.field final synthetic val$menuVisible:Z


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;IZ)V
    .registers 4

    .prologue
    .line 472
    iput-object p1, p0, this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, val$displayId:I

    iput-boolean p3, p0, val$menuVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 474
    iget-object v0, p0, this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBars:[Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)[Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    iget v1, p0, val$displayId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1b

    .line 476
    :try_start_c
    iget-object v0, p0, this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBars:[Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)[Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    iget v1, p0, val$displayId:I

    aget-object v0, v0, v1

    iget-boolean v1, p0, val$menuVisible:Z

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->topAppWindowChanged(Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1b} :catch_1c

    .line 480
    :cond_1b
    :goto_1b
    return-void

    .line 477
    :catch_1c
    move-exception v0

    goto :goto_1b
.end method
