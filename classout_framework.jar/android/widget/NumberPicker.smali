.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Landroid/widget/NumberPicker$CustomEditText;,
        Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$PressedStateHelper;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$OnValueChangeListener;,
        Landroid/widget/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x10900b1

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final TOUCHWIZ_LIGHT_LAYOUT_RESOURCE_ID:I = 0x1090128

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mIsParentThemeDeviceDefault:Z

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 213
    new-instance v0, Landroid/widget/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Landroid/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    .line 2177
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 582
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 583
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 592
    const v0, 0x116001e

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 593
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 606
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 622
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 167
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mWrapSelectorWheelPreferred:Z

    .line 315
    const-wide/16 v22, 0x12c

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, mLongPressUpdateInterval:J

    .line 320
    new-instance v22, Landroid/util/SparseArray;

    invoke-direct/range {v22 .. v22}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 325
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mSelectorIndices:[I

    .line 345
    const/high16 v22, -0x80000000

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mInitialScrollOffset:I

    .line 446
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mScrollState:I

    .line 483
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsParentThemeDeviceDefault:Z

    .line 504
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mLastHandledDownDpadKeyCode:I

    .line 625
    sget-object v22, Lcom/android/internal/R$styleable;->NumberPicker:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 627
    .local v7, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v22, 0x1

    const v23, 0x10900b1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 630
    .local v16, "layoutResId":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 631
    .local v10, "config":Landroid/content/res/Configuration;
    iget v0, v10, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_184

    const/4 v14, 0x1

    .line 634
    .local v14, "hasKeyboard_12Key":Z
    :goto_7e
    const v22, 0x10900b1

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_187

    const v22, 0x1090128

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_187

    const/16 v22, 0x1

    :goto_92
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHasSelectorWheel:Z

    .line 637
    const/16 v22, 0xa

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHideWheelUntilFocused:Z

    .line 640
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mSolidColor:I

    .line 642
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 644
    .local v21, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v21, :cond_e1

    .line 645
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 646
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 647
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v22

    if-eqz v22, :cond_e1

    .line 648
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 651
    :cond_e1
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 653
    const/16 v22, 0x1

    const/high16 v23, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    .line 656
    .local v13, "defSelectionDividerHeight":I
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v7, v0, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mSelectionDividerHeight:I

    .line 659
    const/16 v22, 0x1

    const/high16 v23, 0x42400000    # 48.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v22

    move/from16 v0, v22

    float-to-int v12, v0

    .line 662
    .local v12, "defSelectionDividerDistance":I
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v7, v0, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mSelectionDividersDistance:I

    .line 665
    const/16 v22, 0x5

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mMinHeight:I

    .line 668
    const/16 v22, 0x6

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mMaxHeight:I

    .line 670
    move-object/from16 v0, p0

    iget v0, v0, mMinHeight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_18b

    move-object/from16 v0, p0

    iget v0, v0, mMaxHeight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_18b

    move-object/from16 v0, p0

    iget v0, v0, mMinHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mMaxHeight:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_18b

    .line 672
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "minHeight > maxHeight"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 631
    .end local v12    # "defSelectionDividerDistance":I
    .end local v13    # "defSelectionDividerHeight":I
    .end local v14    # "hasKeyboard_12Key":Z
    .end local v21    # "selectionDivider":Landroid/graphics/drawable/Drawable;
    :cond_184
    const/4 v14, 0x0

    goto/16 :goto_7e

    .line 634
    .restart local v14    # "hasKeyboard_12Key":Z
    :cond_187
    const/16 v22, 0x0

    goto/16 :goto_92

    .line 675
    .restart local v12    # "defSelectionDividerDistance":I
    .restart local v13    # "defSelectionDividerHeight":I
    .restart local v21    # "selectionDivider":Landroid/graphics/drawable/Drawable;
    :cond_18b
    const/16 v22, 0x7

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mMinWidth:I

    .line 678
    const/16 v22, 0x8

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mMaxWidth:I

    .line 680
    move-object/from16 v0, p0

    iget v0, v0, mMinWidth:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1e6

    move-object/from16 v0, p0

    iget v0, v0, mMaxWidth:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1e6

    move-object/from16 v0, p0

    iget v0, v0, mMinWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mMaxWidth:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_1e6

    .line 682
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "minWidth > maxWidth"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 685
    :cond_1e6
    move-object/from16 v0, p0

    iget v0, v0, mMaxWidth:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_46d

    const/16 v22, 0x1

    :goto_1f6
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mComputeMaxWidth:Z

    .line 687
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 690
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 693
    sget-object v22, Lcom/android/internal/R$styleable;->Theme:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 694
    .local v6, "a":Landroid/content/res/TypedArray;
    const/16 v22, 0x143

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsParentThemeDeviceDefault:Z

    .line 695
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 698
    new-instance v22, Landroid/widget/NumberPicker$PressedStateHelper;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$PressedStateHelper;-><init>(Landroid/widget/NumberPicker;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 705
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasSelectorWheel:Z

    move/from16 v22, v0

    if-nez v22, :cond_471

    const/16 v22, 0x1

    :goto_245
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 707
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    const-string v23, "layout_inflater"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 709
    .local v15, "inflater":Landroid/view/LayoutInflater;
    const/16 v22, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 711
    new-instance v17, Landroid/widget/NumberPicker$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$1;-><init>(Landroid/widget/NumberPicker;)V

    .line 723
    .local v17, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v19, Landroid/widget/NumberPicker$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    .line 737
    .local v19, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    new-instance v18, Landroid/widget/NumberPicker$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;Z)V

    .line 781
    .local v18, "onKeyListener":Landroid/view/View$OnKeyListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasSelectorWheel:Z

    move/from16 v22, v0

    if-nez v22, :cond_475

    .line 782
    const v22, 0x102043d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageButton;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mIncrementButton:Landroid/widget/ImageButton;

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 793
    :goto_2c0
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasSelectorWheel:Z

    move/from16 v22, v0

    if-nez v22, :cond_47f

    .line 794
    const v22, 0x102043f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageButton;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mDecrementButton:Landroid/widget/ImageButton;

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 805
    :goto_302
    const v22, 0x102043e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mInputText:Landroid/widget/EditText;

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    new-instance v23, Landroid/widget/NumberPicker$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v10}, Landroid/widget/NumberPicker$4;-><init>(Landroid/widget/NumberPicker;ZLandroid/content/res/Configuration;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Landroid/widget/NumberPicker$InputTextFilter;

    invoke-direct/range {v25 .. v26}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 836
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    .line 837
    .local v11, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTouchSlop:I

    .line 838
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mMinimumFlingVelocity:I

    .line 839
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v22

    div-int/lit8 v22, v22, 0x8

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mMaximumFlingVelocity:I

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTextSize()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTextSize:I

    .line 844
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 845
    .local v20, "paint":Landroid/graphics/Paint;
    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 846
    sget-object v22, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 847
    move-object/from16 v0, p0

    iget v0, v0, mTextSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 850
    .local v9, "colors":Landroid/content/res/ColorStateList;
    sget-object v22, ENABLED_STATE_SET:[I

    const/16 v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    .line 851
    .local v8, "color":I
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 852
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 855
    new-instance v22, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-direct/range {v22 .. v25}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mFlingScroller:Landroid/widget/Scroller;

    .line 856
    new-instance v22, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v23

    new-instance v24, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v25, 0x40200000    # 2.5f

    invoke-direct/range {v24 .. v25}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v22 .. v24}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mAdjustScroller:Landroid/widget/Scroller;

    .line 858
    invoke-direct/range {p0 .. p0}, updateInputTextView()Z

    .line 861
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v22

    if-nez v22, :cond_426

    .line 862
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 865
    :cond_426
    if-eqz v14, :cond_439

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsParentThemeDeviceDefault:Z

    move/from16 v22, v0

    if-eqz v22, :cond_439

    .line 866
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 871
    :cond_439
    move-object/from16 v0, p0

    iget-object v0, v0, mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setWritingBuddyEnabled(Z)V

    .line 875
    const v22, 0x102043d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 876
    const v22, 0x102043f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 877
    const v22, 0x102043e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 878
    const v22, 0x102043e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 879
    return-void

    .line 685
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v8    # "color":I
    .end local v9    # "colors":Landroid/content/res/ColorStateList;
    .end local v11    # "configuration":Landroid/view/ViewConfiguration;
    .end local v15    # "inflater":Landroid/view/LayoutInflater;
    .end local v17    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v18    # "onKeyListener":Landroid/view/View$OnKeyListener;
    .end local v19    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v20    # "paint":Landroid/graphics/Paint;
    :cond_46d
    const/16 v22, 0x0

    goto/16 :goto_1f6

    .line 705
    .restart local v6    # "a":Landroid/content/res/TypedArray;
    :cond_471
    const/16 v22, 0x0

    goto/16 :goto_245

    .line 789
    .restart local v15    # "inflater":Landroid/view/LayoutInflater;
    .restart local v17    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v18    # "onKeyListener":Landroid/view/View$OnKeyListener;
    .restart local v19    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    :cond_475
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mIncrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_2c0

    .line 801
    :cond_47f
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mDecrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_302
.end method

.method static synthetic access$000(Landroid/widget/NumberPicker;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    invoke-direct {p0}, hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget-object v0, p0, mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget-object v0, p0, mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1}, getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mMaxValue:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/NumberPicker;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget-boolean v0, p0, mIsParentThemeDeviceDefault:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/NumberPicker;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    invoke-direct {p0}, needCompareEqualMonthLanguage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/NumberPicker;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget-boolean v0, p0, mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/widget/NumberPicker;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1580(Landroid/widget/NumberPicker;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 100
    iget-boolean v0, p0, mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mBottom:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/NumberPicker;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget-boolean v0, p0, mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1902(Landroid/widget/NumberPicker;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1980(Landroid/widget/NumberPicker;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 100
    iget-boolean v0, p0, mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/NumberPicker;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mBottom:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mBottom:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/NumberPicker;)J
    .registers 3
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget-wide v0, p0, mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$2900(Landroid/widget/NumberPicker;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget-boolean v0, p0, mHasSelectorWheel:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/NumberPicker;ZJ)V
    .registers 4
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$3000(Landroid/widget/NumberPicker;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget-object v0, p0, mDecrementButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/widget/NumberPicker;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget-object v0, p0, mIncrementButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mScrollX:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mScrollY:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mScrollX:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mLeft:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mScrollY:I

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mBottom:I

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mTop:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/NumberPicker;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    invoke-direct {p0}, showSoftInput()V

    return-void
.end method

.method static synthetic access$4000(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mScrollX:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mScrollY:I

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mScrollX:I

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$4400(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mLeft:I

    return v0
.end method

.method static synthetic access$4500(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$4600(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mScrollX:I

    return v0
.end method

.method static synthetic access$4700(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mScrollX:I

    return v0
.end method

.method static synthetic access$4800(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$4900(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mLeft:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 100
    invoke-direct {p0, p1}, validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5000(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mScrollX:I

    return v0
.end method

.method static synthetic access$5100(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mScrollX:I

    return v0
.end method

.method static synthetic access$5200(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$5300(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mLeft:I

    return v0
.end method

.method static synthetic access$5400(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mScrollY:I

    return v0
.end method

.method static synthetic access$5500(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mBottom:I

    return v0
.end method

.method static synthetic access$5600(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mTop:I

    return v0
.end method

.method static synthetic access$5700(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$5800(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mBottom:I

    return v0
.end method

.method static synthetic access$5900(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$6000(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mBottom:I

    return v0
.end method

.method static synthetic access$6100(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$6200(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$6300(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6400(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6500(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6600(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .registers 3
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6800(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .registers 3
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/widget/NumberPicker;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    invoke-virtual {p0}, isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mValue:I

    return v0
.end method

.method static synthetic access$7200(Landroid/widget/NumberPicker;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget-boolean v0, p0, mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$7300(Landroid/widget/NumberPicker;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1}, getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 100
    iget v0, p0, mMinValue:I

    return v0
.end method

.method static synthetic access$7500(Landroid/widget/NumberPicker;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1}, formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()[C
    .registers 1

    .prologue
    .line 100
    sget-object v0, DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method private changeValueByOne(Z)V
    .registers 8
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1857
    iget-boolean v0, p0, mHasSelectorWheel:Z

    if-eqz v0, :cond_37

    .line 1858
    iget-object v0, p0, mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1859
    iget-object v0, p0, mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1860
    iget-object v0, p0, mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1862
    :cond_1b
    iput v1, p0, mPreviousScrollerY:I

    .line 1863
    if-eqz p1, :cond_2d

    .line 1864
    iget-object v0, p0, mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1868
    :goto_29
    invoke-virtual {p0}, invalidate()V

    .line 1876
    :goto_2c
    return-void

    .line 1866
    :cond_2d
    iget-object v0, p0, mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_29

    .line 1870
    :cond_37
    if-eqz p1, :cond_41

    .line 1871
    iget v0, p0, mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, setValueInternal(IZ)V

    goto :goto_2c

    .line 1873
    :cond_41
    iget v0, p0, mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, setValueInternal(IZ)V

    goto :goto_2c
.end method

.method private decrementSelectorIndices([I)V
    .registers 5
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1977
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_3
    if-lez v0, :cond_e

    .line 1978
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1977
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1980
    :cond_e
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1981
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, mWrapSelectorWheel:Z

    if-eqz v2, :cond_1d

    iget v2, p0, mMinValue:I

    if-ge v1, v2, :cond_1d

    .line 1982
    iget v1, p0, mMaxValue:I

    .line 1984
    :cond_1d
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1985
    invoke-direct {p0, v1}, ensureCachedScrollSelectorValue(I)V

    .line 1986
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .registers 6
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1993
    iget-object v0, p0, mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1994
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1995
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 2009
    :goto_a
    return-void

    .line 1998
    :cond_b
    iget v3, p0, mMinValue:I

    if-lt p1, v3, :cond_13

    iget v3, p0, mMaxValue:I

    if-le p1, v3, :cond_19

    .line 1999
    :cond_13
    const-string v2, ""

    .line 2008
    :goto_15
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a

    .line 2001
    :cond_19
    iget-object v3, p0, mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_26

    .line 2002
    iget v3, p0, mMinValue:I

    sub-int v1, p1, v3

    .line 2003
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 2004
    goto :goto_15

    .line 2005
    .end local v1    # "displayedValueIndex":I
    :cond_26
    invoke-direct {p0, p1}, formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_15
.end method

.method private ensureScrollWheelAdjusted()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 2294
    iget v0, p0, mInitialScrollOffset:I

    iget v2, p0, mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2295
    .local v4, "deltaY":I
    if-eqz v4, :cond_28

    .line 2296
    iput v1, p0, mPreviousScrollerY:I

    .line 2297
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1b

    .line 2298
    if-lez v4, :cond_29

    iget v0, p0, mSelectorElementHeight:I

    neg-int v0, v0

    :goto_1a
    add-int/2addr v4, v0

    .line 2300
    :cond_1b
    iget-object v0, p0, mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2301
    invoke-virtual {p0}, invalidate()V

    .line 2302
    const/4 v1, 0x1

    .line 2304
    :cond_28
    return v1

    .line 2298
    :cond_29
    iget v0, p0, mSelectorElementHeight:I

    goto :goto_1a
.end method

.method private fling(I)V
    .registers 11
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1933
    iput v1, p0, mPreviousScrollerY:I

    .line 1935
    if-lez p1, :cond_17

    .line 1936
    iget-object v0, p0, mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1941
    :goto_13
    invoke-virtual {p0}, invalidate()V

    .line 1942
    return-void

    .line 1938
    :cond_17
    iget-object v0, p0, mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_13
.end method

.method private formatNumber(I)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2012
    iget-object v0, p0, mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_b

    iget-object v0, p0, mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p1}, formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .registers 6
    .param p0, "value"    # I

    .prologue
    .line 2899
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2130
    iget-object v1, p0, mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_9

    .line 2132
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_2d

    move-result v1

    .line 2156
    :goto_8
    return v1

    .line 2137
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 2139
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2140
    iget-object v1, p0, mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2141
    iget v1, p0, mMinValue:I

    add-int/2addr v1, v0

    goto :goto_8

    .line 2137
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2150
    :cond_28
    :try_start_28
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2b} :catch_31

    move-result v1

    goto :goto_8

    .line 2133
    .end local v0    # "i":I
    :catch_2d
    move-exception v1

    .line 2156
    :goto_2e
    iget v1, p0, mMinValue:I

    goto :goto_8

    .line 2151
    .restart local v0    # "i":I
    :catch_31
    move-exception v1

    goto :goto_2e
.end method

.method public static final getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;
    .registers 1

    .prologue
    .line 219
    sget-object v0, sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .registers 6
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1948
    iget v0, p0, mMaxValue:I

    if-le p1, v0, :cond_14

    .line 1949
    iget v0, p0, mMinValue:I

    iget v1, p0, mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, mMaxValue:I

    iget v3, p0, mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1953
    .end local p1    # "selectorIndex":I
    :cond_13
    :goto_13
    return p1

    .line 1950
    .restart local p1    # "selectorIndex":I
    :cond_14
    iget v0, p0, mMinValue:I

    if-ge p1, v0, :cond_13

    .line 1951
    iget v0, p0, mMaxValue:I

    iget v1, p0, mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, mMaxValue:I

    iget v3, p0, mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_13
.end method

.method private hideSoftInput()V
    .registers 4

    .prologue
    .line 1394
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1395
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_20

    iget-object v1, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1396
    invoke-virtual {p0}, getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1397
    iget-boolean v1, p0, mHasSelectorWheel:Z

    if-eqz v1, :cond_20

    .line 1398
    iget-object v1, p0, mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1401
    :cond_20
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .registers 5
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1961
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_f

    .line 1962
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1961
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1964
    :cond_f
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1965
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, mWrapSelectorWheel:Z

    if-eqz v2, :cond_20

    iget v2, p0, mMaxValue:I

    if-le v1, v2, :cond_20

    .line 1966
    iget v1, p0, mMinValue:I

    .line 1968
    :cond_20
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1969
    invoke-direct {p0, v1}, ensureCachedScrollSelectorValue(I)V

    .line 1970
    return-void
.end method

.method private initializeFadingEdges()V
    .registers 3

    .prologue
    .line 1896
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setVerticalFadingEdgeEnabled(Z)V

    .line 1897
    iget v0, p0, mBottom:I

    iget v1, p0, mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, setFadingEdgeLength(I)V

    .line 1898
    return-void
.end method

.method private initializeSelectorWheel()V
    .registers 8

    .prologue
    .line 1879
    invoke-direct {p0}, initializeSelectorWheelIndices()V

    .line 1880
    iget-object v1, p0, mSelectorIndices:[I

    .line 1881
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, mTextSize:I

    mul-int v4, v5, v6

    .line 1882
    .local v4, "totalTextHeight":I
    iget v5, p0, mBottom:I

    iget v6, p0, mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1883
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 1884
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, mSelectorTextGapHeight:I

    .line 1885
    iget v5, p0, mTextSize:I

    iget v6, p0, mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, mSelectorElementHeight:I

    .line 1888
    iget-object v5, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1889
    .local v0, "editTextTextPosition":I
    iget v5, p0, mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, mInitialScrollOffset:I

    .line 1891
    iget v5, p0, mInitialScrollOffset:I

    iput v5, p0, mCurrentScrollOffset:I

    .line 1892
    invoke-direct {p0}, updateInputTextView()Z

    .line 1893
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .registers 6

    .prologue
    .line 1803
    iget-object v4, p0, mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1804
    iget-object v3, p0, mSelectorIndices:[I

    .line 1805
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, getValue()I

    move-result v0

    .line 1806
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v4, p0, mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_27

    .line 1807
    add-int/lit8 v4, v1, -0x1

    add-int v2, v0, v4

    .line 1808
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, mWrapSelectorWheel:Z

    if-eqz v4, :cond_1d

    .line 1809
    invoke-direct {p0, v2}, getWrappedSelectorIndex(I)I

    move-result v2

    .line 1811
    :cond_1d
    aput v2, v3, v1

    .line 1812
    aget v4, v3, v1

    invoke-direct {p0, v4}, ensureCachedScrollSelectorValue(I)V

    .line 1806
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1814
    .end local v2    # "selectorIndex":I
    :cond_27
    return-void
.end method

.method private isMeaLanguage()Z
    .registers 4

    .prologue
    .line 2967
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 2968
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2969
    .local v0, "language":Ljava/lang/String;
    const-string v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string/jumbo v2, "ur"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2970
    :cond_21
    const/4 v2, 0x1

    .line 2972
    :goto_22
    return v2

    :cond_23
    const/4 v2, 0x0

    goto :goto_22
.end method

.method private makeMeasureSpec(II)I
    .registers 8
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1761
    const/4 v2, -0x1

    if-ne p2, v2, :cond_6

    .line 1772
    .end local p1    # "measureSpec":I
    :goto_5
    :sswitch_5
    return p1

    .line 1764
    .restart local p1    # "measureSpec":I
    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1765
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1766
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_38

    .line 1774
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1770
    :sswitch_2a
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_5

    .line 1772
    :sswitch_33
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_5

    .line 1766
    :sswitch_data_38
    .sparse-switch
        -0x80000000 -> :sswitch_2a
        0x0 -> :sswitch_33
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .registers 9
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 937
    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 938
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 939
    .local v0, "amountToScroll":I
    iget v5, p0, mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 940
    .local v1, "futureScrollOffset":I
    iget v5, p0, mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 941
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_34

    .line 942
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_2b

    .line 943
    if-lez v2, :cond_30

    .line 944
    iget v5, p0, mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 949
    :cond_2b
    :goto_2b
    add-int/2addr v0, v2

    .line 950
    invoke-virtual {p0, v4, v0}, scrollBy(II)V

    .line 953
    :goto_2f
    return v3

    .line 946
    :cond_30
    iget v5, p0, mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_2b

    :cond_34
    move v3, v4

    .line 953
    goto :goto_2f
.end method

.method private needCompareEqualMonthLanguage()Z
    .registers 4

    .prologue
    .line 2978
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 2979
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2980
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v2, "vi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2981
    const/4 v2, 0x1

    .line 2983
    :goto_12
    return v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private notifyChange(II)V
    .registers 5
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 2059
    iget-object v0, p0, mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_b

    .line 2060
    iget-object v0, p0, mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, mValue:I

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 2062
    :cond_b
    return-void
.end method

.method private onScrollStateChange(I)V
    .registers 3
    .param p1, "scrollState"    # I

    .prologue
    .line 1920
    iget v0, p0, mScrollState:I

    if-ne v0, p1, :cond_5

    .line 1927
    :cond_4
    :goto_4
    return-void

    .line 1923
    :cond_5
    iput p1, p0, mScrollState:I

    .line 1924
    iget-object v0, p0, mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_4

    .line 1925
    iget-object v0, p0, mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    goto :goto_4
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .registers 4
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 1904
    iget-object v0, p0, mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_12

    .line 1905
    invoke-direct {p0}, ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1906
    invoke-direct {p0}, updateInputTextView()Z

    .line 1908
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, onScrollStateChange(I)V

    .line 1914
    :cond_11
    :goto_11
    return-void

    .line 1910
    :cond_12
    iget v0, p0, mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    .line 1911
    invoke-direct {p0}, updateInputTextView()Z

    goto :goto_11
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .registers 5

    .prologue
    .line 2093
    iget-object v0, p0, mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_16

    .line 2094
    new-instance v0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 2098
    :goto_b
    iget-object v0, p0, mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, postDelayed(Ljava/lang/Runnable;J)Z

    .line 2099
    return-void

    .line 2096
    :cond_16
    iget-object v0, p0, mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .registers 6
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 2070
    iget-object v0, p0, mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_16

    .line 2071
    new-instance v0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 2075
    :goto_b
    iget-object v0, p0, mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$600(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2076
    iget-object v0, p0, mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, postDelayed(Ljava/lang/Runnable;J)Z

    .line 2077
    return-void

    .line 2073
    :cond_16
    iget-object v0, p0, mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private postSetSelectionCommand(II)V
    .registers 4
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 2164
    iget-object v0, p0, mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_1b

    .line 2165
    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 2169
    :goto_b
    iget-object v0, p0, mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    # setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$702(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 2170
    iget-object v0, p0, mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    # setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$802(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 2171
    iget-object v0, p0, mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    .line 2172
    return-void

    .line 2167
    :cond_1b
    iget-object v0, p0, mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private removeAllCallbacks()V
    .registers 2

    .prologue
    .line 2114
    iget-object v0, p0, mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 2115
    iget-object v0, p0, mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2117
    :cond_9
    iget-object v0, p0, mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_12

    .line 2118
    iget-object v0, p0, mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2120
    :cond_12
    iget-object v0, p0, mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_1b

    .line 2121
    iget-object v0, p0, mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2123
    :cond_1b
    iget-object v0, p0, mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2124
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .registers 2

    .prologue
    .line 2105
    iget-object v0, p0, mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_9

    .line 2106
    iget-object v0, p0, mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2108
    :cond_9
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .registers 2

    .prologue
    .line 2083
    iget-object v0, p0, mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 2084
    iget-object v0, p0, mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2086
    :cond_9
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .registers 6
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1790
    const/4 v1, -0x1

    if-eq p1, v1, :cond_c

    .line 1791
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1792
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, resolveSizeAndState(III)I

    move-result p2

    .line 1794
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_c
    return p2
.end method

.method private setValueInternal(IZ)V
    .registers 5
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1823
    iget v1, p0, mValue:I

    if-ne v1, p1, :cond_11

    .line 1825
    invoke-direct {p0}, isMeaLanguage()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1826
    invoke-direct {p0}, updateInputTextView()Z

    .line 1827
    invoke-virtual {p0}, invalidate()V

    .line 1847
    :cond_10
    :goto_10
    return-void

    .line 1833
    :cond_11
    iget-boolean v1, p0, mWrapSelectorWheel:Z

    if-eqz v1, :cond_2c

    .line 1834
    invoke-direct {p0, p1}, getWrappedSelectorIndex(I)I

    move-result p1

    .line 1839
    :goto_19
    iget v0, p0, mValue:I

    .line 1840
    .local v0, "previous":I
    iput p1, p0, mValue:I

    .line 1841
    invoke-direct {p0}, updateInputTextView()Z

    .line 1842
    if-eqz p2, :cond_25

    .line 1843
    invoke-direct {p0, v0, p1}, notifyChange(II)V

    .line 1845
    :cond_25
    invoke-direct {p0}, initializeSelectorWheelIndices()V

    .line 1846
    invoke-virtual {p0}, invalidate()V

    goto :goto_10

    .line 1836
    .end local v0    # "previous":I
    :cond_2c
    iget v1, p0, mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1837
    iget v1, p0, mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_19
.end method

.method private showSoftInput()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1380
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1381
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1a

    .line 1382
    iget-boolean v1, p0, mHasSelectorWheel:Z

    if-eqz v1, :cond_10

    .line 1383
    iget-object v1, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1385
    :cond_10
    iget-object v1, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1386
    iget-object v1, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1388
    :cond_1a
    return-void
.end method

.method private tryComputeMaxWidth()V
    .registers 11

    .prologue
    .line 1407
    iget-boolean v8, p0, mComputeMaxWidth:Z

    if-nez v8, :cond_5

    .line 1444
    :cond_4
    :goto_4
    return-void

    .line 1410
    :cond_5
    const/4 v4, 0x0

    .line 1411
    .local v4, "maxTextWidth":I
    iget-object v8, p0, mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_4b

    .line 1412
    const/4 v3, 0x0

    .line 1413
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const/16 v8, 0x9

    if-gt v2, v8, :cond_22

    .line 1414
    iget-object v8, p0, mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1415
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_1f

    .line 1416
    move v3, v1

    .line 1413
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1419
    .end local v1    # "digitWidth":F
    :cond_22
    const/4 v5, 0x0

    .line 1420
    .local v5, "numberOfDigits":I
    iget v0, p0, mMaxValue:I

    .line 1421
    .local v0, "current":I
    :goto_25
    if-lez v0, :cond_2c

    .line 1422
    add-int/lit8 v5, v5, 0x1

    .line 1423
    div-int/lit8 v0, v0, 0xa

    goto :goto_25

    .line 1425
    :cond_2c
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1435
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_2f
    iget-object v8, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1436
    iget v8, p0, mMaxWidth:I

    if-eq v8, v4, :cond_4

    .line 1437
    iget v8, p0, mMinWidth:I

    if-le v4, v8, :cond_64

    .line 1438
    iput v4, p0, mMaxWidth:I

    .line 1442
    :goto_47
    invoke-virtual {p0}, invalidate()V

    goto :goto_4

    .line 1427
    .end local v2    # "i":I
    :cond_4b
    iget-object v8, p0, mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1428
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4f
    if-ge v2, v7, :cond_2f

    .line 1429
    iget-object v8, p0, mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1430
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_61

    .line 1431
    float-to-int v4, v6

    .line 1428
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 1440
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_64
    iget v8, p0, mMinWidth:I

    iput v8, p0, mMaxWidth:I

    goto :goto_47
.end method

.method private updateInputTextView()Z
    .registers 5

    .prologue
    .line 2041
    iget-object v1, p0, mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_3a

    iget v1, p0, mValue:I

    invoke-direct {p0, v1}, formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 2043
    .local v0, "text":Ljava/lang/String;
    :goto_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 2044
    iget-object v1, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2046
    iget-object v1, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2048
    const/4 v1, 0x1

    .line 2051
    :goto_39
    return v1

    .line 2041
    .end local v0    # "text":Ljava/lang/String;
    :cond_3a
    iget-object v1, p0, mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, mValue:I

    iget v3, p0, mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_a

    .line 2051
    .restart local v0    # "text":Ljava/lang/String;
    :cond_44
    const/4 v1, 0x0

    goto :goto_39
.end method

.method private updateWrapSelectorWheel()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1489
    iget v3, p0, mMaxValue:I

    iget v4, p0, mMinValue:I

    sub-int/2addr v3, v4

    iget-object v4, p0, mSelectorIndices:[I

    array-length v4, v4

    if-lt v3, v4, :cond_16

    move v0, v1

    .line 1490
    .local v0, "wrappingAllowed":Z
    :goto_d
    if-eqz v0, :cond_18

    iget-boolean v3, p0, mWrapSelectorWheelPreferred:Z

    if-eqz v3, :cond_18

    :goto_13
    iput-boolean v1, p0, mWrapSelectorWheel:Z

    .line 1491
    return-void

    .end local v0    # "wrappingAllowed":Z
    :cond_16
    move v0, v2

    .line 1489
    goto :goto_d

    .restart local v0    # "wrappingAllowed":Z
    :cond_18
    move v1, v2

    .line 1490
    goto :goto_13
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2016
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2017
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 2018
    .local v0, "current":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget v2, p0, mValue:I

    if-ne v2, v0, :cond_20

    .line 2020
    :cond_1c
    invoke-direct {p0}, updateInputTextView()Z

    .line 2025
    :goto_1f
    return-void

    .line 2023
    :cond_20
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, setValueInternal(IZ)V

    goto :goto_1f
.end method


# virtual methods
.method public computeScroll()V
    .registers 5

    .prologue
    .line 1193
    iget-object v1, p0, mFlingScroller:Landroid/widget/Scroller;

    .line 1194
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1195
    iget-object v1, p0, mAdjustScroller:Landroid/widget/Scroller;

    .line 1196
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1212
    :goto_10
    return-void

    .line 1200
    :cond_11
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1201
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1202
    .local v0, "currentScrollerY":I
    iget v2, p0, mPreviousScrollerY:I

    if-nez v2, :cond_22

    .line 1203
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, mPreviousScrollerY:I

    .line 1205
    :cond_22
    const/4 v2, 0x0

    iget v3, p0, mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, scrollBy(II)V

    .line 1206
    iput v0, p0, mPreviousScrollerY:I

    .line 1207
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1208
    invoke-direct {p0, v1}, onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_10

    .line 1210
    :cond_36
    invoke-virtual {p0}, invalidate()V

    goto :goto_10
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 1277
    invoke-virtual {p0}, getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 2

    .prologue
    .line 1267
    iget v0, p0, mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 3

    .prologue
    .line 1272
    iget v0, p0, mMaxValue:I

    iget v1, p0, mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x100

    const/16 v7, 0x80

    const/16 v6, 0x40

    const/4 v5, -0x1

    .line 1144
    iget-boolean v4, p0, mHasSelectorWheel:Z

    if-nez v4, :cond_11

    .line 1145
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1188
    :goto_10
    return v4

    .line 1147
    :cond_11
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1150
    .local v1, "eventY":I
    iget v4, p0, mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_36

    .line 1151
    const/4 v2, 0x3

    .line 1157
    .local v2, "hoveredVirtualViewId":I
    :goto_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1158
    .local v0, "action":I
    invoke-virtual {p0}, getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1160
    .local v3, "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    packed-switch v0, :pswitch_data_64

    .line 1188
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :cond_34
    :goto_34
    :pswitch_34
    const/4 v4, 0x0

    goto :goto_10

    .line 1152
    .restart local v1    # "eventY":I
    :cond_36
    iget v4, p0, mBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_3c

    .line 1153
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_27

    .line 1155
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3c
    const/4 v2, 0x2

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_27

    .line 1162
    .restart local v0    # "action":I
    .restart local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :pswitch_3e
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1164
    iput v2, p0, mLastHoveredChildVirtualViewId:I

    .line 1165
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_34

    .line 1169
    :pswitch_47
    iget v4, p0, mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_34

    iget v4, p0, mLastHoveredChildVirtualViewId:I

    if-eq v4, v5, :cond_34

    .line 1171
    iget v4, p0, mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v4, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1174
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1176
    iput v2, p0, mLastHoveredChildVirtualViewId:I

    .line 1177
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_34

    .line 1182
    :pswitch_5d
    invoke-virtual {v3, v2, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1184
    iput v5, p0, mLastHoveredChildVirtualViewId:I

    goto :goto_34

    .line 1160
    nop

    :pswitch_data_64
    .packed-switch 0x7
        :pswitch_47
        :pswitch_34
        :pswitch_3e
        :pswitch_5d
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 1095
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1096
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_5c

    .line 1127
    :cond_a
    :goto_a
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_e
    :goto_e
    return v2

    .line 1099
    :sswitch_f
    invoke-direct {p0}, removeAllCallbacks()V

    goto :goto_a

    .line 1103
    :sswitch_13
    iget-boolean v1, p0, mHasSelectorWheel:Z

    if-eqz v1, :cond_a

    .line 1106
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_6e

    goto :goto_a

    .line 1108
    :pswitch_1f
    iget-boolean v1, p0, mWrapSelectorWheel:Z

    if-nez v1, :cond_2f

    if-ne v0, v4, :cond_46

    invoke-virtual {p0}, getValue()I

    move-result v1

    invoke-virtual {p0}, getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 1110
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, requestFocus()Z

    .line 1111
    iput v0, p0, mLastHandledDownDpadKeyCode:I

    .line 1112
    invoke-direct {p0}, removeAllCallbacks()V

    .line 1113
    iget-object v1, p0, mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1114
    if-ne v0, v4, :cond_51

    move v1, v2

    :goto_42
    invoke-direct {p0, v1}, changeValueByOne(Z)V

    goto :goto_e

    .line 1108
    :cond_46
    invoke-virtual {p0}, getValue()I

    move-result v1

    invoke-virtual {p0}, getMinValue()I

    move-result v3

    if-le v1, v3, :cond_a

    goto :goto_2f

    .line 1114
    :cond_51
    const/4 v1, 0x0

    goto :goto_42

    .line 1120
    :pswitch_53
    iget v1, p0, mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_a

    .line 1121
    const/4 v1, -0x1

    iput v1, p0, mLastHandledDownDpadKeyCode:I

    goto :goto_e

    .line 1096
    nop

    :sswitch_data_5c
    .sparse-switch
        0x13 -> :sswitch_13
        0x14 -> :sswitch_13
        0x17 -> :sswitch_f
        0x42 -> :sswitch_f
    .end sparse-switch

    .line 1106
    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_53
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1083
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1084
    .local v0, "action":I
    packed-switch v0, :pswitch_data_10

    .line 1090
    :goto_7
    :pswitch_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1087
    :pswitch_c
    invoke-direct {p0}, removeAllCallbacks()V

    goto :goto_7

    .line 1084
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1133
    .local v0, "action":I
    packed-switch v0, :pswitch_data_10

    .line 1139
    :goto_7
    :pswitch_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1136
    :pswitch_c
    invoke-direct {p0}, removeAllCallbacks()V

    goto :goto_7

    .line 1133
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 1644
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1646
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v0

    .line 1648
    .local v0, "state":[I
    iget-object v1, p0, mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_18

    iget-object v1, p0, mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1649
    iget-object v1, p0, mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1651
    :cond_18
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 2

    .prologue
    .line 1744
    iget-boolean v0, p0, mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 1745
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1750
    :goto_8
    return-object v0

    .line 1747
    :cond_9
    iget-object v0, p0, mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_14

    .line 1748
    new-instance v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1750
    :cond_14
    iget-object v0, p0, mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    goto :goto_8
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 1632
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDecrementButton()Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 2941
    iget-object v0, p0, mDecrementButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1596
    iget-object v0, p0, mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getIncrementButton()Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 2932
    iget-object v0, p0, mIncrementButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getMText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 2923
    iget-object v0, p0, mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMaxValue()I
    .registers 2

    .prologue
    .line 1559
    iget v0, p0, mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .registers 2

    .prologue
    .line 1522
    iget v0, p0, mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 1282
    iget v0, p0, mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 1627
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 1513
    iget v0, p0, mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .registers 2

    .prologue
    .line 1455
    iget-boolean v0, p0, mWrapSelectorWheel:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 1656
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 1658
    iget-object v0, p0, mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1659
    iget-object v0, p0, mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1661
    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 1637
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1638
    invoke-direct {p0}, removeAllCallbacks()V

    .line 1639
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1675
    move-object/from16 v0, p0

    iget-boolean v12, v0, mHasSelectorWheel:Z

    if-nez v12, :cond_a

    .line 1676
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1730
    :cond_9
    :goto_9
    return-void

    .line 1679
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v12, v0, mHideWheelUntilFocused:Z

    if-eqz v12, :cond_c4

    invoke-virtual/range {p0 .. p0}, hasFocus()Z

    move-result v7

    .line 1680
    .local v7, "showSelectorWheel":Z
    :goto_14
    move-object/from16 v0, p0

    iget v12, v0, mRight:I

    move-object/from16 v0, p0

    iget v13, v0, mLeft:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v10, v12

    .line 1681
    .local v10, "x":F
    move-object/from16 v0, p0

    iget v12, v0, mCurrentScrollOffset:I

    int-to-float v11, v12

    .line 1684
    .local v11, "y":F
    if-eqz v7, :cond_8c

    move-object/from16 v0, p0

    iget-object v12, v0, mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_8c

    move-object/from16 v0, p0

    iget v12, v0, mScrollState:I

    if-nez v12, :cond_8c

    .line 1686
    move-object/from16 v0, p0

    iget-boolean v12, v0, mDecrementVirtualButtonPressed:Z

    if-eqz v12, :cond_5e

    .line 1687
    move-object/from16 v0, p0

    iget-object v12, v0, mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v13, PRESSED_STATE_SET:[I

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1688
    move-object/from16 v0, p0

    iget-object v12, v0, mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, mRight:I

    move-object/from16 v0, p0

    iget v0, v0, mTopSelectionDividerTop:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v12, v0, mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1691
    :cond_5e
    move-object/from16 v0, p0

    iget-boolean v12, v0, mIncrementVirtualButtonPressed:Z

    if-eqz v12, :cond_8c

    .line 1692
    move-object/from16 v0, p0

    iget-object v12, v0, mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v13, PRESSED_STATE_SET:[I

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1693
    move-object/from16 v0, p0

    iget-object v12, v0, mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, mBottomSelectionDividerBottom:I

    move-object/from16 v0, p0

    iget v15, v0, mRight:I

    move-object/from16 v0, p0

    iget v0, v0, mBottom:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v12, v0, mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1700
    :cond_8c
    move-object/from16 v0, p0

    iget-object v6, v0, mSelectorIndices:[I

    .line 1701
    .local v6, "selectorIndices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_91
    array-length v12, v6

    if-ge v3, v12, :cond_c7

    .line 1702
    aget v5, v6, v3

    .line 1703
    .local v5, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1709
    .local v4, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v7, :cond_a5

    const/4 v12, 0x1

    if-ne v3, v12, :cond_b2

    :cond_a5
    const/4 v12, 0x1

    if-ne v3, v12, :cond_bb

    move-object/from16 v0, p0

    iget-object v12, v0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_bb

    .line 1711
    :cond_b2
    move-object/from16 v0, p0

    iget-object v12, v0, mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1713
    :cond_bb
    move-object/from16 v0, p0

    iget v12, v0, mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1701
    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    .line 1679
    .end local v3    # "i":I
    .end local v4    # "scrollSelectorValue":Ljava/lang/String;
    .end local v5    # "selectorIndex":I
    .end local v6    # "selectorIndices":[I
    .end local v7    # "showSelectorWheel":Z
    .end local v10    # "x":F
    .end local v11    # "y":F
    :cond_c4
    const/4 v7, 0x1

    goto/16 :goto_14

    .line 1717
    .restart local v3    # "i":I
    .restart local v6    # "selectorIndices":[I
    .restart local v7    # "showSelectorWheel":Z
    .restart local v10    # "x":F
    .restart local v11    # "y":F
    :cond_c7
    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_9

    .line 1719
    move-object/from16 v0, p0

    iget v9, v0, mTopSelectionDividerTop:I

    .line 1720
    .local v9, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v12, v0, mSelectionDividerHeight:I

    add-int v2, v9, v12

    .line 1721
    .local v2, "bottomOfTopDivider":I
    move-object/from16 v0, p0

    iget-object v12, v0, mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, mRight:I

    invoke-virtual {v12, v13, v9, v14, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v12, v0, mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1725
    move-object/from16 v0, p0

    iget v1, v0, mBottomSelectionDividerBottom:I

    .line 1726
    .local v1, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v12, v0, mSelectionDividerHeight:I

    sub-int v8, v1, v12

    .line 1727
    .local v8, "topOfBottomDivider":I
    move-object/from16 v0, p0

    iget-object v12, v0, mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, mRight:I

    invoke-virtual {v12, v13, v8, v14, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v12, v0, mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_9
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1735
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1736
    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1737
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1738
    iget v0, p0, mMinValue:I

    iget v1, p0, mValue:I

    add-int/2addr v0, v1

    iget v1, p0, mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1739
    iget v0, p0, mMaxValue:I

    iget v1, p0, mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1740
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 958
    iget-boolean v3, p0, mHasSelectorWheel:Z

    if-eqz v3, :cond_c

    invoke-virtual {p0}, isEnabled()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    .line 1006
    :goto_d
    return v1

    .line 961
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 962
    .local v0, "action":I
    packed-switch v0, :pswitch_data_bc

    move v1, v2

    .line 1006
    goto :goto_d

    .line 964
    :pswitch_17
    invoke-direct {p0}, removeAllCallbacks()V

    .line 965
    iget-object v3, p0, mInputText:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 966
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, mLastDownEventY:F

    iput v3, p0, mLastDownOrMoveEventY:F

    .line 967
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, mLastDownEventTime:J

    .line 968
    iput-boolean v2, p0, mIgnoreMoveEvents:Z

    .line 969
    iput-boolean v2, p0, mPerformClickOnTap:Z

    .line 971
    iget v3, p0, mLastDownEventY:F

    iget v4, p0, mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_62

    .line 972
    iget v3, p0, mScrollState:I

    if-nez v3, :cond_45

    .line 973
    iget-object v3, p0, mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 983
    :cond_45
    :goto_45
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 984
    iget-object v3, p0, mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_75

    .line 985
    iget-object v3, p0, mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 986
    iget-object v3, p0, mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 987
    invoke-direct {p0, v2}, onScrollStateChange(I)V

    goto :goto_d

    .line 976
    :cond_62
    iget v3, p0, mLastDownEventY:F

    iget v4, p0, mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_45

    .line 977
    iget v3, p0, mScrollState:I

    if-nez v3, :cond_45

    .line 978
    iget-object v3, p0, mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_45

    .line 988
    :cond_75
    iget-object v3, p0, mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_88

    .line 989
    iget-object v2, p0, mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 990
    iget-object v2, p0, mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_d

    .line 991
    :cond_88
    iget v3, p0, mLastDownEventY:F

    iget v4, p0, mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9e

    .line 992
    invoke-direct {p0}, hideSoftInput()V

    .line 993
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v2, v4, v5}, postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_d

    .line 995
    :cond_9e
    iget v2, p0, mLastDownEventY:F

    iget v3, p0, mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b4

    .line 996
    invoke-direct {p0}, hideSoftInput()V

    .line 997
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_d

    .line 1000
    :cond_b4
    iput-boolean v1, p0, mPerformClickOnTap:Z

    .line 1001
    invoke-direct {p0}, postBeginSoftInputOnLongPressCommand()V

    goto/16 :goto_d

    .line 962
    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_17
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 883
    iget-boolean v8, p0, mHasSelectorWheel:Z

    if-nez v8, :cond_8

    .line 884
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 908
    :cond_7
    :goto_7
    return-void

    .line 887
    :cond_8
    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v7

    .line 888
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v6

    .line 891
    .local v6, "msrdHght":I
    iget-object v8, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 892
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 893
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 894
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 895
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 896
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 897
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 899
    if-eqz p1, :cond_7

    .line 901
    invoke-direct {p0}, initializeSelectorWheel()V

    .line 902
    invoke-direct {p0}, initializeFadingEdges()V

    .line 903
    invoke-virtual {p0}, getHeight()I

    move-result v8

    iget v9, p0, mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, mTopSelectionDividerTop:I

    .line 905
    iget v8, p0, mTopSelectionDividerTop:I

    iget v9, p0, mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, mBottomSelectionDividerBottom:I

    goto :goto_7
.end method

.method protected onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 912
    iget-boolean v4, p0, mHasSelectorWheel:Z

    if-nez v4, :cond_8

    .line 913
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 926
    :goto_7
    return-void

    .line 917
    :cond_8
    iget v4, p0, mMaxWidth:I

    invoke-direct {p0, p1, v4}, makeMeasureSpec(II)I

    move-result v2

    .line 918
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, mMaxHeight:I

    invoke-direct {p0, p2, v4}, makeMeasureSpec(II)I

    move-result v1

    .line 919
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 921
    iget v4, p0, mMinWidth:I

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 923
    .local v3, "widthSize":I
    iget v4, p0, mMinHeight:I

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 925
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, setMeasuredDimension(II)V

    goto :goto_7
.end method

.method public onResolveDrawables(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1666
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onResolveDrawables(I)V

    .line 1668
    iget-object v0, p0, mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1669
    iget-object v0, p0, mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1671
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1011
    invoke-virtual {p0}, isEnabled()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-boolean v10, p0, mHasSelectorWheel:Z

    if-nez v10, :cond_c

    .line 1012
    :cond_a
    const/4 v10, 0x0

    .line 1078
    :goto_b
    return v10

    .line 1014
    :cond_c
    iget-object v10, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_16

    .line 1015
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1017
    :cond_16
    iget-object v10, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1018
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1019
    .local v0, "action":I
    packed-switch v0, :pswitch_data_de

    .line 1078
    :cond_22
    :goto_22
    const/4 v10, 0x1

    goto :goto_b

    .line 1021
    :pswitch_24
    iget-boolean v10, p0, mIgnoreMoveEvents:Z

    if-nez v10, :cond_22

    .line 1024
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1025
    .local v1, "currentMoveY":F
    iget v10, p0, mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_48

    .line 1026
    iget v10, p0, mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 1027
    .local v2, "deltaDownY":I
    iget v10, p0, mTouchSlop:I

    if-le v2, v10, :cond_45

    .line 1028
    invoke-direct {p0}, removeAllCallbacks()V

    .line 1029
    const/4 v10, 0x1

    invoke-direct {p0, v10}, onScrollStateChange(I)V

    .line 1036
    .end local v2    # "deltaDownY":I
    :cond_45
    :goto_45
    iput v1, p0, mLastDownOrMoveEventY:F

    goto :goto_22

    .line 1032
    :cond_48
    iget v10, p0, mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 1033
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, scrollBy(II)V

    .line 1034
    invoke-virtual {p0}, invalidate()V

    goto :goto_45

    .line 1039
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_55
    invoke-direct {p0}, removeBeginSoftInputCommand()V

    .line 1040
    invoke-direct {p0}, removeChangeCurrentByOneFromLongPress()V

    .line 1041
    iget-object v10, p0, mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v10}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1042
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1043
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1044
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 1045
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, mMinimumFlingVelocity:I

    if-le v10, v11, :cond_87

    .line 1046
    invoke-direct {p0, v7}, fling(I)V

    .line 1047
    const/4 v10, 0x2

    invoke-direct {p0, v10}, onScrollStateChange(I)V

    .line 1074
    :goto_7e
    iget-object v10, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 1075
    const/4 v10, 0x0

    iput-object v10, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_22

    .line 1049
    :cond_87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 1050
    .local v6, "eventY":I
    int-to-float v10, v6

    iget v11, p0, mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 1051
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 1052
    .local v4, "deltaTime":J
    iget v10, p0, mTouchSlop:I

    if-gt v3, v10, :cond_d9

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_d9

    .line 1053
    iget-boolean v10, p0, mPerformClickOnTap:Z

    if-eqz v10, :cond_b9

    .line 1054
    const/4 v10, 0x0

    iput-boolean v10, p0, mPerformClickOnTap:Z

    .line 1055
    invoke-virtual {p0}, performClick()Z

    .line 1072
    :cond_b4
    :goto_b4
    const/4 v10, 0x0

    invoke-direct {p0, v10}, onScrollStateChange(I)V

    goto :goto_7e

    .line 1057
    :cond_b9
    iget v10, p0, mSelectorElementHeight:I

    div-int v10, v6, v10

    add-int/lit8 v8, v10, -0x1

    .line 1059
    .local v8, "selectorIndexOffset":I
    if-lez v8, :cond_cc

    .line 1060
    const/4 v10, 0x1

    invoke-direct {p0, v10}, changeValueByOne(Z)V

    .line 1061
    iget-object v10, p0, mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_b4

    .line 1063
    :cond_cc
    if-gez v8, :cond_b4

    .line 1064
    const/4 v10, 0x0

    invoke-direct {p0, v10}, changeValueByOne(Z)V

    .line 1065
    iget-object v10, p0, mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_b4

    .line 1070
    .end local v8    # "selectorIndexOffset":I
    :cond_d9
    invoke-direct {p0}, ensureScrollWheelAdjusted()Z

    goto :goto_b4

    .line 1019
    nop

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_55
        :pswitch_24
    .end packed-switch
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 1357
    iget-boolean v0, p0, mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 1358
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1362
    :goto_8
    return v0

    .line 1359
    :cond_9
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1360
    invoke-direct {p0}, showSoftInput()V

    .line 1362
    :cond_12
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public performLongClick()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1367
    iget-boolean v1, p0, mHasSelectorWheel:Z

    if-nez v1, :cond_a

    .line 1368
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    .line 1373
    :cond_9
    :goto_9
    return v0

    .line 1369
    :cond_a
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1370
    invoke-direct {p0}, showSoftInput()V

    .line 1371
    iput-boolean v0, p0, mIgnoreMoveEvents:Z

    goto :goto_9
.end method

.method public scrollBy(II)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 1232
    iget-object v0, p0, mSelectorIndices:[I

    .line 1233
    .local v0, "selectorIndices":[I
    iget v1, p0, mSelectorElementHeight:I

    if-gtz v1, :cond_8

    .line 1263
    :cond_7
    :goto_7
    return-void

    .line 1236
    :cond_8
    iget-boolean v1, p0, mWrapSelectorWheel:Z

    if-nez v1, :cond_19

    if-lez p2, :cond_19

    aget v1, v0, v3

    iget v2, p0, mMinValue:I

    if-gt v1, v2, :cond_19

    .line 1238
    iget v1, p0, mInitialScrollOffset:I

    iput v1, p0, mCurrentScrollOffset:I

    goto :goto_7

    .line 1241
    :cond_19
    iget-boolean v1, p0, mWrapSelectorWheel:Z

    if-nez v1, :cond_2a

    if-gez p2, :cond_2a

    aget v1, v0, v3

    iget v2, p0, mMaxValue:I

    if-lt v1, v2, :cond_2a

    .line 1243
    iget v1, p0, mInitialScrollOffset:I

    iput v1, p0, mCurrentScrollOffset:I

    goto :goto_7

    .line 1246
    :cond_2a
    iget v1, p0, mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, mCurrentScrollOffset:I

    .line 1247
    :cond_2f
    :goto_2f
    iget v1, p0, mCurrentScrollOffset:I

    iget v2, p0, mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, mSelectorTextGapHeight:I

    if-le v1, v2, :cond_56

    .line 1248
    iget v1, p0, mCurrentScrollOffset:I

    iget v2, p0, mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, mCurrentScrollOffset:I

    .line 1249
    invoke-direct {p0, v0}, decrementSelectorIndices([I)V

    .line 1250
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, setValueInternal(IZ)V

    .line 1251
    iget-boolean v1, p0, mWrapSelectorWheel:Z

    if-nez v1, :cond_2f

    aget v1, v0, v3

    iget v2, p0, mMinValue:I

    if-gt v1, v2, :cond_2f

    .line 1252
    iget v1, p0, mInitialScrollOffset:I

    iput v1, p0, mCurrentScrollOffset:I

    goto :goto_2f

    .line 1255
    :cond_56
    :goto_56
    iget v1, p0, mCurrentScrollOffset:I

    iget v2, p0, mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_7

    .line 1256
    iget v1, p0, mCurrentScrollOffset:I

    iget v2, p0, mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, mCurrentScrollOffset:I

    .line 1257
    invoke-direct {p0, v0}, incrementSelectorIndices([I)V

    .line 1258
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, setValueInternal(IZ)V

    .line 1259
    iget-boolean v1, p0, mWrapSelectorWheel:Z

    if-nez v1, :cond_56

    aget v1, v0, v3

    iget v2, p0, mMaxValue:I

    if-lt v1, v2, :cond_56

    .line 1260
    iget v1, p0, mInitialScrollOffset:I

    iput v1, p0, mCurrentScrollOffset:I

    goto :goto_56
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .registers 4
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1609
    iget-object v0, p0, mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_5

    .line 1623
    :goto_4
    return-void

    .line 1612
    :cond_5
    iput-object p1, p0, mDisplayedValues:[Ljava/lang/String;

    .line 1613
    iget-object v0, p0, mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 1615
    iget-object v0, p0, mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1620
    :goto_13
    invoke-direct {p0}, updateInputTextView()Z

    .line 1621
    invoke-direct {p0}, initializeSelectorWheelIndices()V

    .line 1622
    invoke-direct {p0}, tryComputeMaxWidth()V

    goto :goto_4

    .line 1618
    :cond_1d
    iget-object v0, p0, mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_13
.end method

.method public setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1216
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1217
    iget-boolean v0, p0, mHasSelectorWheel:Z

    if-nez v0, :cond_c

    .line 1218
    iget-object v0, p0, mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1220
    :cond_c
    iget-boolean v0, p0, mHasSelectorWheel:Z

    if-nez v0, :cond_15

    .line 1221
    iget-object v0, p0, mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1223
    :cond_15
    iget-object v0, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1226
    iget-object v0, p0, mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1228
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .registers 3
    .param p1, "formatter"    # Landroid/widget/NumberPicker$Formatter;

    .prologue
    .line 1315
    iget-object v0, p0, mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_5

    .line 1321
    :goto_4
    return-void

    .line 1318
    :cond_5
    iput-object p1, p0, mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 1319
    invoke-direct {p0}, initializeSelectorWheelIndices()V

    .line 1320
    invoke-direct {p0}, updateInputTextView()Z

    goto :goto_4
.end method

.method public setMaxValue(I)V
    .registers 4
    .param p1, "maxValue"    # I

    .prologue
    .line 1573
    iget v0, p0, mMaxValue:I

    if-ne v0, p1, :cond_5

    .line 1588
    :goto_4
    return-void

    .line 1576
    :cond_5
    if-gez p1, :cond_10

    .line 1577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1579
    :cond_10
    iput p1, p0, mMaxValue:I

    .line 1580
    iget v0, p0, mMaxValue:I

    iget v1, p0, mValue:I

    if-ge v0, v1, :cond_1c

    .line 1581
    iget v0, p0, mMaxValue:I

    iput v0, p0, mValue:I

    .line 1583
    :cond_1c
    invoke-direct {p0}, updateWrapSelectorWheel()V

    .line 1584
    invoke-direct {p0}, initializeSelectorWheelIndices()V

    .line 1585
    invoke-direct {p0}, updateInputTextView()Z

    .line 1586
    invoke-direct {p0}, tryComputeMaxWidth()V

    .line 1587
    invoke-virtual {p0}, invalidate()V

    goto :goto_4
.end method

.method public setMinValue(I)V
    .registers 4
    .param p1, "minValue"    # I

    .prologue
    .line 1536
    iget v0, p0, mMinValue:I

    if-ne v0, p1, :cond_5

    .line 1551
    :goto_4
    return-void

    .line 1539
    :cond_5
    if-gez p1, :cond_10

    .line 1540
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1542
    :cond_10
    iput p1, p0, mMinValue:I

    .line 1543
    iget v0, p0, mMinValue:I

    iget v1, p0, mValue:I

    if-le v0, v1, :cond_1c

    .line 1544
    iget v0, p0, mMinValue:I

    iput v0, p0, mValue:I

    .line 1546
    :cond_1c
    invoke-direct {p0}, updateWrapSelectorWheel()V

    .line 1547
    invoke-direct {p0}, initializeSelectorWheelIndices()V

    .line 1548
    invoke-direct {p0}, updateInputTextView()Z

    .line 1549
    invoke-direct {p0}, tryComputeMaxWidth()V

    .line 1550
    invoke-virtual {p0}, invalidate()V

    goto :goto_4
.end method

.method public setOnLongPressUpdateInterval(J)V
    .registers 4
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1504
    iput-wide p1, p0, mLongPressUpdateInterval:J

    .line 1505
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .registers 2
    .param p1, "onScrollListener"    # Landroid/widget/NumberPicker$OnScrollListener;

    .prologue
    .line 1300
    iput-object p1, p0, mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    .line 1301
    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .registers 2
    .param p1, "onValueChangedListener"    # Landroid/widget/NumberPicker$OnValueChangeListener;

    .prologue
    .line 1291
    iput-object p1, p0, mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 1292
    return-void
.end method

.method public setValue(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 1352
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, setValueInternal(IZ)V

    .line 1353
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .registers 2
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1476
    iput-boolean p1, p0, mWrapSelectorWheelPreferred:Z

    .line 1477
    invoke-direct {p0}, updateWrapSelectorWheel()V

    .line 1479
    return-void
.end method

.method public twSetMaxInputLength(I)V
    .registers 8
    .param p1, "limit"    # I

    .prologue
    const/4 v5, 0x0

    .line 2910
    iget-object v3, p0, mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 2911
    .local v1, "filterArr":[Landroid/text/InputFilter;
    aget-object v0, v1, v5

    .line 2912
    .local v0, "backupFilter":Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 2913
    .local v2, "lengthFilter":Landroid/text/InputFilter;
    iget-object v3, p0, mInputText:Landroid/widget/EditText;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2914
    return-void
.end method

.method public twSetMonthInputMode()V
    .registers 3

    .prologue
    .line 2950
    iget-object v0, p0, mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2951
    iget-object v0, p0, mInputText:Landroid/widget/EditText;

    const-string v1, "inputType=month_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 2952
    iget-object v0, p0, mInputText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2953
    return-void
.end method

.method public twSetYearDateTimeInputMode()V
    .registers 3

    .prologue
    .line 2961
    iget-object v0, p0, mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2962
    iget-object v0, p0, mInputText:Landroid/widget/EditText;

    const-string v1, "inputType=YearDateTime_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 2963
    iget-object v0, p0, mInputText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2964
    return-void
.end method
