.class Lcom/android/server/power/PowerManagerService$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$lowPowerModeEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 3

    .prologue
    .line 1409
    iput-object p1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean p2, p0, val$lowPowerModeEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 1412
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "mode"

    iget-object v5, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1416
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PSM] send ACTION_POWER_SAVE_MODE_CHANGING("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-object v3, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1419
    iget-object v3, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1420
    :try_start_4e
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1200(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1422
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PowerManagerInternal$LowPowerModeListener;>;"
    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_4e .. :try_end_5a} :catchall_8b

    .line 1423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8e

    .line 1424
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PSM] onLowPowerModeChanged() of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManagerInternal$LowPowerModeListener;

    iget-boolean v4, p0, val$lowPowerModeEnabled:Z

    invoke-interface {v3, v4}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->onLowPowerModeChanged(Z)V

    .line 1423
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 1422
    .end local v0    # "i":I
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PowerManagerInternal$LowPowerModeListener;>;"
    :catchall_8b
    move-exception v3

    :try_start_8c
    monitor-exit v4
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v3

    .line 1427
    .restart local v0    # "i":I
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PowerManagerInternal$LowPowerModeListener;>;"
    :cond_8e
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1428
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1430
    const-string v3, "PowerManagerService"

    const-string v4, "[PSM] send ACTION_POWER_SAVE_MODE_CHANGED"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object v3, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1432
    return-void
.end method
