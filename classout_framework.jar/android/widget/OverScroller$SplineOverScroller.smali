.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_MODE:I = 0x1

.field private static final DISTANCE_M1:F = 3.0f

.field private static final DISTANCE_M2:F = 1.5f

.field private static final DURATION_M1:F = 3.0f

.field private static final DURATION_M2:F = 1.8f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final HIGHER_TIME_GAP_COMPENSATION:J = 0x1L

.field private static final HIGHER_TIME_GAP_MARGIN:J = 0x1L

.field private static INFLEXION:F = 0.0f

.field private static final INFLEXIONS:[F

.field private static final LOWER_TIME_GAP_COMPENSATION:J = 0x1L

.field private static final LOWER_TIME_GAP_MARGIN:J = 0x1L

.field private static final MARGIN_COMPENSATION_STARTING_COUNT:I = 0x1e

.field private static final NB_SAMPLES:I = 0x64

.field public static final ORIGINAL_MODE:I = 0x0

.field public static final SMOOTH_MODE:I = 0x1

.field private static final SPLINE:I = 0x0

.field private static SPLINE_POSITION:[F = null

.field private static final SPLINE_POSITIONS:[[F

.field private static SPLINE_TIME:[F = null

.field private static final SPLINE_TIMES:[[F

.field private static final START_TENSION:F = 0.5f

.field private static mEnableSmoothFling:Z

.field private static mRegulateCurrentTimeInterval:Z


# instance fields
.field private fBoostParamVal:[I

.field private fBoostTimeOut:I

.field private flingBoostTimeOut:I

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mIsDVFSBoosting:Z

.field private mIsPerfBoostEnabled:Z

.field private mIsPerfLockAcquired:Z

.field private mMaximumVelocity:I

.field private mOver:I

.field private mPerf:Landroid/util/BoostFramework;

.field private mPhysicalCoeff:F

.field private mPrevTime:J

.field private mPrevTimeGap:J

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mUpdateCount:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .prologue
    .line 633
    const-wide v14, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const-wide v16, 0x3feccccccccccccdL    # 0.9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v14, v14, v16

    double-to-float v14, v14

    sput v14, DECELERATION_RATE:F

    .line 645
    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_138

    sput-object v14, INFLEXIONS:[F

    .line 646
    sget-object v14, INFLEXIONS:[F

    const/4 v15, 0x1

    aget v14, v14, v15

    sput v14, INFLEXION:F

    .line 662
    const/4 v14, 0x2

    const/16 v15, 0x65

    filled-new-array {v14, v15}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[F

    sput-object v14, SPLINE_POSITIONS:[[F

    .line 663
    const/4 v14, 0x2

    const/16 v15, 0x65

    filled-new-array {v14, v15}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[F

    sput-object v14, SPLINE_TIMES:[[F

    .line 664
    sget-object v14, SPLINE_POSITIONS:[[F

    const/4 v15, 0x1

    aget-object v14, v14, v15

    sput-object v14, SPLINE_POSITION:[F

    .line 665
    sget-object v14, SPLINE_TIMES:[[F

    const/4 v15, 0x1

    aget-object v14, v14, v15

    sput-object v14, SPLINE_TIME:[F

    .line 685
    const/4 v14, 0x1

    sput-boolean v14, mEnableSmoothFling:Z

    .line 686
    const/4 v14, 0x1

    sput-boolean v14, mRegulateCurrentTimeInterval:Z

    .line 708
    const/4 v6, 0x0

    .local v6, "mode":I
    :goto_5d
    const/4 v14, 0x2

    if-ge v6, v14, :cond_136

    .line 710
    const/high16 v14, 0x3f000000    # 0.5f

    sget-object v15, INFLEXIONS:[F

    aget v15, v15, v6

    mul-float v0, v14, v15

    .line 711
    .local v0, "P1":F
    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    sget-object v17, INFLEXIONS:[F

    aget v17, v17, v6

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    sub-float v1, v14, v15

    .line 714
    .local v1, "P2":F
    const/4 v10, 0x0

    .line 715
    .local v10, "x_min":F
    const/4 v13, 0x0

    .line 716
    .local v13, "y_min":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7b
    const/16 v14, 0x64

    if-ge v5, v14, :cond_120

    .line 717
    int-to-float v14, v5

    const/high16 v15, 0x42c80000    # 100.0f

    div-float v2, v14, v15

    .line 719
    .local v2, "alpha":F
    const/high16 v9, 0x3f800000    # 1.0f

    .line 722
    .local v9, "x_max":F
    :goto_86
    sub-float v14, v9, v10

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float v8, v10, v14

    .line 723
    .local v8, "x":F
    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v14, v8

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v8

    mul-float v3, v14, v15

    .line 724
    .local v3, "coef":F
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v8

    mul-float/2addr v14, v0

    mul-float v15, v8, v1

    add-float/2addr v14, v15

    mul-float/2addr v14, v3

    mul-float v15, v8, v8

    mul-float/2addr v15, v8

    add-float v7, v14, v15

    .line 725
    .local v7, "tx":F
    sub-float v14, v7, v2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v14, v14, v16

    if-gez v14, :cond_10e

    .line 732
    sget-object v14, SPLINE_POSITIONS:[[F

    aget-object v14, v14, v6

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v8

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    add-float/2addr v15, v8

    mul-float/2addr v15, v3

    mul-float v16, v8, v8

    mul-float v16, v16, v8

    add-float v15, v15, v16

    aput v15, v14, v5

    .line 735
    const/high16 v12, 0x3f800000    # 1.0f

    .line 738
    .local v12, "y_max":F
    :goto_c9
    sub-float v14, v12, v13

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float v11, v13, v14

    .line 739
    .local v11, "y":F
    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v14, v11

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v11

    mul-float v3, v14, v15

    .line 740
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v11

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    add-float/2addr v14, v11

    mul-float/2addr v14, v3

    mul-float v15, v11, v11

    mul-float/2addr v15, v11

    add-float v4, v14, v15

    .line 741
    .local v4, "dy":F
    sub-float v14, v4, v2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v14, v14, v16

    if-gez v14, :cond_118

    .line 748
    sget-object v14, SPLINE_TIMES:[[F

    aget-object v14, v14, v6

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v11

    mul-float/2addr v15, v0

    mul-float v16, v11, v1

    add-float v15, v15, v16

    mul-float/2addr v15, v3

    mul-float v16, v11, v11

    mul-float v16, v16, v11

    add-float v15, v15, v16

    aput v15, v14, v5

    .line 716
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7b

    .line 726
    .end local v4    # "dy":F
    .end local v11    # "y":F
    .end local v12    # "y_max":F
    :cond_10e
    cmpl-float v14, v7, v2

    if-lez v14, :cond_115

    move v9, v8

    goto/16 :goto_86

    .line 727
    :cond_115
    move v10, v8

    goto/16 :goto_86

    .line 742
    .restart local v4    # "dy":F
    .restart local v11    # "y":F
    .restart local v12    # "y_max":F
    :cond_118
    cmpl-float v14, v4, v2

    if-lez v14, :cond_11e

    move v12, v11

    goto :goto_c9

    .line 743
    :cond_11e
    move v13, v11

    goto :goto_c9

    .line 754
    .end local v2    # "alpha":F
    .end local v3    # "coef":F
    .end local v4    # "dy":F
    .end local v7    # "tx":F
    .end local v8    # "x":F
    .end local v9    # "x_max":F
    .end local v11    # "y":F
    .end local v12    # "y_max":F
    :cond_120
    sget-object v14, SPLINE_POSITIONS:[[F

    aget-object v14, v14, v6

    const/16 v15, 0x64

    sget-object v16, SPLINE_TIMES:[[F

    aget-object v16, v16, v6

    const/16 v17, 0x64

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    aput v18, v14, v15

    .line 708
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5d

    .line 757
    .end local v0    # "P1":F
    .end local v1    # "P2":F
    .end local v5    # "i":I
    .end local v10    # "x_min":F
    .end local v13    # "y_min":F
    :cond_136
    return-void

    .line 645
    nop

    :array_138
    .array-data 4
        0x3eb33333    # 0.35f
        0x3e6147ae    # 0.22f
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    iput v2, p0, mFlingFriction:F

    .line 625
    iput v3, p0, mState:I

    .line 677
    const/4 v2, 0x0

    iput-object v2, p0, mPerf:Landroid/util/BoostFramework;

    .line 678
    iput-boolean v3, p0, mIsPerfLockAcquired:Z

    .line 679
    iput-boolean v3, p0, mIsPerfBoostEnabled:Z

    .line 680
    iput v3, p0, fBoostTimeOut:I

    .line 681
    iput v3, p0, flingBoostTimeOut:I

    .line 699
    iput v3, p0, mUpdateCount:I

    .line 700
    iput-wide v6, p0, mPrevTime:J

    .line 701
    iput-wide v6, p0, mPrevTimeGap:J

    .line 705
    iput-boolean v3, p0, mIsDVFSBoosting:Z

    .line 782
    iput-boolean v4, p0, mFinished:Z

    .line 783
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43200000    # 160.0f

    mul-float v1, v2, v3

    .line 784
    .local v1, "ppi":F
    const v2, 0x43c10b3d

    mul-float/2addr v2, v1

    const v3, 0x3f570a3d    # 0.84f

    mul-float/2addr v2, v3

    iput v2, p0, mPhysicalCoeff:F

    .line 791
    iget-boolean v2, p0, mIsPerfBoostEnabled:Z

    if-eqz v2, :cond_5a

    .line 792
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, fBoostTimeOut:I

    .line 794
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, fBoostParamVal:[I

    .line 798
    :cond_5a
    sget-boolean v2, mEnableSmoothFling:Z

    if-ne v2, v4, :cond_68

    .line 799
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 800
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, mMaximumVelocity:I

    .line 804
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    :cond_68
    iget-object v2, p0, mPerf:Landroid/util/BoostFramework;

    if-nez v2, :cond_77

    iget-boolean v2, p0, mIsPerfBoostEnabled:Z

    if-eqz v2, :cond_77

    .line 805
    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    iput-object v2, p0, mPerf:Landroid/util/BoostFramework;

    .line 807
    :cond_77
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 584
    iget-boolean v0, p0, mFinished:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 584
    iput-boolean p1, p0, mFinished:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 584
    iget v0, p0, mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/OverScroller$SplineOverScroller;)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 584
    iget v0, p0, mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 584
    iget v0, p0, mStart:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 584
    iget v0, p0, mFinal:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 584
    iget v0, p0, mDuration:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/OverScroller$SplineOverScroller;)J
    .registers 3
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 584
    iget-wide v0, p0, mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 584
    iget v0, p0, mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .registers 16
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .prologue
    const/high16 v11, 0x42c80000    # 100.0f

    .line 825
    sub-int v2, p2, p1

    .line 826
    .local v2, "oldDistance":I
    sub-int v1, p3, p1

    .line 827
    .local v1, "newDistance":I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 828
    .local v6, "x":F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 829
    .local v0, "index":I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_37

    .line 830
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 831
    .local v7, "x_inf":F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 832
    .local v8, "x_sup":F
    sget-object v9, SPLINE_TIME:[F

    aget v3, v9, v0

    .line 833
    .local v3, "t_inf":F
    sget-object v9, SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 834
    .local v4, "t_sup":F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 835
    .local v5, "timeCoef":F
    iget v9, p0, mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, mDuration:I

    .line 837
    .end local v3    # "t_inf":F
    .end local v4    # "t_sup":F
    .end local v5    # "timeCoef":F
    .end local v7    # "x_inf":F
    .end local v8    # "x_sup":F
    :cond_37
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .registers 14
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 1023
    neg-int v5, p3

    int-to-float v5, v5

    iget v6, p0, mDeceleration:F

    div-float v2, v5, v6

    .line 1025
    .local v2, "durationToApex":F
    int-to-float v5, p3

    int-to-float v6, p3

    mul-float v4, v5, v6

    .line 1026
    .local v4, "velocitySquared":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    iget v6, p0, mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v0, v5, v6

    .line 1027
    .local v0, "distanceToApex":F
    sub-int v5, p2, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v1, v5

    .line 1028
    .local v1, "distanceToEdge":F
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-float v5, v0, v1

    float-to-double v8, v5

    mul-double/2addr v6, v8

    iget v5, p0, mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 1030
    .local v3, "totalDuration":F
    iget-wide v6, p0, mStartTime:J

    const/high16 v5, 0x447a0000    # 1000.0f

    sub-float v8, v3, v2

    mul-float/2addr v5, v8

    float-to-int v5, v5

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, mStartTime:J

    .line 1031
    iput p2, p0, mStart:I

    iput p2, p0, mCurrentPosition:I

    .line 1032
    iget v5, p0, mDeceleration:F

    neg-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, mVelocity:I

    .line 1033
    return-void
.end method

.method private static getDeceleration(I)F
    .registers 2
    .param p0, "velocity"    # I

    .prologue
    .line 817
    if-lez p0, :cond_5

    const/high16 v0, -0x3b060000    # -2000.0f

    :goto_4
    return v0

    :cond_5
    const/high16 v0, 0x44fa0000    # 2000.0f

    goto :goto_4
.end method

.method private getSplineDeceleration(I)D
    .registers 5
    .param p1, "velocity"    # I

    .prologue
    .line 975
    sget v0, INFLEXION:F

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, mFlingFriction:F

    iget v2, p0, mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .registers 16
    .param p1, "velocity"    # I

    .prologue
    .line 979
    invoke-direct {p0, p1}, getSplineDeceleration(I)D

    move-result-wide v4

    .line 980
    .local v4, "l":D
    sget v9, DECELERATION_RATE:F

    float-to-double v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v0, v10, v12

    .line 983
    .local v0, "decelMinusOne":D
    sget-boolean v9, mEnableSmoothFling:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_46

    .line 984
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, mMaximumVelocity:I

    int-to-float v10, v10

    div-float v3, v9, v10

    .line 985
    .local v3, "rate":F
    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v9, v3

    float-to-int v2, v9

    .line 987
    .local v2, "index":I
    const/16 v9, 0x64

    if-le v2, v9, :cond_24

    const/16 v2, 0x64

    .line 989
    :cond_24
    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v10, SPLINE_POSITION:[F

    aget v10, v10, v2

    sub-float v8, v9, v10

    .line 990
    .local v8, "value":F
    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v9, v8

    const/high16 v10, 0x3fc00000    # 1.5f

    add-float/2addr v9, v10

    float-to-double v6, v9

    .line 992
    .local v6, "tuningValue":D
    iget v9, p0, mFlingFriction:F

    float-to-double v10, v9

    mul-double/2addr v10, v6

    iget v9, p0, mPhysicalCoeff:F

    float-to-double v12, v9

    mul-double/2addr v10, v12

    sget v9, DECELERATION_RATE:F

    float-to-double v12, v9

    div-double/2addr v12, v0

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    .line 996
    .end local v2    # "index":I
    .end local v3    # "rate":F
    .end local v6    # "tuningValue":D
    .end local v8    # "value":F
    :goto_45
    return-wide v10

    :cond_46
    iget v9, p0, mFlingFriction:F

    iget v10, p0, mPhysicalCoeff:F

    mul-float/2addr v9, v10

    float-to-double v10, v9

    sget v9, DECELERATION_RATE:F

    float-to-double v12, v9

    div-double/2addr v12, v0

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    goto :goto_45
.end method

.method private getSplineFlingDuration(I)I
    .registers 16
    .param p1, "velocity"    # I

    .prologue
    .line 1001
    invoke-direct {p0, p1}, getSplineDeceleration(I)D

    move-result-wide v4

    .line 1002
    .local v4, "l":D
    sget v9, DECELERATION_RATE:F

    float-to-double v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v0, v10, v12

    .line 1005
    .local v0, "decelMinusOne":D
    sget-boolean v9, mEnableSmoothFling:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_43

    .line 1006
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, mMaximumVelocity:I

    int-to-float v10, v10

    div-float v3, v9, v10

    .line 1007
    .local v3, "rate":F
    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v9, v3

    float-to-int v2, v9

    .line 1009
    .local v2, "index":I
    const/16 v9, 0x64

    if-le v2, v9, :cond_24

    const/16 v2, 0x64

    .line 1011
    :cond_24
    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v10, SPLINE_POSITION:[F

    aget v10, v10, v2

    sub-float v8, v9, v10

    .line 1012
    .local v8, "value":F
    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v9, v8

    const v10, 0x3fe66666    # 1.8f

    add-float/2addr v9, v10

    float-to-double v6, v9

    .line 1014
    .local v6, "tuningValue":D
    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v6

    div-double v12, v4, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-int v9, v10

    .line 1018
    .end local v2    # "index":I
    .end local v3    # "rate":F
    .end local v6    # "tuningValue":D
    .end local v8    # "value":F
    :goto_42
    return v9

    :cond_43
    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double v12, v4, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-int v9, v10

    goto :goto_42
.end method

.method private onEdgeReached()V
    .registers 7

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 1078
    iget v3, p0, mVelocity:I

    int-to-float v3, v3

    iget v4, p0, mVelocity:I

    int-to-float v4, v4

    mul-float v2, v3, v4

    .line 1079
    .local v2, "velocitySquared":F
    iget v3, p0, mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v5

    div-float v0, v2, v3

    .line 1080
    .local v0, "distance":F
    iget v3, p0, mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 1082
    .local v1, "sign":F
    iget v3, p0, mOver:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2d

    .line 1084
    neg-float v3, v1

    mul-float/2addr v3, v2

    iget v4, p0, mOver:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    iput v3, p0, mDeceleration:F

    .line 1085
    iget v3, p0, mOver:I

    int-to-float v0, v3

    .line 1088
    :cond_2d
    float-to-int v3, v0

    iput v3, p0, mOver:I

    .line 1089
    const/4 v3, 0x2

    iput v3, p0, mState:I

    .line 1090
    iget v3, p0, mStart:I

    iget v4, p0, mVelocity:I

    if-lez v4, :cond_53

    .end local v0    # "distance":F
    :goto_39
    float-to-int v4, v0

    add-int/2addr v3, v4

    iput v3, p0, mFinal:I

    .line 1091
    const/high16 v3, 0x447a0000    # 1000.0f

    iget v4, p0, mVelocity:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, mDeceleration:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    iput v3, p0, mDuration:I

    .line 1093
    sget-boolean v3, mRegulateCurrentTimeInterval:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_52

    .line 1094
    const/4 v3, 0x0

    iput v3, p0, mUpdateCount:I

    .line 1097
    :cond_52
    return-void

    .line 1090
    .restart local v0    # "distance":F
    :cond_53
    neg-float v0, v0

    goto :goto_39
.end method

.method private startAfterEdge(IIII)V
    .registers 19
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .prologue
    .line 1042
    move/from16 v0, p2

    if-le p1, v0, :cond_14

    move/from16 v0, p3

    if-ge p1, v0, :cond_14

    .line 1043
    const-string v2, "OverScroller"

    const-string/jumbo v3, "startAfterEdge called from a valid position"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v2, 0x1

    iput-boolean v2, p0, mFinished:Z

    .line 1062
    :goto_13
    return-void

    .line 1047
    :cond_14
    move/from16 v0, p3

    if-le p1, v0, :cond_2c

    const/4 v11, 0x1

    .line 1048
    .local v11, "positive":Z
    :goto_19
    if-eqz v11, :cond_2e

    move/from16 v8, p3

    .line 1049
    .local v8, "edge":I
    :goto_1d
    sub-int v10, p1, v8

    .line 1050
    .local v10, "overDistance":I
    mul-int v2, v10, p4

    if-ltz v2, :cond_31

    const/4 v9, 0x1

    .line 1051
    .local v9, "keepIncreasing":Z
    :goto_24
    if-eqz v9, :cond_33

    .line 1053
    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, startBounceAfterEdge(III)V

    goto :goto_13

    .line 1047
    .end local v8    # "edge":I
    .end local v9    # "keepIncreasing":Z
    .end local v10    # "overDistance":I
    .end local v11    # "positive":Z
    :cond_2c
    const/4 v11, 0x0

    goto :goto_19

    .restart local v11    # "positive":Z
    :cond_2e
    move/from16 v8, p2

    .line 1048
    goto :goto_1d

    .line 1050
    .restart local v8    # "edge":I
    .restart local v10    # "overDistance":I
    :cond_31
    const/4 v9, 0x0

    goto :goto_24

    .line 1055
    .restart local v9    # "keepIncreasing":Z
    :cond_33
    move/from16 v0, p4

    invoke-direct {p0, v0}, getSplineFlingDistance(I)D

    move-result-wide v12

    .line 1056
    .local v12, "totalDistance":D
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, v12, v2

    if-lez v2, :cond_58

    .line 1057
    if-eqz v11, :cond_53

    move/from16 v5, p2

    :goto_46
    if-eqz v11, :cond_55

    move v6, p1

    :goto_49
    iget v7, p0, mOver:I

    move-object v2, p0

    move v3, p1

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, fling(IIIII)V

    goto :goto_13

    :cond_53
    move v5, p1

    goto :goto_46

    :cond_55
    move/from16 v6, p3

    goto :goto_49

    .line 1059
    :cond_58
    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, startSpringback(III)V

    goto :goto_13
.end method

.method private startBounceAfterEdge(III)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 1036
    if-nez p3, :cond_11

    sub-int v0, p1, p2

    :goto_4
    invoke-static {v0}, getDeceleration(I)F

    move-result v0

    iput v0, p0, mDeceleration:F

    .line 1037
    invoke-direct {p0, p1, p2, p3}, fitOnBounceCurve(III)V

    .line 1038
    invoke-direct {p0}, onEdgeReached()V

    .line 1039
    return-void

    :cond_11
    move v0, p3

    .line 1036
    goto :goto_4
.end method

.method private startSpringback(III)V
    .registers 12
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 902
    const/4 v1, 0x0

    iput-boolean v1, p0, mFinished:Z

    .line 903
    const/4 v1, 0x1

    iput v1, p0, mState:I

    .line 904
    iput p1, p0, mStart:I

    iput p1, p0, mCurrentPosition:I

    .line 905
    iput p2, p0, mFinal:I

    .line 906
    sub-int v0, p1, p2

    .line 907
    .local v0, "delta":I
    invoke-static {v0}, getDeceleration(I)F

    move-result v1

    iput v1, p0, mDeceleration:F

    .line 909
    neg-int v1, v0

    iput v1, p0, mVelocity:I

    .line 910
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, mOver:I

    .line 911
    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    iget v1, p0, mDeceleration:F

    float-to-double v6, v1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, mDuration:I

    .line 912
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1100
    iget v1, p0, mState:I

    packed-switch v1, :pswitch_data_40

    .line 1124
    :goto_6
    invoke-virtual {p0}, update()Z

    .line 1125
    const/4 v0, 0x1

    :cond_a
    :pswitch_a
    return v0

    .line 1103
    :pswitch_b
    iget v1, p0, mDuration:I

    iget v2, p0, mSplineDuration:I

    if-ge v1, v2, :cond_a

    .line 1105
    iget v0, p0, mFinal:I

    iput v0, p0, mStart:I

    iput v0, p0, mCurrentPosition:I

    .line 1107
    iget v0, p0, mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, mVelocity:I

    .line 1108
    iget v0, p0, mVelocity:I

    invoke-static {v0}, getDeceleration(I)F

    move-result v0

    iput v0, p0, mDeceleration:F

    .line 1109
    iget-wide v0, p0, mStartTime:J

    iget v2, p0, mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, mStartTime:J

    .line 1110
    invoke-direct {p0}, onEdgeReached()V

    goto :goto_6

    .line 1117
    :pswitch_30
    iget-wide v2, p0, mStartTime:J

    iget v1, p0, mDuration:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, mStartTime:J

    .line 1118
    iget v1, p0, mFinal:I

    iget v2, p0, mStart:I

    invoke-direct {p0, v1, v2, v0}, startSpringback(III)V

    goto :goto_6

    .line 1100
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_30
    .end packed-switch
.end method

.method extendDuration(I)V
    .registers 8
    .param p1, "extend"    # I

    .prologue
    .line 876
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 877
    .local v2, "time":J
    iget-wide v4, p0, mStartTime:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    .line 878
    .local v0, "elapsedTime":I
    add-int v1, v0, p1

    iput v1, p0, mDuration:I

    .line 879
    const/4 v1, 0x0

    iput-boolean v1, p0, mFinished:Z

    .line 880
    return-void
.end method

.method finish()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 854
    iget-boolean v0, p0, mIsDVFSBoosting:Z

    if-eqz v0, :cond_a

    .line 855
    invoke-static {v1}, Landroid/os/DVFSHelper;->onSmoothScrollEvent(Z)V

    .line 856
    iput-boolean v1, p0, mIsDVFSBoosting:Z

    .line 858
    :cond_a
    iget-boolean v0, p0, mIsPerfLockAcquired:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_19

    .line 859
    iget-object v0, p0, mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 860
    iput-boolean v1, p0, mIsPerfLockAcquired:Z

    .line 863
    :cond_19
    iget v0, p0, mFinal:I

    iput v0, p0, mCurrentPosition:I

    .line 867
    const/4 v0, 0x1

    iput-boolean v0, p0, mFinished:Z

    .line 868
    return-void
.end method

.method fling(IIIII)V
    .registers 13
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 915
    iput p5, p0, mOver:I

    .line 916
    iput-boolean v5, p0, mFinished:Z

    .line 917
    iput p2, p0, mVelocity:I

    int-to-float v2, p2

    iput v2, p0, mCurrVelocity:F

    .line 918
    iput v5, p0, mSplineDuration:I

    iput v5, p0, mDuration:I

    .line 919
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mStartTime:J

    .line 920
    iput p1, p0, mStart:I

    iput p1, p0, mCurrentPosition:I

    .line 922
    if-gt p1, p4, :cond_1d

    if-ge p1, p3, :cond_21

    .line 923
    :cond_1d
    invoke-direct {p0, p1, p3, p4, p2}, startAfterEdge(IIII)V

    .line 972
    :cond_20
    :goto_20
    return-void

    .line 927
    :cond_21
    iput v5, p0, mState:I

    .line 928
    const-wide/16 v0, 0x0

    .line 930
    .local v0, "totalDistance":D
    if-eqz p2, :cond_5b

    .line 931
    invoke-direct {p0, p2}, getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, mSplineDuration:I

    iput v2, p0, mDuration:I

    .line 932
    invoke-direct {p0, p2}, getSplineFlingDistance(I)D

    move-result-wide v0

    .line 935
    iget-boolean v2, p0, mIsDVFSBoosting:Z

    if-nez v2, :cond_44

    const/16 v2, 0x320

    if-ge p2, v2, :cond_3f

    const/16 v2, -0x320

    if-gt p2, v2, :cond_44

    .line 936
    :cond_3f
    invoke-static {v6}, Landroid/os/DVFSHelper;->onSmoothScrollEvent(Z)V

    .line 937
    iput-boolean v6, p0, mIsDVFSBoosting:Z

    .line 940
    :cond_44
    iget-object v2, p0, mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_5b

    .line 941
    iput-boolean v6, p0, mIsPerfLockAcquired:Z

    .line 942
    iget v2, p0, fBoostTimeOut:I

    if-nez v2, :cond_8b

    .line 944
    iget v2, p0, mDuration:I

    iput v2, p0, flingBoostTimeOut:I

    .line 949
    :goto_52
    iget-object v2, p0, mPerf:Landroid/util/BoostFramework;

    iget v3, p0, flingBoostTimeOut:I

    iget-object v4, p0, fBoostParamVal:[I

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 953
    :cond_5b
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, mSplineDistance:I

    .line 954
    iget v2, p0, mSplineDistance:I

    add-int/2addr v2, p1

    iput v2, p0, mFinal:I

    .line 957
    iget v2, p0, mFinal:I

    if-ge v2, p3, :cond_77

    .line 958
    iget v2, p0, mStart:I

    iget v3, p0, mFinal:I

    invoke-direct {p0, v2, v3, p3}, adjustDuration(III)V

    .line 959
    iput p3, p0, mFinal:I

    .line 962
    :cond_77
    iget v2, p0, mFinal:I

    if-le v2, p4, :cond_84

    .line 963
    iget v2, p0, mStart:I

    iget v3, p0, mFinal:I

    invoke-direct {p0, v2, v3, p4}, adjustDuration(III)V

    .line 964
    iput p4, p0, mFinal:I

    .line 968
    :cond_84
    sget-boolean v2, mRegulateCurrentTimeInterval:Z

    if-ne v2, v6, :cond_20

    .line 969
    iput v5, p0, mUpdateCount:I

    goto :goto_20

    .line 947
    :cond_8b
    iget v2, p0, fBoostTimeOut:I

    iput v2, p0, flingBoostTimeOut:I

    goto :goto_52
.end method

.method notifyEdgeReached(III)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .prologue
    .line 1066
    iget v0, p0, mState:I

    if-nez v0, :cond_12

    .line 1067
    iput p3, p0, mOver:I

    .line 1068
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mStartTime:J

    .line 1071
    iget v0, p0, mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, startAfterEdge(IIII)V

    .line 1073
    :cond_12
    return-void
.end method

.method setFinalPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 871
    iput p1, p0, mFinal:I

    .line 872
    const/4 v0, 0x0

    iput-boolean v0, p0, mFinished:Z

    .line 873
    return-void
.end method

.method setFriction(F)V
    .registers 2
    .param p1, "friction"    # F

    .prologue
    .line 778
    iput p1, p0, mFlingFriction:F

    .line 779
    return-void
.end method

.method public setMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 761
    if-ltz p1, :cond_6

    if-le p1, v0, :cond_7

    .line 774
    :cond_6
    :goto_6
    return-void

    .line 764
    :cond_7
    if-nez p1, :cond_20

    .line 765
    sput-boolean v1, mEnableSmoothFling:Z

    .line 766
    sput-boolean v1, mRegulateCurrentTimeInterval:Z

    .line 771
    :goto_d
    sget-object v0, INFLEXIONS:[F

    aget v0, v0, p1

    sput v0, INFLEXION:F

    .line 772
    sget-object v0, SPLINE_POSITIONS:[[F

    aget-object v0, v0, p1

    sput-object v0, SPLINE_POSITION:[F

    .line 773
    sget-object v0, SPLINE_TIMES:[[F

    aget-object v0, v0, p1

    sput-object v0, SPLINE_TIME:[F

    goto :goto_6

    .line 768
    :cond_20
    sput-boolean v0, mEnableSmoothFling:Z

    .line 769
    sput-boolean v0, mRegulateCurrentTimeInterval:Z

    goto :goto_d
.end method

.method springback(III)Z
    .registers 8
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 883
    iput-boolean v0, p0, mFinished:Z

    .line 885
    iput p1, p0, mFinal:I

    iput p1, p0, mStart:I

    iput p1, p0, mCurrentPosition:I

    .line 886
    iput v1, p0, mVelocity:I

    .line 888
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mStartTime:J

    .line 889
    iput v1, p0, mDuration:I

    .line 891
    if-ge p1, p2, :cond_1e

    .line 892
    invoke-direct {p0, p1, p2, v1}, startSpringback(III)V

    .line 897
    :cond_19
    :goto_19
    iget-boolean v2, p0, mFinished:Z

    if-nez v2, :cond_24

    :goto_1d
    return v0

    .line 893
    :cond_1e
    if-le p1, p3, :cond_19

    .line 894
    invoke-direct {p0, p1, p3, v1}, startSpringback(III)V

    goto :goto_19

    :cond_24
    move v0, v1

    .line 897
    goto :goto_1d
.end method

.method startScroll(III)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 840
    iput-boolean v2, p0, mFinished:Z

    .line 842
    iput p1, p0, mStart:I

    iput p1, p0, mCurrentPosition:I

    .line 843
    add-int v0, p1, p2

    iput v0, p0, mFinal:I

    .line 845
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mStartTime:J

    .line 846
    iput p3, p0, mDuration:I

    .line 849
    const/4 v0, 0x0

    iput v0, p0, mDeceleration:F

    .line 850
    iput v2, p0, mVelocity:I

    .line 851
    return-void
.end method

.method update()Z
    .registers 29

    .prologue
    .line 1134
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v22

    .line 1138
    .local v22, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, mStartTime:J

    move-wide/from16 v24, v0

    sub-long v4, v22, v24

    .line 1139
    .local v4, "currentTime":J
    move-wide v14, v4

    .line 1141
    .local v14, "originalCurrentTime":J
    sget-boolean v24, mRegulateCurrentTimeInterval:Z

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_91

    move-object/from16 v0, p0

    iget v0, v0, mState:I

    move/from16 v24, v0

    if-nez v24, :cond_91

    .line 1142
    move-object/from16 v0, p0

    iget v0, v0, mUpdateCount:I

    move/from16 v24, v0

    if-lez v24, :cond_33

    .line 1143
    move-object/from16 v0, p0

    iget-wide v0, v0, mPrevTime:J

    move-wide/from16 v24, v0

    add-long v24, v24, v4

    const-wide/16 v26, 0x2

    div-long v4, v24, v26

    .line 1145
    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, mUpdateCount:I

    move/from16 v24, v0

    const/16 v25, 0x1e

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_69

    .line 1146
    move-object/from16 v0, p0

    iget-wide v0, v0, mPrevTime:J

    move-wide/from16 v24, v0

    sub-long v6, v4, v24

    .line 1148
    .local v6, "currentTimeGap":J
    move-object/from16 v0, p0

    iget-wide v0, v0, mPrevTimeGap:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    add-long v24, v24, v26

    cmp-long v24, v6, v24

    if-lez v24, :cond_a2

    .line 1149
    move-object/from16 v0, p0

    iget-wide v0, v0, mPrevTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, mPrevTimeGap:J

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    const-wide/16 v26, 0x1

    add-long v4, v24, v26

    .line 1155
    .end local v6    # "currentTimeGap":J
    :cond_69
    :goto_69
    const-wide/16 v24, 0x0

    cmp-long v24, v4, v24

    if-gez v24, :cond_71

    .line 1156
    const-wide/16 v4, 0x0

    .line 1159
    :cond_71
    move-object/from16 v0, p0

    iget-wide v0, v0, mPrevTime:J

    move-wide/from16 v24, v0

    sub-long v24, v4, v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, mPrevTimeGap:J

    .line 1160
    move-object/from16 v0, p0

    iput-wide v4, v0, mPrevTime:J

    .line 1161
    move-object/from16 v0, p0

    iget v0, v0, mUpdateCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mUpdateCount:I

    .line 1165
    :cond_91
    const-wide/16 v24, 0x0

    cmp-long v24, v4, v24

    if-nez v24, :cond_c6

    .line 1167
    move-object/from16 v0, p0

    iget v0, v0, mDuration:I

    move/from16 v24, v0

    if-lez v24, :cond_c3

    const/16 v24, 0x1

    .line 1213
    :goto_a1
    return v24

    .line 1150
    .restart local v6    # "currentTimeGap":J
    :cond_a2
    move-object/from16 v0, p0

    iget-wide v0, v0, mPrevTimeGap:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    sub-long v24, v24, v26

    cmp-long v24, v6, v24

    if-gez v24, :cond_69

    .line 1151
    move-object/from16 v0, p0

    iget-wide v0, v0, mPrevTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, mPrevTimeGap:J

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    const-wide/16 v26, 0x1

    sub-long v4, v24, v26

    goto :goto_69

    .line 1167
    .end local v6    # "currentTimeGap":J
    :cond_c3
    const/16 v24, 0x0

    goto :goto_a1

    .line 1169
    :cond_c6
    move-object/from16 v0, p0

    iget v0, v0, mDuration:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v24, v4, v24

    if-lez v24, :cond_d8

    .line 1170
    const/16 v24, 0x0

    goto :goto_a1

    .line 1173
    :cond_d8
    const-wide/16 v10, 0x0

    .line 1174
    .local v10, "distance":D
    move-object/from16 v0, p0

    iget v0, v0, mState:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_222

    .line 1211
    :goto_e3
    move-object/from16 v0, p0

    iget v0, v0, mStart:I

    move/from16 v24, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mCurrentPosition:I

    .line 1213
    const/16 v24, 0x1

    goto :goto_a1

    .line 1176
    :pswitch_fd
    long-to-float v0, v4

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, mSplineDuration:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v17, v24, v25

    .line 1177
    .local v17, "t":F
    const/high16 v24, 0x42c80000    # 100.0f

    mul-float v24, v24, v17

    move/from16 v0, v24

    float-to-int v13, v0

    .line 1178
    .local v13, "index":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1179
    .local v12, "distanceCoef":F
    const/16 v21, 0x0

    .line 1180
    .local v21, "velocityCoef":F
    const/16 v24, 0x64

    move/from16 v0, v24

    if-ge v13, v0, :cond_146

    .line 1181
    int-to-float v0, v13

    move/from16 v24, v0

    const/high16 v25, 0x42c80000    # 100.0f

    div-float v19, v24, v25

    .line 1182
    .local v19, "t_inf":F
    add-int/lit8 v24, v13, 0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x42c80000    # 100.0f

    div-float v20, v24, v25

    .line 1183
    .local v20, "t_sup":F
    sget-object v24, SPLINE_POSITION:[F

    aget v8, v24, v13

    .line 1184
    .local v8, "d_inf":F
    sget-object v24, SPLINE_POSITION:[F

    add-int/lit8 v25, v13, 0x1

    aget v9, v24, v25

    .line 1185
    .local v9, "d_sup":F
    sub-float v24, v9, v8

    sub-float v25, v20, v19

    div-float v21, v24, v25

    .line 1186
    sub-float v24, v17, v19

    mul-float v24, v24, v21

    add-float v12, v8, v24

    .line 1189
    .end local v8    # "d_inf":F
    .end local v9    # "d_sup":F
    .end local v19    # "t_inf":F
    .end local v20    # "t_sup":F
    :cond_146
    move-object/from16 v0, p0

    iget v0, v0, mSplineDistance:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v12

    move/from16 v0, v24

    float-to-double v10, v0

    .line 1190
    move-object/from16 v0, p0

    iget v0, v0, mSplineDistance:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v21

    move-object/from16 v0, p0

    iget v0, v0, mSplineDuration:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    const/high16 v25, 0x447a0000    # 1000.0f

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mCurrVelocity:F

    goto/16 :goto_e3

    .line 1195
    .end local v12    # "distanceCoef":F
    .end local v13    # "index":I
    .end local v17    # "t":F
    .end local v21    # "velocityCoef":F
    :pswitch_17c
    long-to-float v0, v4

    move/from16 v24, v0

    const/high16 v25, 0x447a0000    # 1000.0f

    div-float v17, v24, v25

    .line 1196
    .restart local v17    # "t":F
    move-object/from16 v0, p0

    iget v0, v0, mVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, mDeceleration:F

    move/from16 v25, v0

    mul-float v25, v25, v17

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mCurrVelocity:F

    .line 1197
    move-object/from16 v0, p0

    iget v0, v0, mVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v17

    move-object/from16 v0, p0

    iget v0, v0, mDeceleration:F

    move/from16 v25, v0

    mul-float v25, v25, v17

    mul-float v25, v25, v17

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v10, v0

    .line 1198
    goto/16 :goto_e3

    .line 1202
    .end local v17    # "t":F
    :pswitch_1c0
    long-to-float v0, v4

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, mDuration:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v17, v24, v25

    .line 1203
    .restart local v17    # "t":F
    mul-float v18, v17, v17

    .line 1204
    .local v18, "t2":F
    move-object/from16 v0, p0

    iget v0, v0, mVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->signum(F)F

    move-result v16

    .line 1205
    .local v16, "sign":F
    move-object/from16 v0, p0

    iget v0, v0, mOver:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v16

    const/high16 v25, 0x40400000    # 3.0f

    mul-float v25, v25, v18

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v26, v26, v17

    mul-float v26, v26, v18

    sub-float v25, v25, v26

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v10, v0

    .line 1206
    move-object/from16 v0, p0

    iget v0, v0, mOver:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v16

    const/high16 v25, 0x40c00000    # 6.0f

    mul-float v24, v24, v25

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v18

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mCurrVelocity:F

    goto/16 :goto_e3

    .line 1174
    nop

    :pswitch_data_222
    .packed-switch 0x0
        :pswitch_fd
        :pswitch_1c0
        :pswitch_17c
    .end packed-switch
.end method

.method updateScroll(F)V
    .registers 5
    .param p1, "q"    # F

    .prologue
    .line 810
    iget v0, p0, mStart:I

    iget v1, p0, mFinal:I

    iget v2, p0, mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, mCurrentPosition:I

    .line 811
    return-void
.end method
