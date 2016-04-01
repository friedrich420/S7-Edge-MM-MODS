.class public final Lcom/android/internal/app/ProcessStats$ServiceState;
.super Lcom/android/internal/app/ProcessStats$DurationsTable;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceState"
.end annotation


# static fields
.field public static final SERVICE_BOUND:I = 0x2

.field static final SERVICE_COUNT:I = 0x4

.field public static final SERVICE_EXEC:I = 0x3

.field public static final SERVICE_RUN:I = 0x0

.field public static final SERVICE_STARTED:I = 0x1


# instance fields
.field mBoundCount:I

.field mBoundStartTime:J

.field public mBoundState:I

.field mExecCount:I

.field mExecStartTime:J

.field public mExecState:I

.field mOwner:Ljava/lang/Object;

.field public final mPackage:Ljava/lang/String;

.field mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

.field public final mProcessName:Ljava/lang/String;

.field mRestarting:Z

.field mRunCount:I

.field mRunStartTime:J

.field public mRunState:I

.field mStarted:Z

.field mStartedCount:I

.field mStartedStartTime:J

.field public mStartedState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .registers 7
    .param p1, "processStats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    .prologue
    const/4 v0, -0x1

    .line 3553
    invoke-direct {p0, p1, p3}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    .line 3534
    iput v0, p0, mRunState:I

    .line 3540
    iput v0, p0, mStartedState:I

    .line 3544
    iput v0, p0, mBoundState:I

    .line 3548
    iput v0, p0, mExecState:I

    .line 3554
    iput-object p2, p0, mPackage:Ljava/lang/String;

    .line 3555
    iput-object p4, p0, mProcessName:Ljava/lang/String;

    .line 3556
    iput-object p5, p0, mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3557
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ProcessStats$ServiceState;IIJIJ)J
    .registers 10
    .param p0, "x0"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # I
    .param p6, "x5"    # J

    .prologue
    .line 3520
    invoke-direct/range {p0 .. p7}, getDuration(IIJIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDuration(IIJIJ)J
    .registers 14
    .param p1, "opType"    # I
    .param p2, "curState"    # I
    .param p3, "startTime"    # J
    .param p5, "memFactor"    # I
    .param p6, "now"    # J

    .prologue
    .line 3781
    mul-int/lit8 v1, p5, 0x4

    add-int v0, p1, v1

    .line 3782
    .local v0, "state":I
    invoke-virtual {p0, v0, p6, p7}, getDuration(IJ)J

    move-result-wide v2

    .line 3783
    .local v2, "time":J
    if-ne p2, p5, :cond_d

    .line 3784
    sub-long v4, p6, p3

    add-long/2addr v2, v4

    .line 3786
    :cond_d
    return-wide v2
.end method

.method private updateRunning(IJ)V
    .registers 8
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 3692
    iget v2, p0, mStartedState:I

    if-ne v2, v1, :cond_d

    iget v2, p0, mBoundState:I

    if-ne v2, v1, :cond_d

    iget v2, p0, mExecState:I

    if-eq v2, v1, :cond_28

    :cond_d
    move v0, p1

    .line 3694
    .local v0, "state":I
    :goto_e
    iget v2, p0, mRunState:I

    if-eq v2, v0, :cond_27

    .line 3695
    iget v2, p0, mRunState:I

    if-eq v2, v1, :cond_2a

    .line 3696
    iget v1, p0, mRunState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x0

    iget-wide v2, p0, mRunStartTime:J

    sub-long v2, p2, v2

    invoke-virtual {p0, v1, v2, v3}, addDuration(IJ)V

    .line 3701
    :cond_23
    :goto_23
    iput v0, p0, mRunState:I

    .line 3702
    iput-wide p2, p0, mRunStartTime:J

    .line 3704
    :cond_27
    return-void

    .end local v0    # "state":I
    :cond_28
    move v0, v1

    .line 3692
    goto :goto_e

    .line 3698
    .restart local v0    # "state":I
    :cond_2a
    if-eq v0, v1, :cond_23

    .line 3699
    iget v1, p0, mRunCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mRunCount:I

    goto :goto_23
.end method


# virtual methods
.method add(Lcom/android/internal/app/ProcessStats$ServiceState;)V
    .registers 4
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats$ServiceState;

    .prologue
    .line 3636
    invoke-virtual {p0, p1}, addDurations(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    .line 3637
    iget v0, p0, mRunCount:I

    iget v1, p1, mRunCount:I

    add-int/2addr v0, v1

    iput v0, p0, mRunCount:I

    .line 3638
    iget v0, p0, mStartedCount:I

    iget v1, p1, mStartedCount:I

    add-int/2addr v0, v1

    iput v0, p0, mStartedCount:I

    .line 3639
    iget v0, p0, mBoundCount:I

    iget v1, p1, mBoundCount:I

    add-int/2addr v0, v1

    iput v0, p0, mBoundCount:I

    .line 3640
    iget v0, p0, mExecCount:I

    iget v1, p1, mExecCount:I

    add-int/2addr v0, v1

    iput v0, p0, mExecCount:I

    .line 3641
    return-void
.end method

.method public applyNewOwner(Ljava/lang/Object;)V
    .registers 7
    .param p1, "newOwner"    # Ljava/lang/Object;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 3560
    iget-object v2, p0, mOwner:Ljava/lang/Object;

    if-eq v2, p1, :cond_13

    .line 3561
    iget-object v2, p0, mOwner:Ljava/lang/Object;

    if-nez v2, :cond_14

    .line 3562
    iput-object p1, p0, mOwner:Ljava/lang/Object;

    .line 3563
    iget-object v2, p0, mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, p0, mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 3591
    :cond_13
    :goto_13
    return-void

    .line 3567
    :cond_14
    iput-object p1, p0, mOwner:Ljava/lang/Object;

    .line 3568
    iget-boolean v2, p0, mStarted:Z

    if-nez v2, :cond_22

    iget v2, p0, mBoundState:I

    if-ne v2, v4, :cond_22

    iget v2, p0, mExecState:I

    if-eq v2, v4, :cond_13

    .line 3569
    :cond_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3570
    .local v0, "now":J
    iget-boolean v2, p0, mStarted:Z

    if-eqz v2, :cond_2d

    .line 3574
    invoke-virtual {p0, v3, v3, v0, v1}, setStarted(ZIJ)V

    .line 3576
    :cond_2d
    iget v2, p0, mBoundState:I

    if-eq v2, v4, :cond_34

    .line 3580
    invoke-virtual {p0, v3, v3, v0, v1}, setBound(ZIJ)V

    .line 3582
    :cond_34
    iget v2, p0, mExecState:I

    if-eq v2, v4, :cond_13

    .line 3586
    invoke-virtual {p0, v3, v3, v0, v1}, setExecuting(ZIJ)V

    goto :goto_13
.end method

.method public clearCurrentOwner(Ljava/lang/Object;Z)V
    .registers 10
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "silently"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 3594
    iget-object v2, p0, mOwner:Ljava/lang/Object;

    if-ne v2, p1, :cond_ef

    .line 3595
    iget-object v2, p0, mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, p0, mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 3596
    iget-boolean v2, p0, mStarted:Z

    if-nez v2, :cond_19

    iget v2, p0, mBoundState:I

    if-ne v2, v6, :cond_19

    iget v2, p0, mExecState:I

    if-eq v2, v6, :cond_ec

    .line 3597
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3598
    .local v0, "now":J
    iget-boolean v2, p0, mStarted:Z

    if-eqz v2, :cond_62

    .line 3599
    if-nez p2, :cond_5f

    .line 3600
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cleared while started: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    :cond_5f
    invoke-virtual {p0, v5, v5, v0, v1}, setStarted(ZIJ)V

    .line 3606
    :cond_62
    iget v2, p0, mBoundState:I

    if-eq v2, v6, :cond_a7

    .line 3607
    if-nez p2, :cond_a4

    .line 3608
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cleared while bound: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    :cond_a4
    invoke-virtual {p0, v5, v5, v0, v1}, setBound(ZIJ)V

    .line 3614
    :cond_a7
    iget v2, p0, mExecState:I

    if-eq v2, v6, :cond_ec

    .line 3615
    if-nez p2, :cond_e9

    .line 3616
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cleared while exec: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    :cond_e9
    invoke-virtual {p0, v5, v5, v0, v1}, setExecuting(ZIJ)V

    .line 3623
    .end local v0    # "now":J
    :cond_ec
    const/4 v2, 0x0

    iput-object v2, p0, mOwner:Ljava/lang/Object;

    .line 3625
    :cond_ef
    return-void
.end method

.method commitStateTime(J)V
    .registers 8
    .param p1, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 3672
    iget v0, p0, mRunState:I

    if-eq v0, v1, :cond_14

    .line 3673
    iget v0, p0, mRunState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x0

    iget-wide v2, p0, mRunStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, addDuration(IJ)V

    .line 3674
    iput-wide p1, p0, mRunStartTime:J

    .line 3676
    :cond_14
    iget v0, p0, mStartedState:I

    if-eq v0, v1, :cond_27

    .line 3677
    iget v0, p0, mStartedState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    iget-wide v2, p0, mStartedStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, addDuration(IJ)V

    .line 3679
    iput-wide p1, p0, mStartedStartTime:J

    .line 3681
    :cond_27
    iget v0, p0, mBoundState:I

    if-eq v0, v1, :cond_3a

    .line 3682
    iget v0, p0, mBoundState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    iget-wide v2, p0, mBoundStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, addDuration(IJ)V

    .line 3683
    iput-wide p1, p0, mBoundStartTime:J

    .line 3685
    :cond_3a
    iget v0, p0, mExecState:I

    if-eq v0, v1, :cond_4d

    .line 3686
    iget v0, p0, mExecState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x3

    iget-wide v2, p0, mExecStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, addDuration(IJ)V

    .line 3687
    iput-wide p1, p0, mExecStartTime:J

    .line 3689
    :cond_4d
    return-void
.end method

.method public isInUse()Z
    .registers 2

    .prologue
    .line 3628
    iget-object v0, p0, mOwner:Ljava/lang/Object;

    if-nez v0, :cond_8

    iget-boolean v0, p0, mRestarting:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRestarting()Z
    .registers 2

    .prologue
    .line 3632
    iget-boolean v0, p0, mRestarting:Z

    return v0
.end method

.method readFromParcel(Landroid/os/Parcel;)Z
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3661
    invoke-virtual {p0, p1}, readDurationsFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3662
    const/4 v0, 0x0

    .line 3668
    :goto_7
    return v0

    .line 3664
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mRunCount:I

    .line 3665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mStartedCount:I

    .line 3666
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mBoundCount:I

    .line 3667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mExecCount:I

    .line 3668
    const/4 v0, 0x1

    goto :goto_7
.end method

.method resetSafely(J)V
    .registers 8
    .param p1, "now"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 3644
    invoke-virtual {p0}, resetDurationsSafely()V

    .line 3645
    iget v0, p0, mRunState:I

    if-eq v0, v3, :cond_2a

    move v0, v1

    :goto_b
    iput v0, p0, mRunCount:I

    .line 3646
    iget v0, p0, mStartedState:I

    if-eq v0, v3, :cond_2c

    move v0, v1

    :goto_12
    iput v0, p0, mStartedCount:I

    .line 3647
    iget v0, p0, mBoundState:I

    if-eq v0, v3, :cond_2e

    move v0, v1

    :goto_19
    iput v0, p0, mBoundCount:I

    .line 3648
    iget v0, p0, mExecState:I

    if-eq v0, v3, :cond_30

    :goto_1f
    iput v1, p0, mExecCount:I

    .line 3649
    iput-wide p1, p0, mExecStartTime:J

    iput-wide p1, p0, mBoundStartTime:J

    iput-wide p1, p0, mStartedStartTime:J

    iput-wide p1, p0, mRunStartTime:J

    .line 3650
    return-void

    :cond_2a
    move v0, v2

    .line 3645
    goto :goto_b

    :cond_2c
    move v0, v2

    .line 3646
    goto :goto_12

    :cond_2e
    move v0, v2

    .line 3647
    goto :goto_19

    :cond_30
    move v1, v2

    .line 3648
    goto :goto_1f
.end method

.method public setBound(ZIJ)V
    .registers 10
    .param p1, "bound"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 3745
    iget-object v2, p0, mOwner:Ljava/lang/Object;

    if-nez v2, :cond_23

    .line 3746
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without owner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    :cond_23
    if-eqz p1, :cond_43

    move v0, p2

    .line 3749
    .local v0, "state":I
    :goto_26
    iget v2, p0, mBoundState:I

    if-eq v2, v0, :cond_42

    .line 3750
    iget v2, p0, mBoundState:I

    if-eq v2, v1, :cond_45

    .line 3751
    iget v1, p0, mBoundState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x2

    iget-wide v2, p0, mBoundStartTime:J

    sub-long v2, p3, v2

    invoke-virtual {p0, v1, v2, v3}, addDuration(IJ)V

    .line 3756
    :cond_3b
    :goto_3b
    iput v0, p0, mBoundState:I

    .line 3757
    iput-wide p3, p0, mBoundStartTime:J

    .line 3758
    invoke-direct {p0, p2, p3, p4}, updateRunning(IJ)V

    .line 3760
    :cond_42
    return-void

    .end local v0    # "state":I
    :cond_43
    move v0, v1

    .line 3748
    goto :goto_26

    .line 3753
    .restart local v0    # "state":I
    :cond_45
    if-eqz p1, :cond_3b

    .line 3754
    iget v1, p0, mBoundCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mBoundCount:I

    goto :goto_3b
.end method

.method public setExecuting(ZIJ)V
    .registers 10
    .param p1, "executing"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 3763
    iget-object v2, p0, mOwner:Ljava/lang/Object;

    if-nez v2, :cond_23

    .line 3764
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without owner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3766
    :cond_23
    if-eqz p1, :cond_43

    move v0, p2

    .line 3767
    .local v0, "state":I
    :goto_26
    iget v2, p0, mExecState:I

    if-eq v2, v0, :cond_42

    .line 3768
    iget v2, p0, mExecState:I

    if-eq v2, v1, :cond_45

    .line 3769
    iget v1, p0, mExecState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x3

    iget-wide v2, p0, mExecStartTime:J

    sub-long v2, p3, v2

    invoke-virtual {p0, v1, v2, v3}, addDuration(IJ)V

    .line 3773
    :cond_3b
    :goto_3b
    iput v0, p0, mExecState:I

    .line 3774
    iput-wide p3, p0, mExecStartTime:J

    .line 3775
    invoke-direct {p0, p2, p3, p4}, updateRunning(IJ)V

    .line 3777
    :cond_42
    return-void

    .end local v0    # "state":I
    :cond_43
    move v0, v1

    .line 3766
    goto :goto_26

    .line 3770
    .restart local v0    # "state":I
    :cond_45
    if-eqz p1, :cond_3b

    .line 3771
    iget v1, p0, mExecCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mExecCount:I

    goto :goto_3b
.end method

.method public setRestarting(ZIJ)V
    .registers 6
    .param p1, "restarting"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    .line 3715
    iput-boolean p1, p0, mRestarting:Z

    .line 3716
    invoke-virtual {p0, p2, p3, p4}, updateStartedState(IJ)V

    .line 3717
    return-void
.end method

.method public setStarted(ZIJ)V
    .registers 8
    .param p1, "started"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    .line 3707
    iget-object v0, p0, mOwner:Ljava/lang/Object;

    if-nez v0, :cond_22

    .line 3708
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3710
    :cond_22
    iput-boolean p1, p0, mStarted:Z

    .line 3711
    invoke-virtual {p0, p2, p3, p4}, updateStartedState(IJ)V

    .line 3712
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateStartedState(IJ)V
    .registers 12
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 3720
    iget v6, p0, mStartedState:I

    if-eq v6, v5, :cond_46

    move v2, v3

    .line 3721
    .local v2, "wasStarted":Z
    :goto_8
    iget-boolean v6, p0, mStarted:Z

    if-nez v6, :cond_10

    iget-boolean v6, p0, mRestarting:Z

    if-eqz v6, :cond_48

    :cond_10
    move v0, v3

    .line 3722
    .local v0, "started":Z
    :goto_11
    if-eqz v0, :cond_4a

    move v1, p1

    .line 3723
    .local v1, "state":I
    :goto_14
    iget v3, p0, mStartedState:I

    if-eq v3, v1, :cond_45

    .line 3724
    iget v3, p0, mStartedState:I

    if-eq v3, v5, :cond_4c

    .line 3725
    iget v3, p0, mStartedState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    iget-wide v4, p0, mStartedStartTime:J

    sub-long v4, p2, v4

    invoke-virtual {p0, v3, v4, v5}, addDuration(IJ)V

    .line 3730
    :cond_29
    :goto_29
    iput v1, p0, mStartedState:I

    .line 3731
    iput-wide p2, p0, mStartedStartTime:J

    .line 3732
    iget-object v3, p0, mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v4, p0, mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v3

    iput-object v3, p0, mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3733
    if-eq v2, v0, :cond_42

    .line 3734
    if-eqz v0, :cond_55

    .line 3735
    iget-object v3, p0, mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v4, p0, mName:Ljava/lang/String;

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 3740
    :cond_42
    :goto_42
    invoke-direct {p0, p1, p2, p3}, updateRunning(IJ)V

    .line 3742
    :cond_45
    return-void

    .end local v0    # "started":Z
    .end local v1    # "state":I
    .end local v2    # "wasStarted":Z
    :cond_46
    move v2, v4

    .line 3720
    goto :goto_8

    .restart local v2    # "wasStarted":Z
    :cond_48
    move v0, v4

    .line 3721
    goto :goto_11

    .restart local v0    # "started":Z
    :cond_4a
    move v1, v5

    .line 3722
    goto :goto_14

    .line 3727
    .restart local v1    # "state":I
    :cond_4c
    if-eqz v0, :cond_29

    .line 3728
    iget v3, p0, mStartedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, mStartedCount:I

    goto :goto_29

    .line 3737
    :cond_55
    iget-object v3, p0, mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v4, p0, mName:Ljava/lang/String;

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;->decStartedServices(IJLjava/lang/String;)V

    goto :goto_42
.end method

.method writeToParcel(Landroid/os/Parcel;J)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    .prologue
    .line 3653
    invoke-virtual {p0, p1}, writeDurationsToParcel(Landroid/os/Parcel;)V

    .line 3654
    iget v0, p0, mRunCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3655
    iget v0, p0, mStartedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3656
    iget v0, p0, mBoundCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3657
    iget v0, p0, mExecCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3658
    return-void
.end method
