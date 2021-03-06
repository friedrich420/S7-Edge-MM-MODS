.class public Landroid/renderscript/Matrix3f;
.super Ljava/lang/Object;
.source "Matrix3f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, mMat:[F

    .line 31
    invoke-virtual {p0}, loadIdentity()V

    .line 32
    return-void
.end method

.method public constructor <init>([F)V
    .registers 5
    .param p1, "dataArray"    # [F

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, mMat:[F

    .line 43
    iget-object v0, p0, mMat:[F

    iget-object v1, p0, mMat:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 44
    return-void
.end method


# virtual methods
.method public get(II)F
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 65
    iget-object v0, p0, mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getArray()[F
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, mMat:[F

    return-object v0
.end method

.method public load(Landroid/renderscript/Matrix3f;)V
    .registers 6
    .param p1, "src"    # Landroid/renderscript/Matrix3f;

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-virtual {p1}, getArray()[F

    move-result-object v0

    iget-object v1, p0, mMat:[F

    iget-object v2, p0, mMat:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 102
    return-void
.end method

.method public loadIdentity()V
    .registers 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 83
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 84
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 86
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 87
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 88
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 90
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 91
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 92
    iget-object v0, p0, mMat:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 93
    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V
    .registers 14
    .param p1, "lhs"    # Landroid/renderscript/Matrix3f;
    .param p2, "rhs"    # Landroid/renderscript/Matrix3f;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v10, :cond_32

    .line 209
    const/4 v3, 0x0

    .line 210
    .local v3, "ri0":F
    const/4 v4, 0x0

    .line 211
    .local v4, "ri1":F
    const/4 v5, 0x0

    .line 212
    .local v5, "ri2":F
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_b
    if-ge v1, v10, :cond_26

    .line 213
    invoke-virtual {p2, v0, v1}, get(II)F

    move-result v2

    .line 214
    .local v2, "rhs_ij":F
    invoke-virtual {p1, v1, v7}, get(II)F

    move-result v6

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    .line 215
    invoke-virtual {p1, v1, v8}, get(II)F

    move-result v6

    mul-float/2addr v6, v2

    add-float/2addr v4, v6

    .line 216
    invoke-virtual {p1, v1, v9}, get(II)F

    move-result v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 218
    .end local v2    # "rhs_ij":F
    :cond_26
    invoke-virtual {p0, v0, v7, v3}, set(IIF)V

    .line 219
    invoke-virtual {p0, v0, v8, v4}, set(IIF)V

    .line 220
    invoke-virtual {p0, v0, v9, v5}, set(IIF)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 222
    .end local v1    # "j":I
    .end local v3    # "ri0":F
    .end local v4    # "ri1":F
    .end local v5    # "ri2":F
    :cond_32
    return-void
.end method

.method public loadRotate(F)V
    .registers 7
    .param p1, "rot"    # F

    .prologue
    .line 150
    invoke-virtual {p0}, loadIdentity()V

    .line 152
    const v2, 0x3c8efa35

    mul-float/2addr p1, v2

    .line 153
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 154
    .local v0, "c":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 155
    .local v1, "s":F
    iget-object v2, p0, mMat:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 156
    iget-object v2, p0, mMat:[F

    const/4 v3, 0x1

    neg-float v4, v1

    aput v4, v2, v3

    .line 157
    iget-object v2, p0, mMat:[F

    const/4 v3, 0x3

    aput v1, v2, v3

    .line 158
    iget-object v2, p0, mMat:[F

    const/4 v3, 0x4

    aput v0, v2, v3

    .line 159
    return-void
.end method

.method public loadRotate(FFFF)V
    .registers 19
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 115
    const v11, 0x3c8efa35

    mul-float/2addr p1, v11

    .line 116
    float-to-double v12, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v0, v12

    .line 117
    .local v0, "c":F
    float-to-double v12, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v4, v12

    .line 119
    .local v4, "s":F
    mul-float v11, p2, p2

    mul-float v12, p3, p3

    add-float/2addr v11, v12

    mul-float v12, p4, p4

    add-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v1, v12

    .line 120
    .local v1, "len":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v1, v11

    if-nez v11, :cond_2e

    .line 121
    const/high16 v11, 0x3f800000    # 1.0f

    div-float v3, v11, v1

    .line 122
    .local v3, "recipLen":F
    mul-float p2, p2, v3

    .line 123
    mul-float p3, p3, v3

    .line 124
    mul-float p4, p4, v3

    .line 126
    .end local v3    # "recipLen":F
    :cond_2e
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v2, v11, v0

    .line 127
    .local v2, "nc":F
    mul-float v6, p2, p3

    .line 128
    .local v6, "xy":F
    mul-float v8, p3, p4

    .line 129
    .local v8, "yz":F
    mul-float v10, p4, p2

    .line 130
    .local v10, "zx":F
    mul-float v5, p2, v4

    .line 131
    .local v5, "xs":F
    mul-float v7, p3, v4

    .line 132
    .local v7, "ys":F
    mul-float v9, p4, v4

    .line 133
    .local v9, "zs":F
    iget-object v11, p0, mMat:[F

    const/4 v12, 0x0

    mul-float v13, p2, p2

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    .line 134
    iget-object v11, p0, mMat:[F

    const/4 v12, 0x3

    mul-float v13, v6, v2

    sub-float/2addr v13, v9

    aput v13, v11, v12

    .line 135
    iget-object v11, p0, mMat:[F

    const/4 v12, 0x6

    mul-float v13, v10, v2

    add-float/2addr v13, v7

    aput v13, v11, v12

    .line 136
    iget-object v11, p0, mMat:[F

    const/4 v12, 0x1

    mul-float v13, v6, v2

    add-float/2addr v13, v9

    aput v13, v11, v12

    .line 137
    iget-object v11, p0, mMat:[F

    const/4 v12, 0x4

    mul-float v13, p3, p3

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    .line 138
    iget-object v11, p0, mMat:[F

    const/4 v12, 0x7

    mul-float v13, v8, v2

    sub-float/2addr v13, v5

    aput v13, v11, v12

    .line 139
    iget-object v11, p0, mMat:[F

    const/4 v12, 0x2

    mul-float v13, v10, v2

    sub-float/2addr v13, v7

    aput v13, v11, v12

    .line 140
    iget-object v11, p0, mMat:[F

    const/4 v12, 0x5

    mul-float v13, v8, v2

    add-float/2addr v13, v5

    aput v13, v11, v12

    .line 141
    iget-object v11, p0, mMat:[F

    const/16 v12, 0x8

    mul-float v13, p4, p4

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    .line 142
    return-void
.end method

.method public loadScale(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 168
    invoke-virtual {p0}, loadIdentity()V

    .line 169
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 170
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 171
    return-void
.end method

.method public loadScale(FFF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 181
    invoke-virtual {p0}, loadIdentity()V

    .line 182
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 183
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 184
    iget-object v0, p0, mMat:[F

    const/16 v1, 0x8

    aput p3, v0, v1

    .line 185
    return-void
.end method

.method public loadTranslate(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 195
    invoke-virtual {p0}, loadIdentity()V

    .line 196
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 197
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 198
    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix3f;)V
    .registers 3
    .param p1, "rhs"    # Landroid/renderscript/Matrix3f;

    .prologue
    .line 230
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, <init>()V

    .line 231
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p0, p1}, loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V

    .line 232
    invoke-virtual {p0, v0}, load(Landroid/renderscript/Matrix3f;)V

    .line 233
    return-void
.end method

.method public rotate(F)V
    .registers 3
    .param p1, "rot"    # F

    .prologue
    .line 257
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, <init>()V

    .line 258
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1}, loadRotate(F)V

    .line 259
    invoke-virtual {p0, v0}, multiply(Landroid/renderscript/Matrix3f;)V

    .line 260
    return-void
.end method

.method public rotate(FFFF)V
    .registers 6
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 245
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, <init>()V

    .line 246
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2, p3, p4}, loadRotate(FFFF)V

    .line 247
    invoke-virtual {p0, v0}, multiply(Landroid/renderscript/Matrix3f;)V

    .line 248
    return-void
.end method

.method public scale(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 270
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, <init>()V

    .line 271
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2}, loadScale(FF)V

    .line 272
    invoke-virtual {p0, v0}, multiply(Landroid/renderscript/Matrix3f;)V

    .line 273
    return-void
.end method

.method public scale(FFF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 284
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, <init>()V

    .line 285
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2, p3}, loadScale(FFF)V

    .line 286
    invoke-virtual {p0, v0}, multiply(Landroid/renderscript/Matrix3f;)V

    .line 287
    return-void
.end method

.method public set(IIF)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # F

    .prologue
    .line 75
    iget-object v0, p0, mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 76
    return-void
.end method

.method public translate(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 297
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, <init>()V

    .line 298
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2}, loadTranslate(FF)V

    .line 299
    invoke-virtual {p0, v0}, multiply(Landroid/renderscript/Matrix3f;)V

    .line 300
    return-void
.end method

.method public transpose()V
    .registers 8

    .prologue
    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2b

    .line 307
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_6
    const/4 v3, 0x3

    if-ge v1, v3, :cond_28

    .line 308
    iget-object v3, p0, mMat:[F

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v1

    aget v2, v3, v4

    .line 309
    .local v2, "temp":F
    iget-object v3, p0, mMat:[F

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v1

    iget-object v5, p0, mMat:[F

    mul-int/lit8 v6, v1, 0x3

    add-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 310
    iget-object v3, p0, mMat:[F

    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v4, v0

    aput v2, v3, v4

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 306
    .end local v2    # "temp":F
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 313
    .end local v1    # "j":I
    :cond_2b
    return-void
.end method
