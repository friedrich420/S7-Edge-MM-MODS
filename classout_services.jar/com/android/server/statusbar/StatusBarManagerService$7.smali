.class Lcom/android/server/statusbar/StatusBarManagerService$7;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLockedToDisplay(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$displayId:I

.field final synthetic val$mask:I

.field final synthetic val$vis:I


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;III)V
    .registers 5

    .prologue
    .line 584
    iput-object p1, p0, this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, val$displayId:I

    iput p3, p0, val$vis:I

    iput p4, p0, val$mask:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 586
    iget-object v0, p0, this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBars:[Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)[Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    iget v1, p0, val$displayId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1d

    .line 588
    :try_start_c
    iget-object v0, p0, this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBars:[Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)[Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    iget v1, p0, val$displayId:I

    aget-object v0, v0, v1

    iget v1, p0, val$vis:I

    iget v2, p0, val$mask:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->setSystemUiVisibility(II)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1e

    .line 592
    :cond_1d
    :goto_1d
    return-void

    .line 589
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method
