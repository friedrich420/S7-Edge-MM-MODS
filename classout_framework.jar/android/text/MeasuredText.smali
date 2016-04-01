.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static final localLOGV:Z

.field private static final phoneNum1:Ljava/util/regex/Pattern;

.field private static final phoneNum2:Ljava/util/regex/Pattern;

.field private static final sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field private mBuilder:Landroid/text/StaticLayout$Builder;

.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, sLock:[Ljava/lang/Object;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, sCached:[Landroid/text/MeasuredText;

    .line 99
    const-string v0, "[+][0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, phoneNum1:Ljava/util/regex/Pattern;

    .line 100
    const-string v0, "[0-9]+([-/*+=. ]+([0-9]+))+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, phoneNum2:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, mWorkPaint:Landroid/text/TextPaint;

    .line 48
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .registers 5

    .prologue
    .line 55
    sget-object v3, sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 56
    :try_start_3
    sget-object v2, sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    .local v0, "i":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    .line 57
    sget-object v2, sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    .line 58
    sget-object v2, sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    .line 59
    .local v1, "mt":Landroid/text/MeasuredText;
    sget-object v2, sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 60
    monitor-exit v3

    .line 68
    :goto_1a
    return-object v1

    .line 63
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :cond_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 64
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, <init>()V

    .line 68
    .restart local v1    # "mt":Landroid/text/MeasuredText;
    goto :goto_1a

    .line 63
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .registers 5
    .param p0, "mt"    # Landroid/text/MeasuredText;

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-virtual {p0}, finish()V

    .line 73
    sget-object v2, sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    :try_start_8
    sget-object v1, sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 75
    sget-object v1, sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_1c

    .line 76
    sget-object v1, sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, mText:Ljava/lang/CharSequence;

    .line 81
    :cond_1a
    monitor-exit v2

    .line 82
    return-object v3

    .line 74
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 81
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 30
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "len"    # I
    .param p3, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 190
    if-eqz p3, :cond_9

    .line 191
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 194
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, mPos:I

    .line 195
    .local v4, "p":I
    add-int v2, v4, p2

    move-object/from16 v0, p0

    iput v2, v0, mPos:I

    .line 199
    const/4 v9, 0x0

    .line 200
    .local v9, "widths":[F
    move-object/from16 v0, p0

    iget-object v2, v0, mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/text/TextPaint;

    if-eq v2, v3, :cond_26

    .line 201
    :cond_22
    move-object/from16 v0, p0

    iget-object v9, v0, mWidths:[F

    .line 203
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v2, v0, mEasy:Z

    if-eqz v2, :cond_98

    .line 204
    move-object/from16 v0, p0

    iget v2, v0, mDir:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_80

    const/4 v8, 0x1

    .line 205
    .local v8, "isRtl":Z
    :goto_34
    const/16 v25, 0x0

    .line 206
    .local v25, "width":F
    if-eqz v9, :cond_82

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, mChars:[C

    move-object/from16 v2, p1

    move/from16 v5, p2

    move v6, v4

    move/from16 v7, p2

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v25

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_57

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, mBuilder:Landroid/text/StaticLayout$Builder;

    add-int v3, v4, p2

    invoke-virtual {v2, v4, v3, v9}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    .line 215
    :cond_57
    :goto_57
    const/4 v2, 0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_97

    move-object/from16 v0, p0

    iget-object v2, v0, mChars:[C

    add-int/lit8 v3, p2, -0x1

    aget-char v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isRegionalCharHandling(C)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 216
    add-int/lit8 v19, p2, -0x1

    .line 217
    .local v19, "cPos":I
    const-string v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 218
    .local v23, "spaceWid":F
    if-eqz v9, :cond_95

    .line 219
    :goto_76
    aget v2, v9, v19

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_8f

    add-int/lit8 v19, v19, -0x1

    goto :goto_76

    .line 204
    .end local v8    # "isRtl":Z
    .end local v19    # "cPos":I
    .end local v23    # "spaceWid":F
    .end local v25    # "width":F
    :cond_80
    const/4 v8, 0x0

    goto :goto_34

    .line 212
    .restart local v8    # "isRtl":Z
    .restart local v25    # "width":F
    :cond_82
    move-object/from16 v0, p0

    iget-object v2, v0, mBuilder:Landroid/text/StaticLayout$Builder;

    add-int v3, v4, p2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3, v8}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    move-result v25

    goto :goto_57

    .line 220
    .restart local v19    # "cPos":I
    .restart local v23    # "spaceWid":F
    :cond_8f
    aget v2, v9, v19

    add-float v2, v2, v23

    aput v2, v9, v19

    .line 222
    :cond_95
    add-float v25, v25, v23

    .line 258
    .end local v19    # "cPos":I
    .end local v23    # "spaceWid":F
    .end local v25    # "width":F
    :cond_97
    :goto_97
    return v25

    .line 227
    .end local v8    # "isRtl":Z
    :cond_98
    const/16 v24, 0x0

    .line 228
    .local v24, "totalAdvance":F
    move-object/from16 v0, p0

    iget-object v2, v0, mLevels:[B

    aget-byte v22, v2, v4

    .line 229
    .local v22, "level":I
    move v12, v4

    .local v12, "q":I
    add-int/lit8 v21, v4, 0x1

    .local v21, "i":I
    add-int v20, v4, p2

    .line 230
    .local v20, "e":I
    :goto_a5
    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_b5

    move-object/from16 v0, p0

    iget-object v2, v0, mLevels:[B

    aget-byte v2, v2, v21

    move/from16 v0, v22

    if-eq v2, v0, :cond_12a

    .line 231
    :cond_b5
    and-int/lit8 v2, v22, 0x1

    if-eqz v2, :cond_111

    const/4 v8, 0x1

    .line 232
    .restart local v8    # "isRtl":Z
    :goto_ba
    if-eqz v9, :cond_113

    .line 233
    move-object/from16 v0, p0

    iget-object v11, v0, mChars:[C

    sub-int v13, v21, v12

    sub-int v15, v21, v12

    move-object/from16 v10, p1

    move v14, v12

    move/from16 v16, v8

    move-object/from16 v17, v9

    move/from16 v18, v12

    invoke-virtual/range {v10 .. v18}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    add-float v24, v24, v2

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_e2

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, mBuilder:Landroid/text/StaticLayout$Builder;

    move/from16 v0, v21

    invoke-virtual {v2, v12, v0, v9}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    .line 241
    :cond_e2
    :goto_e2
    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_122

    .line 249
    const/4 v2, 0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_136

    move-object/from16 v0, p0

    iget-object v2, v0, mChars:[C

    add-int/lit8 v3, p2, -0x1

    aget-char v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isRegionalCharHandling(C)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 250
    add-int/lit8 v19, p2, -0x1

    .line 251
    .restart local v19    # "cPos":I
    const-string v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 252
    .restart local v23    # "spaceWid":F
    if-eqz v9, :cond_134

    .line 253
    :goto_107
    aget v2, v9, v19

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_12e

    add-int/lit8 v19, v19, -0x1

    goto :goto_107

    .line 231
    .end local v8    # "isRtl":Z
    .end local v19    # "cPos":I
    .end local v23    # "spaceWid":F
    :cond_111
    const/4 v8, 0x0

    goto :goto_ba

    .line 239
    .restart local v8    # "isRtl":Z
    :cond_113
    move-object/from16 v0, p0

    iget-object v2, v0, mBuilder:Landroid/text/StaticLayout$Builder;

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v2, v0, v12, v1, v8}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    move-result v2

    add-float v24, v24, v2

    goto :goto_e2

    .line 244
    :cond_122
    move/from16 v12, v21

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, mLevels:[B

    aget-byte v22, v2, v21

    .line 229
    .end local v8    # "isRtl":Z
    :cond_12a
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_a5

    .line 254
    .restart local v8    # "isRtl":Z
    .restart local v19    # "cPos":I
    .restart local v23    # "spaceWid":F
    :cond_12e
    aget v2, v9, v19

    add-float v2, v2, v23

    aput v2, v9, v19

    .line 256
    :cond_134
    add-float v24, v24, v23

    .end local v19    # "cPos":I
    .end local v23    # "spaceWid":F
    :cond_136
    move/from16 v25, v24

    .line 258
    goto/16 :goto_97
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 16
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p3, "len"    # I
    .param p4, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 264
    iget-object v1, p0, mWorkPaint:Landroid/text/TextPaint;

    .line 265
    .local v1, "workPaint":Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 267
    const/4 v2, 0x0

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a
    array-length v2, p2

    if-ge v7, v2, :cond_1d

    .line 271
    aget-object v8, p2, v7

    .line 272
    .local v8, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_19

    move-object v0, v8

    .line 273
    check-cast v0, Landroid/text/style/ReplacementSpan;

    .line 270
    :goto_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 275
    :cond_19
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_16

    .line 280
    .end local v8    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_1d
    if-nez v0, :cond_38

    .line 281
    invoke-virtual {p0, v1, p3, p4}, addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 297
    .local v10, "wid":F
    :goto_23
    if-eqz p4, :cond_37

    .line 298
    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_75

    .line 299
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 300
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 307
    :cond_37
    :goto_37
    return v10

    .line 284
    .end local v10    # "wid":F
    :cond_38
    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    iget v3, p0, mTextStart:I

    iget v4, p0, mPos:I

    add-int/2addr v3, v4

    iget v4, p0, mTextStart:I

    iget v5, p0, mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    .line 286
    .restart local v10    # "wid":F
    iget-object v2, p0, mBuilder:Landroid/text/StaticLayout$Builder;

    if-nez v2, :cond_65

    .line 287
    iget-object v9, p0, mWidths:[F

    .line 288
    .local v9, "w":[F
    iget v2, p0, mPos:I

    aput v10, v9, v2

    .line 289
    iget v2, p0, mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, mPos:I

    add-int v6, v2, p3

    .local v6, "e":I
    :goto_5d
    if-ge v7, v6, :cond_6f

    .line 290
    const/4 v2, 0x0

    aput v2, v9, v7

    .line 289
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 292
    .end local v6    # "e":I
    .end local v9    # "w":[F
    :cond_65
    iget-object v2, p0, mBuilder:Landroid/text/StaticLayout$Builder;

    iget v3, p0, mPos:I

    iget v4, p0, mPos:I

    add-int/2addr v4, p3

    invoke-virtual {v2, v3, v4, v10}, Landroid/text/StaticLayout$Builder;->addReplacementRun(IIF)V

    .line 294
    :cond_6f
    iget v2, p0, mPos:I

    add-int/2addr v2, p3

    iput v2, p0, mPos:I

    goto :goto_23

    .line 302
    :cond_75
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 303
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_37
.end method

.method breakText(IZF)I
    .registers 10
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 311
    iget-object v1, p0, mWidths:[F

    .line 312
    .local v1, "w":[F
    if-eqz p2, :cond_23

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "i":I
    :goto_8
    if-ge v0, p1, :cond_11

    .line 315
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 316
    cmpg-float v2, p3, v4

    if-gez v2, :cond_1e

    .line 319
    :cond_11
    :goto_11
    if-lez v0, :cond_21

    iget-object v2, p0, mChars:[C

    add-int/lit8 v3, v0, -0x1

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_21

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 317
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_21
    move v2, v0

    .line 329
    :goto_22
    return v2

    .line 322
    .end local v0    # "i":I
    :cond_23
    add-int/lit8 v0, p1, -0x1

    .line 323
    .restart local v0    # "i":I
    :goto_25
    if-ltz v0, :cond_2e

    .line 324
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 325
    cmpg-float v2, p3, v4

    if-gez v2, :cond_45

    .line 328
    :cond_2e
    :goto_2e
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_48

    iget-object v2, p0, mChars:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v3

    if-eq v2, v5, :cond_42

    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_48

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 326
    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 329
    :cond_48
    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_22
.end method

.method finish()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 86
    iput-object v2, p0, mText:Ljava/lang/CharSequence;

    .line 87
    iput-object v2, p0, mBuilder:Landroid/text/StaticLayout$Builder;

    .line 88
    iget v0, p0, mLen:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_11

    .line 89
    iput-object v2, p0, mWidths:[F

    .line 90
    iput-object v2, p0, mChars:[C

    .line 91
    iput-object v2, p0, mLevels:[B

    .line 93
    :cond_11
    return-void
.end method

.method measure(II)F
    .registers 7
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, "width":F
    iget-object v1, p0, mWidths:[F

    .line 336
    .local v1, "w":[F
    move v0, p1

    .local v0, "i":I
    :goto_4
    if-ge v0, p2, :cond_c

    .line 337
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 339
    :cond_c
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V
    .registers 27
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "builder"    # Landroid/text/StaticLayout$Builder;

    .prologue
    .line 107
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, mBuilder:Landroid/text/StaticLayout$Builder;

    .line 108
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mText:Ljava/lang/CharSequence;

    .line 109
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, mTextStart:I

    .line 111
    sub-int v11, p3, p2

    .line 112
    .local v11, "len":I
    move-object/from16 v0, p0

    iput v11, v0, mLen:I

    .line 113
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mPos:I

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, mWidths:[F

    move-object/from16 v18, v0

    if-eqz v18, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, mWidths:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v11, :cond_41

    .line 116
    :cond_37
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mWidths:[F

    .line 118
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, mChars:[C

    move-object/from16 v18, v0

    if-eqz v18, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, mChars:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v11, :cond_62

    .line 119
    :cond_58
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mChars:[C

    .line 121
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, mChars:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 123
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v18, v0

    if-eqz v18, :cond_c9

    move-object/from16 v14, p1

    .line 124
    check-cast v14, Landroid/text/Spanned;

    .line 125
    .local v14, "spanned":Landroid/text/Spanned;
    const-class v18, Landroid/text/style/ReplacementSpan;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v18

    invoke-interface {v14, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/style/ReplacementSpan;

    .line 128
    .local v15, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_92
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_c9

    .line 129
    aget-object v18, v15, v8

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    sub-int v16, v18, p2

    .line 130
    .local v16, "startInPara":I
    aget-object v18, v15, v8

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v18

    sub-int v6, v18, p2

    .line 132
    .local v6, "endInPara":I
    if-gez v16, :cond_b1

    const/16 v16, 0x0

    .line 133
    :cond_b1
    if-le v6, v11, :cond_b4

    move v6, v11

    .line 134
    :cond_b4
    move/from16 v10, v16

    .local v10, "j":I
    :goto_b6
    if-ge v10, v6, :cond_c6

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, mChars:[C

    move-object/from16 v18, v0

    const v19, 0xfffc

    aput-char v19, v18, v10

    .line 134
    add-int/lit8 v10, v10, 0x1

    goto :goto_b6

    .line 128
    :cond_c6
    add-int/lit8 v8, v8, 0x1

    goto :goto_92

    .line 140
    .end local v6    # "endInPara":I
    .end local v8    # "i":I
    .end local v10    # "j":I
    .end local v14    # "spanned":Landroid/text/Spanned;
    .end local v15    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v16    # "startInPara":I
    :cond_c9
    sget-object v18, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_e1

    sget-object v18, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_e1

    sget-object v18, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_104

    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, mChars:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v11}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v18

    if-eqz v18, :cond_104

    .line 144
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mDir:I

    .line 145
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mEasy:Z

    .line 187
    :cond_103
    return-void

    .line 147
    :cond_104
    move-object/from16 v0, p0

    iget-object v0, v0, mLevels:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_11b

    move-object/from16 v0, p0

    iget-object v0, v0, mLevels:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v11, :cond_125

    .line 148
    :cond_11b
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mLevels:[B

    .line 151
    :cond_125
    sget-object v18, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_19e

    .line 152
    const/4 v5, 0x1

    .line 163
    .local v5, "bidiRequest":I
    :goto_12e
    move-object/from16 v0, p0

    iget-object v0, v0, mChars:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mLevels:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v5, v0, v1, v11, v2}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mDir:I

    .line 164
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mEasy:Z

    .line 165
    move-object/from16 v0, p0

    iget v0, v0, mDir:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_103

    .line 166
    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, mChars:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v13, v0, v1, v11}, Ljava/lang/String;-><init>([CII)V

    .line 167
    .local v13, "newStr":Ljava/lang/String;
    sget-object v18, phoneNum1:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 168
    .local v12, "m":Ljava/util/regex/Matcher;
    :cond_17b
    :goto_17b
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_1d7

    .line 169
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    .line 170
    .local v17, "startIndex":I
    if-ltz v17, :cond_17b

    move/from16 v0, v17

    if-ge v0, v11, :cond_17b

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, mLevels:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mLevels:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v17, 0x1

    aget-byte v19, v19, v20

    aput-byte v19, v18, v17

    goto :goto_17b

    .line 153
    .end local v5    # "bidiRequest":I
    .end local v12    # "m":Ljava/util/regex/Matcher;
    .end local v13    # "newStr":Ljava/lang/String;
    .end local v17    # "startIndex":I
    :cond_19e
    sget-object v18, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1a8

    .line 154
    const/4 v5, -0x1

    .restart local v5    # "bidiRequest":I
    goto :goto_12e

    .line 155
    .end local v5    # "bidiRequest":I
    :cond_1a8
    sget-object v18, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1b3

    .line 156
    const/4 v5, 0x2

    .restart local v5    # "bidiRequest":I
    goto/16 :goto_12e

    .line 157
    .end local v5    # "bidiRequest":I
    :cond_1b3
    sget-object v18, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1be

    .line 158
    const/4 v5, -0x2

    .restart local v5    # "bidiRequest":I
    goto/16 :goto_12e

    .line 160
    .end local v5    # "bidiRequest":I
    :cond_1be
    move-object/from16 v0, p0

    iget-object v0, v0, mChars:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v11}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v9

    .line 161
    .local v9, "isRtl":Z
    if-eqz v9, :cond_1d5

    const/4 v5, -0x1

    .restart local v5    # "bidiRequest":I
    :goto_1d3
    goto/16 :goto_12e

    .end local v5    # "bidiRequest":I
    :cond_1d5
    const/4 v5, 0x1

    goto :goto_1d3

    .line 175
    .end local v9    # "isRtl":Z
    .restart local v5    # "bidiRequest":I
    .restart local v12    # "m":Ljava/util/regex/Matcher;
    .restart local v13    # "newStr":Ljava/lang/String;
    :cond_1d7
    sget-object v18, phoneNum2:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 176
    :cond_1df
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_103

    .line 177
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    .line 178
    .restart local v17    # "startIndex":I
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v18

    add-int/lit8 v7, v18, -0x1

    .line 179
    .local v7, "endIndex":I
    if-ltz v17, :cond_1df

    move/from16 v0, v17

    if-ge v0, v11, :cond_1df

    if-ltz v7, :cond_1df

    if-ge v7, v11, :cond_1df

    .line 180
    move/from16 v8, v17

    .restart local v8    # "i":I
    :goto_1fb
    if-gt v8, v7, :cond_1df

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, mLevels:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mLevels:[B

    move-object/from16 v19, v0

    aget-byte v19, v19, v17

    aput-byte v19, v18, v8

    .line 180
    add-int/lit8 v8, v8, 0x1

    goto :goto_1fb
.end method

.method setPos(I)V
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 96
    iget v0, p0, mTextStart:I

    sub-int v0, p1, v0

    iput v0, p0, mPos:I

    .line 97
    return-void
.end method
