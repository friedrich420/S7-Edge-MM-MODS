.class Lcom/android/server/power/PowerManagerService$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .prologue
    .line 2088
    iput-object p1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    .line 2091
    iget-object v2, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPocketQueryLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2092
    :try_start_7
    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 2093
    .local v1, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getPhoneStatusMonitorContext()Landroid/hardware/scontext/SContextPhoneStatusMonitor;

    move-result-object v0

    .line 2095
    .local v0, "phoneStatusMonitor":Landroid/hardware/scontext/SContextPhoneStatusMonitor;
    iget-object v2, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->isInSuroundingEnvironment()Z

    move-result v4

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsInPocket:Z
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService;->access$1402(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2096
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] mPocketSContextListener: isInPocket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mIsInPocket:Z
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    iget-object v2, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mPocketQueryDone:Z
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService;->access$1502(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2099
    iget-object v2, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPocketQueryLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2100
    monitor-exit v3

    .line 2101
    return-void

    .line 2100
    .end local v0    # "phoneStatusMonitor":Landroid/hardware/scontext/SContextPhoneStatusMonitor;
    .end local v1    # "scontext":Landroid/hardware/scontext/SContext;
    :catchall_45
    move-exception v2

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_45

    throw v2
.end method
