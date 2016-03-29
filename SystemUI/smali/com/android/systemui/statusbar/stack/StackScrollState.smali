.class public Lcom/android/systemui/statusbar/stack/StackScrollState;
.super Ljava/lang/Object;
.source "StackScrollState.java"


# instance fields
.field private final mClearAllTopPadding:I

.field private final mHostView:Landroid/view/ViewGroup;

.field private mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            "Lcom/android/systemui/statusbar/stack/StackViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "hostView"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClearAllTopPadding:I

    .line 53
    return-void
.end method

.method private getNextChildNotGone(I)Landroid/view/View;
    .locals 5
    .param p1, "childIndex"    # I

    .prologue
    .line 256
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 257
    .local v1, "childCount":I
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 258
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 263
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 257
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    .line 81
    .local v0, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    .end local v0    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/StackViewState;-><init>()V

    .line 83
    .restart local v0    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 87
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->gone:Z

    .line 88
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    .line 89
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 90
    return-void

    .line 87
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public apply()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 106
    .local v9, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_8

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableView;

    .line 108
    .local v6, "child":Lcom/android/systemui/statusbar/ExpandableView;
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/StackViewState;

    .line 109
    .local v3, "state":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {p0, v6, v3}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_1
    instance-of v0, v6, Lcom/android/systemui/statusbar/SpeedBumpView;

    if-eqz v0, :cond_2

    move-object v2, v6

    .line 113
    check-cast v2, Lcom/android/systemui/statusbar/SpeedBumpView;

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/StackScrollState;->performSpeedBumpAnimation(ILcom/android/systemui/statusbar/SpeedBumpView;Lcom/android/systemui/statusbar/stack/StackViewState;J)V

    goto :goto_1

    .line 114
    :cond_2
    instance-of v0, v6, Lcom/android/systemui/statusbar/DismissView;

    if-eqz v0, :cond_5

    move-object v7, v6

    .line 115
    check-cast v7, Lcom/android/systemui/statusbar/DismissView;

    .line 116
    .local v7, "dismissView":Lcom/android/systemui/statusbar/DismissView;
    iget v0, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->topOverLap:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClearAllTopPadding:I

    if-ge v0, v2, :cond_3

    move v10, v11

    .line 117
    .local v10, "visible":Z
    :goto_2
    if-eqz v10, :cond_4

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v11

    :goto_3
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/DismissView;->performVisibilityAnimation(Z)V

    goto :goto_1

    .end local v10    # "visible":Z
    :cond_3
    move v10, v12

    .line 116
    goto :goto_2

    .restart local v10    # "visible":Z
    :cond_4
    move v0, v12

    .line 117
    goto :goto_3

    .line 118
    .end local v7    # "dismissView":Lcom/android/systemui/statusbar/DismissView;
    .end local v10    # "visible":Z
    :cond_5
    instance-of v0, v6, Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v0, :cond_0

    move-object v8, v6

    .line 119
    check-cast v8, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 120
    .local v8, "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    iget v0, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->topOverLap:I

    if-gtz v0, :cond_6

    move v10, v11

    .line 121
    .restart local v10    # "visible":Z
    :goto_4
    if-eqz v10, :cond_7

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v11

    :goto_5
    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->performVisibilityAnimation(Z)V

    goto :goto_1

    .end local v10    # "visible":Z
    :cond_6
    move v10, v12

    .line 120
    goto :goto_4

    .restart local v10    # "visible":Z
    :cond_7
    move v0, v12

    .line 121
    goto :goto_5

    .line 125
    .end local v3    # "state":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v6    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v8    # "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    .end local v10    # "visible":Z
    :cond_8
    return-void
.end method

