.class Lcom/android/server/LocationManagerService$4;
.super Landroid/database/ContentObserver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 417
    iput-object p1, p0, this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 420
    iget-object v0, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 421
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;)V

    .line 422
    monitor-exit v1

    .line 423
    return-void

    .line 422
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method
