.class public Lcom/android/settings/widget/ChartNetworkSeriesView;
.super Landroid/view/View;
.source "ChartNetworkSeriesView.java"


# instance fields
.field private mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

.field private mEnd:J

.field private mEndTime:J

.field private mEstimateVisible:Z

.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mIsAppDetailMode:Z

.field private mMax:J

.field private mMaxEstimate:J

.field private mPaintEstimate:Landroid/graphics/Paint;

.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintFillSecondary:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mPathEstimate:Landroid/graphics/Path;

.field private mPathFill:Landroid/graphics/Path;

.field private mPathStroke:Landroid/graphics/Path;

.field private mPathValid:Z

.field private mPrimaryLeft:J

.field private mPrimaryRight:J

.field private mSafeRegion:I

.field private mSecondary:Z

.field private mStart:J

.field private mStats:Landroid/net/NetworkStatsHistory;

.field private mUid:I

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x0

    const/high16 v9, -0x10000

    const/4 v8, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput-object v10, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    .line 61
    iput-boolean v8, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mIsAppDetailMode:Z

    .line 62
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mUid:I

    .line 77
    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 79
    iput-boolean v8, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 80
    iput-boolean v8, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 81
    iput-boolean v8, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    .line 97
    sget-object v5, Lcom/android/settings/R$styleable;->ChartNetworkSeriesView:[I

    invoke-virtual {p1, p2, v5, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 101
    .local v4, "stroke":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 102
    .local v1, "fill":I
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 104
    .local v2, "fillSecondary":I
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 107
    .local v3, "safeRegion":I
    invoke-virtual {p0, v4, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    .line 108
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setSafeRegion(I)V

    .line 109
    invoke-virtual {p0, v8}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setWillNotDraw(Z)V

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    iput-object v10, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    .line 114
    iput-boolean v8, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mIsAppDetailMode:Z

    .line 115
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    .line 116
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    .line 117
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    .line 118
    return-void
.end method

.method private generatePath()V
    .locals 30

    .prologue
    .line 207
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 211
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v26

    .line 219
    .local v26, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v14

    .line 221
    .local v14, "height":I
    const/16 v23, 0x0

    .line 222
    .local v23, "started":Z
    const/16 v18, 0x0

    .line 223
    .local v18, "lastX":F
    int-to-float v0, v14

    move/from16 v19, v0

    .line 224
    .local v19, "lastY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    move/from16 v0, v18

    invoke-interface {v4, v0}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v16

    .line 227
    .local v16, "lastTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 233
    const-wide/16 v24, 0x0

    .line 235
    .local v24, "totalData":J
    const/4 v13, 0x0

    .line 237
    .local v13, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v20

    .line 238
    .local v20, "start":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v10

    .line 239
    .local v10, "end":I
    move/from16 v15, v20

    .local v15, "i":I
    :goto_1
    if-gt v15, v10, :cond_6

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4, v15, v13}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v13

    .line 242
    iget-wide v6, v13, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 243
    .local v6, "startTime":J
    iget-wide v4, v13, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long v8, v6, v4

    .line 245
    .local v8, "endTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v4, v6, v7}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v21

    .line 246
    .local v21, "startX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v4, v8, v9}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v11

    .line 249
    .local v11, "endX":F
    const/4 v4, 0x0

    cmpg-float v4, v11, v4

    if-gez v4, :cond_2

    .line 239
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 253
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    if-eqz v4, :cond_5

    .line 254
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mIsAppDetailMode:Z

    if-eqz v4, :cond_4

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mUid:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/datasaving/DataSavingHelper;->getSavedBytesByUid(IJJ)J

    move-result-wide v4

    add-long v24, v24, v4

    .line 263
    :goto_3
    move/from16 v22, v19

    .line 264
    .local v22, "startY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    move-wide/from16 v0, v24

    invoke-interface {v4, v0, v1}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v12

    .line 266
    .local v12, "endY":F
    cmp-long v4, v16, v6

    if-eqz v4, :cond_3

    .line 268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 273
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 276
    move/from16 v18, v11

    .line 277
    move/from16 v19, v12

    .line 278
    move-wide/from16 v16, v8

    goto :goto_2

    .line 257
    .end local v12    # "endY":F
    .end local v22    # "startY":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/settings/datasaving/DataSavingHelper;->getSavedBytesForAllUid(JJ)J

    move-result-wide v4

    add-long v24, v24, v4

    goto :goto_3

    .line 260
    :cond_5
    iget-wide v4, v13, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v28, v0

    add-long v4, v4, v28

    add-long v24, v24, v4

    goto :goto_3

    .line 282
    .end local v6    # "startTime":J
    .end local v8    # "endTime":J
    .end local v11    # "endX":F
    .end local v21    # "startX":F
    :cond_6
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    cmp-long v4, v16, v4

    if-gez v4, :cond_7

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-interface {v4, v0, v1}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v18

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 297
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    int-to-float v5, v14

    move/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    const/4 v5, 0x0

    int-to-float v0, v14

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 300
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    goto/16 :goto_0
.end method


# virtual methods
.method public bindDataSavingHelper(Landroid/net/NetworkStatsHistory;Lcom/android/settings/datasaving/DataSavingHelper;)V
    .locals 0
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;
    .param p2, "dataSavingHelper"    # Lcom/android/settings/datasaving/DataSavingHelper;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    .line 169
    iput-object p2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mDataSavingHelper:Lcom/android/settings/datasaving/DataSavingHelper;

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 172
    return-void
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 158
    return-void
.end method

.method public getMaxEstimate()J
    .locals 2

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    return-wide v0
.end method

.method public getMaxVisible()J
    .locals 10

    .prologue
    .line 352
    iget-boolean v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v1, :cond_1

    iget-wide v8, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    .line 353
    .local v8, "maxVisible":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    iget-wide v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 356
    .local v0, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v8, v2, v4

    .line 358
    .end local v0    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v8    # "maxVisible":J
    :cond_0
    return-wide v8

    .line 352
    :cond_1
    iget-wide v8, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    goto :goto_0
.end method

.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1
    .param p1, "horiz"    # Lcom/android/settings/widget/ChartAxis;
    .param p2, "vert"    # Lcom/android/settings/widget/ChartAxis;

    .prologue
    .line 121
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    .line 122
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    .line 123
    return-void
.end method

.method public invalidatePath()V
    .locals 2

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 196
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 198
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 366
    iget-boolean v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    if-nez v4, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->generatePath()V

    .line 371
    :cond_0
    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-wide v6, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPrimaryLeft:J

    invoke-interface {v4, v6, v7}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v1

    .line 372
    .local v1, "primaryLeftPoint":F
    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-wide v6, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPrimaryRight:J

    invoke-interface {v4, v6, v7}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v2

    .line 375
    .local v2, "primaryRightPoint":F
    iget-boolean v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v4, :cond_1

    .line 376
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 377
    .local v3, "save":I
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v5

    invoke-virtual {p1, v9, v9, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 378
    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 379
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 382
    .end local v3    # "save":I
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    .line 385
    .local v0, "paintFill":Landroid/graphics/Paint;
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKLookChart()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 386
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 387
    .restart local v3    # "save":I
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v8, v8, v1, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 388
    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 389
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v2, v8, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 393
    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 394
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 396
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v8, v2, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 398
    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 399
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-nez v4, :cond_2

    .line 400
    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 402
    :cond_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 410
    :goto_1
    return-void

    .line 382
    .end local v0    # "paintFill":Landroid/graphics/Paint;
    .end local v3    # "save":I
    :cond_3
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    goto :goto_0

    .line 404
    .restart local v0    # "paintFill":Landroid/graphics/Paint;
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 405
    .restart local v3    # "save":I
    iget v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v4, v9, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 406
    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 407
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1
.end method

.method public setBounds(JJ)V
    .locals 1
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    .line 187
    iput-wide p3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    .line 188
    return-void
.end method

.method public setChartColor(III)V
    .locals 4
    .param p1, "stroke"    # I
    .param p2, "fill"    # I
    .param p3, "fillSecondary"    # I

    .prologue
    const/4 v3, 0x1

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    .line 127
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    .line 133
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    .line 138
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    .line 143
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 148
    return-void

    .line 147
    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public setCurrentUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mUid:I

    .line 166
    return-void
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 339
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 340
    return-void
.end method

.method public setEstimateVisible(Z)V
    .locals 1
    .param p1, "estimateVisible"    # Z

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 345
    return-void
.end method

.method public setIsAppDetailMode(Z)V
    .locals 0
    .param p1, "isAppDetailMode"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mIsAppDetailMode:Z

    .line 162
    return-void
.end method

.method public setPrimaryRange(JJ)V
    .locals 1
    .param p1, "left"    # J
    .param p3, "right"    # J

    .prologue
    .line 179
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPrimaryLeft:J

    .line 180
    iput-wide p3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPrimaryRight:J

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 182
    return-void
.end method

.method public setSafeRegion(I)V
    .locals 0
    .param p1, "safeRegion"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    .line 152
    return-void
.end method

.method public setSecondary(Z)V
    .locals 0
    .param p1, "secondary"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    .line 192
    return-void
.end method