.method public applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z
    .locals 12
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackViewState;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 133
    if-nez p2, :cond_1

    .line 134
    const-string v1, "StackScrollStateNoSuchChild"

    const-string v2, "No child state was found when applying this state to the hostView"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    :goto_0
    return v3

    .line 138
    :cond_1
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->gone:Z

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 143
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    .line 144
    .local v0, "height":I
    iget v8, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 147
    .local v8, "newHeight":I
    if-eq v0, v8, :cond_2

    .line 148
    invoke-virtual {p1, v8, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 152
    :cond_2
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    invoke-virtual {p1, v1, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    .line 155
    iget-boolean v2, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    move-object v1, p1

    move-wide v6, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 159
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    .line 162
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    .line 165
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v1

    int-to-float v9, v1

    .line 166
    .local v9, "oldClipTopAmount":F
    iget v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    int-to-float v1, v1

    cmpl-float v1, v9, v1

    if-eqz v1, :cond_3

    .line 167
    iget v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 169
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopOptimization()I

    move-result v1

    int-to-float v10, v1

    .line 170
    .local v10, "oldClipTopOptimization":F
    iget v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->topOverLap:I

    int-to-float v1, v1

    cmpl-float v1, v10, v1

    if-eqz v1, :cond_4

    .line 172
    instance-of v1, p1, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v1, :cond_6

    move-object v1, p1

    .line 173
    check-cast v1, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iget v2, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->topOverLap:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipTopOptimization(I)V

    .line 179
    :cond_4
    :goto_1
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_5

    move-object v11, p1

    .line 180
    check-cast v11, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 181
    .local v11, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v11, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyChildrenState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 183
    .end local v11    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 175
    :cond_6
    iget v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->topOverLap:I

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopOptimization(I)V

    goto :goto_1
.end method

.method public applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/ViewState;

    .prologue
    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 191
    .local v2, "alpha":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v16

    .line 192
    .local v16, "yTranslation":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v15

    .line 193
    .local v15, "xTranslation":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v17

    .line 194
    .local v17, "zTranslation":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v14

    .line 195
    .local v14, "scale":F
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 196
    .local v6, "newAlpha":F
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 197
    .local v11, "newYTranslation":F
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 198
    .local v12, "newZTranslation":F
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scale:F

    .line 199
    .local v9, "newScale":F
    const/16 v18, 0x0

    cmpl-float v18, v6, v18

    if-nez v18, :cond_7

    const/4 v4, 0x1

    .line 200
    .local v4, "becomesInvisible":Z
    :goto_0
    cmpl-float v18, v2, v6

    if-eqz v18, :cond_1

    const/16 v18, 0x0

    cmpl-float v18, v15, v18

    if-nez v18, :cond_1

    .line 202
    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v18, v6, v18

    if-nez v18, :cond_8

    const/4 v3, 0x1

    .line 203
    .local v3, "becomesFullyVisible":Z
    :goto_1
    if-nez v4, :cond_9

    if-nez v3, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v18

    if-eqz v18, :cond_9

    const/4 v8, 0x1

    .line 205
    .local v8, "newLayerTypeIsHardware":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayerType()I

    move-result v5

    .line 206
    .local v5, "layerType":I
    if-eqz v8, :cond_a

    const/4 v7, 0x2

    .line 209
    .local v7, "newLayerType":I
    :goto_3
    if-eq v5, v7, :cond_0

    .line 210
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 214
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 218
    .end local v3    # "becomesFullyVisible":Z
    .end local v5    # "layerType":I
    .end local v7    # "newLayerType":I
    .end local v8    # "newLayerTypeIsHardware":Z
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v13

    .line 219
    .local v13, "oldVisibility":I
    if-eqz v4, :cond_b

    const/4 v10, 0x4

    .line 220
    .local v10, "newVisibility":I
    :goto_4
    if-eq v10, v13, :cond_3

    .line 221
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableView;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v18, p1

    check-cast v18, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v18

    if-nez v18, :cond_3

    .line 223
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :cond_3
    cmpl-float v18, v16, v11

    if-eqz v18, :cond_4

    .line 229
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 233
    :cond_4
    cmpl-float v18, v17, v12

    if-eqz v18, :cond_5

    .line 234
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setTranslationZ(F)V

    .line 238
    :cond_5
    cmpl-float v18, v14, v9

    if-eqz v18, :cond_6

    .line 239
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleX(F)V

    .line 240
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleY(F)V

    .line 242
    :cond_6
    return-void

    .line 199
    .end local v4    # "becomesInvisible":Z
    .end local v10    # "newVisibility":I
    .end local v13    # "oldVisibility":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    .line 202
    .restart local v4    # "becomesInvisible":Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .line 203
    .restart local v3    # "becomesFullyVisible":Z
    :cond_9
    const/4 v8, 0x0

    goto :goto_2

    .line 206
    .restart local v5    # "layerType":I
    .restart local v8    # "newLayerTypeIsHardware":Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_3

    .line 219
    .end local v3    # "becomesFullyVisible":Z
    .end local v5    # "layerType":I
    .end local v8    # "newLayerTypeIsHardware":Z
    .restart local v13    # "oldVisibility":I
    :cond_b
    const/4 v10, 0x0

    goto :goto_4
.end method

.method public getHostView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;
    .locals 1
    .param p1, "requestedView"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    return-object v0
.end method

.method public performSpeedBumpAnimation(ILcom/android/systemui/statusbar/SpeedBumpView;Lcom/android/systemui/statusbar/stack/StackViewState;J)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "speedBump"    # Lcom/android/systemui/statusbar/SpeedBumpView;
    .param p3, "state"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p4, "delay"    # J

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getNextChildNotGone(I)Landroid/view/View;

    move-result-object v1

    .line 247
    .local v1, "nextChild":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 248
    iget v4, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    iget v5, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v0, v4, v5

    .line 249
    .local v0, "lineEnd":F
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v2

    .line 250
    .local v2, "nextState":Lcom/android/systemui/statusbar/stack/StackViewState;
    iget v4, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_1

    const/4 v3, 0x1

    .line 251
    .local v3, "startIsAboveNext":Z
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p2, v3, p4, p5, v4}, Lcom/android/systemui/statusbar/SpeedBumpView;->animateDivider(ZJLjava/lang/Runnable;)V

    .line 253
    .end local v0    # "lineEnd":F
    .end local v2    # "nextState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v3    # "startIsAboveNext":Z
    :cond_0
    return-void

    .line 250
    .restart local v0    # "lineEnd":F
    .restart local v2    # "nextState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeViewStateForView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public resetViewStates()V
    .locals 8

    .prologue
    .line 60
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 61
    .local v5, "numChildren":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 62
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 63
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 66
    instance-of v7, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_0

    move-object v6, v0

    .line 67
    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 68
    .local v6, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 70
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v2, :cond_0

    .line 71
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 72
    .local v1, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V

    goto :goto_1

    .line 61
    .end local v1    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_1
    return-void
.end method
