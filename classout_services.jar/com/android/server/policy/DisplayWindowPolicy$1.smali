.class Lcom/android/server/policy/DisplayWindowPolicy$1;
.super Ljava/lang/Object;
.source "DisplayWindowPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DisplayWindowPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/DisplayWindowPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DisplayWindowPolicy;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, this$0:Lcom/android/server/policy/DisplayWindowPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 79
    iget-object v0, p0, this$0:Lcom/android/server/policy/DisplayWindowPolicy;

    iget-object v0, v0, Lcom/android/server/policy/DisplayWindowPolicy;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 81
    :try_start_9
    iget-object v0, p0, this$0:Lcom/android/server/policy/DisplayWindowPolicy;

    iget v2, v0, Lcom/android/server/policy/DisplayWindowPolicy;->mForceClearedSystemUiFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Lcom/android/server/policy/DisplayWindowPolicy;->mForceClearedSystemUiFlags:I

    .line 83
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e

    .line 84
    iget-object v0, p0, this$0:Lcom/android/server/policy/DisplayWindowPolicy;

    iget-object v0, v0, Lcom/android/server/policy/DisplayWindowPolicy;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, this$0:Lcom/android/server/policy/DisplayWindowPolicy;

    iget v1, v1, Lcom/android/server/policy/DisplayWindowPolicy;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility(I)V

    .line 85
    return-void

    .line 83
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method
