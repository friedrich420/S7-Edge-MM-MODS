.class final Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AmbientLightRingBuffer"
.end annotation


# static fields
.field private static final BUFFER_SLACK:F = 1.5f


# instance fields
.field private mCapacity:I

.field private mCount:I

.field private mEnd:I

.field private mRingLux:[F

.field private mRingTime:[J

.field private mStart:I


# direct methods
.method public constructor <init>(J)V
    .registers 6
    .param p1, "lightSensorRate"    # J

    .prologue
    .line 1538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1539
    const v0, 0x466a6000    # 15000.0f

    long-to-float v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, mCapacity:I

    .line 1540
    iget v0, p0, mCapacity:I

    new-array v0, v0, [F

    iput-object v0, p0, mRingLux:[F

    .line 1541
    iget v0, p0, mCapacity:I

    new-array v0, v0, [J

    iput-object v0, p0, mRingTime:[J

    .line 1542
    return-void
.end method

.method private offsetOf(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1640
    iget v0, p0, mCount:I

    if-ge p1, v0, :cond_6

    if-gez p1, :cond_c

    .line 1641
    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 1643
    :cond_c
    iget v0, p0, mStart:I

    add-int/2addr p1, v0

    .line 1644
    iget v0, p0, mCapacity:I

    if-lt p1, v0, :cond_16

    .line 1645
    iget v0, p0, mCapacity:I

    sub-int/2addr p1, v0

    .line 1647
    :cond_16
    return p1
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1616
    iput v0, p0, mStart:I

    .line 1617
    iput v0, p0, mEnd:I

    .line 1618
    iput v0, p0, mCount:I

    .line 1619
    return-void
.end method

.method public getLux(I)F
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 1545
    iget-object v0, p0, mRingLux:[F

    invoke-direct {p0, p1}, offsetOf(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getTime(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 1549
    iget-object v0, p0, mRingTime:[J

    invoke-direct {p0, p1}, offsetOf(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public prune(J)V
    .registers 8
    .param p1, "horizon"    # J

    .prologue
    .line 1583
    iget v1, p0, mCount:I

    if-nez v1, :cond_d

    .line 1609
    :cond_4
    :goto_4
    return-void

    .line 1602
    .local v0, "next":I
    :cond_5
    iput v0, p0, mStart:I

    .line 1603
    iget v1, p0, mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mCount:I

    .line 1587
    .end local v0    # "next":I
    :cond_d
    iget v1, p0, mCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_25

    .line 1588
    iget v1, p0, mStart:I

    add-int/lit8 v0, v1, 0x1

    .line 1589
    .restart local v0    # "next":I
    iget v1, p0, mCapacity:I

    if-lt v0, v1, :cond_1d

    .line 1590
    iget v1, p0, mCapacity:I

    sub-int/2addr v0, v1

    .line 1592
    :cond_1d
    iget-object v1, p0, mRingTime:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-lez v1, :cond_5

    .line 1606
    .end local v0    # "next":I
    :cond_25
    iget-object v1, p0, mRingTime:[J

    iget v2, p0, mStart:I

    aget-wide v2, v1, v2

    cmp-long v1, v2, p1

    if-gez v1, :cond_4

    .line 1607
    iget-object v1, p0, mRingTime:[J

    iget v2, p0, mStart:I

    aput-wide p1, v1, v2

    goto :goto_4
.end method

.method public push(JF)V
    .registers 13
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/4 v7, 0x0

    .line 1553
    iget v4, p0, mEnd:I

    .line 1554
    .local v4, "next":I
    iget v5, p0, mCount:I

    iget v6, p0, mCapacity:I

    if-ne v5, v6, :cond_41

    .line 1555
    iget v5, p0, mCapacity:I

    mul-int/lit8 v3, v5, 0x2

    .line 1557
    .local v3, "newSize":I
    new-array v1, v3, [F

    .line 1558
    .local v1, "newRingLux":[F
    new-array v2, v3, [J

    .line 1559
    .local v2, "newRingTime":[J
    iget v5, p0, mCapacity:I

    iget v6, p0, mStart:I

    sub-int v0, v5, v6

    .line 1560
    .local v0, "length":I
    iget-object v5, p0, mRingLux:[F

    iget v6, p0, mStart:I

    invoke-static {v5, v6, v1, v7, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 1561
    iget-object v5, p0, mRingTime:[J

    iget v6, p0, mStart:I

    invoke-static {v5, v6, v2, v7, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 1562
    iget v5, p0, mStart:I

    if-eqz v5, :cond_37

    .line 1563
    iget-object v5, p0, mRingLux:[F

    iget v6, p0, mStart:I

    invoke-static {v5, v7, v1, v0, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 1564
    iget-object v5, p0, mRingTime:[J

    iget v6, p0, mStart:I

    invoke-static {v5, v7, v2, v0, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 1566
    :cond_37
    iput-object v1, p0, mRingLux:[F

    .line 1567
    iput-object v2, p0, mRingTime:[J

    .line 1569
    iget v4, p0, mCapacity:I

    .line 1570
    iput v3, p0, mCapacity:I

    .line 1571
    iput v7, p0, mStart:I

    .line 1573
    .end local v0    # "length":I
    .end local v1    # "newRingLux":[F
    .end local v2    # "newRingTime":[J
    .end local v3    # "newSize":I
    :cond_41
    iget-object v5, p0, mRingTime:[J

    aput-wide p1, v5, v4

    .line 1574
    iget-object v5, p0, mRingLux:[F

    aput p3, v5, v4

    .line 1575
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, mEnd:I

    .line 1576
    iget v5, p0, mEnd:I

    iget v6, p0, mCapacity:I

    if-ne v5, v6, :cond_55

    .line 1577
    iput v7, p0, mEnd:I

    .line 1579
    :cond_55
    iget v5, p0, mCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, mCount:I

    .line 1580
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1612
    iget v0, p0, mCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1623
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1624
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1625
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget v4, p0, mCount:I

    if-ge v1, v4, :cond_45

    .line 1626
    add-int/lit8 v4, v1, 0x1

    iget v5, p0, mCount:I

    if-ge v4, v5, :cond_40

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, getTime(I)J

    move-result-wide v2

    .line 1627
    .local v2, "next":J
    :goto_1b
    if-eqz v1, :cond_22

    .line 1628
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1630
    :cond_22
    invoke-virtual {p0, v1}, getLux(I)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 1631
    const-string v4, " / "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1632
    invoke-virtual {p0, v1}, getTime(I)J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1633
    const-string/jumbo v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1625
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1626
    .end local v2    # "next":J
    :cond_40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    goto :goto_1b

    .line 1635
    :cond_45
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1636
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
