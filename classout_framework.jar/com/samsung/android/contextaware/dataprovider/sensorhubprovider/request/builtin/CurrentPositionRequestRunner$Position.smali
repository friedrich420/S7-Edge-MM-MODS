.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
.super Ljava/lang/Object;
.source "CurrentPositionRequestRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


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
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, type:I

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;[I)[I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # [I

    .prologue
    .line 51
    iput-object p1, p0, utcTime:[I

    return-object p1
.end method

.method static synthetic access$202(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # D

    .prologue
    .line 51
    iput-wide p1, p0, latitude:D

    return-wide p1
.end method

.method static synthetic access$302(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # D

    .prologue
    .line 51
    iput-wide p1, p0, longitude:D

    return-wide p1
.end method

.method static synthetic access$402(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # D

    .prologue
    .line 51
    iput-wide p1, p0, altitude:D

    return-wide p1
.end method

.method static synthetic access$502(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # D

    .prologue
    .line 51
    iput-wide p1, p0, distance:D

    return-wide p1
.end method

.method static synthetic access$602(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iput p1, p0, speed:F

    return p1
.end method

.method static synthetic access$702(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iput p1, p0, accuracy:F

    return p1
.end method

.method static synthetic access$802(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, satelliteCount:I

    return p1
.end method


# virtual methods
.method public getAccuracy()F
    .registers 2

    .prologue
    .line 149
    iget v0, p0, accuracy:F

    return v0
.end method

.method public getAltitude()D
    .registers 3

    .prologue
    .line 122
    iget-wide v0, p0, altitude:D

    return-wide v0
.end method

.method public getDistance()D
    .registers 3

    .prologue
    .line 131
    iget-wide v0, p0, distance:D

    return-wide v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 104
    iget-wide v0, p0, latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 113
    iget-wide v0, p0, longitude:D

    return-wide v0
.end method

.method public getSatelliteCount()I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, satelliteCount:I

    return v0
.end method

.method public getSpeed()F
    .registers 2

    .prologue
    .line 140
    iget v0, p0, speed:F

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, type:I

    return v0
.end method

.method public getUtcTime()[I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, utcTime:[I

    return-object v0
.end method
