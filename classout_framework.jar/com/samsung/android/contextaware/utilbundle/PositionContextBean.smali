.class Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
.super Ljava/lang/Object;
.source "PositionContextBean.java"


# static fields
.field static final FUSED_TYPE:I = 0x3

.field static final GPS_TYPE:I = 0x1

.field static final NONE_TYPE:I = 0x0

.field static final SLOCATION_TYPE:I = 0x4

.field static final WPS_TYPE:I = 0x2


# instance fields
.field private accuracy:F

.field private altitude:D

.field private distance:D

.field private latitude:D

.field private longitude:D

.field private satelliteCount:I

.field private speed:F

.field private type:I

.field private utcTime:[I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0}, clearPosition()V

    .line 73
    return-void
.end method

.method constructor <init>(F)V
    .registers 2
    .param p1, "accuracy"    # F

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p0}, clearPosition()V

    .line 83
    iput p1, p0, accuracy:F

    .line 84
    return-void
.end method

.method static final calculationDistance(DDDD)D
    .registers 16
    .param p0, "preLatitude"    # D
    .param p2, "preLongitude"    # D
    .param p4, "curLatitude"    # D
    .param p6, "curLongitude"    # D

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0x0

    .line 325
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 326
    .local v0, "distance":D
    cmpl-double v2, p0, v4

    if-ltz v2, :cond_1f

    cmpl-double v2, p2, v4

    if-ltz v2, :cond_1f

    .line 327
    sub-double v2, p4, p0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double v4, p6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 330
    :cond_1f
    return-wide v0
.end method


# virtual methods
.method final clearPosition()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 90
    iput v1, p0, type:I

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, utcTime:[I

    .line 92
    iput-wide v2, p0, latitude:D

    .line 93
    iput-wide v2, p0, longitude:D

    .line 94
    iput-wide v2, p0, altitude:D

    .line 95
    iput-wide v2, p0, distance:D

    .line 96
    const/4 v0, 0x0

    iput v0, p0, speed:F

    .line 97
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, accuracy:F

    .line 98
    iput v1, p0, satelliteCount:I

    .line 99
    return-void
.end method

.method final getAccuracy()F
    .registers 2

    .prologue
    .line 277
    iget v0, p0, accuracy:F

    return v0
.end method

.method final getAltitude()D
    .registers 3

    .prologue
    .line 220
    iget-wide v0, p0, altitude:D

    return-wide v0
.end method

.method final getDistance()D
    .registers 3

    .prologue
    .line 239
    iget-wide v0, p0, distance:D

    return-wide v0
.end method

.method final getLatitude()D
    .registers 3

    .prologue
    .line 182
    iget-wide v0, p0, latitude:D

    return-wide v0
.end method

.method final getLongitude()D
    .registers 3

    .prologue
    .line 201
    iget-wide v0, p0, longitude:D

    return-wide v0
.end method

.method final getSatelliteCount()I
    .registers 2

    .prologue
    .line 296
    iget v0, p0, satelliteCount:I

    return v0
.end method

.method final getSpeed()F
    .registers 2

    .prologue
    .line 258
    iget v0, p0, speed:F

    return v0
.end method

.method final getType()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, type:I

    return v0
.end method

.method final getUtcTime()[I
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, utcTime:[I

    return-object v0
.end method

.method final setAccuracy(F)V
    .registers 2
    .param p1, "accuracy"    # F

    .prologue
    .line 287
    iput p1, p0, accuracy:F

    .line 288
    return-void
.end method

.method final setAltitude(D)V
    .registers 4
    .param p1, "altitude"    # D

    .prologue
    .line 230
    iput-wide p1, p0, altitude:D

    .line 231
    return-void
.end method

.method final setDistance(D)V
    .registers 4
    .param p1, "distance"    # D

    .prologue
    .line 249
    iput-wide p1, p0, distance:D

    .line 250
    return-void
.end method

.method final setLatitude(D)V
    .registers 4
    .param p1, "latitude"    # D

    .prologue
    .line 192
    iput-wide p1, p0, latitude:D

    .line 193
    return-void
.end method

.method final setLongitude(D)V
    .registers 4
    .param p1, "longitude"    # D

    .prologue
    .line 211
    iput-wide p1, p0, longitude:D

    .line 212
    return-void
.end method

.method final setPosition(I[IDDDDFFI)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "utcTime"    # [I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "distance"    # D
    .param p11, "speed"    # F
    .param p12, "accuracy"    # F
    .param p13, "satelliteCount"    # I

    .prologue
    .line 127
    iput p1, p0, type:I

    .line 128
    iput-object p2, p0, utcTime:[I

    .line 129
    iput-wide p3, p0, latitude:D

    .line 130
    iput-wide p5, p0, longitude:D

    .line 131
    iput-wide p7, p0, altitude:D

    .line 132
    iput-wide p9, p0, distance:D

    .line 133
    iput p11, p0, speed:F

    .line 134
    iput p12, p0, accuracy:F

    .line 135
    iput p13, p0, satelliteCount:I

    .line 136
    return-void
.end method

.method final setSatelliteCount(I)V
    .registers 2
    .param p1, "satelliteCount"    # I

    .prologue
    .line 306
    iput p1, p0, satelliteCount:I

    .line 307
    return-void
.end method

.method final setSpeed(F)V
    .registers 2
    .param p1, "speed"    # F

    .prologue
    .line 268
    iput p1, p0, speed:F

    .line 269
    return-void
.end method

.method final setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 154
    iput p1, p0, type:I

    .line 155
    return-void
.end method

.method final setUtcTime([I)V
    .registers 2
    .param p1, "utcTime"    # [I

    .prologue
    .line 173
    iput-object p1, p0, utcTime:[I

    .line 174
    return-void
.end method
