.class final Lcom/android/systemui/BatteryMeterView$BatteryTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryTracker"
.end annotation


# instance fields
.field health:I

.field level:I

.field online:I

.field plugType:I

.field plugged:Z

.field status:I

.field technology:Ljava/lang/String;

.field temperature:I

.field testmode:Z

.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;

.field voltage:I


# direct methods
.method private constructor <init>(Lcom/android/systemui/BatteryMeterView;)V
    .locals 1

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 603
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->testmode:Z

    .line 613
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->online:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/BatteryMeterView;
    .param p2, "x1"    # Lcom/android/systemui/BatteryMeterView$1;

    .prologue
    .line 599
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "action":Ljava/lang/String;
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 619
    iget-boolean v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->testmode:Z

    if-eqz v10, :cond_1

    const-string v10, "testmode"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget v6, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 622
    .local v6, "priorLevel":I
    iget v8, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    .line 623
    .local v8, "priorplugType":I
    iget v5, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    .line 624
    .local v5, "priorHealth":I
    iget v7, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    .line 626
    .local v7, "priorStatus":I
    const/high16 v10, 0x42c80000    # 100.0f

    const-string v11, "level"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const-string v11, "scale"

    const/16 v12, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 630
    const-string v10, "plugged"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    .line 631
    iget v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 632
    const-string v10, "health"

    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    .line 634
    const-string v10, "status"

    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    .line 636
    const-string v10, "technology"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->technology:Ljava/lang/String;

    .line 637
    const-string v10, "voltage"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->voltage:I

    .line 638
    const-string v10, "temperature"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->temperature:I

    .line 639
    const-string v10, "online"

    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->online:I

    .line 642
    iget v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    if-eq v10, v6, :cond_4

    const/4 v3, 0x1

    .line 643
    .local v3, "levelChange":Z
    :goto_2
    iget v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    if-eq v10, v8, :cond_5

    const/4 v4, 0x1

    .line 644
    .local v4, "plugTypeChange":Z
    :goto_3
    iget v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    if-eq v10, v5, :cond_6

    const/4 v2, 0x1

    .line 645
    .local v2, "healthChange":Z
    :goto_4
    iget v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    if-eq v10, v7, :cond_7

    const/4 v9, 0x1

    .line 647
    .local v9, "statusChange":Z
    :goto_5
    sget-object v10, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_BATTERY_CHANGED : level:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " status:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " health:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    if-eqz v9, :cond_0

    .line 650
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    const v11, 0x7f0d0049

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/BatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/systemui/BatteryMeterView;->access$100(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 655
    iget-object v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/systemui/BatteryMeterView;->access$100(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 631
    .end local v2    # "healthChange":Z
    .end local v3    # "levelChange":Z
    .end local v4    # "plugTypeChange":Z
    .end local v9    # "statusChange":Z
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 642
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 643
    .restart local v3    # "levelChange":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 644
    .restart local v4    # "plugTypeChange":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 645
    .restart local v2    # "healthChange":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    .line 660
    .end local v2    # "healthChange":Z
    .end local v3    # "levelChange":Z
    .end local v4    # "plugTypeChange":Z
    .end local v5    # "priorHealth":I
    .end local v6    # "priorLevel":I
    .end local v7    # "priorStatus":I
    .end local v8    # "priorplugType":I
    :cond_8
    const-string v10, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 661
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->testmode:Z

    .line 662
    iget-object v10, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    new-instance v11, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;

    invoke-direct {v11, p0}, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;-><init>(Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V

    invoke-virtual {v10, v11}, Lcom/android/systemui/BatteryMeterView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
