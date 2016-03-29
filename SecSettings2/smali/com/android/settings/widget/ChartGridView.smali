.class public Lcom/android/settings/widget/ChartGridView;
.super Landroid/view/View;
.source "ChartGridView.java"


# instance fields
.field private mBorder:Landroid/graphics/drawable/Drawable;

.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mLabelColor:I

.field private mLabelEnd:Landroid/text/Layout;

.field private mLabelMid:Landroid/text/Layout;

.field private mLabelSize:I

.field private mLabelStart:Landroid/text/Layout;

.field private mPrimary:Landroid/graphics/drawable/Drawable;

.field private mSecondary:Landroid/graphics/drawable/Drawable;

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-virtual {p0, v6}, Lcom/android/settings/widget/ChartGridView;->setWillNotDraw(Z)V

    .line 75
    sget-object v5, Lcom/android/settings/R$styleable;->ChartGridView:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    .line 79
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 80
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 83
    .local v3, "taId":I
    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 85
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/widget/ChartGridView;->mLabelSize:I

    .line 87
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 90
    .local v4, "textSize":I
    if-lez v4, :cond_0

    .line 91
    iput v4, p0, Lcom/android/settings/widget/ChartGridView;->mLabelSize:I

    .line 93
    :cond_0
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 95
    .local v1, "labelColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    iput v5, p0, Lcom/android/settings/widget/ChartGridView;->mLabelColor:I

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    return-void
.end method

.method private makeLabel(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x1

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 188
    .local v8, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v7}, Landroid/text/TextPaint;-><init>(I)V

    .line 189
    .local v2, "paint":Landroid/text/TextPaint;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Landroid/text/TextPaint;->density:F

    .line 190
    invoke-virtual {v8}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 191
    iget v0, p0, Lcom/android/settings/widget/ChartGridView;->mLabelColor:I

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 192
    iget v0, p0, Lcom/android/settings/widget/ChartGridView;->mLabelSize:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 194
    new-instance v0, Landroid/text/StaticLayout;

    invoke-static {p1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method


# virtual methods
.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1
    .param p1, "horiz"    # Lcom/android/settings/widget/ChartAxis;
    .param p2, "vert"    # Lcom/android/settings/widget/ChartAxis;

    .prologue
    .line 101
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    .line 102
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    .line 103
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartGridView;->getWidth()I

    move-result v22

    .line 129
    .local v22, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartGridView;->getHeight()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartGridView;->getPaddingBottom()I

    move-result v26

    sub-int v7, v25, v26

    .line 131
    .local v7, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    .line 132
    .local v18, "secondary":Landroid/graphics/drawable/Drawable;
    if-eqz v18, :cond_0

    .line 133
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    .line 135
    .local v19, "secondaryHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v21

    .line 136
    .local v21, "vertTicks":[F
    move-object/from16 v4, v21

    .local v4, "arr$":[F
    array-length v10, v4

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_0

    aget v24, v4, v9

    .line 137
    .local v24, "y":F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v24

    int-to-float v0, v7

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    move/from16 v0, v25

    float-to-int v5, v0

    .line 138
    .local v5, "bottom":I
    const/16 v25, 0x0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 143
    .end local v4    # "arr$":[F
    .end local v5    # "bottom":I
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v19    # "secondaryHeight":I
    .end local v21    # "vertTicks":[F
    .end local v24    # "y":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/widget/ChartGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    .line 144
    .local v13, "primary":Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_1

    .line 145
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 146
    .local v15, "primaryWidth":I
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 148
    .local v14, "primaryHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v8

    .line 149
    .local v8, "horizTicks":[F
    move-object v4, v8

    .restart local v4    # "arr$":[F
    array-length v10, v4

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_1
    if-ge v9, v10, :cond_1

    aget v23, v4, v9

    .line 150
    .local v23, "x":F
    int-to-float v0, v15

    move/from16 v25, v0

    add-float v25, v25, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v16, v0

    .line 151
    .local v16, "right":I
    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v13, v0, v1, v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 156
    .end local v4    # "arr$":[F
    .end local v8    # "horizTicks":[F
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v14    # "primaryHeight":I
    .end local v15    # "primaryWidth":I
    .end local v16    # "right":I
    .end local v23    # "x":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/text/Layout;->getHeight()I

    move-result v25

    div-int/lit8 v12, v25, 0x8

    .line 161
    .local v12, "padding":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    move-object/from16 v20, v0

    .line 162
    .local v20, "start":Landroid/text/Layout;
    if-eqz v20, :cond_2

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v17

    .line 164
    .local v17, "saveCount":I
    const/16 v25, 0x0

    add-int v26, v7, v12

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 165
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 166
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 169
    .end local v17    # "saveCount":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/widget/ChartGridView;->mLabelMid:Landroid/text/Layout;

    .line 170
    .local v11, "mid":Landroid/text/Layout;
    if-eqz v11, :cond_3

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v17

    .line 172
    .restart local v17    # "saveCount":I
    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v25

    sub-int v25, v22, v25

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-int v26, v7, v12

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 173
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 174
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 177
    .end local v17    # "saveCount":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/widget/ChartGridView;->mLabelEnd:Landroid/text/Layout;

    .line 178
    .local v6, "end":Landroid/text/Layout;
    if-eqz v6, :cond_4

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v17

    .line 180
    .restart local v17    # "saveCount":I
    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v25

    sub-int v25, v22, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-int v26, v7, v12

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 181
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 182
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 184
    .end local v17    # "saveCount":I
    :cond_4
    return-void

    .line 159
    .end local v6    # "end":Landroid/text/Layout;
    .end local v11    # "mid":Landroid/text/Layout;
    .end local v12    # "padding":I
    .end local v20    # "start":Landroid/text/Layout;
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method setBounds(JJ)V
    .locals 9
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, "context":Landroid/content/Context;
    add-long v4, p1, p3

    const-wide/16 v6, 0x2

    div-long v2, v4, v6

    .line 108
    .local v2, "mid":J
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKLookChart()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-static {v0, p1, p2, p1, p2}, Lcom/android/settings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/widget/ChartGridView;->makeLabel(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    .line 110
    invoke-static {v0, v2, v3, v2, v3}, Lcom/android/settings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/widget/ChartGridView;->makeLabel(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/ChartGridView;->mLabelMid:Landroid/text/Layout;

    .line 111
    invoke-static {v0, p3, p4, p3, p4}, Lcom/android/settings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/widget/ChartGridView;->makeLabel(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/ChartGridView;->mLabelEnd:Landroid/text/Layout;

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->invalidate()V

    .line 114
    return-void
.end method

.method setFocus(Z)V
    .locals 2
    .param p1, "focus"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartGridView;->setClickable(Z)V

    .line 119
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartGridView;->setFocusable(Z)V

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartGridView;->setClickable(Z)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartGridView;->setFocusable(Z)V

    goto :goto_0
.end method
