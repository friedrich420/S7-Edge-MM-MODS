.class Lcom/android/server/AnyMotionDetector$RunningSignalStats;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunningSignalStats"
.end annotation


# instance fields
.field currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field energy:F

.field previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

.field sampleCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    invoke-virtual {p0}, reset()V

    .line 381
    return-void
.end method


# virtual methods
.method public accumulate(Lcom/android/server/AnyMotionDetector$Vector3;)V
    .registers 7
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .prologue
    .line 395
    if-nez p1, :cond_3

    .line 412
    :cond_2
    :goto_2
    return-void

    .line 399
    :cond_3
    iget v2, p0, sampleCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, sampleCount:I

    .line 400
    iget-object v2, p0, runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v2, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->plus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v2

    iput-object v2, p0, runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 401
    iget-object v2, p0, currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v2, p0, previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 402
    iput-object p1, p0, currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 403
    iget-object v2, p0, previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-eqz v2, :cond_2

    .line 404
    iget-object v2, p0, currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-object v3, p0, previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v2, v3}, Lcom/android/server/AnyMotionDetector$Vector3;->minus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    .line 405
    .local v0, "dv":Lcom/android/server/AnyMotionDetector$Vector3;
    iget v2, v0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v3, v0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v4, v0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v4, v0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 406
    .local v1, "incrementalEnergy":F
    iget v2, p0, energy:F

    add-float/2addr v2, v1

    iput v2, p0, energy:F

    goto :goto_2
.end method

.method public getEnergy()F
    .registers 2

    .prologue
    .line 422
    iget v0, p0, energy:F

    return v0
.end method

.method public getRunningAverage()Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 4

    .prologue
    .line 415
    iget v0, p0, sampleCount:I

    if-lez v0, :cond_11

    .line 416
    iget-object v0, p0, runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, sampleCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/AnyMotionDetector$Vector3;->times(F)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    .line 418
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getSampleCount()I
    .registers 2

    .prologue
    .line 426
    iget v0, p0, sampleCount:I

    return v0
.end method

.method public reset()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 384
    iput-object v0, p0, previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 385
    iput-object v0, p0, currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 386
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    const-wide/16 v2, 0x0

    move v5, v4

    move v6, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    iput-object v1, p0, runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 387
    iput v4, p0, energy:F

    .line 388
    const/4 v0, 0x0

    iput v0, p0, sampleCount:I

    .line 389
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 431
    const-string v1, ""

    .line 432
    .local v1, "msg":Ljava/lang/String;
    iget-object v3, p0, currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-nez v3, :cond_72

    const-string/jumbo v0, "null"

    .line 434
    .local v0, "currentVectorString":Ljava/lang/String;
    :goto_9
    iget-object v3, p0, previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-nez v3, :cond_79

    const-string/jumbo v2, "null"

    .line 436
    .local v2, "previousVectorString":Ljava/lang/String;
    :goto_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "previousVector = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentVector = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sampleCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, sampleCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", energy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, energy:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    return-object v1

    .line 432
    .end local v0    # "currentVectorString":Ljava/lang/String;
    .end local v2    # "previousVectorString":Ljava/lang/String;
    :cond_72
    iget-object v3, p0, currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v3}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 434
    .restart local v0    # "currentVectorString":Ljava/lang/String;
    :cond_79
    iget-object v3, p0, previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v3}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_10
.end method
