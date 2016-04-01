.class final Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;
.super Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OrientationSensorJudge"
.end annotation


# instance fields
.field private mDesiredRotation:I

.field private mProposedRotation:I

.field private mRotationEvaluationScheduled:Z

.field private mRotationEvaluator:Ljava/lang/Runnable;

.field private mTouchEndedTimestampNanos:J

.field private mTouching:Z

.field private mbsmartRotation:Z

.field final synthetic this$0:Lcom/android/server/policy/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowOrientationListener;Z)V
    .registers 6
    .param p2, "bSmartRotation"    # Z

    .prologue
    const/4 v2, -0x1

    .line 521
    iput-object p1, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-direct {p0, p1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    .line 515
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, mTouchEndedTimestampNanos:J

    .line 516
    iput v2, p0, mProposedRotation:I

    .line 517
    iput v2, p0, mDesiredRotation:I

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, mbsmartRotation:Z

    .line 717
    new-instance v0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;-><init>(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;)V

    iput-object v0, p0, mRotationEvaluator:Ljava/lang/Runnable;

    .line 522
    iput-boolean p2, p0, mbsmartRotation:Z

    .line 523
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    .prologue
    .line 513
    invoke-direct {p0}, checkFace()Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;
    .param p1, "x1"    # Z

    .prologue
    .line 513
    iput-boolean p1, p0, mRotationEvaluationScheduled:Z

    return p1
.end method

.method private checkFace()Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 567
    const/4 v2, 0x0

    .line 568
    .local v2, "ret":Z
    iget-object v5, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/WindowOrientationListener;->access$100(Lcom/android/server/policy/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "intelligent_rotation_mode"

    const/4 v7, -0x2

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_24

    move v1, v3

    .line 571
    .local v1, "intelligent_rotation_enabled":Z
    :goto_18
    iget-boolean v5, p0, mbsmartRotation:Z

    if-eqz v5, :cond_1e

    if-nez v1, :cond_26

    .line 572
    :cond_1e
    iget-object v3, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    # invokes: Lcom/android/server/policy/WindowOrientationListener;->setFaceDetectionResult(Z)V
    invoke-static {v3, v4}, Lcom/android/server/policy/WindowOrientationListener;->access$200(Lcom/android/server/policy/WindowOrientationListener;Z)V

    .line 606
    :goto_23
    return v4

    .end local v1    # "intelligent_rotation_enabled":Z
    :cond_24
    move v1, v4

    .line 568
    goto :goto_18

    .line 575
    .restart local v1    # "intelligent_rotation_enabled":Z
    :cond_26
    const/4 v0, 0x0

    .line 576
    .local v0, "bFaceDetected":Z
    const-string v5, "WindowOrientationListener"

    const-string/jumbo v6, "fd ++ "

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-boolean v5, p0, mbsmartRotation:Z

    if-eqz v5, :cond_86

    .line 579
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->sCurrentAppOrientation:I
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$300()I

    move-result v5

    if-eqz v5, :cond_86

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->sCurrentAppOrientation:I
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$300()I

    move-result v5

    if-eq v5, v3, :cond_86

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->sCurrentAppOrientation:I
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$300()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_86

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->sCurrentAppOrientation:I
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$300()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_86

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->sCurrentAppOrientation:I
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$300()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_86

    .line 584
    iget-object v5, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v5}, Lcom/android/server/policy/WindowOrientationListener;->access$400(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_86

    .line 585
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$500()Lcom/samsung/android/smartface/SmartFaceManager;

    move-result-object v5

    if-nez v5, :cond_72

    .line 586
    iget-object v5, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/WindowOrientationListener;->access$100(Lcom/android/server/policy/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/smartface/SmartFaceManager;->getSmartFaceManager(Landroid/content/Context;)Lcom/samsung/android/smartface/SmartFaceManager;

    move-result-object v5

    # setter for: Lcom/android/server/policy/WindowOrientationListener;->msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;
    invoke-static {v5}, Lcom/android/server/policy/WindowOrientationListener;->access$502(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager;

    .line 588
    :cond_72
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$500()Lcom/samsung/android/smartface/SmartFaceManager;

    move-result-object v5

    if-eqz v5, :cond_86

    .line 589
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$500()Lcom/samsung/android/smartface/SmartFaceManager;

    move-result-object v5

    iget-object v6, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v6}, Lcom/android/server/policy/WindowOrientationListener;->access$400(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/smartface/SmartFaceManager;->checkForSmartRotation(I)Z

    move-result v0

    .line 594
    :cond_86
    if-ne v0, v3, :cond_af

    .line 595
    iget-object v4, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    # invokes: Lcom/android/server/policy/WindowOrientationListener;->setFaceDetectionResult(Z)V
    invoke-static {v4, v3}, Lcom/android/server/policy/WindowOrientationListener;->access$200(Lcom/android/server/policy/WindowOrientationListener;Z)V

    .line 596
    iget-object v3, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    iget-object v4, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/policy/WindowOrientationListener;->access$100(Lcom/android/server/policy/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.sec.android.smartface"

    const-string v6, "0001"

    # invokes: Lcom/android/server/policy/WindowOrientationListener;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/policy/WindowOrientationListener;->access$600(Lcom/android/server/policy/WindowOrientationListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v3, "WindowOrientationListener"

    const-string v4, "OrientationSensorJudge detected face, skip rotation  "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v2, 0x1

    .line 604
    :goto_a4
    const-string v3, "WindowOrientationListener"

    const-string/jumbo v4, "fd -- "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 606
    goto/16 :goto_23

    .line 600
    :cond_af
    iget-object v3, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    # invokes: Lcom/android/server/policy/WindowOrientationListener;->setFaceDetectionResult(Z)V
    invoke-static {v3, v4}, Lcom/android/server/policy/WindowOrientationListener;->access$200(Lcom/android/server/policy/WindowOrientationListener;Z)V

    .line 601
    const-string v3, "WindowOrientationListener"

    const-string v4, "OrientationSensorJudge can\'t detect face"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v2, 0x0

    goto :goto_a4
.end method

.method private isDesiredRotationAcceptableLocked(J)Z
    .registers 10
    .param p1, "now"    # J

    .prologue
    const/4 v0, 0x0

    .line 674
    iget-boolean v1, p0, mTouching:Z

    if-eqz v1, :cond_6

    .line 680
    :cond_5
    :goto_5
    return v0

    .line 677
    :cond_6
    iget-wide v2, p0, mTouchEndedTimestampNanos:J

    const-wide/32 v4, 0x1dcd6500

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-ltz v1, :cond_5

    .line 680
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private scheduleRotationEvaluationIfNecessaryLocked(J)V
    .registers 12
    .param p1, "now"    # J

    .prologue
    .line 684
    iget-boolean v4, p0, mRotationEvaluationScheduled:Z

    if-nez v4, :cond_a

    iget v4, p0, mDesiredRotation:I

    iget v5, p0, mProposedRotation:I

    if-ne v4, v5, :cond_19

    .line 685
    :cond_a
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$700()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 686
    const-string v4, "WindowOrientationListener"

    const-string/jumbo v5, "scheduleRotationEvaluationLocked: ignoring, an evaluation is already scheduled or is unnecessary."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_18
    :goto_18
    return-void

    .line 691
    :cond_19
    iget-boolean v4, p0, mTouching:Z

    if-eqz v4, :cond_26

    .line 692
    const-string v4, "WindowOrientationListener"

    const-string/jumbo v5, "ignoring, touching"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 695
    :cond_26
    iget-wide v4, p0, mTouchEndedTimestampNanos:J

    const-wide/32 v6, 0x1dcd6500

    add-long v2, v4, v6

    .line 697
    .local v2, "timeOfNextPossibleRotationNanos":J
    cmp-long v4, p1, v2

    if-ltz v4, :cond_3a

    .line 698
    const-string v4, "WindowOrientationListener"

    const-string/jumbo v5, "ignoring, min time since touch"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 703
    :cond_3a
    sub-long v4, v2, p1

    long-to-float v4, v4

    const v5, 0x358637bd    # 1.0E-6f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v0, v4

    .line 705
    .local v0, "delayMs":J
    iget-object v4, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/WindowOrientationListener;->access$800(Lcom/android/server/policy/WindowOrientationListener;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, mRotationEvaluator:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 706
    const/4 v4, 0x1

    iput-boolean v4, p0, mRotationEvaluationScheduled:Z

    goto :goto_18
.end method

.method private unscheduleRotationEvaluationLocked()V
    .registers 3

    .prologue
    .line 710
    iget-boolean v0, p0, mRotationEvaluationScheduled:Z

    if-nez v0, :cond_5

    .line 715
    :goto_4
    return-void

    .line 713
    :cond_5
    iget-object v0, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->access$800(Lcom/android/server/policy/WindowOrientationListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, mRotationEvaluator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 714
    const/4 v0, 0x0

    iput-boolean v0, p0, mRotationEvaluationScheduled:Z

    goto :goto_4
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OrientationSensorJudge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDesiredRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDesiredRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mProposedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mTouching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mTouching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mTouchEndedTimestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mTouchEndedTimestampNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method public evaluateRotationChangeLocked()I
    .registers 6

    .prologue
    const/4 v2, -0x1

    .line 659
    invoke-direct {p0}, unscheduleRotationEvaluationLocked()V

    .line 660
    iget v3, p0, mDesiredRotation:I

    iget v4, p0, mProposedRotation:I

    if-ne v3, v4, :cond_b

    .line 670
    :goto_a
    return v2

    .line 663
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 664
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, isDesiredRotationAcceptableLocked(J)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 665
    iget v2, p0, mDesiredRotation:I

    iput v2, p0, mProposedRotation:I

    .line 666
    iget v2, p0, mProposedRotation:I

    goto :goto_a

    .line 668
    :cond_1c
    invoke-direct {p0, v0, v1}, scheduleRotationEvaluationIfNecessaryLocked(J)V

    goto :goto_a
.end method

.method public getProposedRotationLocked()I
    .registers 4

    .prologue
    .line 527
    const-string v0, "WindowOrientationListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OrientationSensorJudge.getProposedRotation, Rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mProposedRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget v0, p0, mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 637
    return-void
.end method

.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    .line 610
    const/4 v1, -0x1

    .line 611
    .local v1, "newRotation":I
    iget-object v3, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/policy/WindowOrientationListener;->access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 612
    :try_start_8
    iget-object v2, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 613
    .local v2, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_60

    .line 627
    :goto_11
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_56

    .line 628
    if-ltz v1, :cond_22

    .line 629
    invoke-direct {p0}, checkFace()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 630
    const-string v3, "WindowOrientationListener"

    const-string/jumbo v4, "skip rotation  "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_22
    :goto_22
    return-void

    .line 615
    :pswitch_23
    :try_start_23
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;

    move-result-object v0

    .line 616
    .local v0, "autoRotationContext":Landroid/hardware/scontext/SContextAutoRotation;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextAutoRotation;->getAngle()I

    move-result v3

    iput v3, p0, mDesiredRotation:I

    .line 617
    iget v3, p0, mDesiredRotation:I

    if-ltz v3, :cond_36

    iget v3, p0, mDesiredRotation:I

    const/4 v5, 0x3

    if-le v3, v5, :cond_39

    .line 618
    :cond_36
    const/4 v3, -0x1

    iput v3, p0, mDesiredRotation:I

    .line 620
    :cond_39
    invoke-virtual {p0}, evaluateRotationChangeLocked()I

    move-result v1

    .line 621
    const-string v3, "WindowOrientationListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OrientationSensorJudge.onSContextChanged, Rotation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 627
    .end local v0    # "autoRotationContext":Landroid/hardware/scontext/SContextAutoRotation;
    .end local v2    # "scontext":Landroid/hardware/scontext/SContext;
    :catchall_56
    move-exception v3

    monitor-exit v4
    :try_end_58
    .catchall {:try_start_23 .. :try_end_58} :catchall_56

    throw v3

    .line 632
    .restart local v2    # "scontext":Landroid/hardware/scontext/SContext;
    :cond_59
    iget-object v3, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-virtual {v3, v1}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_22

    .line 613
    nop

    :pswitch_data_60
    .packed-switch 0x6
        :pswitch_23
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 549
    const/4 v0, -0x1

    .line 550
    .local v0, "newRotation":I
    iget-object v1, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/policy/WindowOrientationListener;->access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 551
    :try_start_8
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, mDesiredRotation:I

    .line 552
    iget v1, p0, mDesiredRotation:I

    if-ltz v1, :cond_19

    iget v1, p0, mDesiredRotation:I

    const/4 v3, 0x3

    if-le v1, v3, :cond_1c

    .line 553
    :cond_19
    const/4 v1, -0x1

    iput v1, p0, mDesiredRotation:I

    .line 555
    :cond_1c
    const-string v1, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OrientationSensorJudge.onSensorChanged, Rotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p0}, evaluateRotationChangeLocked()I

    move-result v0

    .line 557
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_4a

    .line 558
    if-ltz v0, :cond_49

    .line 559
    invoke-direct {p0}, checkFace()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 560
    const-string v1, "WindowOrientationListener"

    const-string/jumbo v2, "skip rotation  "

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_49
    :goto_49
    return-void

    .line 557
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1

    .line 562
    :cond_4d
    iget-object v1, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_49
.end method

.method public onTouchEndLocked(J)V
    .registers 8
    .param p1, "whenElapsedNanos"    # J

    .prologue
    .line 538
    const/4 v2, 0x0

    iput-boolean v2, p0, mTouching:Z

    .line 539
    iput-wide p1, p0, mTouchEndedTimestampNanos:J

    .line 540
    iget v2, p0, mDesiredRotation:I

    iget v3, p0, mProposedRotation:I

    if-eq v2, v3, :cond_12

    .line 541
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 542
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, scheduleRotationEvaluationIfNecessaryLocked(J)V

    .line 544
    .end local v0    # "now":J
    :cond_12
    return-void
.end method

.method public onTouchStartLocked()V
    .registers 2

    .prologue
    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, mTouching:Z

    .line 534
    return-void
.end method

.method public resetLocked()V
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 651
    iput v0, p0, mProposedRotation:I

    .line 652
    iput v0, p0, mDesiredRotation:I

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, mTouching:Z

    .line 654
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, mTouchEndedTimestampNanos:J

    .line 655
    invoke-direct {p0}, unscheduleRotationEvaluationLocked()V

    .line 656
    return-void
.end method
