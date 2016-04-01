.class Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadJobMapFromDiskRunnable"
.end annotation


# instance fields
.field private final jobSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p2, "jobSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    iput-object p1, p0, this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p2, p0, jobSet:Landroid/util/ArraySet;

    .line 421
    return-void
.end method

.method private buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 644
    const-string/jumbo v4, "jobid"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 645
    .local v2, "jobId":I
    const-string/jumbo v4, "package"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 646
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "class"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .local v1, "cname":Landroid/content/ComponentName;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object v4
.end method

.method private buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 653
    const-string/jumbo v1, "unmetered"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 655
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 657
    :cond_f
    const-string v1, "connectivity"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_1a

    .line 659
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 661
    :cond_1a
    const-string/jumbo v1, "idle"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_26

    .line 663
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 665
    :cond_26
    const-string v1, "charging"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_31

    .line 667
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 669
    :cond_31
    return-void
.end method

.method private buildExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .registers 28
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 695
    .local v18, "nowWallclock":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 697
    .local v16, "nowElapsed":J
    const-wide/16 v4, 0x0

    .line 698
    .local v4, "earliestRunTimeElapsed":J
    const-wide v8, 0x7fffffffffffffffL

    .line 699
    .local v8, "latestRunTimeElapsed":J
    const/16 v21, 0x0

    const-string/jumbo v22, "deadline"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 700
    .local v20, "val":Ljava/lang/String;
    if-eqz v20, :cond_32

    .line 701
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 702
    .local v10, "latestRuntimeWallclock":J
    sub-long v22, v10, v18

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 704
    .local v12, "maxDelayElapsed":J
    add-long v8, v16, v12

    .line 706
    .end local v10    # "latestRuntimeWallclock":J
    .end local v12    # "maxDelayElapsed":J
    :cond_32
    const/16 v21, 0x0

    const-string/jumbo v22, "delay"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 707
    if-eqz v20, :cond_55

    .line 708
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 709
    .local v6, "earliestRuntimeWallclock":J
    sub-long v22, v6, v18

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 711
    .local v14, "minDelayElapsed":J
    add-long v4, v16, v14

    .line 714
    .end local v6    # "earliestRuntimeWallclock":J
    .end local v14    # "minDelayElapsed":J
    :cond_55
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v21

    return-object v21
.end method

