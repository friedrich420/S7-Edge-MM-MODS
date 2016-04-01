.class Lcom/android/server/tv/TvInputManagerService$BinderService$1;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvInputManagerService$BinderService;->registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/tv/TvInputManagerService$BinderService;

.field final synthetic val$callback:Landroid/media/tv/ITvInputManagerCallback;

.field final synthetic val$userState:Lcom/android/server/tv/TvInputManagerService$UserState;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService$BinderService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/ITvInputManagerCallback;)V
    .registers 4

    .prologue
    .line 860
    iput-object p1, p0, this$1:Lcom/android/server/tv/TvInputManagerService$BinderService;

    iput-object p2, p0, val$userState:Lcom/android/server/tv/TvInputManagerService$UserState;

    iput-object p3, p0, val$callback:Landroid/media/tv/ITvInputManagerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 863
    iget-object v0, p0, this$1:Lcom/android/server/tv/TvInputManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 864
    :try_start_9
    iget-object v0, p0, val$userState:Lcom/android/server/tv/TvInputManagerService$UserState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 865
    iget-object v0, p0, val$userState:Lcom/android/server/tv/TvInputManagerService$UserState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, val$callback:Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 867
    :cond_1c
    monitor-exit v1

    .line 868
    return-void

    .line 867
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw v0
.end method
