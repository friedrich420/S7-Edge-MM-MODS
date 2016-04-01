.class Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$BinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearViewLock"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$BinderService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$BinderService;Landroid/os/IBinder;)V
    .registers 5
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 6332
    iput-object p1, p0, this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 6333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6334
    iput-object p2, p0, binder:Landroid/os/IBinder;

    .line 6336
    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 6340
    :goto_b
    return-void

    .line 6337
    :catch_c
    move-exception v0

    .line 6338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, binderDied()V

    goto :goto_b
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 6342
    iget-object v0, p0, this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6343
    :try_start_9
    const-string v0, "PowerManagerService"

    const-string v2, "ClearViewLock : binderDied"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6344
    iget-object v0, p0, this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeCount:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$11202(Lcom/android/server/power/PowerManagerService;I)I

    .line 6345
    iget-object v0, p0, this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$11302(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 6346
    iget-object v0, p0, this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService$BinderService;->mClearViewLock:Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;->access$11402(Lcom/android/server/power/PowerManagerService$BinderService;Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;)Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;

    .line 6347
    iget-object v0, p0, this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x20

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2576(Lcom/android/server/power/PowerManagerService;I)I

    .line 6348
    iget-object v0, p0, this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)V

    .line 6349
    monitor-exit v1

    .line 6350
    return-void

    .line 6349
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_38

    throw v0
.end method
