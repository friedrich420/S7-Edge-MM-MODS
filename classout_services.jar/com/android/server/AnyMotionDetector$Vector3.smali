.class Lcom/android/server/AnyMotionDetector$Vector3;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Vector3"
.end annotation


# instance fields
.field public timeMillisSinceBoot:J

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(JFFF)V
    .registers 7
    .param p1, "timeMillisSinceBoot"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-wide p1, p0, timeMillisSinceBoot:J

    .line 308
    iput p3, p0, x:F

    .line 309
    iput p4, p0, y:F

    .line 310
    iput p5, p0, z:F

    .line 311
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .prologue
    .line 300
    invoke-direct {p0}, normalized()Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    return-object v0
.end method

.method private norm()F
    .registers 3

    .prologue
    .line 314
    invoke-virtual {p0, p0}, dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private normalized()Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 8

    .prologue
    .line 318
    invoke-direct {p0}, norm()F

    move-result v0

    .line 319
    .local v0, "mag":F
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v2, p0, timeMillisSinceBoot:J

    iget v4, p0, x:F

    div-float/2addr v4, v0

    iget v5, p0, y:F

    div-float/2addr v5, v0

    iget v6, p0, z:F

    div-float/2addr v6, v0

    invoke-direct/range {v1 .. v6}, <init>(JFFF)V

    return-object v1
.end method


# virtual methods
.method public angleBetween(Lcom/android/server/AnyMotionDetector$Vector3;)F
    .registers 8
    .param p1, "other"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .prologue
    .line 330
    invoke-virtual {p0, p1}, dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 331
    .local v0, "degrees":D
    double-to-float v2, v0

    .line 332
    .local v2, "returnValue":F
    const-string v3, "AnyMotionDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "angleBetween: this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", other = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v3, "AnyMotionDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    degrees = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", returnValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return v2
.end method

.method public dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F
    .registers 5
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .prologue
    .line 349
    iget v0, p0, x:F

    iget v1, p1, x:F

    mul-float/2addr v0, v1

    iget v1, p0, y:F

    iget v2, p1, y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, z:F

    iget v2, p1, z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public minus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 9
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .prologue
    .line 361
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v2, p1, timeMillisSinceBoot:J

    iget v0, p0, x:F

    iget v4, p1, x:F

    sub-float v4, v0, v4

    iget v0, p0, y:F

    iget v5, p1, y:F

    sub-float v5, v0, v5

    iget v0, p0, z:F

    iget v6, p1, z:F

    sub-float v6, v0, v6

    invoke-direct/range {v1 .. v6}, <init>(JFFF)V

    return-object v1
.end method

.method public plus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 9
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .prologue
    .line 357
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v2, p1, timeMillisSinceBoot:J

    iget v0, p0, x:F

    iget v4, p1, x:F

    add-float/2addr v4, v0

    iget v0, p0, y:F

    iget v5, p1, y:F

    add-float/2addr v5, v0

    iget v0, p0, z:F

    iget v6, p1, z:F

    add-float/2addr v6, v0

    invoke-direct/range {v1 .. v6}, <init>(JFFF)V

    return-object v1
.end method

.method public times(F)Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 9
    .param p1, "val"    # F

    .prologue
    .line 353
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v2, p0, timeMillisSinceBoot:J

    iget v0, p0, x:F

    mul-float v4, v0, p1

    iget v0, p0, y:F

    mul-float v5, v0, p1

    iget v0, p0, z:F

    mul-float v6, v0, p1

    invoke-direct/range {v1 .. v6}, <init>(JFFF)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 340
    const-string v0, ""

    .line 341
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "timeMillisSinceBoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, timeMillisSinceBoot:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, z:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    return-object v0
.end method
