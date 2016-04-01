.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "SLMonitorRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;
    }
.end annotation


# static fields
.field private static final DEFAULT_POWER_STEP_START_DURATION:I = 0x12c

.field private static final DEFAULT_STEP_LEVEL_TYPE:I = 0x4


# instance fields
.field private final _mutex:Ljava/util/concurrent/locks/Lock;

.field private mDuration:I

.field private final mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

.field private mStepLevelType:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 7
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 60
    const/16 v0, 0x12c

    iput v0, p0, mDuration:I

    .line 63
    const/4 v0, 0x4

    iput v0, p0, mStepLevelType:I

    .line 67
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, _mutex:Ljava/util/concurrent/locks/Lock;

    .line 108
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    move-result-object v0

    iput-object v0, p0, mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    .line 110
    return-void
.end method

.method private display(Landroid/os/Bundle;)V
    .registers 24
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 600
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 722
    :cond_8
    :goto_8
    return-void

    .line 604
    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "================= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, getContextType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ================="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 607
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 609
    .local v15, "str":Ljava/lang/StringBuffer;
    const-string v19, "DataType"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 611
    .local v8, "dataType":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_27f

    .line 613
    const-string v19, "DataCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 614
    .local v6, "count":I
    const-string v19, "HistoryMode"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 616
    .local v11, "historyType":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DT=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "], "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DC=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "], "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_17b

    .line 620
    const-string v19, "TimeStampArray"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v18

    .line 622
    .local v18, "timestampArray":[J
    const-string v19, "TS=["

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_ae
    if-ge v12, v6, :cond_c7

    .line 624
    aget-wide v20, v18, v12

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 625
    add-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_c4

    .line 626
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    :cond_c4
    add-int/lit8 v12, v12, 0x1

    goto :goto_ae

    .line 629
    :cond_c7
    const-string v19, "], "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    .end local v12    # "i":I
    .end local v18    # "timestampArray":[J
    :goto_ce
    const-string v19, "DataBundle"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 638
    .local v7, "dataBundle":Landroid/os/Bundle;
    if-eqz v7, :cond_8

    .line 642
    const-string v19, "StepTypeArray"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    .line 643
    .local v14, "stepType":[I
    const-string v19, "StepCountArray"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v13

    .line 644
    .local v13, "stepCount":[I
    const-string v19, "DistanceArray"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v9

    .line 645
    .local v9, "distance":[D
    const-string v19, "CalorieArray"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    .line 646
    .local v5, "calorie":[D
    const-string v19, "DurationArray"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v10

    .line 648
    .local v10, "duration":[I
    if-eqz v14, :cond_8

    if-eqz v13, :cond_8

    if-eqz v9, :cond_8

    if-eqz v5, :cond_8

    if-eqz v10, :cond_8

    .line 653
    const-string v19, "ST=["

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 654
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_114
    if-ge v12, v6, :cond_1a9

    .line 655
    aget v19, v14, v12

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_127

    .line 656
    const-string v19, "IN"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 657
    :cond_127
    aget v19, v14, v12

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_138

    .line 658
    const-string v19, "PO"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    :cond_138
    aget v19, v14, v12

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_149

    .line 660
    const-string v19, "NO"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    :cond_149
    aget v19, v14, v12

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15a

    .line 662
    const-string v19, "SE"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    :cond_15a
    aget v19, v14, v12

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16b

    .line 664
    const-string v19, "ST"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 666
    :cond_16b
    add-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_178

    .line 667
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 654
    :cond_178
    add-int/lit8 v12, v12, 0x1

    goto :goto_114

    .line 632
    .end local v5    # "calorie":[D
    .end local v7    # "dataBundle":Landroid/os/Bundle;
    .end local v9    # "distance":[D
    .end local v10    # "duration":[I
    .end local v12    # "i":I
    .end local v13    # "stepCount":[I
    .end local v14    # "stepType":[I
    :cond_17b
    const-string v19, "TimeStamp"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 633
    .local v16, "timestamp":J
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TS=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "], "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_ce

    .line 670
    .end local v16    # "timestamp":J
    .restart local v5    # "calorie":[D
    .restart local v7    # "dataBundle":Landroid/os/Bundle;
    .restart local v9    # "distance":[D
    .restart local v10    # "duration":[I
    .restart local v12    # "i":I
    .restart local v13    # "stepCount":[I
    .restart local v14    # "stepType":[I
    :cond_1a9
    const-string v19, "], "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    const-string v19, "SC=["

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    const/4 v12, 0x0

    :goto_1b8
    if-ge v12, v6, :cond_1d1

    .line 674
    aget v19, v13, v12

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 675
    add-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_1ce

    .line 676
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    :cond_1ce
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b8

    .line 679
    :cond_1d1
    const-string v19, "], "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 681
    const-string v19, "DI=["

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    const/4 v12, 0x0

    :goto_1e0
    if-ge v12, v6, :cond_1f9

    .line 683
    aget-wide v20, v9, v12

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 684
    add-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_1f6

    .line 685
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    :cond_1f6
    add-int/lit8 v12, v12, 0x1

    goto :goto_1e0

    .line 688
    :cond_1f9
    const-string v19, "], "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    const-string v19, "CA=["

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    const/4 v12, 0x0

    :goto_208
    if-ge v12, v6, :cond_221

    .line 692
    aget-wide v20, v5, v12

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 693
    add-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_21e

    .line 694
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    :cond_21e
    add-int/lit8 v12, v12, 0x1

    goto :goto_208

    .line 697
    :cond_221
    const-string v19, "], "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 699
    const-string v19, "DU=["

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    const/4 v12, 0x0

    :goto_230
    if-ge v12, v6, :cond_249

    .line 701
    aget v19, v10, v12

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 702
    add-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_246

    .line 703
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    :cond_246
    add-int/lit8 v12, v12, 0x1

    goto :goto_230

    .line 706
    :cond_249
    const-string v19, "]"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 708
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_276

    .line 709
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ", HistoryMode=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "], "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 721
    .end local v5    # "calorie":[D
    .end local v6    # "count":I
    .end local v7    # "dataBundle":Landroid/os/Bundle;
    .end local v9    # "distance":[D
    .end local v10    # "duration":[I
    .end local v11    # "historyType":I
    .end local v12    # "i":I
    .end local v13    # "stepCount":[I
    .end local v14    # "stepType":[I
    :cond_276
    :goto_276
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 713
    :cond_27f
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v8, v0, :cond_276

    .line 714
    const-string v19, "ActiveTimeDuration"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 716
    .local v4, "activeTime":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DT=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "], "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 717
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DU=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_276
.end method

.method private sendHistorySLMBuffer()V
    .registers 19

    .prologue
    .line 114
    const-string/jumbo v15, "sendSLMHistoryData"

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 116
    const/4 v7, 0x1

    .line 117
    .local v7, "historySLMMode":I
    invoke-virtual/range {p0 .. p0}, getContextValueNames()[Ljava/lang/String;

    move-result-object v11

    .line 119
    .local v11, "names":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getBufferSize()I

    move-result v10

    .line 121
    .local v10, "loggingCount":I
    if-nez v10, :cond_1a

    .line 122
    const-string v15, "History Data Buffer is null!"

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 125
    :cond_1a
    const/4 v4, 0x1

    .line 127
    .local v4, "dataType":I
    new-array v14, v10, [J

    .line 128
    .local v14, "timeStampArray":[J
    new-array v13, v10, [I

    .line 129
    .local v13, "stepType":[I
    new-array v12, v10, [I

    .line 130
    .local v12, "stepCount":[I
    new-array v5, v10, [D

    .line 131
    .local v5, "distance":[D
    new-array v2, v10, [D

    .line 132
    .local v2, "calorie":[D
    new-array v6, v10, [I

    .line 135
    .local v6, "duration":[I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v3, "dataBundle":Landroid/os/Bundle;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2d
    if-ge v8, v10, :cond_6e

    .line 138
    move-object/from16 v0, p0

    iget-object v15, v0, mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v15, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getTimeStampSingle(I)J

    move-result-wide v16

    aput-wide v16, v14, v8

    .line 139
    move-object/from16 v0, p0

    iget-object v15, v0, mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v15, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmStepTypeArraySingle(I)I

    move-result v15

    aput v15, v13, v8

    .line 140
    move-object/from16 v0, p0

    iget-object v15, v0, mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v15, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmStepCountArraySingle(I)I

    move-result v15

    aput v15, v12, v8

    .line 141
    move-object/from16 v0, p0

    iget-object v15, v0, mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v15, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmDistanceArraySingle(I)D

    move-result-wide v16

    aput-wide v16, v5, v8

    .line 142
    move-object/from16 v0, p0

    iget-object v15, v0, mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v15, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmCalorieArraySingle(I)D

    move-result-wide v16

    aput-wide v16, v2, v8

    .line 143
    move-object/from16 v0, p0

    iget-object v15, v0, mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v15, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmDurationArraySingle(I)I

    move-result v15

    aput v15, v6, v8

    .line 137
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 148
    :cond_6e
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v3, v15, v13}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 149
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v3, v15, v12}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 150
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v3, v15, v5}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 151
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Calorie:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v3, v15, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 152
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Duration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v3, v15, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 154
    invoke-virtual/range {p0 .. p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 156
    invoke-virtual/range {p0 .. p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->TimeStampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 158
    invoke-virtual/range {p0 .. p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 162
    invoke-virtual/range {p0 .. p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->HistoryMode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v11, v16

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 166
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v9, "logBundle":Landroid/os/Bundle;
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v9, v15, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->TimeStampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v9, v15, v14}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 169
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v9, v15, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v9, v15, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->HistoryMode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, display(Landroid/os/Bundle;)V

    .line 175
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 177
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 3

    .prologue
    .line 558
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 559
    iget-object v0, p0, _mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 561
    :try_start_8
    iget-object v0, p0, mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->erase()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_16

    .line 563
    iget-object v0, p0, _mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 566
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 567
    return-void

    .line 563
    :catchall_16
    move-exception v0

    iget-object v1, p0, _mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final disable()V
    .registers 1

    .prologue
    .line 547
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 548
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 549
    return-void
.end method

.method protected display()V
    .registers 1

    .prologue
    .line 597
    return-void
.end method

.method public final enable()V
    .registers 1

    .prologue
    .line 532
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 533
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 536
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 484
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DataType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DataCount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DataBundle"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "StepTypeArray"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "StepCountArray"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DistanceArray"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CalorieArray"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DurationArray"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ActiveTimeDuration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TimeStampArray"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "HistoryMode"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 210
    const/16 v3, 0x8

    new-array v0, v3, [B

    .line 212
    .local v0, "packet":[B
    aput-byte v5, v0, v5

    .line 213
    iget v3, p0, mStepLevelType:I

    invoke-static {v3, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v5

    aput-byte v3, v0, v6

    .line 215
    iget v3, p0, mDuration:I

    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 217
    .local v1, "startDuration":[B
    aget-byte v3, v1, v5

    aput-byte v3, v0, v7

    .line 218
    const/4 v3, 0x3

    aget-byte v4, v1, v6

    aput-byte v4, v0, v3

    .line 220
    const/4 v3, 0x4

    aput-byte v5, v0, v3

    .line 222
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v2

    .line 225
    .local v2, "utcTime":[I
    const/4 v3, 0x5

    aget v4, v2, v5

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 226
    const/4 v3, 0x6

    aget v4, v2, v6

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 227
    const/4 v3, 0x7

    aget v4, v2, v7

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 229
    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 240
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 242
    .local v0, "packet":[B
    aput-byte v2, v0, v2

    .line 243
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 589
    invoke-virtual {p0}, checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 590
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .registers 2

    .prologue
    .line 198
    const/16 v0, 0x2c

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 508
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 520
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .registers 1

    .prologue
    .line 577
    return-object p0
.end method

.method public final parse([BI)I
    .registers 42
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 296
    move/from16 v37, p2

    .line 299
    .local v37, "tmpNext":I
    invoke-virtual/range {p0 .. p0}, getContextValueNames()[Ljava/lang/String;

    move-result-object v32

    .line 301
    .local v32, "names":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parse:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v37

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_33

    .line 305
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 306
    const/4 v3, -0x1

    .line 471
    :goto_32
    return v3

    .line 309
    :cond_33
    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .local v38, "tmpNext":I
    aget-byte v23, p1, v37

    .line 313
    .local v23, "dataType":I
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_368

    .line 316
    :try_start_3c
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v38

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_55

    .line 317
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4e} :catch_22d

    .line 318
    const/16 v37, -0x1

    move/from16 v3, v37

    move/from16 v37, v38

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    goto :goto_32

    .line 321
    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :cond_55
    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_57
    aget-byte v22, p1, v38

    .line 323
    .local v22, "dataSize":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dataSize:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 338
    if-gtz v22, :cond_7e

    .line 339
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 341
    const/4 v3, -0x1

    goto :goto_32

    .line 345
    :cond_7e
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v37

    mul-int/lit8 v11, v22, 0xc

    add-int/lit8 v11, v11, 0x4

    if-ge v3, v11, :cond_bb

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "packet len:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    array-length v11, v0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " tmpNext:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 348
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 349
    const/4 v3, -0x1

    goto/16 :goto_32

    .line 352
    :cond_bb
    const/16 v3, 0x8

    new-array v3, v3, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v12, v3, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-byte v12, v3, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput-byte v12, v3, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput-byte v12, v3, v11
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_cf} :catch_375

    const/4 v11, 0x4

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_d2
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d6} :catch_22d

    const/4 v11, 0x5

    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_d9
    aget-byte v12, p1, v38

    aput-byte v12, v3, v11
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dd} :catch_375

    const/4 v11, 0x6

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_e0
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e4} :catch_22d

    const/4 v11, 0x7

    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_e7
    aget-byte v12, p1, v38

    aput-byte v12, v3, v11

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    .line 363
    .local v8, "timestamp":J
    new-instance v3, Ljava/util/SimpleTimeZone;

    const/4 v11, 0x0

    const-string v12, "GMT"

    invoke-direct {v3, v11, v12}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 365
    .local v2, "calender":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v27

    .line 366
    .local v27, "hour":I
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v31

    .line 367
    .local v31, "minute":I
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v33

    .line 368
    .local v33, "second":I
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v30

    .line 370
    .local v30, "milliSec":I
    move/from16 v0, v27

    mul-int/lit16 v3, v0, 0xe10

    mul-int/lit8 v11, v31, 0x3c

    add-int/2addr v3, v11

    add-int v3, v3, v33

    mul-int/lit16 v3, v3, 0x3e8

    add-int v3, v3, v30

    int-to-long v4, v3

    .line 371
    .local v4, "curUtcTime":J
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 373
    .local v6, "curTimeMillis":J
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v3

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC24(JJJ)J

    move-result-wide v8

    .line 376
    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v35, v0

    .line 377
    .local v35, "stepType":[I
    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v34, v0

    .line 378
    .local v34, "stepCount":[I
    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v24, v0

    .line 379
    .local v24, "distance":[D
    move/from16 v0, v22

    new-array v10, v0, [D

    .line 380
    .local v10, "calorie":[D
    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 381
    .local v25, "duration":[I
    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v36, v0

    .line 383
    .local v36, "tempTimeStamp":[J
    const/4 v3, 0x0

    aput-wide v8, v36, v3

    .line 385
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 387
    .local v21, "dataBundle":Landroid/os/Bundle;
    const/16 v28, 0x0

    .local v28, "i":I
    move/from16 v38, v37

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :goto_15f
    move/from16 v0, v28

    move/from16 v1, v22

    if-ge v0, v1, :cond_290

    .line 389
    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    aget-byte v3, p1, v38

    aput v3, v35, v28

    .line 391
    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v12, v3, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-byte v12, v3, v11
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_176} :catch_375

    const/4 v11, 0x2

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_179
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_17d} :catch_22d

    const/4 v11, 0x3

    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_180
    aget-byte v12, p1, v38

    aput-byte v12, v3, v11

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v34, v28

    .line 399
    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v12, v3, v11
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_195} :catch_375

    const/4 v11, 0x1

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_198
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_19c} :catch_22d

    const/4 v11, 0x2

    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_19f
    aget-byte v12, p1, v38

    aput-byte v12, v3, v11
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1a3} :catch_375

    const/4 v11, 0x3

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_1a6
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-double v12, v3

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    aput-wide v12, v24, v28

    .line 407
    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v12, v3, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-byte v12, v3, v11
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1c3} :catch_22d

    const/4 v11, 0x2

    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_1c6
    aget-byte v12, p1, v38

    aput-byte v12, v3, v11
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1ca} :catch_375

    const/4 v11, 0x3

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_1cd
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-double v12, v3

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    aput-wide v12, v10, v28

    .line 415
    const/4 v3, 0x4

    new-array v3, v3, [B
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_1e2} :catch_22d

    const/4 v11, 0x0

    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_1e5
    aget-byte v12, p1, v38

    aput-byte v12, v3, v11
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_1e9} :catch_375

    const/4 v11, 0x1

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_1ec
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_1f0} :catch_22d

    const/4 v11, 0x2

    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_1f3
    aget-byte v12, p1, v38

    aput-byte v12, v3, v11
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_1f7} :catch_375

    const/4 v11, 0x3

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_1fa
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v25, v28

    .line 421
    aget v3, v35, v28

    const/4 v11, 0x1

    if-lt v3, v11, :cond_212

    aget v3, v35, v28

    const/4 v11, 0x5

    if-le v3, v11, :cond_252

    .line 422
    :cond_212
    new-instance v3, Ljava/lang/Exception;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid stepType : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v35, v28

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_22d} :catch_22d

    .line 466
    .end local v2    # "calender":Ljava/util/Calendar;
    .end local v4    # "curUtcTime":J
    .end local v6    # "curTimeMillis":J
    .end local v8    # "timestamp":J
    .end local v10    # "calorie":[D
    .end local v21    # "dataBundle":Landroid/os/Bundle;
    .end local v22    # "dataSize":I
    .end local v24    # "distance":[D
    .end local v25    # "duration":[I
    .end local v27    # "hour":I
    .end local v28    # "i":I
    .end local v30    # "milliSec":I
    .end local v31    # "minute":I
    .end local v33    # "second":I
    .end local v34    # "stepCount":[I
    .end local v35    # "stepType":[I
    .end local v36    # "tempTimeStamp":[J
    :catch_22d
    move-exception v26

    move/from16 v37, v38

    .line 468
    .end local v38    # "tmpNext":I
    .local v26, "e":Ljava/lang/Exception;
    .restart local v37    # "tmpNext":I
    :goto_230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SLMonitor Runner Exception : "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .end local v26    # "e":Ljava/lang/Exception;
    :goto_24e
    move/from16 v3, v37

    .line 471
    goto/16 :goto_32

    .line 424
    .end local v37    # "tmpNext":I
    .restart local v2    # "calender":Ljava/util/Calendar;
    .restart local v4    # "curUtcTime":J
    .restart local v6    # "curTimeMillis":J
    .restart local v8    # "timestamp":J
    .restart local v10    # "calorie":[D
    .restart local v21    # "dataBundle":Landroid/os/Bundle;
    .restart local v22    # "dataSize":I
    .restart local v24    # "distance":[D
    .restart local v25    # "duration":[I
    .restart local v27    # "hour":I
    .restart local v28    # "i":I
    .restart local v30    # "milliSec":I
    .restart local v31    # "minute":I
    .restart local v33    # "second":I
    .restart local v34    # "stepCount":[I
    .restart local v35    # "stepType":[I
    .restart local v36    # "tempTimeStamp":[J
    .restart local v38    # "tmpNext":I
    :cond_252
    :try_start_252
    move-object/from16 v0, p0

    iget-object v3, v0, _mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_259
    .catch Ljava/lang/Exception; {:try_start_252 .. :try_end_259} :catch_22d

    .line 426
    :try_start_259
    move-object/from16 v0, p0

    iget-object v11, v0, mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    aget-wide v12, v36, v28

    aget v14, v35, v28

    aget v15, v34, v28

    aget-wide v16, v24, v28

    aget-wide v18, v10, v28

    aget v20, v25, v28

    invoke-virtual/range {v11 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->putSLMData(JIIDDI)V
    :try_end_26c
    .catchall {:try_start_259 .. :try_end_26c} :catchall_287

    .line 428
    :try_start_26c
    move-object/from16 v0, p0

    iget-object v3, v0, _mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 431
    add-int/lit8 v3, v22, -0x1

    move/from16 v0, v28

    if-ge v0, v3, :cond_283

    .line 432
    add-int/lit8 v3, v28, 0x1

    aget-wide v12, v36, v28

    aget v11, v25, v28

    int-to-long v14, v11

    add-long/2addr v12, v14

    aput-wide v12, v36, v3

    .line 387
    :cond_283
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_15f

    .line 428
    :catchall_287
    move-exception v3

    move-object/from16 v0, p0

    iget-object v11, v0, _mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 437
    :cond_290
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 438
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 439
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 440
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Calorie:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 441
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Duration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 443
    invoke-virtual/range {p0 .. p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v32, v11

    move/from16 v0, v22

    invoke-virtual {v3, v11, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 444
    invoke-virtual/range {p0 .. p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v32, v11

    invoke-virtual {v3, v11, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 446
    invoke-virtual/range {p0 .. p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v32, v11

    move-object/from16 v0, v21

    invoke-virtual {v3, v11, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 448
    invoke-virtual/range {p0 .. p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v32, v11

    move/from16 v0, v23

    invoke-virtual {v3, v11, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 452
    new-instance v29, Landroid/os/Bundle;

    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    .line 453
    .local v29, "logBundle":Landroid/os/Bundle;
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 455
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 456
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, display(Landroid/os/Bundle;)V

    .line 460
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move/from16 v37, v38

    .line 462
    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    goto/16 :goto_24e

    .line 463
    .end local v2    # "calender":Ljava/util/Calendar;
    .end local v4    # "curUtcTime":J
    .end local v6    # "curTimeMillis":J
    .end local v8    # "timestamp":J
    .end local v10    # "calorie":[D
    .end local v21    # "dataBundle":Landroid/os/Bundle;
    .end local v22    # "dataSize":I
    .end local v24    # "distance":[D
    .end local v25    # "duration":[I
    .end local v27    # "hour":I
    .end local v28    # "i":I
    .end local v29    # "logBundle":Landroid/os/Bundle;
    .end local v30    # "milliSec":I
    .end local v31    # "minute":I
    .end local v33    # "second":I
    .end local v34    # "stepCount":[I
    .end local v35    # "stepType":[I
    .end local v36    # "tempTimeStamp":[J
    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :cond_368
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TYPE_VALUE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_371
    .catch Ljava/lang/Exception; {:try_start_26c .. :try_end_371} :catch_22d

    move/from16 v37, v38

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    goto/16 :goto_24e

    .line 466
    :catch_375
    move-exception v26

    goto/16 :goto_230
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .registers 9
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x4

    .line 255
    const/4 v0, 0x1

    .line 257
    .local v0, "result":Z
    const/16 v1, 0x3a

    if-ne p1, v1, :cond_31

    .line 258
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, mStepLevelType:I

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step Level Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mStepLevelType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 284
    :goto_30
    return v0

    .line 261
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_31
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_6e

    .line 262
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, mDuration:I

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 266
    const/16 v1, 0x17

    const/16 v2, 0x2c

    iget v3, p0, mDuration:I

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    invoke-virtual {p0, v1, v2, v5, v3}, sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_30

    .line 271
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_6e
    if-ne p1, v5, :cond_8a

    .line 272
    const-string v1, "History Data"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, _mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 275
    :try_start_7a
    invoke-direct {p0}, sendHistorySLMBuffer()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_83

    .line 277
    iget-object v1, p0, _mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_30

    :catchall_83
    move-exception v1

    iget-object v2, p0, _mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 282
    :cond_8a
    const/4 v0, 0x0

    goto :goto_30
.end method
