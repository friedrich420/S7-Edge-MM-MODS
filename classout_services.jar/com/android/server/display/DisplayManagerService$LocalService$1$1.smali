.class Lcom/android/server/display/DisplayManagerService$LocalService$1$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService$LocalService$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/display/DisplayManagerService$LocalService$1;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$LocalService$1;)V
    .registers 2

    .prologue
    .line 2759
    iput-object p1, p0, this$2:Lcom/android/server/display/DisplayManagerService$LocalService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2762
    iget-object v1, p0, this$2:Lcom/android/server/display/DisplayManagerService$LocalService$1;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mLockPMS:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$4100(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2763
    :try_start_b
    iget-object v1, p0, this$2:Lcom/android/server/display/DisplayManagerService$LocalService$1;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->blankUnblankRunnableExcuteTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4700(Lcom/android/server/display/DisplayManagerService$LocalService;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    move-result-object v1

    const-string/jumbo v3, "mRequestDisplayStateRunnable is running now. "

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    .line 2764
    iget-object v1, p0, this$2:Lcom/android/server/display/DisplayManagerService$LocalService$1;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/display/DisplayManagerService;->mPendingrequestDisplayState:Z
    invoke-static {v1, v3}, Lcom/android/server/display/DisplayManagerService;->access$4602(Lcom/android/server/display/DisplayManagerService;Z)Z

    .line 2765
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    .line 2766
    .local v0, "requestDesiredDisplayStateTimeMeasurement":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 2767
    iget-object v1, p0, this$2:Lcom/android/server/display/DisplayManagerService$LocalService$1;

    iget-object v3, p0, this$2:Lcom/android/server/display/DisplayManagerService$LocalService$1;

    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingID:I
    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4200(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v3

    iget-object v4, p0, this$2:Lcom/android/server/display/DisplayManagerService$LocalService$1;

    iget-object v4, v4, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingState:I
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4300(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v4

    iget-object v5, p0, this$2:Lcom/android/server/display/DisplayManagerService$LocalService$1;

    iget-object v5, v5, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingBrightness:I
    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4500(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v5

    # invokes: Lcom/android/server/display/DisplayManagerService$LocalService$1;->requestDesiredDisplayState(III)V
    invoke-static {v1, v3, v4, v5}, Lcom/android/server/display/DisplayManagerService$LocalService$1;->access$4900(Lcom/android/server/display/DisplayManagerService$LocalService$1;III)V

    .line 2768
    const-string v1, "DisplayManagerInternal.requestDesiredDisplayState"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 2769
    monitor-exit v2

    .line 2770
    return-void

    .line 2769
    .end local v0    # "requestDesiredDisplayStateTimeMeasurement":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    :catchall_53
    move-exception v1

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_b .. :try_end_55} :catchall_53

    throw v1
.end method
