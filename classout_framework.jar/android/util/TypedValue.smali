.class public Landroid/util/TypedValue;
.super Ljava/lang/Object;
.source "TypedValue.java"


# static fields
.field public static final COMPLEX_MANTISSA_MASK:I = 0xffffff

.field public static final COMPLEX_MANTISSA_SHIFT:I = 0x8

.field public static final COMPLEX_RADIX_0p23:I = 0x3

.field public static final COMPLEX_RADIX_16p7:I = 0x1

.field public static final COMPLEX_RADIX_23p0:I = 0x0

.field public static final COMPLEX_RADIX_8p15:I = 0x2

.field public static final COMPLEX_RADIX_MASK:I = 0x3

.field public static final COMPLEX_RADIX_SHIFT:I = 0x4

.field public static final COMPLEX_UNIT_DIP:I = 0x1

.field public static final COMPLEX_UNIT_FRACTION:I = 0x0

.field public static final COMPLEX_UNIT_FRACTION_PARENT:I = 0x1

.field public static final COMPLEX_UNIT_IN:I = 0x4

.field public static final COMPLEX_UNIT_MASK:I = 0xf

.field public static final COMPLEX_UNIT_MM:I = 0x5

.field public static final COMPLEX_UNIT_PT:I = 0x3

.field public static final COMPLEX_UNIT_PX:I = 0x0

.field public static final COMPLEX_UNIT_SHIFT:I = 0x0

.field public static final COMPLEX_UNIT_SP:I = 0x2

.field public static final DATA_NULL_EMPTY:I = 0x1

.field public static final DATA_NULL_UNDEFINED:I = 0x0

.field public static final DENSITY_DEFAULT:I = 0x0

.field public static final DENSITY_NONE:I = 0xffff