.method private maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v5, 0x0

    .line 676
    const-string/jumbo v4, "initial-backoff"

    invoke-interface {p2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 678
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 679
    .local v2, "initialBackoff":J
    const-string v4, "backoff-policy"

    invoke-interface {p2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 680
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 681
    .local v0, "backoffPolicy":I
    invoke-virtual {p1, v2, v3, v0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 683
    .end local v0    # "backoffPolicy":I
    .end local v2    # "initialBackoff":J
    :cond_23
    return-void
.end method

.method private readJobMapImpl(Ljava/io/FileInputStream;)Ljava/util/List;
    .registers 14
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 454
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 455
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, p1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 457
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 458
    .local v1, "eventType":I
    :goto_14
    if-eq v1, v11, :cond_26

    if-eq v1, v10, :cond_26

    .line 460
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 461
    const-string v8, "JobStore"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 463
    :cond_26
    if-ne v1, v10, :cond_2a

    move-object v2, v7

    .line 506
    :goto_29
    return-object v2

    .line 470
    :cond_2a
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 471
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "job-info"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 472
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v8, 0x0

    :try_start_3d
    const-string/jumbo v9, "version"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 476
    .local v6, "version":I
    if-eqz v6, :cond_61

    .line 477
    const-string v8, "JobStore"

    const-string v9, "Invalid version number, aborting jobs file read."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_55} :catch_57

    move-object v2, v7

    .line 478
    goto :goto_29

    .line 480
    .end local v6    # "version":I
    :catch_57
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v8, "JobStore"

    const-string v9, "Invalid version number, aborting jobs file read."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v7

    .line 482
    goto :goto_29

    .line 484
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "version":I
    :cond_61
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 487
    :cond_65
    if-ne v1, v11, :cond_7d

    .line 488
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 490
    const-string/jumbo v7, "job"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 491
    invoke-direct {p0, v3}, restoreJobFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 492
    .local v4, "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_84

    .line 496
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    .end local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_7d
    :goto_7d
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 503
    if-ne v1, v10, :cond_65

    goto :goto_29

    .line 498
    .restart local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_84
    const-string v7, "JobStore"

    const-string v8, "Error reading job from file."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v6    # "version":I
    :cond_8c
    move-object v2, v7

    .line 506
    goto :goto_29
.end method

.method private restoreJobFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;
    .registers 32
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    :try_start_0
    invoke-direct/range {p0 .. p1}, buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v21

    .line 522
    .local v21, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 523
    const/4 v5, 0x0

    const-string/jumbo v6, "uid"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1b} :catch_38

    move-result v7

    .line 532
    .local v7, "uid":I
    :cond_1c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .line 533
    .local v19, "eventType":I
    const/4 v5, 0x4

    move/from16 v0, v19

    if-eq v0, v5, :cond_1c

    .line 535
    const/4 v5, 0x2

    move/from16 v0, v19

    if-ne v0, v5, :cond_36

    const-string v5, "constraints"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 538
    :cond_36
    const/4 v5, 0x0

    .line 638
    .end local v7    # "uid":I
    .end local v19    # "eventType":I
    .end local v21    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    :goto_37
    return-object v5

    .line 524
    :catch_38
    move-exception v4

    .line 525
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v5, "JobStore"

    const-string v6, "Error parsing job\'s required fields, skipping"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v5, 0x0

    goto :goto_37

    .line 541
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "uid":I
    .restart local v19    # "eventType":I
    .restart local v21    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    :cond_42
    :try_start_42
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_4b} :catch_5e

    .line 546
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 550
    :cond_4e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .line 551
    const/4 v5, 0x4

    move/from16 v0, v19

    if-eq v0, v5, :cond_4e

    .line 552
    const/4 v5, 0x2

    move/from16 v0, v19

    if-eq v0, v5, :cond_68

    .line 553
    const/4 v5, 0x0

    goto :goto_37

    .line 542
    :catch_5e
    move-exception v4

    .line 543
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    const-string v5, "JobStore"

    const-string v6, "Error reading constraints, skipping."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v5, 0x0

    goto :goto_37

    .line 559
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_68
    :try_start_68
    invoke-direct/range {p0 .. p1}, buildExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_6b} :catch_139

    move-result-object v18

    .line 567
    .local v18, "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 568
    .local v16, "elapsedNow":J
    const-string/jumbo v5, "periodic"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_148

    .line 570
    const/4 v5, 0x0

    :try_start_7e
    const-string/jumbo v6, "period"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 571
    .local v24, "val":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 572
    .local v22, "periodMillis":J
    invoke-virtual/range {v21 .. v23}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 577
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    mul-long v10, v10, v22

    add-long v10, v10, v16

    cmp-long v5, v8, v10

    if-lez v5, :cond_10f

    .line 578
    add-long v12, v16, v22

    .line 579
    .local v12, "clampedEarlyRuntimeElapsed":J
    const-wide/16 v8, 0x2

    mul-long v8, v8, v22

    add-long v14, v16, v8

    .line 580
    .local v14, "clampedLateRuntimeElapsed":J
    const-string v6, "JobStore"

    const-string v8, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    const/4 v5, 0x5

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v10, 0x1

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v10

    const/4 v10, 0x2

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v10

    const/4 v5, 0x3

    const-wide/16 v10, 0x3e8

    div-long v10, v12, v10

    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v5, 0x4

    const-wide/16 v10, 0x3e8

    div-long v10, v14, v10

    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_10e
    .catch Ljava/lang/NumberFormatException; {:try_start_7e .. :try_end_10e} :catch_13d

    move-result-object v18

    .line 618
    .end local v12    # "clampedEarlyRuntimeElapsed":J
    .end local v14    # "clampedLateRuntimeElapsed":J
    .end local v22    # "periodMillis":J
    .end local v24    # "val":Ljava/lang/String;
    :cond_10f
    :goto_10f
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 620
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 624
    :cond_11b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .line 625
    const/4 v5, 0x4

    move/from16 v0, v19

    if-eq v0, v5, :cond_11b

    .line 626
    const/4 v5, 0x2

    move/from16 v0, v19

    if-ne v0, v5, :cond_136

    const-string/jumbo v5, "extras"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1aa

    .line 631
    :cond_136
    const/4 v5, 0x0

    goto/16 :goto_37

    .line 560
    .end local v16    # "elapsedNow":J
    .end local v18    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_139
    move-exception v4

    .line 564
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    goto/16 :goto_37

    .line 594
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "elapsedNow":J
    .restart local v18    # "elapsedRuntimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_13d
    move-exception v4

    .line 595
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    const-string v5, "JobStore"

    const-string v6, "Error reading periodic execution criteria, skipping."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v5, 0x0

    goto/16 :goto_37

    .line 598
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_148
    const-string/jumbo v5, "one-off"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a7

    .line 600
    :try_start_155
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_176

    .line 601
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v8, v16

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 603
    :cond_176
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v5, v8, v10

    if-eqz v5, :cond_10f

    .line 604
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v8, v16

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_19a
    .catch Ljava/lang/NumberFormatException; {:try_start_155 .. :try_end_19a} :catch_19c

    goto/16 :goto_10f

    .line 607
    :catch_19c
    move-exception v4

    .line 608
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    const-string v5, "JobStore"

    const-string v6, "Error reading job execution criteria, skipping."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v5, 0x0

    goto/16 :goto_37

    .line 616
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_1a7
    const/4 v5, 0x0

    goto/16 :goto_37

    .line 634
    :cond_1aa
    invoke-static/range {p1 .. p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v20

    .line 635
    .local v20, "extras":Landroid/os/PersistableBundle;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 636
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 638
    new-instance v5, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual/range {v21 .. v21}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v6

    move-object/from16 v0, v18

    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct/range {v5 .. v11}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;IJJ)V

    goto/16 :goto_37
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 427
    :try_start_0
    iget-object v3, p0, this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;
    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$100(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 428
    .local v0, "fis":Ljava/io/FileInputStream;
    iget-object v4, p0, this$0:Lcom/android/server/job/JobStore;

    monitor-enter v4
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_d} :catch_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_d} :catch_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_30

    .line 429
    :try_start_d
    invoke-direct {p0, v0}, readJobMapImpl(Ljava/io/FileInputStream;)Ljava/util/List;

    move-result-object v2

    .line 430
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v2, :cond_26

    .line 431
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_26

    .line 432
    iget-object v3, p0, jobSet:Landroid/util/ArraySet;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 435
    .end local v1    # "i":I
    :cond_26
    monitor-exit v4
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_2b

    .line 436
    :try_start_27
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2a} :catch_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_2a} :catch_32
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_30

    .line 450
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_2a
    return-void

    .line 435
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v3
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_2e} :catch_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_2e} :catch_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2e} :catch_30

    .line 437
    .end local v0    # "fis":Ljava/io/FileInputStream;
    :catch_2e
    move-exception v3

    goto :goto_2a

    .line 445
    :catch_30
    move-exception v3

    goto :goto_2a

    .line 441
    :catch_32
    move-exception v3

    goto :goto_2a
.end method
