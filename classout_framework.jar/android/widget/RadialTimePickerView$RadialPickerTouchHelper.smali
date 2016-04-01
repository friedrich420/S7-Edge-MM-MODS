.class Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialPickerTouchHelper"
.end annotation


# instance fields
.field private final MASK_TYPE:I

.field private final MASK_VALUE:I

.field private final MINUTE_INCREMENT:I

.field private final SHIFT_TYPE:I

.field private final SHIFT_VALUE:I

.field private final TYPE_HOUR:I

.field private final TYPE_MINUTE:I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/RadialTimePickerView;


# direct methods
.method public constructor <init>(Landroid/widget/RadialTimePickerView;)V
    .registers 3

    .prologue
    .line 1061
    iput-object p1, p0, this$0:Landroid/widget/RadialTimePickerView;

    .line 1062
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1047
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempRect:Landroid/graphics/Rect;

    .line 1049
    const/4 v0, 0x1

    iput v0, p0, TYPE_HOUR:I

    .line 1050
    const/4 v0, 0x2

    iput v0, p0, TYPE_MINUTE:I

    .line 1052
    const/4 v0, 0x0

    iput v0, p0, SHIFT_TYPE:I

    .line 1053
    const/16 v0, 0xf

    iput v0, p0, MASK_TYPE:I

    .line 1055
    const/16 v0, 0x8

    iput v0, p0, SHIFT_VALUE:I

    .line 1056
    const/16 v0, 0xff

    iput v0, p0, MASK_VALUE:I

    .line 1059
    const/4 v0, 0x5

    iput v0, p0, MINUTE_INCREMENT:I

    .line 1063
    return-void
.end method

.method private adjustPicker(I)V
    .registers 10
    .param p1, "step"    # I

    .prologue
    .line 1096
    iget-object v7, p0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mShowHours:Z
    invoke-static {v7}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 1097
    const/4 v6, 0x1

    .line 1099
    .local v6, "stepSize":I
    iget-object v7, p0, this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v7}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    .line 1100
    .local v1, "currentHour24":I
    iget-object v7, p0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z
    invoke-static {v7}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 1101
    move v2, v1

    .line 1102
    .local v2, "initialStep":I
    const/4 v4, 0x0

    .line 1103
    .local v4, "minValue":I
    const/16 v3, 0x17

    .line 1116
    .end local v1    # "currentHour24":I
    .local v3, "maxValue":I
    :goto_1b
    add-int v7, v2, p1

    mul-int v5, v7, v6

    .line 1117
    .local v5, "nextValue":I
    invoke-static {v5, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 1118
    .local v0, "clampedValue":I
    iget-object v7, p0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mShowHours:Z
    invoke-static {v7}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 1119
    iget-object v7, p0, this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v7, v0}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 1123
    :goto_30
    return-void

    .line 1105
    .end local v0    # "clampedValue":I
    .end local v2    # "initialStep":I
    .end local v3    # "maxValue":I
    .end local v4    # "minValue":I
    .end local v5    # "nextValue":I
    .restart local v1    # "currentHour24":I
    :cond_31
    invoke-direct {p0, v1}, hour24To12(I)I

    move-result v2

    .line 1106
    .restart local v2    # "initialStep":I
    const/4 v4, 0x1

    .line 1107
    .restart local v4    # "minValue":I
    const/16 v3, 0xc

    .restart local v3    # "maxValue":I
    goto :goto_1b

    .line 1110
    .end local v1    # "currentHour24":I
    .end local v2    # "initialStep":I
    .end local v3    # "maxValue":I
    .end local v4    # "minValue":I
    .end local v6    # "stepSize":I
    :cond_39
    const/4 v6, 0x5

    .line 1111
    .restart local v6    # "stepSize":I
    iget-object v7, p0, this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v7}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v7

    div-int v2, v7, v6

    .line 1112
    .restart local v2    # "initialStep":I
    const/4 v4, 0x0

    .line 1113
    .restart local v4    # "minValue":I
    const/16 v3, 0x37

    .restart local v3    # "maxValue":I
    goto :goto_1b

    .line 1121
    .restart local v0    # "clampedValue":I
    .restart local v5    # "nextValue":I
    :cond_46
    iget-object v7, p0, this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v7, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    goto :goto_30