.field private static final DIMENSION_UNIT_STRS:[Ljava/lang/String;

.field private static final FRACTION_UNIT_STRS:[Ljava/lang/String;

.field private static final MANTISSA_MULT:F = 0.00390625f

.field private static final RADIX_MULTS:[F

.field public static final TYPE_ATTRIBUTE:I = 0x2

.field public static final TYPE_DIMENSION:I = 0x5

.field public static final TYPE_FIRST_COLOR_INT:I = 0x1c

.field public static final TYPE_FIRST_INT:I = 0x10

.field public static final TYPE_FLOAT:I = 0x4

.field public static final TYPE_FRACTION:I = 0x6

.field public static final TYPE_INT_BOOLEAN:I = 0x12

.field public static final TYPE_INT_COLOR_ARGB4:I = 0x1e

.field public static final TYPE_INT_COLOR_ARGB8:I = 0x1c

.field public static final TYPE_INT_COLOR_RGB4:I = 0x1f

.field public static final TYPE_INT_COLOR_RGB8:I = 0x1d

.field public static final TYPE_INT_DEC:I = 0x10

.field public static final TYPE_INT_HEX:I = 0x11

.field public static final TYPE_LAST_COLOR_INT:I = 0x1f

.field public static final TYPE_LAST_INT:I = 0x1f

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_REFERENCE:I = 0x1

.field public static final TYPE_STRING:I = 0x3


# instance fields
.field public assetCookie:I

.field public changingConfigurations:I

.field public data:I

.field public density:I

.field public resourceId:I

.field public string:Ljava/lang/CharSequence;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    new-array v0, v6, [F

    fill-array-data v0, :array_3c

    sput-object v0, RADIX_MULTS:[F

    .line 439
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "px"

    aput-object v1, v0, v3

    const-string v1, "dip"

    aput-object v1, v0, v4

    const-string/jumbo v1, "sp"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "pt"

    aput-object v2, v0, v1

    const-string v1, "in"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "mm"

    aput-object v2, v0, v1

    sput-object v0, DIMENSION_UNIT_STRS:[Ljava/lang/String;

    .line 442
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "%"

    aput-object v1, v0, v3

    const-string v1, "%p"

    aput-object v1, v0, v4

    sput-object v0, FRACTION_UNIT_STRS:[Ljava/lang/String;

    return-void

    .line 205
    nop

    :array_3c
    .array-data 4
        0x3b800000    # 0.00390625f
        0x38000000
        0x34000000
        0x30000000
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, -0x1

    iput v0, p0, changingConfigurations:I

    return-void
.end method

.method public static applyDimension(IFLandroid/util/DisplayMetrics;)F
    .registers 5
    .param p0, "unit"    # I
    .param p1, "value"    # F
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 345
    packed-switch p0, :pswitch_data_24

    .line 359
    const/4 p1, 0x0

    .end local p1    # "value":F
    :goto_4
    :pswitch_4
    return p1

    .line 349
    .restart local p1    # "value":F
    :pswitch_5
    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    goto :goto_4

    .line 351
    :pswitch_9
    iget v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, v0

    goto :goto_4

    .line 353
    :pswitch_d
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    const v1, 0x3c638e39

    mul-float p1, v0, v1

    goto :goto_4

    .line 355
    :pswitch_16
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr p1, v0

    goto :goto_4

    .line 357
    :pswitch_1a
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    const v1, 0x3d214285

    mul-float p1, v0, v1

    goto :goto_4

    .line 345
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_16
        :pswitch_1a
    .end packed-switch
.end method

.method public static final coerceToString(II)Ljava/lang/String;
    .registers 5
    .param p0, "type"    # I
    .param p1, "data"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x1f

    .line 458
    packed-switch p0, :pswitch_data_cc

    .line 479
    :pswitch_6
    const/16 v1, 0x1c

    if-lt p0, v1, :cond_c0

    if-gt p0, v2, :cond_c0

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    :cond_23
    :goto_23
    :pswitch_23
    return-object v0

    .line 462
    :pswitch_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 464
    :pswitch_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 466
    :pswitch_4c
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 468
    :pswitch_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, complexToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, DIMENSION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 v2, p1, 0x0

    and-int/lit8 v2, v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 471
    :pswitch_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, complexToFloat(I)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, FRACTION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 v2, p1, 0x0

    and-int/lit8 v2, v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 474
    :pswitch_9c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23

    .line 476
    :pswitch_b5
    if-eqz p1, :cond_bc

    const-string/jumbo v0, "true"

    goto/16 :goto_23

    :cond_bc
    const-string v0, "false"

    goto/16 :goto_23

    .line 481
    :cond_c0
    const/16 v1, 0x10

    if-lt p0, v1, :cond_23

    if-gt p0, v2, :cond_23

    .line 482
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23

    .line 458
    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_23
        :pswitch_24
        :pswitch_38
        :pswitch_6
        :pswitch_4c
        :pswitch_55
        :pswitch_77
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_9c
        :pswitch_b5
    .end packed-switch
.end method

.method public static complexToDimension(ILandroid/util/DisplayMetrics;)F
    .registers 4
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 243
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    invoke-static {p0}, complexToFloat(I)F

    move-result v1

    invoke-static {v0, v1, p1}, applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static complexToDimensionNoisy(ILandroid/util/DisplayMetrics;)F
    .registers 3
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    invoke-static {p0, p1}, complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I
    .registers 4
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 268
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    invoke-static {p0}, complexToFloat(I)F

    move-result v1

    invoke-static {v0, v1, p1}, applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I
    .registers 7
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v4, 0x0

    .line 295
    invoke-static {p0}, complexToFloat(I)F

    move-result v2

    .line 296
    .local v2, "value":F
    shr-int/lit8 v3, p0, 0x0

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v2, p1}, applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 300
    .local v0, "f":F
    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v3, v0

    float-to-int v1, v3

    .line 301
    .local v1, "res":I
    if-eqz v1, :cond_14

    .line 304
    .end local v1    # "res":I
    :goto_13
    return v1

    .line 302
    .restart local v1    # "res":I
    :cond_14
    cmpl-float v3, v2, v4

    if-nez v3, :cond_1a

    const/4 v1, 0x0

    goto :goto_13

    .line 303
    :cond_1a
    cmpl-float v3, v2, v4

    if-lez v3, :cond_20

    const/4 v1, 0x1

    goto :goto_13

    .line 304
    :cond_20
    const/4 v1, -0x1

    goto :goto_13
.end method

.method public static complexToFloat(I)F
    .registers 4
    .param p0, "complex"    # I

    .prologue
    .line 222
    and-int/lit16 v0, p0, -0x100

    int-to-float v0, v0

    sget-object v1, RADIX_MULTS:[F

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static complexToFraction(IFF)F
    .registers 4
    .param p0, "data"    # I
    .param p1, "base"    # F
    .param p2, "pbase"    # F

    .prologue
    .line 395
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_16

    .line 401
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 397
    :pswitch_9
    invoke-static {p0}, complexToFloat(I)F

    move-result v0

    mul-float/2addr v0, p1

    goto :goto_8

    .line 399
    :pswitch_f
    invoke-static {p0}, complexToFloat(I)F

    move-result v0

    mul-float/2addr v0, p2

    goto :goto_8

    .line 395
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public final coerceToString()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 432
    iget v0, p0, type:I

    .line 433
    .local v0, "t":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 434
    iget-object v1, p0, string:Ljava/lang/CharSequence;

    .line 436
    :goto_7
    return-object v1

    :cond_8
    iget v1, p0, data:I

    invoke-static {v0, v1}, coerceToString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getComplexUnit()I
    .registers 2

    .prologue
    .line 326
    iget v0, p0, data:I

    shr-int/lit8 v0, v0, 0x0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getDimension(Landroid/util/DisplayMetrics;)F
    .registers 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 374
    iget v0, p0, data:I

    invoke-static {v0, p1}, complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public final getFloat()F
    .registers 2

    .prologue
    .line 200
    iget v0, p0, data:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getFraction(FF)F
    .registers 4
    .param p1, "base"    # F
    .param p2, "pbase"    # F

    .prologue
    .line 419
    iget v0, p0, data:I

    invoke-static {v0, p1, p2}, complexToFraction(IFF)F

    move-result v0

    return v0
.end method

.method public setTo(Landroid/util/TypedValue;)V
    .registers 3
    .param p1, "other"    # Landroid/util/TypedValue;

    .prologue
    .line 490
    iget v0, p1, type:I

    iput v0, p0, type:I

    .line 491
    iget-object v0, p1, string:Ljava/lang/CharSequence;

    iput-object v0, p0, string:Ljava/lang/CharSequence;

    .line 492
    iget v0, p1, data:I

    iput v0, p0, data:I

    .line 493
    iget v0, p1, assetCookie:I

    iput v0, p0, assetCookie:I

    .line 494
    iget v0, p1, resourceId:I

    iput v0, p0, resourceId:I

    .line 495
    iget v0, p1, density:I

    iput v0, p0, density:I

    .line 496
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TypedValue{t=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, type:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string v1, "/d=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, data:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    iget v1, p0, type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3d

    .line 504
    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, string:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6a

    iget-object v1, p0, string:Ljava/lang/CharSequence;

    :goto_34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_3d
    iget v1, p0, assetCookie:I

    if-eqz v1, :cond_4c

    .line 507
    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, assetCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    :cond_4c
    iget v1, p0, resourceId:I

    if-eqz v1, :cond_5f

    .line 510
    const-string v1, " r=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_5f
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 504
    :cond_6a
    const-string v1, "<null>"

    goto :goto_34
.end method
