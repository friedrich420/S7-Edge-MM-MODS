.class Lcom/android/settings/DataUsageSummary$1;
.super Landroid/os/Handler;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 622
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 624
    :pswitch_0
    const-string v3, "DataUsage/LPF"

    const-string v4, "mVertifyTrafficHandler handle message"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    if-nez v3, :cond_1

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    new-instance v4, Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v6}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/settings/trafficmanager/TrafficDataSummary;-><init>(Lcom/android/settings/net/ChartData;Landroid/content/Context;)V

    # setter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->access$002(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/trafficmanager/TrafficDataSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    .line 628
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 629
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    .line 630
    .local v11, "data":Landroid/os/Bundle;
    const-string v3, "simslot"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 631
    .local v16, "simslot":I
    const-string v3, "subid"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 632
    .local v17, "subId":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 633
    .local v8, "mCurrentTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v6

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v13

    .line 634
    .local v13, "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v13, :cond_5

    iget-wide v4, v13, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v13, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v14, v4, v6

    .line 636
    .local v14, "middle_real_value":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "middle_real_value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14, v15}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->setSimSlot(I)V

    .line 643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 644
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->setSubId(I)V

    .line 646
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->setChartData(Lcom/android/settings/net/ChartData;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    .line 648
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iget-object v2, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 649
    .local v2, "cycleTimezone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 651
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v4, v4, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getStartDay()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v4, 0x0

    # invokes: Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->access$400(Lcom/android/settings/DataUsageSummary;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 657
    :cond_4
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getIsMonitorOn()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getIsBlockData()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getlimiValue()J

    move-result-wide v4

    # invokes: Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v3, v4, v5}, Lcom/android/settings/DataUsageSummary;->access$500(Lcom/android/settings/DataUsageSummary;J)V

    .line 662
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getIsMonitorOn()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getWarningValue()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getWarningByte()J

    move-result-wide v4

    # invokes: Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v3, v4, v5}, Lcom/android/settings/DataUsageSummary;->access$600(Lcom/android/settings/DataUsageSummary;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 672
    .end local v2    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "mCurrentTime":J
    .end local v11    # "data":Landroid/os/Bundle;
    .end local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v14    # "middle_real_value":J
    .end local v16    # "simslot":I
    .end local v17    # "subId":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 674
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v4

    # invokes: Lcom/android/settings/DataUsageSummary;->setColorOnStatus(F)V
    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->access$700(Lcom/android/settings/DataUsageSummary;F)V

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->setTrafficText()V
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v4

    # invokes: Lcom/android/settings/DataUsageSummary;->setDonut(F)V
    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->access$900(Lcom/android/settings/DataUsageSummary;F)V

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$1000(Lcom/android/settings/DataUsageSummary;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateSavedDataCircleView()V
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$1100(Lcom/android/settings/DataUsageSummary;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 681
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 634
    .restart local v8    # "mCurrentTime":J
    .restart local v11    # "data":Landroid/os/Bundle;
    .restart local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v16    # "simslot":I
    .restart local v17    # "subId":I
    :cond_5
    const-wide/16 v14, 0x0

    goto/16 :goto_1

    .line 660
    .restart local v2    # "cycleTimezone":Ljava/lang/String;
    .restart local v14    # "middle_real_value":J
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    const-wide/16 v4, -0x1

    # invokes: Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v3, v4, v5}, Lcom/android/settings/DataUsageSummary;->access$500(Lcom/android/settings/DataUsageSummary;J)V

    goto/16 :goto_3

    .line 667
    :catch_1
    move-exception v3

    goto :goto_4

    .line 665
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    const-wide/16 v4, -0x1

    # invokes: Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v3, v4, v5}, Lcom/android/settings/DataUsageSummary;->access$600(Lcom/android/settings/DataUsageSummary;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 670
    .end local v2    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "mCurrentTime":J
    .end local v11    # "data":Landroid/os/Bundle;
    .end local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v14    # "middle_real_value":J
    .end local v16    # "simslot":I
    .end local v17    # "subId":I
    :cond_8
    const-string v3, "DataUsage/LPF"

    const-string v4, "mChartData112 is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 686
    :pswitch_1
    const-string v3, "DataUsage/LPF"

    const-string v4, "mVertifyTrafficHandler handle message Auto"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mSMSCatchReceiver:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$1200(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 689
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mSMSCatchReceiver:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$1200(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 694
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    if-nez v3, :cond_a

    .line 695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    new-instance v4, Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v6}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/settings/trafficmanager/TrafficDataSummary;-><init>(Lcom/android/settings/net/ChartData;Landroid/content/Context;)V

    # setter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->access$002(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/trafficmanager/TrafficDataSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    .line 697
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->setSimSlot(I)V

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 700
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->setSubId(I)V

    .line 702
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->setChartData(Lcom/android/settings/net/ChartData;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    .line 707
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 709
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v4

    # invokes: Lcom/android/settings/DataUsageSummary;->setColorOnStatus(F)V
    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->access$700(Lcom/android/settings/DataUsageSummary;F)V

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->setTrafficText()V
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTrafficDataSummary:Lcom/android/settings/trafficmanager/TrafficDataSummary;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/TrafficDataSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v4

    # invokes: Lcom/android/settings/DataUsageSummary;->setDonut(F)V
    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->access$900(Lcom/android/settings/DataUsageSummary;F)V

    .line 713
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$1000(Lcom/android/settings/DataUsageSummary;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateSavedDataCircleView()V
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$1100(Lcom/android/settings/DataUsageSummary;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 716
    :catch_2
    move-exception v3

    goto/16 :goto_0

    .line 690
    :catch_3
    move-exception v12

    .line 691
    .local v12, "e":Ljava/lang/Exception;
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 705
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_d
    const-string v3, "DataUsage/LPF"

    const-string v4, "mChartData113 is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 653
    .restart local v2    # "cycleTimezone":Ljava/lang/String;
    .restart local v8    # "mCurrentTime":J
    .restart local v11    # "data":Landroid/os/Bundle;
    .restart local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v14    # "middle_real_value":J
    .restart local v16    # "simslot":I
    .restart local v17    # "subId":I
    :catch_4
    move-exception v3

    goto/16 :goto_2

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