.end method

.method private getBoundsForVirtualView(ILandroid/graphics/Rect;)V
    .registers 19
    .param p1, "virtualViewId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1291
    invoke-direct/range {p0 .. p1}, getTypeFromId(I)I

    move-result v8

    .line 1292
    .local v8, "type":I
    invoke-direct/range {p0 .. p1}, getValueFromId(I)I

    move-result v9

    .line 1295
    .local v9, "value":I
    const/4 v12, 0x1

    if-ne v8, v12, :cond_94

    .line 1296
    move-object/from16 v0, p0

    iget-object v12, v0, this$0:Landroid/widget/RadialTimePickerView;

    # invokes: Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z
    invoke-static {v12, v9}, Landroid/widget/RadialTimePickerView;->access$900(Landroid/widget/RadialTimePickerView;I)Z

    move-result v4

    .line 1297
    .local v4, "innerCircle":Z
    if-eqz v4, :cond_75

    .line 1298
    move-object/from16 v0, p0

    iget-object v12, v0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mCircleRadius:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$1000(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mTextInset:[I
    invoke-static {v13}, Landroid/widget/RadialTimePickerView;->access$1100(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v13

    const/4 v14, 0x2

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-float v2, v12

    .line 1299
    .local v2, "centerRadius":F
    move-object/from16 v0, p0

    iget-object v12, v0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mSelectorRadius:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$1200(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v5, v12

    .line 1305
    .local v5, "radius":F
    :goto_33
    move-object/from16 v0, p0

    iget-object v12, v0, this$0:Landroid/widget/RadialTimePickerView;

    # invokes: Landroid/widget/RadialTimePickerView;->getDegreesForHour(I)I
    invoke-static {v12, v9}, Landroid/widget/RadialTimePickerView;->access$1300(Landroid/widget/RadialTimePickerView;I)I

    move-result v12

    int-to-float v3, v12

    .line 1317
    .end local v4    # "innerCircle":Z
    .local v3, "degrees":F
    :goto_3c
    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 1318
    .local v6, "radians":D
    move-object/from16 v0, p0

    iget-object v12, v0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mXCenter:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$1500(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v13, v14

    mul-float/2addr v13, v2

    add-float v10, v12, v13

    .line 1319
    .local v10, "xCenter":F
    move-object/from16 v0, p0

    iget-object v12, v0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mYCenter:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$1600(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v13, v14

    mul-float/2addr v13, v2

    sub-float v11, v12, v13

    .line 1321
    .local v11, "yCenter":F
    sub-float v12, v10, v5

    float-to-int v12, v12

    sub-float v13, v11, v5

    float-to-int v13, v13

    add-float v14, v10, v5

    float-to-int v14, v14

    add-float v15, v11, v5

    float-to-int v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 1323
    return-void

    .line 1301
    .end local v2    # "centerRadius":F
    .end local v3    # "degrees":F
    .end local v5    # "radius":F
    .end local v6    # "radians":D
    .end local v10    # "xCenter":F
    .end local v11    # "yCenter":F
    .restart local v4    # "innerCircle":Z
    :cond_75
    move-object/from16 v0, p0

    iget-object v12, v0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mCircleRadius:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$1000(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mTextInset:[I
    invoke-static {v13}, Landroid/widget/RadialTimePickerView;->access$1100(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-float v2, v12

    .line 1302
    .restart local v2    # "centerRadius":F
    move-object/from16 v0, p0

    iget-object v12, v0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mSelectorRadius:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$1200(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v5, v12

    .restart local v5    # "radius":F
    goto :goto_33

    .line 1306
    .end local v2    # "centerRadius":F
    .end local v4    # "innerCircle":Z
    .end local v5    # "radius":F
    :cond_94
    const/4 v12, 0x2

    if-ne v8, v12, :cond_c0

    .line 1307
    move-object/from16 v0, p0

    iget-object v12, v0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mCircleRadius:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$1000(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mTextInset:[I
    invoke-static {v13}, Landroid/widget/RadialTimePickerView;->access$1100(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v13

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-float v2, v12

    .line 1308
    .restart local v2    # "centerRadius":F
    move-object/from16 v0, p0

    iget-object v12, v0, this$0:Landroid/widget/RadialTimePickerView;

    # invokes: Landroid/widget/RadialTimePickerView;->getDegreesForMinute(I)I
    invoke-static {v12, v9}, Landroid/widget/RadialTimePickerView;->access$1400(Landroid/widget/RadialTimePickerView;I)I

    move-result v12

    int-to-float v3, v12

    .line 1309
    .restart local v3    # "degrees":F
    move-object/from16 v0, p0

    iget-object v12, v0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mSelectorRadius:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$1200(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v5, v12

    .restart local v5    # "radius":F
    goto/16 :goto_3c

    .line 1312
    .end local v2    # "centerRadius":F
    .end local v3    # "degrees":F
    .end local v5    # "radius":F
    :cond_c0
    const/4 v2, 0x0

    .line 1313
    .restart local v2    # "centerRadius":F
    const/4 v3, 0x0

    .line 1314
    .restart local v3    # "degrees":F
    const/4 v5, 0x0

    .restart local v5    # "radius":F
    goto/16 :goto_3c
.end method

.method private getCircularDiff(III)I
    .registers 7
    .param p1, "first"    # I
    .param p2, "second"    # I
    .param p3, "max"    # I

    .prologue
    .line 1169
    sub-int v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1170
    .local v0, "diff":I
    div-int/lit8 v1, p3, 0x2

    .line 1171
    .local v1, "midpoint":I
    if-le v0, v1, :cond_c

    sub-int v0, p3, v0

    .end local v0    # "diff":I
    :cond_c
    return v0
.end method

.method private getTypeFromId(I)I
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 1352
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private getValueFromId(I)I
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 1356
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private getVirtualViewDescription(II)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 1327
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    .line 1328
    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1332
    .local v0, "description":Ljava/lang/CharSequence;
    :goto_a
    return-object v0

    .line 1330
    .end local v0    # "description":Ljava/lang/CharSequence;
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "description":Ljava/lang/CharSequence;
    goto :goto_a
.end method

.method private getVirtualViewIdAfter(II)I
    .registers 8
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 1229
    const/4 v4, 0x1

    if-ne p1, v4, :cond_19

    .line 1230
    add-int/lit8 v2, p2, 0x1

    .line 1231
    .local v2, "nextValue":I
    iget-object v4, p0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z
    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/16 v1, 0x17

    .line 1232
    .local v1, "max":I
    :goto_f
    if-gt v2, v1, :cond_3a

    .line 1233
    invoke-direct {p0, p1, v2}, makeId(II)I

    move-result v4

    .line 1246
    .end local v1    # "max":I
    .end local v2    # "nextValue":I
    :goto_15
    return v4

    .line 1231
    .restart local v2    # "nextValue":I
    :cond_16
    const/16 v1, 0xc

    goto :goto_f

    .line 1235
    .end local v2    # "nextValue":I
    :cond_19
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3a

    .line 1236
    iget-object v4, p0, this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .line 1237
    .local v0, "current":I
    rem-int/lit8 v4, p2, 0x5

    sub-int v3, p2, v4

    .line 1238
    .local v3, "snapValue":I
    add-int/lit8 v2, v3, 0x5

    .line 1239
    .restart local v2    # "nextValue":I
    if-ge p2, v0, :cond_31

    if-le v2, v0, :cond_31

    .line 1241
    invoke-direct {p0, p1, v0}, makeId(II)I

    move-result v4

    goto :goto_15

    .line 1242
    :cond_31
    const/16 v4, 0x3c

    if-ge v2, v4, :cond_3a

    .line 1243
    invoke-direct {p0, p1, v2}, makeId(II)I

    move-result v4

    goto :goto_15

    .line 1246
    .end local v0    # "current":I
    .end local v2    # "nextValue":I
    .end local v3    # "snapValue":I
    :cond_3a
    const/high16 v4, -0x80000000

    goto :goto_15
.end method

.method private hour12To24(II)I
    .registers 5
    .param p1, "hour12"    # I
    .param p2, "amOrPm"    # I

    .prologue
    .line 1268
    move v0, p1

    .line 1269
    .local v0, "hour24":I
    const/16 v1, 0xc

    if-ne p1, v1, :cond_9

    .line 1270
    if-nez p2, :cond_8

    .line 1271
    const/4 v0, 0x0

    .line 1276
    :cond_8
    :goto_8
    return v0

    .line 1273
    :cond_9
    const/4 v1, 0x1

    if-ne p2, v1, :cond_8

    .line 1274
    add-int/lit8 v0, v0, 0xc

    goto :goto_8
.end method

.method private hour24To12(I)I
    .registers 3
    .param p1, "hour24"    # I

    .prologue
    const/16 v0, 0xc

    .line 1280
    if-nez p1, :cond_6

    move p1, v0

    .line 1285
    .end local p1    # "hour24":I
    :cond_5
    :goto_5
    return p1

    .line 1282
    .restart local p1    # "hour24":I
    :cond_6
    if-le p1, v0, :cond_5

    .line 1283
    add-int/lit8 p1, p1, -0xc

    goto :goto_5
.end method

.method private isVirtualViewSelected(II)Z
    .registers 6
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1337
    if-ne p1, v0, :cond_f

    .line 1338
    iget-object v2, p0, this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v2

    if-ne v2, p2, :cond_d

    .line 1344
    .local v0, "selected":Z
    :goto_c
    return v0

    .end local v0    # "selected":Z
    :cond_d
    move v0, v1

    .line 1338
    goto :goto_c

    .line 1339
    :cond_f
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1d

    .line 1340
    iget-object v2, p0, this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v2

    if-ne v2, p2, :cond_1b

    .restart local v0    # "selected":Z
    :goto_1a
    goto :goto_c

    .end local v0    # "selected":Z
    :cond_1b
    move v0, v1

    goto :goto_1a

    .line 1342
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "selected":Z
    goto :goto_c
.end method

.method private makeId(II)I
    .registers 5
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 1348
    shl-int/lit8 v0, p1, 0x0

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .registers 19
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1128
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/RadialTimePickerView;

    const/4 v15, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    # invokes: Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I
    invoke-static {v14, v0, v1, v15}, Landroid/widget/RadialTimePickerView;->access$300(Landroid/widget/RadialTimePickerView;FFZ)I

    move-result v4

    .line 1129
    .local v4, "degrees":I
    const/4 v14, -0x1

    if-eq v4, v14, :cond_84

    .line 1130
    const/4 v14, 0x0

    # invokes: Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I
    invoke-static {v4, v14}, Landroid/widget/RadialTimePickerView;->access$400(II)I

    move-result v14

    rem-int/lit16 v10, v14, 0x168

    .line 1131
    .local v10, "snapDegrees":I
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mShowHours:Z
    invoke-static {v14}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v14

    if-eqz v14, :cond_4f

    .line 1132
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/RadialTimePickerView;

    move/from16 v0, p1

    move/from16 v1, p2

    # invokes: Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z
    invoke-static {v14, v0, v1}, Landroid/widget/RadialTimePickerView;->access$500(Landroid/widget/RadialTimePickerView;FF)Z

    move-result v8

    .line 1133
    .local v8, "isOnInnerCircle":Z
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/RadialTimePickerView;

    # invokes: Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I
    invoke-static {v14, v10, v8}, Landroid/widget/RadialTimePickerView;->access$600(Landroid/widget/RadialTimePickerView;IZ)I

    move-result v6

    .line 1134
    .local v6, "hour24":I
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z
    invoke-static {v14}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v14

    if-eqz v14, :cond_48

    move v5, v6

    .line 1135
    .local v5, "hour":I
    :goto_40
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, makeId(II)I

    move-result v7

    .line 1157
    .end local v5    # "hour":I
    .end local v6    # "hour24":I
    .end local v8    # "isOnInnerCircle":Z
    .end local v10    # "snapDegrees":I
    .local v7, "id":I
    :goto_47
    return v7

    .line 1134
    .end local v7    # "id":I
    .restart local v6    # "hour24":I
    .restart local v8    # "isOnInnerCircle":Z
    .restart local v10    # "snapDegrees":I
    :cond_48
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, hour24To12(I)I

    move-result v5

    goto :goto_40

    .line 1137
    .end local v6    # "hour24":I
    .end local v8    # "isOnInnerCircle":Z
    :cond_4f
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v14}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v2

    .line 1138
    .local v2, "current":I
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/RadialTimePickerView;

    # invokes: Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I
    invoke-static {v14, v4}, Landroid/widget/RadialTimePickerView;->access$700(Landroid/widget/RadialTimePickerView;I)I

    move-result v13

    .line 1139
    .local v13, "touched":I
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/RadialTimePickerView;

    # invokes: Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I
    invoke-static {v14, v10}, Landroid/widget/RadialTimePickerView;->access$700(Landroid/widget/RadialTimePickerView;I)I

    move-result v11

    .line 1143
    .local v11, "snapped":I
    const/16 v14, 0x3c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13, v14}, getCircularDiff(III)I

    move-result v3

    .line 1144
    .local v3, "currentOffset":I
    const/16 v14, 0x3c

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13, v14}, getCircularDiff(III)I

    move-result v12

    .line 1146
    .local v12, "snappedOffset":I
    if-ge v3, v12, :cond_82

    .line 1147
    move v9, v2

    .line 1151
    .local v9, "minute":I
    :goto_7a
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9}, makeId(II)I

    move-result v7

    .restart local v7    # "id":I
    goto :goto_47

    .line 1149
    .end local v7    # "id":I
    .end local v9    # "minute":I
    :cond_82
    move v9, v11

    .restart local v9    # "minute":I
    goto :goto_7a

    .line 1154
    .end local v2    # "current":I
    .end local v3    # "currentOffset":I
    .end local v9    # "minute":I
    .end local v10    # "snapDegrees":I
    .end local v11    # "snapped":I
    .end local v12    # "snappedOffset":I
    .end local v13    # "touched":I
    :cond_84
    const/high16 v7, -0x80000000

    .restart local v7    # "id":I
    goto :goto_47
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .registers 9
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 1176
    iget-object v5, p0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mShowHours:Z
    invoke-static {v5}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1177
    iget-object v5, p0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z
    invoke-static {v5}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v3, 0x0

    .line 1178
    .local v3, "min":I
    :goto_13
    iget-object v5, p0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z
    invoke-static {v5}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/16 v2, 0x17

    .line 1179
    .local v2, "max":I
    :goto_1d
    move v1, v3

    .local v1, "i":I
    :goto_1e
    if-gt v1, v2, :cond_51

    .line 1180
    invoke-direct {p0, v4, v1}, makeId(II)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IntArray;->add(I)V

    .line 1179
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .end local v1    # "i":I
    .end local v2    # "max":I
    .end local v3    # "min":I
    :cond_2a
    move v3, v4

    .line 1177
    goto :goto_13

    .line 1178
    .restart local v3    # "min":I
    :cond_2c
    const/16 v2, 0xc

    goto :goto_1d

    .line 1183
    .end local v3    # "min":I
    :cond_2f
    iget-object v4, p0, this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .line 1184
    .local v0, "current":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_36
    const/16 v4, 0x3c

    if-ge v1, v4, :cond_51

    .line 1185
    invoke-direct {p0, v6, v1}, makeId(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    .line 1189
    if-le v0, v1, :cond_4e

    add-int/lit8 v4, v1, 0x5

    if-ge v0, v4, :cond_4e

    .line 1190
    invoke-direct {p0, v6, v0}, makeId(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    .line 1184
    :cond_4e
    add-int/lit8 v1, v1, 0x5

    goto :goto_36

    .line 1194
    .end local v0    # "current":I
    :cond_51
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1067
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1069
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1070
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1071
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 9
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 1252
    const/16 v4, 0x10

    if-ne p2, v4, :cond_32

    .line 1253
    invoke-direct {p0, p1}, getTypeFromId(I)I

    move-result v1

    .line 1254
    .local v1, "type":I
    invoke-direct {p0, p1}, getValueFromId(I)I

    move-result v2

    .line 1255
    .local v2, "value":I
    if-ne v1, v3, :cond_29

    .line 1256
    iget-object v4, p0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z
    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v0, v2

    .line 1257
    .local v0, "hour":I
    :goto_18
    iget-object v4, p0, this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v4, v0}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 1264
    .end local v0    # "hour":I
    .end local v1    # "type":I
    .end local v2    # "value":I
    :goto_1d
    return v3

    .line 1256
    .restart local v1    # "type":I
    .restart local v2    # "value":I
    :cond_1e
    iget-object v4, p0, this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mAmOrPm:I
    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$800(Landroid/widget/RadialTimePickerView;)I

    move-result v4

    invoke-direct {p0, v2, v4}, hour12To24(II)I

    move-result v0

    goto :goto_18

    .line 1259
    :cond_29
    const/4 v4, 0x2

    if-ne v1, v4, :cond_32

    .line 1260
    iget-object v4, p0, this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v4, v2}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    goto :goto_1d

    .line 1264
    .end local v1    # "type":I
    .end local v2    # "value":I
    :cond_32
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 7
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1200
    invoke-direct {p0, p1}, getTypeFromId(I)I

    move-result v1

    .line 1201
    .local v1, "type":I
    invoke-direct {p0, p1}, getValueFromId(I)I

    move-result v2

    .line 1202
    .local v2, "value":I
    invoke-direct {p0, v1, v2}, getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1203
    .local v0, "description":Ljava/lang/CharSequence;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1204
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 9
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1209
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1211
    invoke-direct {p0, p1}, getTypeFromId(I)I

    move-result v3

    .line 1212
    .local v3, "type":I
    invoke-direct {p0, p1}, getValueFromId(I)I

    move-result v4

    .line 1213
    .local v4, "value":I
    invoke-direct {p0, v3, v4}, getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1214
    .local v0, "description":Ljava/lang/CharSequence;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1216
    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v5}, getBoundsForVirtualView(ILandroid/graphics/Rect;)V

    .line 1217
    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1219
    invoke-direct {p0, v3, v4}, isVirtualViewSelected(II)Z

    move-result v2

    .line 1220
    .local v2, "selected":Z
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 1222
    invoke-direct {p0, v3, v4}, getVirtualViewIdAfter(II)I

    move-result v1

    .line 1223
    .local v1, "nextId":I
    const/high16 v5, -0x80000000

    if-eq v1, v5, :cond_3d

    .line 1224
    iget-object v5, p0, this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p2, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 1226
    :cond_3d
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 1075
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1088
    :goto_7
    return v0

    .line 1079
    :cond_8
    sparse-switch p2, :sswitch_data_16

    .line 1088
    const/4 v0, 0x0

    goto :goto_7

    .line 1081
    :sswitch_d
    invoke-direct {p0, v0}, adjustPicker(I)V

    goto :goto_7

    .line 1084
    :sswitch_11
    const/4 v1, -0x1

    invoke-direct {p0, v1}, adjustPicker(I)V

    goto :goto_7

    .line 1079
    :sswitch_data_16
    .sparse-switch
        0x1000 -> :sswitch_d
        0x2000 -> :sswitch_11
    .end sparse-switch
.end method
