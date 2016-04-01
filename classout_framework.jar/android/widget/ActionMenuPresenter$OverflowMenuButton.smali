.class Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private final mTempPts:[F

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .registers 7
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 999
    iput-object p1, p0, this$0:Landroid/widget/ActionMenuPresenter;

    .line 1000
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 997
    new-array v0, v3, [F

    iput-object v0, p0, mTempPts:[F

    .line 1002
    invoke-virtual {p0, v2}, setClickable(Z)V

    .line 1003
    invoke-virtual {p0, v2}, setFocusable(Z)V

    .line 1004
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setVisibility(I)V

    .line 1005
    invoke-virtual {p0, v2}, setEnabled(Z)V

    .line 1007
    invoke-virtual {p0}, getHoverUIFeatureLevel()I

    move-result v0

    if-ge v0, v3, :cond_28

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1008
    :cond_28
    invoke-virtual {p0, v2}, setHoverPopupType(I)V

    .line 1009
    invoke-virtual {p0, v2}, setLongClickable(Z)V

    .line 1042
    :cond_2e
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .registers 2

    .prologue
    .line 1133
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .registers 2

    .prologue
    .line 1128
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1139
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1140
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 1141
    return-void
.end method

.method public performClick()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1046
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1052
    :goto_7
    return v1

    .line 1050
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, playSoundEffect(I)V

    .line 1051
    iget-object v0, p0, this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_7
.end method

.method public performLongClick()Z
    .registers 22

    .prologue
    .line 1057
    invoke-super/range {p0 .. p0}, Landroid/widget/ImageButton;->performLongClick()Z

    move-result v19

    if-nez v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/ActionMenuPresenter;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static/range {v19 .. v19}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v19

    if-nez v19, :cond_15

    .line 1058
    :cond_12
    const/16 v19, 0x1

    .line 1123
    :goto_14
    return v19

    .line 1061
    :cond_15
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [I

    .line 1062
    .local v12, "screenPos":[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1063
    .local v3, "contentFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, getLocationOnScreen([I)V

    .line 1064
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 1066
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v4

    .line 1067
    .local v4, "context":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1050017

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1068
    .local v14, "statusBarHeight":I
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v16

    .line 1069
    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v7

    .line 1070
    .local v7, "height":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v13, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1071
    .local v13, "screenWidth":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1072
    .local v11, "screenHeight":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1073
    .local v5, "density":F
    const/16 v19, 0x0

    aget v19, v12, v19

    div-int/lit8 v20, v16, 0x2

    add-int v10, v19, v20

    .line 1075
    .local v10, "referenceX":I
    invoke-virtual/range {p0 .. p0}, getLayoutDirection()I

    move-result v19

    if-nez v19, :cond_75

    .line 1076
    sub-int v10, v13, v10

    .line 1078
    :cond_75
    const/high16 v19, 0x40a00000    # 5.0f

    mul-float v19, v19, v5

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v10, v10, v19

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/ActionMenuPresenter;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static/range {v19 .. v19}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v19

    if-eqz v19, :cond_118

    .line 1082
    invoke-virtual/range {p0 .. p0}, getContentDescription()Ljava/lang/CharSequence;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1087
    .local v2, "cheatSheet":Landroid/widget/Toast;
    :goto_9a
    const/4 v9, 0x0

    .line 1088
    .local v9, "offsetY":I
    const/16 v19, 0x1

    aget v19, v12, v19

    add-int v19, v19, v7

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    if-ne v7, v0, :cond_128

    .line 1089
    :cond_b3
    const/16 v19, 0x1

    aget v19, v12, v19

    sub-int v9, v19, v14

    .line 1090
    const v19, 0x800035

    add-int v20, v7, v9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v10, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 1097
    :goto_c5
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    .line 1098
    .local v8, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v8, :cond_108

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v19

    if-eqz v19, :cond_108

    .line 1099
    const/high16 v19, 0x40800000    # 4.0f

    mul-float v19, v19, v5

    move/from16 v0, v19

    float-to-int v15, v0

    .line 1100
    .local v15, "tempToastHeight":I
    const/4 v6, 0x0

    .line 1101
    .local v6, "gravity":I
    const/16 v17, 0x0

    .line 1102
    .local v17, "xOffset":I
    const/16 v18, 0x0

    .line 1104
    .local v18, "yOffset":I
    const/16 v19, 0x1

    aget v19, v12, v19

    add-int v19, v19, v7

    add-int v19, v19, v15

    move/from16 v0, v19

    if-ge v0, v11, :cond_13b

    .line 1106
    const/16 v6, 0x35

    .line 1107
    const/16 v19, 0x0

    aget v19, v12, v19

    sub-int v19, v13, v19

    div-int/lit8 v20, v16, 0x2

    sub-int v17, v19, v20

    .line 1108
    const/16 v19, 0x1

    aget v19, v12, v19

    add-int v18, v19, v7

    .line 1118
    :goto_101
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v6, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 1121
    .end local v6    # "gravity":I
    .end local v15    # "tempToastHeight":I
    .end local v17    # "xOffset":I
    .end local v18    # "yOffset":I
    :cond_108
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1122
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, performHapticFeedback(I)Z

    .line 1123
    const/16 v19, 0x1

    goto/16 :goto_14

    .line 1084
    .end local v2    # "cheatSheet":Landroid/widget/Toast;
    .end local v8    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v9    # "offsetY":I
    :cond_118
    invoke-virtual/range {p0 .. p0}, getContentDescription()Ljava/lang/CharSequence;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .restart local v2    # "cheatSheet":Landroid/widget/Toast;
    goto/16 :goto_9a

    .line 1092
    .restart local v9    # "offsetY":I
    :cond_128
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v9, v11, v19

    .line 1093
    const v19, 0x800055

    add-int v20, v7, v9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v10, v1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_c5

    .line 1112
    .restart local v6    # "gravity":I
    .restart local v8    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v15    # "tempToastHeight":I
    .restart local v17    # "xOffset":I
    .restart local v18    # "yOffset":I
    :cond_13b
    const/16 v6, 0x55

    .line 1113
    const/16 v19, 0x0

    aget v19, v12, v19

    sub-int v19, v13, v19

    div-int/lit8 v20, v16, 0x2

    sub-int v17, v19, v20

    .line 1114
    move/from16 v18, v7

    goto :goto_101
.end method

.method protected setFrame(IIII)Z
    .registers 19
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1145
    invoke-super/range {p0 .. p4}, Landroid/widget/ImageButton;->setFrame(IIII)Z

    move-result v3

    .line 1146
    .local v3, "changed":Z
    iget-object v10, p0, this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v10}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1163
    :cond_c
    :goto_c
    return v3

    .line 1149
    :cond_d
    invoke-virtual {p0}, getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1150
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1151
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_c

    if-eqz v0, :cond_c

    .line 1152
    invoke-virtual {p0}, getWidth()I

    move-result v9

    .line 1153
    .local v9, "width":I
    invoke-virtual {p0}, getHeight()I

    move-result v6

    .line 1154
    .local v6, "height":I
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/lit8 v5, v10, 0x2

    .line 1155
    .local v5, "halfEdge":I
    invoke-virtual {p0}, getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, getPaddingRight()I

    move-result v11

    sub-int v7, v10, v11

    .line 1156
    .local v7, "offsetX":I
    invoke-virtual {p0}, getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v11

    sub-int v8, v10, v11

    .line 1157
    .local v8, "offsetY":I
    add-int v10, v9, v7

    div-int/lit8 v1, v10, 0x2

    .line 1158
    .local v1, "centerX":I
    add-int v10, v6, v8

    div-int/lit8 v2, v10, 0x2

    .line 1159
    .local v2, "centerY":I
    sub-int v10, v1, v5

    sub-int v11, v2, v5

    add-int v12, v1, v5

    add-int v13, v2, v5

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_c
.end method
