.class public Lcom/android/server/accessibility/CVDCalculator;
.super Ljava/lang/Object;
.source "CVDCalculator.java"


# static fields
.field public static final DEUTAN:I = 0x1

.field public static final DMC_ONLY:I = 0x0

.field public static final DMC_SDC_HYBRID:I = 0x1

.field public static final NOT_COLORBLIND:I = 0x3

.field public static final PROTAN:I = 0x0

.field private static final RGB_CMY_MAX:I = 0xc

.field public static final TRITAN:I = 0x2


# instance fields
.field private CVDMethod:I

.field private CVDSeverity:D

.field private CVDStrength:D

.field private CVDType:I

.field private SpotsU:[D

.field private SpotsV:[D

.field private c_index:D

.field private mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

.field private mInputNums:[I

.field private majorAngle:D

.field private majorRadius:D

.field private minorRadius:D

.field private s_index:D

.field private tes:D

.field private u:[D

.field private v:[D


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x10

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-array v0, v1, [D

    fill-array-data v0, :array_2e

    iput-object v0, p0, u:[D

    .line 60
    new-array v0, v1, [D

    fill-array-data v0, :array_72

    iput-object v0, p0, v:[D

    .line 63
    new-array v0, v1, [D

    iput-object v0, p0, SpotsU:[D

    .line 64
    new-array v0, v1, [D

    iput-object v0, p0, SpotsV:[D

    .line 82
    iput-object v2, p0, mInputNums:[I

    .line 84
    iput-object v2, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 92
    new-instance v0, Lcom/android/server/accessibility/ColorTransferTable;

    invoke-direct {v0}, Lcom/android/server/accessibility/ColorTransferTable;-><init>()V

    iput-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, CVDMethod:I

    .line 94
    const/4 v0, 0x3

    iput v0, p0, CVDType:I

    .line 95
    return-void

    .line 59
    :array_2e
    .array-data 8
        -0x3fca75c28f5c28f6L    # -21.54
        -0x3fc8bd70a3d70a3dL    # -23.26
        -0x3fc9970a3d70a3d7L    # -22.41
        -0x3fc8e3d70a3d70a4L    # -23.11
        -0x3fc98ccccccccccdL    # -22.45
        -0x3fca3d70a3d70a3dL    # -21.76
        -0x3fd3d70a3d70a3d7L    # -14.08
        -0x3ffa3d70a3d70a3dL    # -2.72
        0x402dae147ae147aeL    # 14.84
        0x4037deb851eb851fL    # 23.87
        0x403fd1eb851eb852L    # 31.82
        0x403f6b851eb851ecL    # 31.42
        0x403dca3d70a3d70aL    # 29.79
        0x403aa3d70a3d70a4L    # 26.64
        0x4036eb851eb851ecL    # 22.92
        0x4026666666666666L    # 11.2
    .end array-data

    .line 60
    :array_72
    .array-data 8
        -0x3fbcce147ae147aeL    # -38.39
        -0x3fc670a3d70a3d71L    # -25.56
        -0x3fd0f0a3d70a3d71L    # -15.53
        -0x3fe2333333333333L    # -7.45
        0x3ff199999999999aL    # 1.1
        0x401d666666666666L    # 7.35
        0x4032bd70a3d70a3dL    # 18.74
        0x403c2147ae147ae1L    # 28.13
        0x403f2147ae147ae1L    # 31.13
        0x403a59999999999aL    # 26.35
        0x402d851eb851eb85L    # 14.76
        0x401bf5c28f5c28f6L    # 6.99
        0x3fb999999999999aL    # 0.1
        -0x3fdd3d70a3d70a3dL    # -9.38
        -0x3fcd59999999999aL    # -18.65
        -0x3fc763d70a3d70a4L    # -24.61
    .end array-data
.end method

.method private Calc()V
    .registers 33

    .prologue
    .line 227
    const-wide/16 v8, 0x0

    .line 229
    .local v8, "cvdStrength":D
    const/16 v22, 0xf

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v20, v0

    .line 230
    .local v20, "temp2u":[D
    const/16 v22, 0xf

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v21, v0

    .line 232
    .local v21, "temp2v":[D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_13
    const/16 v22, 0xf

    move/from16 v0, v22

    if-ge v10, v0, :cond_48

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, SpotsU:[D

    move-object/from16 v22, v0

    add-int/lit8 v23, v10, 0x1

    aget-wide v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, SpotsU:[D

    move-object/from16 v24, v0

    aget-wide v24, v24, v10

    sub-double v22, v22, v24

    aput-wide v22, v20, v10

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, SpotsV:[D

    move-object/from16 v22, v0

    add-int/lit8 v23, v10, 0x1

    aget-wide v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, SpotsV:[D

    move-object/from16 v24, v0

    aget-wide v24, v24, v10

    sub-double v22, v22, v24

    aput-wide v22, v21, v10

    .line 232
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 237
    :cond_48
    const-wide/16 v16, 0x0

    .line 238
    .local v16, "sum1":D
    const-wide/16 v18, 0x0

    .line 239
    .local v18, "sum2":D
    const/4 v10, 0x0

    :goto_4d
    const/16 v22, 0xf

    move/from16 v0, v22

    if-ge v10, v0, :cond_76

    .line 240
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    aget-wide v24, v20, v10

    mul-double v22, v22, v24

    aget-wide v24, v21, v10

    mul-double v22, v22, v24

    add-double v16, v16, v22

    .line 241
    aget-wide v22, v20, v10

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    aget-wide v24, v21, v10

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    sub-double v22, v22, v24

    add-double v18, v18, v22

    .line 239
    add-int/lit8 v10, v10, 0x1

    goto :goto_4d

    .line 243
    :cond_76
    div-double v22, v16, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->atan(D)D

    move-result-wide v22

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v14, v22, v24

    .line 245
    .local v14, "piAngle":D
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v11, v0, [D

    .line 246
    .local v11, "moms":[D
    const/16 v22, 0x0

    const-wide/16 v24, 0x0

    aput-wide v24, v11, v22

    .line 247
    const/16 v22, 0x1

    const-wide/16 v24, 0x0

    aput-wide v24, v11, v22

    .line 250
    const-wide/16 v22, 0x0

    cmpg-double v22, v14, v22

    if-gez v22, :cond_e9

    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v12, v14, v22

    .line 253
    .local v12, "newAngle":D
    :goto_9f
    const/4 v10, 0x0

    :goto_a0
    const/16 v22, 0xf

    move/from16 v0, v22

    if-ge v10, v0, :cond_f1

    .line 254
    const/16 v22, 0x0

    aget-wide v24, v11, v22

    aget-wide v26, v21, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    aget-wide v28, v20, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    add-double v24, v24, v26

    aput-wide v24, v11, v22

    .line 255
    const/16 v22, 0x1

    aget-wide v24, v11, v22

    aget-wide v26, v21, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    aget-wide v28, v20, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    add-double v24, v24, v26

    aput-wide v24, v11, v22

    .line 253
    add-int/lit8 v10, v10, 0x1

    goto :goto_a0

    .line 251
    .end local v12    # "newAngle":D
    :cond_e9
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v12, v14, v22

    .restart local v12    # "newAngle":D
    goto :goto_9f

    .line 258
    :cond_f1
    const/16 v22, 0x0

    const/16 v23, 0x0

    aget-wide v24, v11, v23

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    aput-wide v24, v11, v22

    .line 259
    const/16 v22, 0x1

    const/16 v23, 0x1

    aget-wide v24, v11, v23

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    aput-wide v24, v11, v22

    .line 260
    const/16 v22, 0x0

    aget-wide v22, v11, v22

    const/16 v24, 0x1

    aget-wide v24, v11, v24

    cmpl-double v22, v22, v24

    if-lez v22, :cond_1eb

    .line 261
    const/16 v22, 0x0

    aget-wide v22, v11, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, majorRadius:D

    .line 262
    const/16 v22, 0x1

    aget-wide v22, v11, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, minorRadius:D

    .line 263
    const-wide v22, 0x4066800000000000L    # 180.0

    mul-double v22, v22, v12

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, majorAngle:D

    .line 270
    :goto_145
    move-object/from16 v0, p0

    iget-wide v0, v0, majorRadius:D

    move-wide/from16 v22, v0

    const-wide v24, 0x4022795e9e1b089aL    # 9.23705

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, c_index:D

    .line 271
    move-object/from16 v0, p0

    iget-wide v0, v0, majorRadius:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, minorRadius:D

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, s_index:D

    .line 272
    move-object/from16 v0, p0

    iget-wide v0, v0, majorRadius:D

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, minorRadius:D

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, tes:D

    .line 274
    move-object/from16 v0, p0

    iget-wide v0, v0, c_index:D

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff999999999999aL    # 1.6

    cmpg-double v22, v22, v24

    if-gtz v22, :cond_215

    .line 275
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, CVDType:I

    .line 284
    :goto_1a7
    move-object/from16 v0, p0

    iget-wide v6, v0, c_index:D

    .line 285
    .local v6, "adjusted_c":D
    const-wide v22, 0x3ff999999999999aL    # 1.6

    cmpg-double v22, v6, v22

    if-gez v22, :cond_1b9

    const-wide v6, 0x3ff999999999999aL    # 1.6

    .line 286
    :cond_1b9
    const-wide v22, 0x4010cccccccccccdL    # 4.2

    cmpl-double v22, v6, v22

    if-lez v22, :cond_1c7

    const-wide v6, 0x4010cccccccccccdL    # 4.2

    .line 287
    :cond_1c7
    const-wide v22, 0x3ff999999999999aL    # 1.6

    sub-double v22, v6, v22

    const-wide v24, 0x4004cccccccccccdL    # 2.6

    div-double v8, v22, v24

    .line 288
    move-object/from16 v0, p0

    iput-wide v8, v0, CVDStrength:D

    .line 292
    const-wide v22, 0x3fb999999999999aL    # 0.1

    cmpg-double v22, v8, v22

    if-gez v22, :cond_251

    .line 293
    const-wide/high16 v22, 0x4014000000000000L    # 5.0

    mul-double v4, v22, v8

    .line 298
    .local v4, "SimSeverity":D
    :goto_1e6
    move-object/from16 v0, p0

    iput-wide v4, v0, CVDSeverity:D

    .line 299
    return-void

    .line 265
    .end local v4    # "SimSeverity":D
    .end local v6    # "adjusted_c":D
    :cond_1eb
    const/16 v22, 0x1

    aget-wide v22, v11, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, majorRadius:D

    .line 266
    const/16 v22, 0x0

    aget-wide v22, v11, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, minorRadius:D

    .line 267
    const-wide v22, 0x4066800000000000L    # 180.0

    mul-double v22, v22, v14

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, majorAngle:D

    goto/16 :goto_145

    .line 276
    :cond_215
    move-object/from16 v0, p0

    iget-wide v0, v0, majorAngle:D

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe6666666666666L    # 0.7

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_22e

    .line 277
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, CVDType:I

    goto/16 :goto_1a7

    .line 278
    :cond_22e
    move-object/from16 v0, p0

    iget-wide v0, v0, majorAngle:D

    move-wide/from16 v22, v0

    const-wide v24, -0x3fafc00000000000L    # -65.0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_247

    .line 279
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, CVDType:I

    goto/16 :goto_1a7

    .line 281
    :cond_247
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, CVDType:I

    goto/16 :goto_1a7

    .line 295
    .restart local v6    # "adjusted_c":D
    :cond_251
    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    const-wide v24, 0x3fb999999999999aL    # 0.1

    sub-double v24, v8, v24

    const-wide/high16 v26, 0x4014000000000000L    # 5.0

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4022000000000000L    # 9.0

    div-double v24, v24, v26

    add-double v4, v22, v24

    .restart local v4    # "SimSeverity":D
    goto :goto_1e6
.end method

.method private InitMakeUV()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 196
    const/4 v3, 0x0

    .line 198
    .local v3, "result":Z
    const/4 v2, 0x0

    .line 200
    .local v2, "num":I
    const/4 v3, 0x1

    .line 203
    iget-object v4, p0, SpotsU:[D

    iget-object v5, p0, u:[D

    aget-wide v6, v5, v8

    aput-wide v6, v4, v8

    .line 204
    iget-object v4, p0, SpotsV:[D

    iget-object v5, p0, v:[D

    aget-wide v6, v5, v8

    aput-wide v6, v4, v8

    .line 207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    const/16 v4, 0xf

    if-ge v1, v4, :cond_36

    .line 208
    :try_start_19
    iget-object v4, p0, mInputNums:[I

    aget v2, v4, v1

    .line 209
    iget-object v4, p0, SpotsU:[D

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, u:[D

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    .line 210
    iget-object v4, p0, SpotsV:[D

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, v:[D

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5
    :try_end_31
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_19 .. :try_end_31} :catch_34

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 212
    :catch_34
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v3, 0x0

    .line 217
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_36
    return v3
.end method

.method private roundHalfUp(D)D
    .registers 10
    .param p1, "value"    # D

    .prologue
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 523
    const-wide/16 v0, 0x0

    .line 525
    .local v0, "roundedValue":D
    mul-double/2addr p1, v4

    .line 526
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-double v0, v2

    .line 527
    div-double/2addr v0, v4

    .line 529
    return-wide v0
.end method


# virtual methods
.method public calculate()V
    .registers 1

    .prologue
    .line 157
    invoke-direct {p0}, Calc()V

    .line 158
    return-void
.end method

.method public getCVDMethod()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, CVDMethod:I

    return v0
.end method

.method public getCVDSeverity()D
    .registers 5

    .prologue
    .line 181
    const-wide/16 v0, 0x0

    .line 184
    .local v0, "roundedCVDSeverity":D
    iget-wide v2, p0, CVDSeverity:D

    invoke-direct {p0, v2, v3}, roundHalfUp(D)D

    move-result-wide v0

    .line 186
    return-wide v0
.end method

.method public getCVDStrength()D
    .registers 3

    .prologue
    .line 599
    iget-wide v0, p0, CVDStrength:D

    return-wide v0
.end method

.method public getCVDType()I
    .registers 2

    .prologue
    .line 171
    iget v0, p0, CVDType:I

    return v0
.end method

.method public getC_index()D
    .registers 3

    .prologue
    .line 569
    iget-wide v0, p0, c_index:D

    return-wide v0
.end method

.method public getMajorAngle()D
    .registers 3

    .prologue
    .line 559
    iget-wide v0, p0, majorAngle:D

    return-wide v0
.end method

.method public getMajorRadius()D
    .registers 3

    .prologue
    .line 539
    iget-wide v0, p0, majorRadius:D

    return-wide v0
.end method

.method public getMinorRadius()D
    .registers 3

    .prologue
    .line 549
    iget-wide v0, p0, minorRadius:D

    return-wide v0
.end method

.method public getRGBCMY(D)[I
    .registers 12
    .param p1, "userParameter"    # D

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 314
    .local v0, "rgbCmy":[I
    iget v2, p0, CVDMethod:I

    iget v3, p0, CVDType:I

    iget-wide v4, p0, CVDSeverity:D

    move-object v1, p0

    move-wide v6, p1

    invoke-virtual/range {v1 .. v7}, getRGBCMY(IIDD)[I

    move-result-object v0

    .line 316
    return-object v0
.end method

.method public getRGBCMY(IIDD)[I
    .registers 18
    .param p1, "cvdMethod"    # I
    .param p2, "cvdType"    # I
    .param p3, "severity"    # D
    .param p5, "userParameter"    # D

    .prologue
    .line 333
    const/4 v8, 0x0

    .line 334
    .local v8, "firstInteger":I
    const/4 v10, 0x0

    .line 337
    .local v10, "secondInteger":I
    const/4 v9, 0x0

    .line 338
    .local v9, "rgbCmy":[I
    const/16 v0, 0xc

    new-array v9, v0, [I

    .line 341
    if-nez p1, :cond_177

    .line 342
    if-eqz p2, :cond_11

    const/4 v0, 0x1

    if-eq p2, v0, :cond_11

    const/4 v0, 0x2

    if-ne p2, v0, :cond_133

    .line 345
    :cond_11
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x1

    const/4 v2, 0x1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v8

    .line 346
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x4

    const/4 v2, 0x1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    .line 348
    const/4 v0, 0x0

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 350
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x1

    const/4 v2, 0x3

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v8

    .line 351
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x4

    const/4 v2, 0x3

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    .line 353
    const/4 v0, 0x1

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 355
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x1

    const/4 v2, 0x5

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v8

    .line 356
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x4

    const/4 v2, 0x5

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    .line 358
    const/4 v0, 0x2

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 360
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x3

    const/4 v2, 0x1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v8

    .line 361
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x6

    const/4 v2, 0x1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    .line 363
    const/4 v0, 0x3

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 365
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x3

    const/4 v2, 0x3

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v8

    .line 366
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x6

    const/4 v2, 0x3

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    .line 368
    const/4 v0, 0x4

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 370
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x3

    const/4 v2, 0x5

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v8

    .line 371
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x6

    const/4 v2, 0x5

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    .line 373
    const/4 v0, 0x5

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 375
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x5

    const/4 v2, 0x1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v8

    .line 376
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x2

    const/4 v2, 0x1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    .line 378
    const/4 v0, 0x6

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 380
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x5

    const/4 v2, 0x3

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v8

    .line 381
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x2

    const/4 v2, 0x3

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    .line 383
    const/4 v0, 0x7

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 385
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x5

    const/4 v2, 0x5

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v8

    .line 386
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x2

    const/4 v2, 0x5

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    .line 388
    const/16 v0, 0x8

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 390
    const/16 v0, 0x9

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 391
    const/16 v0, 0xa

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 392
    const/16 v0, 0xb

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 511
    :goto_132
    return-object v9

    .line 398
    :cond_133
    const/4 v0, 0x0

    const v1, 0xff00

    aput v1, v9, v0

    .line 399
    const/4 v0, 0x1

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 400
    const/4 v0, 0x2

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 401
    const/4 v0, 0x3

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 402
    const/4 v0, 0x4

    const v1, 0xff00

    aput v1, v9, v0

    .line 403
    const/4 v0, 0x5

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 404
    const/4 v0, 0x6

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 405
    const/4 v0, 0x7

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 406
    const/16 v0, 0x8

    const v1, 0xff00

    aput v1, v9, v0

    .line 407
    const/16 v0, 0x9

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 408
    const/16 v0, 0xa

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 409
    const/16 v0, 0xb

    const/16 v1, 0xff

    aput v1, v9, v0

    goto :goto_132

    .line 413
    :cond_177
    const/4 v0, 0x1

    if-ne p1, v0, :cond_309

    .line 414
    if-eqz p2, :cond_182

    const/4 v0, 0x1

    if-eq p2, v0, :cond_182

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2c4

    .line 417
    :cond_182
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x1

    const/4 v2, 0x1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v8

    .line 418
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x4

    const/4 v2, 0x1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    .line 420
    const/4 v0, 0x0

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 422
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x1

    const/4 v2, 0x3

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v8

    .line 423
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x4

    const/4 v2, 0x3

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    .line 425
    const/4 v0, 0x1

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 427
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x1

    const/4 v2, 0x5

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v8

    .line 428
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x4

    const/4 v2, 0x5

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    .line 430
    const/4 v0, 0x2

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 432
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x3

    const/4 v2, 0x1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v8

    .line 433
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x6

    const/4 v2, 0x1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    .line 435
    const/4 v0, 0x3

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 437
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x3

    const/4 v2, 0x3

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v8

    .line 438
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x6

    const/4 v2, 0x3

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    .line 440
    const/4 v0, 0x4

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 442
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x3

    const/4 v2, 0x5

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v8

    .line 443
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x6

    const/4 v2, 0x5

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    .line 445
    const/4 v0, 0x5

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 447
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x5

    const/4 v2, 0x1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v8

    .line 448
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x2

    const/4 v2, 0x1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    .line 450
    const/4 v0, 0x6

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 452
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x5

    const/4 v2, 0x3

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v8

    .line 453
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x2

    const/4 v2, 0x3

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    .line 455
    const/4 v0, 0x7

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 457
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x5

    const/4 v2, 0x5

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v8

    .line 458
    iget-object v0, p0, mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v1, 0x2

    const/4 v2, 0x5

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    .line 460
    const/16 v0, 0x8

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 464
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2b0

    .line 465
    const/16 v0, 0x9

    const/16 v1, 0xcc

    aput v1, v9, v0

    .line 466
    const/16 v0, 0xa

    const/16 v1, 0xcc

    aput v1, v9, v0

    .line 467
    const/16 v0, 0xb

    const/16 v1, 0xcc

    aput v1, v9, v0

    goto/16 :goto_132

    .line 470
    :cond_2b0
    const/16 v0, 0x9

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 471
    const/16 v0, 0xa

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 472
    const/16 v0, 0xb

    const/16 v1, 0xff

    aput v1, v9, v0

    goto/16 :goto_132

    .line 479
    :cond_2c4
    const/4 v0, 0x0

    const v1, 0xff00

    aput v1, v9, v0

    .line 480
    const/4 v0, 0x1

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 481
    const/4 v0, 0x2

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 482
    const/4 v0, 0x3

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 483
    const/4 v0, 0x4

    const v1, 0xff00

    aput v1, v9, v0

    .line 484
    const/4 v0, 0x5

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 485
    const/4 v0, 0x6

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 486
    const/4 v0, 0x7

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 487
    const/16 v0, 0x8

    const v1, 0xff00

    aput v1, v9, v0

    .line 488
    const/16 v0, 0x9

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 489
    const/16 v0, 0xa

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 490
    const/16 v0, 0xb

    const/16 v1, 0xff

    aput v1, v9, v0

    goto/16 :goto_132

    .line 497
    :cond_309
    const/4 v0, 0x0

    const v1, 0xff00

    aput v1, v9, v0

    .line 498
    const/4 v0, 0x1

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 499
    const/4 v0, 0x2

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 500
    const/4 v0, 0x3

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 501
    const/4 v0, 0x4

    const v1, 0xff00

    aput v1, v9, v0

    .line 502
    const/4 v0, 0x5

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 503
    const/4 v0, 0x6

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 504
    const/4 v0, 0x7

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 505
    const/16 v0, 0x8

    const v1, 0xff00

    aput v1, v9, v0

    .line 506
    const/16 v0, 0x9

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 507
    const/16 v0, 0xa

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 508
    const/16 v0, 0xb

    const/16 v1, 0xff

    aput v1, v9, v0

    goto/16 :goto_132
.end method

.method public getS_index()D
    .registers 3

    .prologue
    .line 579
    iget-wide v0, p0, s_index:D

    return-wide v0
.end method

.method public getTes()D
    .registers 3

    .prologue
    .line 589
    iget-wide v0, p0, tes:D

    return-wide v0
.end method

.method public setCVDMethod(I)Z
    .registers 4
    .param p1, "cvdMethod"    # I

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "result":Z
    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    .line 128
    :cond_6
    iput p1, p0, CVDMethod:I

    .line 129
    const/4 v0, 0x1

    .line 136
    :goto_9
    return v0

    .line 132
    :cond_a
    const/4 v1, 0x0

    iput v1, p0, CVDMethod:I

    goto :goto_9
.end method

.method public setNum([I)Z
    .registers 3
    .param p1, "nums"    # [I

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "result":Z
    iput-object p1, p0, mInputNums:[I

    .line 110
    invoke-direct {p0}, InitMakeUV()Z

    move-result v0

    .line 113
    return v0
.end method
