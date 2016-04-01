.class final Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FTAModeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .prologue
    .line 5169
    iput-object p1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 5169
    invoke-direct {p0, p1}, <init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5172
    const-string v1, "PowerManagerService"

    const-string v2, "[api] FTAModeChangeReceiver: onReceive: "

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5174
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5175
    :try_start_12
    const-string v1, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 5176
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mFTAMode:Z
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$5202(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 5177
    const-string v1, "PowerManagerService"

    const-string v3, "FTA mode ON"

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5182
    :cond_27
    :goto_27
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v3, 0x8

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$2576(Lcom/android/server/power/PowerManagerService;I)I

    .line 5183
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)V

    .line 5184
    monitor-exit v2

    .line 5185
    return-void

    .line 5178
    :cond_35
    const-string v1, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 5179
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mFTAMode:Z
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$5202(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 5180
    const-string v1, "PowerManagerService"

    const-string v3, "FTA mode OFF"

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 5184
    :catchall_4b
    move-exception v1

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_12 .. :try_end_4d} :catchall_4b

    throw v1
.end method
