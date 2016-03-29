.class Lcom/android/settings/DataUsageSummary$StatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 6688
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p2, "x1"    # Lcom/android/settings/DataUsageSummary$1;

    .prologue
    .line 6688
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary$StatusReceiver;-><init>(Lcom/android/settings/DataUsageSummary;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 6692
    const-string v3, "DataUsage"

    const-string v4, "the Broadcast receiver"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6693
    const-string v3, "receive_type"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 6694
    .local v16, "value":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mAutoCalibration:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$4600(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mManualCalibration:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$4700(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6696
    const/16 v3, 0x64

    move/from16 v0, v16

    if-ne v0, v3, :cond_a

    .line 6697
    const-string v3, "DataUsage"

    const-string v4, "auto calibration success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    new-instance v4, Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v6}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/settings/trafficmanager/TrafficDataSummary;-><init>(Lcom/android/settings/net/ChartData;Landroid/content/Context;)V

    # setter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->access$002(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/trafficmanager/TrafficDataSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    .line 6701
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 6702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 6704
    .local v8, "mCurrentTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v6

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 6705
    .local v12, "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v12, :cond_5

    iget-wide v4, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v14, v4, v6

    .line 6706
    .local v14, "middle_real_value":J
    :goto_0
    const-string v3, "simslot"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 6707
    .local v13, "simslot":I
    if-nez v13, :cond_6

    .line 6708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "middle_real_value"

    invoke-static {v3, v4, v14, v15}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 6714
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->setSimSlot(I)V

    .line 6715
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->setChartData(Lcom/android/settings/net/ChartData;)V

    .line 6716
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    .line 6717
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iget-object v2, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 6718
    .local v2, "cycleTimezone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6720
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v4, v4, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getStartDay()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 6721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v4, 0x0

    # invokes: Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->access$400(Lcom/android/settings/DataUsageSummary;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 6726
    :cond_2
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getIsMonitorOn()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getIsBlockData()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getlimiValue()J

    move-result-wide v4

    # invokes: Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v3, v4, v5}, Lcom/android/settings/DataUsageSummary;->access$500(Lcom/android/settings/DataUsageSummary;J)V

    .line 6731
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getIsMonitorOn()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getWarningValue()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 6732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getWarningByte()J

    move-result-wide v4

    # invokes: Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v3, v4, v5}, Lcom/android/settings/DataUsageSummary;->access$600(Lcom/android/settings/DataUsageSummary;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6741
    .end local v2    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "mCurrentTime":J
    .end local v12    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v13    # "simslot":I
    .end local v14    # "middle_real_value":J
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6742
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v4

    # invokes: Lcom/android/settings/DataUsageSummary;->setColorOnStatus(F)V
    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->access$700(Lcom/android/settings/DataUsageSummary;F)V

    .line 6743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->setTrafficText()V
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)V

    .line 6744
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v4

    # invokes: Lcom/android/settings/DataUsageSummary;->setDonut(F)V
    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->access$900(Lcom/android/settings/DataUsageSummary;F)V

    .line 6747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mIsSupportDataCompression:Z
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$6900(Lcom/android/settings/DataUsageSummary;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$1000(Lcom/android/settings/DataUsageSummary;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateSavedDataCircleView()V
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$1100(Lcom/android/settings/DataUsageSummary;)V

    .line 6751
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$5100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$StatusReceiver;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 6753
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$5100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$StatusReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 6769
    :cond_4
    :goto_5
    return-void

    .line 6705
    .restart local v8    # "mCurrentTime":J
    .restart local v12    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_5
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .line 6710
    .restart local v13    # "simslot":I
    .restart local v14    # "middle_real_value":J
    :cond_6
    const/4 v3, 0x1

    if-ne v13, v3, :cond_1

    .line 6711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "middle_real_value_1"

    invoke-static {v3, v4, v14, v15}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_1

    .line 6729
    .restart local v2    # "cycleTimezone":Ljava/lang/String;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    const-wide/16 v4, -0x1

    # invokes: Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v3, v4, v5}, Lcom/android/settings/DataUsageSummary;->access$500(Lcom/android/settings/DataUsageSummary;J)V

    goto/16 :goto_3

    .line 6736
    :catch_0
    move-exception v3

    goto/16 :goto_4

    .line 6734
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    const-wide/16 v4, -0x1

    # invokes: Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v3, v4, v5}, Lcom/android/settings/DataUsageSummary;->access$600(Lcom/android/settings/DataUsageSummary;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 6739
    .end local v2    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "mCurrentTime":J
    .end local v12    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v13    # "simslot":I
    .end local v14    # "middle_real_value":J
    :cond_9
    const-string v3, "DataUsage/LPF"

    const-string v4, "mChartData113 is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 6754
    :catch_1
    move-exception v11

    .line 6755
    .local v11, "e":Ljava/lang/Exception;
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterReceiver Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 6759
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_a
    const/16 v3, 0x66

    move/from16 v0, v16

    if-ne v0, v3, :cond_4

    .line 6760
    const-string v3, "DataUsage"

    const-string v4, "auto calibration fail"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$5100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$StatusReceiver;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 6763
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$StatusReceiver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$5100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$StatusReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_5

    .line 6764
    :catch_2
    move-exception v11

    .line 6765
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterReceiver Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 6722
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v2    # "cycleTimezone":Ljava/lang/String;
    .restart local v8    # "mCurrentTime":J
    .restart local v12    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v13    # "simslot":I
    .restart local v14    # "middle_real_value":J
    :catch_3
    move-exception v3

    goto/16 :goto_2
.end method
