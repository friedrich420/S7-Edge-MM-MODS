.class Lcom/android/server/am/DualScreenManagerService$MyHandler;
.super Landroid/os/Handler;
.source "DualScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DualScreenManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DualScreenManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DualScreenManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1481
    iput-object p1, p0, this$0:Lcom/android/server/am/DualScreenManagerService;

    .line 1482
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1483
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1487
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_b0

    .line 1539
    :goto_5
    return-void

    .line 1489
    :pswitch_6
    # getter for: Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/DualScreenManagerService;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "handleMessage() : MOVE_TASK_TO_FRONT_MSG"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 1491
    .local v6, "taskId":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1492
    .local v2, "flags":I
    const/4 v3, 0x0

    .line 1493
    .local v3, "options":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 1494
    .local v7, "toScreen":Lcom/samsung/android/dualscreen/DualScreen;
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_30

    .line 1495
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1496
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "dualscreen:displayid"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    .end local v7    # "toScreen":Lcom/samsung/android/dualscreen/DualScreen;
    check-cast v7, Lcom/samsung/android/dualscreen/DualScreen;

    .line 1497
    .restart local v7    # "toScreen":Lcom/samsung/android/dualscreen/DualScreen;
    const-string/jumbo v8, "dualscreen:activityoption"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3    # "options":Landroid/os/Bundle;
    check-cast v3, Landroid/os/Bundle;

    .line 1499
    .end local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "options":Landroid/os/Bundle;
    :cond_30
    iget-object v8, p0, this$0:Lcom/android/server/am/DualScreenManagerService;

    invoke-virtual {v8, v6, v2, v3, v7}, Lcom/android/server/am/DualScreenManagerService;->handleMoveTaskToScreen(IILandroid/os/Bundle;Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_5

    .line 1503
    .end local v2    # "flags":I
    .end local v3    # "options":Landroid/os/Bundle;
    .end local v6    # "taskId":I
    .end local v7    # "toScreen":Lcom/samsung/android/dualscreen/DualScreen;
    :pswitch_36
    # getter for: Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/DualScreenManagerService;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "handleMessage() : SWAP_TOP_TASK_MSG"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget-object v8, p0, this$0:Lcom/android/server/am/DualScreenManagerService;

    # invokes: Lcom/android/server/am/DualScreenManagerService;->handleSwapTopTask()V
    invoke-static {v8}, Lcom/android/server/am/DualScreenManagerService;->access$200(Lcom/android/server/am/DualScreenManagerService;)V

    goto :goto_5

    .line 1508
    :pswitch_46
    # getter for: Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/DualScreenManagerService;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "handleMessage() : REPORT_SCREEN_FOCUS_CHANGE_MSG"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/dualscreen/DualScreen;

    .line 1510
    .local v4, "screen":Lcom/samsung/android/dualscreen/DualScreen;
    iget-object v8, p0, this$0:Lcom/android/server/am/DualScreenManagerService;

    # invokes: Lcom/android/server/am/DualScreenManagerService;->handleReportScreenFocusChanged(Lcom/samsung/android/dualscreen/DualScreen;)V
    invoke-static {v8, v4}, Lcom/android/server/am/DualScreenManagerService;->access$300(Lcom/android/server/am/DualScreenManagerService;Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_5

    .line 1514
    .end local v4    # "screen":Lcom/samsung/android/dualscreen/DualScreen;
    :pswitch_5a
    # getter for: Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/DualScreenManagerService;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "handleMessage() : FOCUS_SCREEN_MSG"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/dualscreen/DualScreen;

    .line 1516
    .restart local v4    # "screen":Lcom/samsung/android/dualscreen/DualScreen;
    iget-object v8, p0, this$0:Lcom/android/server/am/DualScreenManagerService;

    # invokes: Lcom/android/server/am/DualScreenManagerService;->handleFocusScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    invoke-static {v8, v4}, Lcom/android/server/am/DualScreenManagerService;->access$400(Lcom/android/server/am/DualScreenManagerService;Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_5

    .line 1520
    .end local v4    # "screen":Lcom/samsung/android/dualscreen/DualScreen;
    :pswitch_6e
    # getter for: Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/DualScreenManagerService;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "handleMessage() : REPORT_SHRINK_REQUEST_STATE_MSG"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1522
    .local v5, "shrinkRequested":Z
    iget-object v8, p0, this$0:Lcom/android/server/am/DualScreenManagerService;

    # invokes: Lcom/android/server/am/DualScreenManagerService;->handleReportShrinkRequestedState(Z)V
    invoke-static {v8, v5}, Lcom/android/server/am/DualScreenManagerService;->access$500(Lcom/android/server/am/DualScreenManagerService;Z)V

    goto :goto_5

    .line 1526
    .end local v5    # "shrinkRequested":Z
    :pswitch_86
    # getter for: Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/DualScreenManagerService;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "handleMessage() : REPORT_SCONTEXT_HALL_SENSOR_CHANGE_MSG"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/scontext/SContextEvent;

    .line 1528
    .local v1, "event":Landroid/hardware/scontext/SContextEvent;
    iget-object v8, p0, this$0:Lcom/android/server/am/DualScreenManagerService;

    # invokes: Lcom/android/server/am/DualScreenManagerService;->handleReportSContextStatusChange(Landroid/hardware/scontext/SContextEvent;)V
    invoke-static {v8, v1}, Lcom/android/server/am/DualScreenManagerService;->access$600(Lcom/android/server/am/DualScreenManagerService;Landroid/hardware/scontext/SContextEvent;)V

    goto/16 :goto_5

    .line 1533
    .end local v1    # "event":Landroid/hardware/scontext/SContextEvent;
    :pswitch_9b
    # getter for: Lcom/android/server/am/DualScreenManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/DualScreenManagerService;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "handleMessage() : REPORT_SCONTEXT_MAIN_SCREEN_DETECTION_CHANGE_MSG"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/scontext/SContextEvent;

    .line 1535
    .restart local v1    # "event":Landroid/hardware/scontext/SContextEvent;
    iget-object v8, p0, this$0:Lcom/android/server/am/DualScreenManagerService;

    # invokes: Lcom/android/server/am/DualScreenManagerService;->handleReportSContextStatusChange(Landroid/hardware/scontext/SContextEvent;)V
    invoke-static {v8, v1}, Lcom/android/server/am/DualScreenManagerService;->access$600(Lcom/android/server/am/DualScreenManagerService;Landroid/hardware/scontext/SContextEvent;)V

    goto/16 :goto_5

    .line 1487
    :pswitch_data_b0
    .packed-switch 0x3e9
        :pswitch_6
        :pswitch_36
        :pswitch_46
        :pswitch_5a
        :pswitch_6e
        :pswitch_86
        :pswitch_9b
    .end packed-switch
.end method
