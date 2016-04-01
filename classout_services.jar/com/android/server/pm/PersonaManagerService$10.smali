.class Lcom/android/server/pm/PersonaManagerService$10;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 2

    .prologue
    .line 12328
    iput-object p1, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 12331
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 12333
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 12335
    iget-object v2, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mDeviceEmergencyModeLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$9300(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 12336
    :try_start_13
    const-string/jumbo v2, "reason"

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 12337
    .local v1, "reason":I
    const-string v2, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EMERGENCY_STATE_CHANGED: reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12339
    const/4 v2, 0x2

    if-eq v1, v2, :cond_3c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3c

    const/4 v2, 0x4

    if-ne v1, v2, :cond_44

    .line 12342
    :cond_3c
    iget-object v2, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z
    invoke-static {v2, v4}, Lcom/android/server/pm/PersonaManagerService;->access$9402(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 12349
    :goto_42
    monitor-exit v3

    .line 12351
    .end local v1    # "reason":I
    :cond_43
    return-void

    .line 12343
    .restart local v1    # "reason":I
    :cond_44
    const/4 v2, 0x5

    if-ne v1, v2, :cond_51

    .line 12344
    iget-object v2, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z
    invoke-static {v2, v4}, Lcom/android/server/pm/PersonaManagerService;->access$9402(Lcom/android/server/pm/PersonaManagerService;Z)Z

    goto :goto_42

    .line 12349
    .end local v1    # "reason":I
    :catchall_4e
    move-exception v2

    monitor-exit v3
    :try_end_50
    .catchall {:try_start_13 .. :try_end_50} :catchall_4e

    throw v2

    .line 12346
    .restart local v1    # "reason":I
    :cond_51
    :try_start_51
    const-string v2, "PersonaManagerService"

    const-string v4, "Unhandled emergency state. Default value is false!!! "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12347
    iget-object v2, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z
    invoke-static {v2, v4}, Lcom/android/server/pm/PersonaManagerService;->access$9402(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_4e

    goto :goto_42
.end method
