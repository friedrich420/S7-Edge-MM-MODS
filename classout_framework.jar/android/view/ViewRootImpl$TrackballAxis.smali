.class final Landroid/view/ViewRootImpl$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final FIRST_MOVEMENT_THRESHOLD:F = 0.5f

.field static final MAX_ACCELERATION:F = 20.0f

.field static final SECOND_CUMULATIVE_MOVEMENT_THRESHOLD:F = 2.0f

.field static final SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD:F = 1.0f


# instance fields
.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 5589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5615
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, acceleration:F

    .line 5616
    const-wide/16 v0, 0x0

    iput-wide v0, p0, lastMoveTime:J

    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .registers 13
    .param p1, "off"    # F
    .param p2, "time"    # J
    .param p4, "axis"    # Ljava/lang/String;

    .prologue
    .line 5641
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_53

    .line 5642
    const/high16 v6, 0x43160000    # 150.0f

    mul-float/2addr v6, p1

    float-to-long v4, v6

    .line 5643
    .local v4, "normTime":J
    iget v6, p0, dir:I

    if-gez v6, :cond_1b

    .line 5645
    const/4 v6, 0x0

    iput v6, p0, position:F

    .line 5646
    const/4 v6, 0x0

    iput v6, p0, step:I

    .line 5647
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, acceleration:F

    .line 5648
    const-wide/16 v6, 0x0

    iput-wide v6, p0, lastMoveTime:J

    .line 5650
    :cond_1b
    const/4 v6, 0x1

    iput v6, p0, dir:I

    .line 5668
    :goto_1e
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_47

    .line 5669
    iget-wide v6, p0, lastMoveTime:J

    sub-long v2, p2, v6

    .line 5670
    .local v2, "delta":J
    iput-wide p2, p0, lastMoveTime:J

    .line 5671
    iget v0, p0, acceleration:F

    .line 5672
    .local v0, "acc":F
    cmp-long v6, v2, v4

    if-gez v6, :cond_79

    .line 5674
    sub-long v6, v4, v2

    long-to-float v6, v6

    const v7, 0x3ccccccd    # 0.025f

    mul-float v1, v6, v7

    .line 5675
    .local v1, "scale":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_3f

    mul-float/2addr v0, v1

    .line 5679
    :cond_3f
    const/high16 v6, 0x41a00000    # 20.0f

    cmpg-float v6, v0, v6

    if-gez v6, :cond_76

    .end local v0    # "acc":F
    :goto_45
    iput v0, p0, acceleration:F

    .line 5690
    .end local v1    # "scale":F
    .end local v2    # "delta":J
    :cond_47
    :goto_47
    iget v6, p0, position:F

    add-float/2addr v6, p1

    iput v6, p0, position:F

    .line 5691
    iget v6, p0, position:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    return v6

    .line 5651
    .end local v4    # "normTime":J
    :cond_53
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_73

    .line 5652
    neg-float v6, p1

    const/high16 v7, 0x43160000    # 150.0f

    mul-float/2addr v6, v7

    float-to-long v4, v6

    .line 5653
    .restart local v4    # "normTime":J
    iget v6, p0, dir:I

    if-lez v6, :cond_6f

    .line 5655
    const/4 v6, 0x0

    iput v6, p0, position:F

    .line 5656
    const/4 v6, 0x0

    iput v6, p0, step:I

    .line 5657
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, acceleration:F

    .line 5658
    const-wide/16 v6, 0x0

    iput-wide v6, p0, lastMoveTime:J

    .line 5660
    :cond_6f
    const/4 v6, -0x1

    iput v6, p0, dir:I

    goto :goto_1e

    .line 5662
    .end local v4    # "normTime":J
    :cond_73
    const-wide/16 v4, 0x0

    .restart local v4    # "normTime":J
    goto :goto_1e

    .line 5679
    .restart local v0    # "acc":F
    .restart local v1    # "scale":F
    .restart local v2    # "delta":J
    :cond_76
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_45

    .line 5682
    .end local v1    # "scale":F
    :cond_79
    sub-long v6, v2, v4

    long-to-float v6, v6

    const v7, 0x3ccccccd    # 0.025f

    mul-float v1, v6, v7

    .line 5683
    .restart local v1    # "scale":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_88

    div-float/2addr v0, v1

    .line 5687
    :cond_88
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v0, v6

    if-lez v6, :cond_91

    .end local v0    # "acc":F
    :goto_8e
    iput v0, p0, acceleration:F

    goto :goto_47

    .restart local v0    # "acc":F
    :cond_91
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8e
.end method

.method generate()I
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 5703
    const/4 v2, 0x0

    .line 5704
    .local v2, "movement":I
    const/4 v4, 0x0

    iput v4, p0, nonAccelMovement:I

    .line 5706
    :goto_9
    iget v4, p0, position:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_21

    move v1, v3

    .line 5707
    .local v1, "dir":I
    :goto_11
    iget v4, p0, step:I

    packed-switch v4, :pswitch_data_6e

    .line 5739
    iget v4, p0, position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_53

    .line 5740
    :cond_20
    return v2

    .line 5706
    .end local v1    # "dir":I
    :cond_21
    const/4 v1, -0x1

    goto :goto_11

    .line 5712
    .restart local v1    # "dir":I
    :pswitch_23
    iget v4, p0, position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_20

    .line 5715
    add-int/2addr v2, v1

    .line 5716
    iget v4, p0, nonAccelMovement:I

    add-int/2addr v4, v1

    iput v4, p0, nonAccelMovement:I

    .line 5717
    iput v3, p0, step:I

    goto :goto_9

    .line 5723
    :pswitch_38
    iget v4, p0, position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-ltz v4, :cond_20

    .line 5726
    add-int/2addr v2, v1

    .line 5727
    iget v4, p0, nonAccelMovement:I

    add-int/2addr v4, v1

    iput v4, p0, nonAccelMovement:I

    .line 5728
    iget v4, p0, position:F

    int-to-float v5, v1

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    iput v4, p0, position:F

    .line 5729
    const/4 v4, 0x2

    iput v4, p0, step:I

    goto :goto_9

    .line 5742
    :cond_53
    add-int/2addr v2, v1

    .line 5743
    iget v4, p0, position:F

    int-to-float v5, v1

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, position:F

    .line 5744
    iget v0, p0, acceleration:F

    .line 5745
    .local v0, "acc":F
    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v4

    .line 5746
    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_6a

    .end local v0    # "acc":F
    :goto_67
    iput v0, p0, acceleration:F

    goto :goto_9

    .restart local v0    # "acc":F
    :cond_6a
    iget v0, p0, acceleration:F

    goto :goto_67

    .line 5707
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_23
        :pswitch_38
    .end packed-switch
.end method

.method reset(I)V
    .registers 4
    .param p1, "_step"    # I

    .prologue
    .line 5622
    const/4 v0, 0x0

    iput v0, p0, position:F

    .line 5623
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, acceleration:F

    .line 5624
    const-wide/16 v0, 0x0

    iput-wide v0, p0, lastMoveTime:J

    .line 5625
    iput p1, p0, step:I

    .line 5626
    const/4 v0, 0x0

    iput v0, p0, dir:I

    .line 5627
    return-void
.end method
