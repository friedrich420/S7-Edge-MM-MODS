.class Lcom/android/server/display/DisplayManagerService$LocalService$3;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService$LocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayManagerService$LocalService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$LocalService;)V
    .registers 2

    .prologue
    .line 2984
    iput-object p1, p0, this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2987
    iget-object v0, p0, this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mLockPMS:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4100(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2988
    :try_start_9
    iget-object v0, p0, this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    # invokes: Lcom/android/server/display/DisplayManagerService;->requestGlobalDisplayStateInternal(II)V
    invoke-static {v0, v2, v3}, Lcom/android/server/display/DisplayManagerService;->access$5000(Lcom/android/server/display/DisplayManagerService;II)V

    .line 2989
    iget-object v0, p0, this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/display/DisplayManagerService;->mIsForceUnblankDisplay:Z
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayManagerService;->access$5802(Lcom/android/server/display/DisplayManagerService;Z)Z

    .line 2990
    monitor-exit v1

    .line 2991
    return-void

    .line 2990
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1c

    throw v0
.end method
