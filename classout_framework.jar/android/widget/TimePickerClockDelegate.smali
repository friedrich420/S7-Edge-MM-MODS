.class Landroid/widget/TimePickerClockDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/widget/RadialTimePickerView$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerClockDelegate$Node;,
        Landroid/widget/TimePickerClockDelegate$SavedState;,
        Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;
    }
.end annotation


# static fields
.field static final AM:I = 0x0

.field private static final AMPM_INDEX:I = 0x2

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final ENABLE_PICKER_INDEX:I = 0x3

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final HOUR_INDEX:I = 0x0

.field private static final MINUTE_INDEX:I = 0x1

.field static final PM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimePickerClockDelegate"


# instance fields
.field private mAllowAutoAdvance:Z

.field private mAmKeyCode:I

.field private final mAmLabel:Landroid/widget/CheckedTextView;

.field private final mAmPmLayout:Landroid/view/View;

.field private final mAmText:Ljava/lang/String;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mDeletedKeyFormat:Ljava/lang/String;

.field private mDoublePlaceholderText:Ljava/lang/String;

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private final mHeaderView:Landroid/view/View;

.field private final mHourView:Landroid/widget/TextView;

.field private mInKbMode:Z

.field private mInitialHourOfDay:I

.field private mInitialMinute:I

.field private mIs24HourView:Z

.field private mIsAmPmAtStart:Z

.field private mIsEnabled:Z

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field private mLastAnnouncedIsHour:Z

.field private mLastAnnouncedText:Ljava/lang/CharSequence;

.field private mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

.field private final mMinuteView:Landroid/widget/TextView;

.field private mPlaceholderText:C

.field private mPmKeyCode:I

.field private final mPmLabel:Landroid/widget/CheckedTextView;

.field private final mPmText:Ljava/lang/String;

.field private final mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

.field private mSelectHours:Ljava/lang/String;

.field private mSelectMinutes:Ljava/lang/String;

.field private final mSeparatorView:Landroid/widget/TextView;

.field private mTempCalendar:Ljava/util/Calendar;

.field private mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-array v0, v3, [I

    const v1, 0x1010098

    aput v1, v0, v2

    sput-object v0, ATTRS_TEXT_COLOR:[I

    .line 71
    new-array v0, v3, [I

    const v1, 0x1010033

    aput v1, v0, v2

    sput-object v0, ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 29
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 122
    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    .line 93
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsEnabled:Z

    .line 105
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mTypedTimes:Ljava/util/ArrayList;

    .line 1334
    new-instance v19, Landroid/widget/TimePickerClockDelegate$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$1;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mClickListener:Landroid/view/View$OnClickListener;

    .line 1361
    new-instance v19, Landroid/widget/TimePickerClockDelegate$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$2;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mKeyListener:Landroid/view/View$OnKeyListener;

    .line 1371
    new-instance v19, Landroid/widget/TimePickerClockDelegate$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$3;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 127
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "layout_inflater"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 129
    .local v12, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 131
    .local v16, "res":Landroid/content/res/Resources;
    const v19, 0x1040572

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mSelectHours:Ljava/lang/String;

    .line 132
    const v19, 0x1040573

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mSelectMinutes:Ljava/lang/String;

    .line 134
    invoke-static/range {p2 .. p2}, Landroid/widget/TimePickerSpinnerDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "amPmStrings":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v7, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mAmText:Ljava/lang/String;

    .line 136
    const/16 v19, 0x1

    aget-object v19, v7, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mPmText:Ljava/lang/String;

    .line 138
    const/16 v19, 0xa

    const v20, 0x1090115

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 140
    .local v13, "layoutResourceId":I
    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 142
    .local v15, "mainView":Landroid/view/View;
    const v19, 0x10204ac

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mHeaderView:Landroid/view/View;

    .line 145
    const v19, 0x10204ad

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mHourView:Landroid/widget/TextView;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, mHourView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, mHourView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    const v21, 0x1040572

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 149
    const v19, 0x10204ae

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mSeparatorView:Landroid/widget/TextView;

    .line 150
    const v19, 0x10204af

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mMinuteView:Landroid/widget/TextView;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, mMinuteView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, mMinuteView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    const v21, 0x1040573

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, mHourView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mHourView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x18

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, computeStableWidth(Landroid/widget/TextView;I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, mMinuteView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mMinuteView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, computeStableWidth(Landroid/widget/TextView;I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 160
    new-instance v19, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/16 v20, 0x0

    aget-object v20, v7, v20

    new-instance v21, Landroid/text/style/TtsSpan$VerbatimBuilder;

    const/16 v22, 0x0

    aget-object v22, v7, v22

    invoke-direct/range {v21 .. v22}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 164
    .local v6, "amLabel":Landroid/text/SpannableStringBuilder;
    const v19, 0x10204b0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mAmPmLayout:Landroid/view/View;

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, mAmPmLayout:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x10204b1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckedTextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mAmLabel:Landroid/widget/CheckedTextView;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, mAmLabel:Landroid/widget/CheckedTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v20, v7, v20

    invoke-static/range {v20 .. v20}, obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, mAmLabel:Landroid/widget/CheckedTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, mAmPmLayout:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x10204b2

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckedTextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mPmLabel:Landroid/widget/CheckedTextView;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, mPmLabel:Landroid/widget/CheckedTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v20, v7, v20

    invoke-static/range {v20 .. v20}, obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, mPmLabel:Landroid/widget/CheckedTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const/4 v11, 0x0

    .line 178
    .local v11, "headerTextColor":Landroid/content/res/ColorStateList;
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 180
    .local v18, "timeHeaderTextAppearance":I
    if-eqz v18, :cond_253

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, ATTRS_TEXT_COLOR:[I

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 183
    .local v17, "textAppearance":Landroid/content/res/TypedArray;
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 184
    .local v14, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 185
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    .end local v14    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    .end local v17    # "textAppearance":Landroid/content/res/TypedArray;
    :cond_253
    if-nez v11, :cond_25d

    .line 189
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 192
    :cond_25d
    if-eqz v11, :cond_296

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, mHourView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, mSeparatorView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, mMinuteView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, mAmLabel:Landroid/widget/CheckedTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, mPmLabel:Landroid/widget/CheckedTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 201
    :cond_296
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v19

    if-eqz v19, :cond_2b1

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, mHeaderView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 205
    :cond_2b1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    const v19, 0x10204b8

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RadialTimePickerView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    .line 210
    invoke-direct/range {p0 .. p0}, setupListeners()V

    .line 212
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAllowAutoAdvance:Z

    .line 215
    const v19, 0x1040578

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mDoublePlaceholderText:Ljava/lang/String;

    .line 216
    const v19, 0x1040576

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mDeletedKeyFormat:Ljava/lang/String;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, mDoublePlaceholderText:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, mPlaceholderText:C

    .line 218
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mPmKeyCode:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mAmKeyCode:I

    .line 219
    invoke-direct/range {p0 .. p0}, generateLegalTimesTree()V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    .line 223
    .local v8, "calendar":Ljava/util/Calendar;
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 224
    .local v9, "currentHour":I
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 225
    .local v10, "currentMinute":I
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v9, v10, v1, v2}, initialize(IIZI)V

    .line 226
    return-void
.end method

.method static synthetic access$200(Landroid/widget/TimePickerClockDelegate;I)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, setAmOrPm(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TimePickerClockDelegate;IZZ)V
    .registers 4
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, setCurrentItemShowing(IZZ)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TimePickerClockDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 55
    invoke-direct {p0}, tryVibrate()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/TimePickerClockDelegate;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, processKeyUp(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/TimePickerClockDelegate;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 55
    iget-boolean v0, p0, mInKbMode:Z

    return v0
.end method

.method static synthetic access$700(Landroid/widget/TimePickerClockDelegate;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 55
    invoke-direct {p0}, isTypedTimeFullyLegal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/TimePickerClockDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 55
    invoke-direct {p0}, finishKbMode()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/RadialTimePickerView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 55
    iget-object v0, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    return-object v0
.end method

.method private addKeyIfLegal(I)Z
    .registers 10
    .param p1, "keyCode"    # I

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 932
    iget-boolean v3, p0, mIs24HourView:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1a

    :cond_10
    iget-boolean v3, p0, mIs24HourView:Z

    if-nez v3, :cond_1b

    invoke-direct {p0}, isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 954
    :cond_1a
    :goto_1a
    return v1

    .line 937
    :cond_1b
    iget-object v3, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    invoke-direct {p0}, isTypedTimeLegalSoFar()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 939
    invoke-direct {p0}, deleteLastTypedKey()I

    goto :goto_1a

    .line 943
    :cond_2e
    invoke-direct {p0, p1}, getValFromKeyCode(I)I

    move-result v0

    .line 944
    .local v0, "val":I
    iget-object v3, p0, mDelegator:Landroid/widget/TimePicker;

    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 946
    invoke-direct {p0}, isTypedTimeFullyLegal()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 947
    iget-boolean v1, p0, mIs24HourView:Z

    if-nez v1, :cond_7a

    iget-object v1, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-gt v1, v3, :cond_7a

    .line 948
    iget-object v1, p0, mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 949
    iget-object v1, p0, mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 951
    :cond_7a
    invoke-virtual {p0, v2}, onValidationChanged(Z)V

    :cond_7d
    move v1, v2

    .line 954
    goto :goto_1a
.end method

.method private applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 14
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    const v11, 0x10102fe

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 244
    if-eqz p1, :cond_e

    invoke-virtual {p1, v11}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 271
    .end local p1    # "color":Landroid/content/res/ColorStateList;
    :cond_e
    :goto_e
    return-object p1

    .line 250
    .restart local p1    # "color":Landroid/content/res/ColorStateList;
    :cond_f
    const v6, 0x10100a1

    invoke-virtual {p1, v6}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 251
    const/16 v6, 0xa

    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 253
    .local v0, "activatedColor":I
    const/16 v6, 0x8

    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 264
    .local v2, "defaultColor":I
    :goto_2c
    if-eqz v0, :cond_30

    if-nez v2, :cond_4a

    .line 266
    :cond_30
    const/4 p1, 0x0

    goto :goto_e

    .line 256
    .end local v0    # "activatedColor":I
    .end local v2    # "defaultColor":I
    :cond_32
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 259
    .restart local v0    # "activatedColor":I
    iget-object v6, p0, mContext:Landroid/content/Context;

    sget-object v7, ATTRS_DISABLED_ALPHA:[I

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 260
    .local v5, "ta":Landroid/content/res/TypedArray;
    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 261
    .local v3, "disabledAlpha":F
    invoke-direct {p0, v0, v3}, multiplyAlphaComponent(IF)I

    move-result v2

    .restart local v2    # "defaultColor":I
    goto :goto_2c

    .line 269
    .end local v3    # "disabledAlpha":F
    .end local v5    # "ta":Landroid/content/res/TypedArray;
    :cond_4a
    new-array v4, v10, [[I

    new-array v6, v9, [I

    aput v11, v6, v8

    aput-object v6, v4, v8

    new-array v6, v8, [I

    aput-object v6, v4, v9

    .line 270
    .local v4, "stateSet":[[I
    new-array v1, v10, [I

    aput v0, v1, v8

    aput v2, v1, v9

    .line 271
    .local v1, "colors":[I
    new-instance p1, Landroid/content/res/ColorStateList;

    .end local p1    # "color":Landroid/content/res/ColorStateList;
    invoke-direct {p1, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_e
.end method

.method private computeStableWidth(Landroid/widget/TextView;I)I
    .registers 11
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "maxNumber"    # I

    .prologue
    const/4 v7, 0x0

    .line 298
    const/4 v1, 0x0

    .line 300
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, p2, :cond_24

    .line 301
    const-string v4, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {p1, v7, v7}, Landroid/widget/TextView;->measure(II)V

    .line 305
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 306
    .local v3, "width":I
    if-le v3, v1, :cond_21

    .line 307
    move v1, v3

    .line 300
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 311
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "width":I
    :cond_24
    return v1
.end method

.method private deleteLastTypedKey()I
    .registers 4

    .prologue
    .line 990
    iget-object v1, p0, mTypedTimes:Ljava/util/ArrayList;

    iget-object v2, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 991
    .local v0, "deleted":I
    invoke-direct {p0}, isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 992
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, onValidationChanged(Z)V

    .line 994
    :cond_1e
    return v0
.end method

.method private finishKbMode()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1001
    iput-boolean v3, p0, mInKbMode:Z

    .line 1002
    iget-object v1, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    .line 1003
    const/4 v1, 0x0

    invoke-direct {p0, v1}, getEnteredTime([Z)[I

    move-result-object v0

    .line 1004
    .local v0, "values":[I
    iget-object v1, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 1005
    iget-object v1, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 1006
    iget-boolean v1, p0, mIs24HourView:Z

    if-nez v1, :cond_2b

    .line 1007
    iget-object v1, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)V

    .line 1009
    :cond_2b
    iget-object v1, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1011
    .end local v0    # "values":[I
    :cond_30
    invoke-direct {p0, v3}, updateDisplay(Z)V

    .line 1012
    iget-object v1, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1, v4}, Landroid/widget/RadialTimePickerView;->setInputEnabled(Z)V

    .line 1013
    return-void
.end method

.method private generateLegalTimesTree()V
    .registers 24

    .prologue
    .line 1168
    const/4 v6, 0x7

    .line 1169
    .local v6, "k0":I
    const/16 v7, 0x8

    .line 1170
    .local v7, "k1":I
    const/16 v8, 0x9

    .line 1171
    .local v8, "k2":I
    const/16 v9, 0xa

    .line 1172
    .local v9, "k3":I
    const/16 v10, 0xb

    .line 1173
    .local v10, "k4":I
    const/16 v11, 0xc

    .line 1174
    .local v11, "k5":I
    const/16 v12, 0xd

    .line 1175
    .local v12, "k6":I
    const/16 v13, 0xe

    .line 1176
    .local v13, "k7":I
    const/16 v14, 0xf

    .line 1177
    .local v14, "k8":I
    const/16 v15, 0x10

    .line 1180
    .local v15, "k9":I
    new-instance v20, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    .line 1181
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIs24HourView:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16a

    .line 1183
    new-instance v16, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_2ca

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1184
    .local v16, "minuteFirstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    new-instance v17, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_2da

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1186
    .local v17, "minuteSecondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1189
    new-instance v4, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_2f2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1190
    .local v4, "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1193
    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_2fa

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1194
    .local v18, "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1196
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1199
    new-instance v19, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_30a

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1201
    .local v19, "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1204
    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_316

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1205
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1207
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1210
    new-instance v4, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x9

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1211
    .restart local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1214
    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_322

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1215
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1217
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1220
    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_32e

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1221
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1223
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1226
    new-instance v4, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_336

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1227
    .restart local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1229
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1292
    .end local v16    # "minuteFirstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    .end local v17    # "minuteSecondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    :goto_169
    return-void

    .line 1233
    .end local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    .end local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    :cond_16a
    new-instance v3, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, getAmOrPmKeyCode(I)I

    move-result v22

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1236
    .local v3, "ampm":Landroid/widget/TimePickerClockDelegate$Node;
    new-instance v4, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x8

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1237
    .restart local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1239
    invoke-virtual {v4, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1242
    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_348

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1243
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1245
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1248
    new-instance v19, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_352

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1249
    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1251
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1255
    new-instance v5, Landroid/widget/TimePickerClockDelegate$Node;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_362

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1256
    .local v5, "fourthDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1258
    invoke-virtual {v5, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1261
    new-instance v19, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_37a

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1262
    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1264
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1267
    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_386

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1268
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1271
    new-instance v19, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_390

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1272
    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1274
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1277
    new-instance v4, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_3a8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1278
    .restart local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1280
    invoke-virtual {v4, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1283
    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_3bc

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1284
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1287
    new-instance v19, Landroid/widget/TimePickerClockDelegate$Node;

    .end local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_3cc

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    .line 1288
    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    .line 1290
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    goto/16 :goto_169

    .line 1183
    :array_2ca
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    .line 1184
    :array_2da
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1189
    :array_2f2
    .array-data 4
        0x7
        0x8
    .end array-data

    .line 1193
    :array_2fa
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    .line 1199
    :array_30a
    .array-data 4
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1204
    :array_316
    .array-data 4
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1214
    :array_322
    .array-data 4
        0x7
        0x8
        0x9
        0xa
    .end array-data

    .line 1220
    :array_32e
    .array-data 4
        0xb
        0xc
    .end array-data

    .line 1226
    :array_336
    .array-data 4
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1242
    :array_348
    .array-data 4
        0x7
        0x8
        0x9
    .end array-data

    .line 1248
    :array_352
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    .line 1255
    :array_362
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1261
    :array_37a
    .array-data 4
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1267
    :array_386
    .array-data 4
        0xa
        0xb
        0xc
    .end array-data

    .line 1271
    :array_390
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1277
    :array_3a8
    .array-data 4
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    .line 1283
    :array_3bc
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    .line 1287
    :array_3cc
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data
.end method

.method private getAmOrPmKeyCode(I)I
    .registers 16
    .param p1, "amOrPm"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v8, -0x1

    .line 1131
    iget v9, p0, mAmKeyCode:I

    if-eq v9, v8, :cond_c

    iget v9, p0, mPmKeyCode:I

    if-ne v9, v8, :cond_59

    .line 1133
    :cond_c
    invoke-static {v8}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    .line 1134
    .local v5, "kcm":Landroid/view/KeyCharacterMap;
    iget-object v9, p0, mAmText:Ljava/lang/String;

    iget-object v10, p0, mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1135
    .local v2, "amText":Ljava/lang/CharSequence;
    iget-object v9, p0, mPmText:Ljava/lang/String;

    iget-object v10, p0, mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 1136
    .local v7, "pmText":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1137
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2d
    if-ge v4, v0, :cond_59

    .line 1138
    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1139
    .local v1, "amChar":C
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1140
    .local v6, "pmChar":C
    if-eq v1, v6, :cond_66

    .line 1142
    new-array v9, v13, [C

    aput-char v1, v9, v11

    aput-char v6, v9, v12

    invoke-virtual {v5, v9}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 1143
    .local v3, "events":[Landroid/view/KeyEvent;
    if-eqz v3, :cond_5e

    array-length v9, v3

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5e

    .line 1144
    aget-object v9, v3, v11

    invoke-virtual {v9}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    iput v9, p0, mAmKeyCode:I

    .line 1145
    aget-object v9, v3, v13

    invoke-virtual {v9}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    iput v9, p0, mPmKeyCode:I

    .line 1154
    .end local v0    # "N":I
    .end local v1    # "amChar":C
    .end local v2    # "amText":Ljava/lang/CharSequence;
    .end local v3    # "events":[Landroid/view/KeyEvent;
    .end local v4    # "i":I
    .end local v5    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v6    # "pmChar":C
    .end local v7    # "pmText":Ljava/lang/CharSequence;
    :cond_59
    :goto_59
    if-nez p1, :cond_69

    .line 1155
    iget v8, p0, mAmKeyCode:I

    .line 1160
    :cond_5d
    :goto_5d
    return v8

    .line 1147
    .restart local v0    # "N":I
    .restart local v1    # "amChar":C
    .restart local v2    # "amText":Ljava/lang/CharSequence;
    .restart local v3    # "events":[Landroid/view/KeyEvent;
    .restart local v4    # "i":I
    .restart local v5    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v6    # "pmChar":C
    .restart local v7    # "pmText":Ljava/lang/CharSequence;
    :cond_5e
    const-string v9, "TimePickerClockDelegate"

    const-string v10, "Unable to find keycodes for AM and PM."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 1137
    .end local v3    # "events":[Landroid/view/KeyEvent;
    :cond_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 1156
    .end local v0    # "N":I
    .end local v1    # "amChar":C
    .end local v2    # "amText":Ljava/lang/CharSequence;
    .end local v4    # "i":I
    .end local v5    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v6    # "pmChar":C
    .end local v7    # "pmText":Ljava/lang/CharSequence;
    :cond_69
    if-ne p1, v12, :cond_5d

    .line 1157
    iget v8, p0, mPmKeyCode:I

    goto :goto_5d
.end method

.method private getCurrentItemShowing()I
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    return v0
.end method

.method private getEnteredTime([Z)[I
    .registers 13
    .param p1, "enteredZeros"    # [Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1091
    const/4 v0, -0x1

    .line 1092
    .local v0, "amOrPm":I
    const/4 v5, 0x1

    .line 1093
    .local v5, "startIndex":I
    iget-boolean v7, p0, mIs24HourView:Z

    if-nez v7, :cond_2a

    invoke-direct {p0}, isTypedTimeFullyLegal()Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 1094
    iget-object v7, p0, mTypedTimes:Ljava/util/ArrayList;

    iget-object v8, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1095
    .local v3, "keyCode":I
    invoke-direct {p0, v10}, getAmOrPmKeyCode(I)I

    move-result v7

    if-ne v3, v7, :cond_52

    .line 1096
    const/4 v0, 0x0

    .line 1100
    :cond_29
    :goto_29
    const/4 v5, 0x2

    .line 1102
    .end local v3    # "keyCode":I
    :cond_2a
    const/4 v4, -0x1

    .line 1103
    .local v4, "minute":I
    const/4 v1, -0x1

    .line 1104
    .local v1, "hour":I
    move v2, v5

    .local v2, "i":I
    :goto_2d
    iget-object v7, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v2, v7, :cond_7c

    .line 1105
    iget-object v7, p0, mTypedTimes:Ljava/util/ArrayList;

    iget-object v8, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, getValFromKeyCode(I)I

    move-result v6

    .line 1106
    .local v6, "val":I
    if-ne v2, v5, :cond_5a

    .line 1107
    move v4, v6

    .line 1104
    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 1097
    .end local v1    # "hour":I
    .end local v2    # "i":I
    .end local v4    # "minute":I
    .end local v6    # "val":I
    .restart local v3    # "keyCode":I
    :cond_52
    invoke-direct {p0, v9}, getAmOrPmKeyCode(I)I

    move-result v7

    if-ne v3, v7, :cond_29

    .line 1098
    const/4 v0, 0x1

    goto :goto_29

    .line 1108
    .end local v3    # "keyCode":I
    .restart local v1    # "hour":I
    .restart local v2    # "i":I
    .restart local v4    # "minute":I
    .restart local v6    # "val":I
    :cond_5a
    add-int/lit8 v7, v5, 0x1

    if-ne v2, v7, :cond_68

    .line 1109
    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v4, v7

    .line 1110
    if-eqz p1, :cond_4f

    if-nez v6, :cond_4f

    .line 1111
    aput-boolean v9, p1, v9

    goto :goto_4f

    .line 1113
    :cond_68
    add-int/lit8 v7, v5, 0x2

    if-ne v2, v7, :cond_6e

    .line 1114
    move v1, v6

    goto :goto_4f

    .line 1115
    :cond_6e
    add-int/lit8 v7, v5, 0x3

    if-ne v2, v7, :cond_4f

    .line 1116
    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v1, v7

    .line 1117
    if-eqz p1, :cond_4f

    if-nez v6, :cond_4f

    .line 1118
    aput-boolean v9, p1, v10

    goto :goto_4f

    .line 1123
    .end local v6    # "val":I
    :cond_7c
    const/4 v7, 0x3

    new-array v7, v7, [I

    aput v1, v7, v10

    aput v4, v7, v9

    const/4 v8, 0x2

    aput v0, v7, v8

    return-object v7
.end method

.method private getTypedTimes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, mTypedTimes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getValFromKeyCode(I)I
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 1054
    packed-switch p1, :pswitch_data_1c

    .line 1076
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 1056
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 1058
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 1060
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_4

    .line 1062
    :pswitch_b
    const/4 v0, 0x3

    goto :goto_4

    .line 1064
    :pswitch_d
    const/4 v0, 0x4

    goto :goto_4

    .line 1066
    :pswitch_f
    const/4 v0, 0x5

    goto :goto_4

    .line 1068
    :pswitch_11
    const/4 v0, 0x6

    goto :goto_4

    .line 1070
    :pswitch_13
    const/4 v0, 0x7

    goto :goto_4

    .line 1072
    :pswitch_15
    const/16 v0, 0x8

    goto :goto_4

    .line 1074
    :pswitch_18
    const/16 v0, 0x9

    goto :goto_4

    .line 1054
    nop

    :pswitch_data_1c
    .packed-switch 0x7
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method private inKbMode()Z
    .registers 2

    .prologue
    .line 569
    iget-boolean v0, p0, mInKbMode:Z

    return v0
.end method

.method private initialize(IIZI)V
    .registers 6
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourView"    # Z
    .param p4, "index"    # I

    .prologue
    .line 315
    iput p1, p0, mInitialHourOfDay:I

    .line 316
    iput p2, p0, mInitialMinute:I

    .line 317
    iput-boolean p3, p0, mIs24HourView:Z

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, mInKbMode:Z

    .line 319
    invoke-direct {p0, p4}, updateUI(I)V

    .line 320
    return-void
.end method

.method private isTypedTimeFullyLegal()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 976
    iget-boolean v3, p0, mIs24HourView:Z

    if-eqz v3, :cond_1c

    .line 979
    const/4 v3, 0x0

    invoke-direct {p0, v3}, getEnteredTime([Z)[I

    move-result-object v0

    .line 980
    .local v0, "values":[I
    aget v3, v0, v2

    if-ltz v3, :cond_1a

    aget v3, v0, v1

    if-ltz v3, :cond_1a

    aget v3, v0, v1

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_1a

    .line 984
    .end local v0    # "values":[I
    :goto_19
    return v1

    .restart local v0    # "values":[I
    :cond_1a
    move v1, v2

    .line 980
    goto :goto_19

    .line 984
    .end local v0    # "values":[I
    :cond_1c
    iget-object v3, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    :cond_3c
    move v2, v1

    :cond_3d
    move v1, v2

    goto :goto_19
.end method

.method private isTypedTimeLegalSoFar()Z
    .registers 5

    .prologue
    .line 962
    iget-object v2, p0, mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    .line 963
    .local v2, "node":Landroid/widget/TimePickerClockDelegate$Node;
    iget-object v3, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 964
    .local v1, "keyCode":I
    invoke-virtual {v2, v1}, Landroid/widget/TimePickerClockDelegate$Node;->canReach(I)Landroid/widget/TimePickerClockDelegate$Node;

    move-result-object v2

    .line 965
    if-nez v2, :cond_8

    .line 966
    const/4 v3, 0x0

    .line 969
    .end local v1    # "keyCode":I
    :goto_1f
    return v3

    :cond_20
    const/4 v3, 0x1

    goto :goto_1f
.end method

.method private static lastIndexOfAny(Ljava/lang/String;[C)I
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "any"    # [C

    .prologue
    .line 812
    array-length v3, p1

    .line 813
    .local v3, "lengthAny":I
    if-lez v3, :cond_1d

    .line 814
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1d

    .line 815
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 816
    .local v0, "c":C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_10
    if-ge v2, v3, :cond_1a

    .line 817
    aget-char v4, p1, v2

    if-ne v0, v4, :cond_17

    .line 823
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "j":I
    :goto_16
    return v1

    .line 816
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 814
    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 823
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_1d
    const/4 v1, -0x1

    goto :goto_16
.end method

.method private static modulo12(IZ)I
    .registers 3
    .param p0, "n"    # I
    .param p1, "startWithZero"    # Z

    .prologue
    .line 780
    rem-int/lit8 v0, p0, 0xc

    .line 781
    .local v0, "value":I
    if-nez v0, :cond_8

    if-nez p1, :cond_8

    .line 782
    const/16 v0, 0xc

    .line 784
    :cond_8
    return v0
.end method

.method private multiplyAlphaComponent(IF)I
    .registers 8
    .param p1, "color"    # I
    .param p2, "alphaMod"    # F

    .prologue
    .line 275
    const v3, 0xffffff

    and-int v2, p1, v3

    .line 276
    .local v2, "srcRgb":I
    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v1, v3, 0xff

    .line 277
    .local v1, "srcAlpha":I
    int-to-float v3, v1

    mul-float/2addr v3, p2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 278
    .local v0, "dstAlpha":I
    shl-int/lit8 v3, v0, 0x18

    or-int/2addr v3, v2

    return v3
.end method

.method private static final obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 229
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private onTimeChanged()V
    .registers 5

    .prologue
    .line 594
    iget-object v0, p0, mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 595
    iget-object v0, p0, mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_19

    .line 596
    iget-object v0, p0, mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, getCurrentMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 599
    :cond_19
    return-void
.end method

.method private processKeyUp(I)Z
    .registers 9
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 870
    const/16 v4, 0x43

    if-ne p1, v4, :cond_4e

    .line 871
    iget-boolean v4, p0, mInKbMode:Z

    if-eqz v4, :cond_30

    .line 872
    iget-object v4, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_30

    .line 873
    invoke-direct {p0}, deleteLastTypedKey()I

    move-result v0

    .line 875
    .local v0, "deleted":I
    invoke-direct {p0, v3}, getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_32

    .line 876
    iget-object v1, p0, mAmText:Ljava/lang/String;

    .line 882
    .local v1, "deletedKeyStr":Ljava/lang/String;
    :goto_1e
    iget-object v4, p0, mDelegator:Landroid/widget/TimePicker;

    iget-object v5, p0, mDeletedKeyFormat:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 884
    invoke-direct {p0, v2}, updateDisplay(Z)V

    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_30
    move v2, v3

    .line 910
    :cond_31
    :goto_31
    return v2

    .line 877
    .restart local v0    # "deleted":I
    :cond_32
    invoke-direct {p0, v2}, getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_3b

    .line 878
    iget-object v1, p0, mPmText:Ljava/lang/String;

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_1e

    .line 880
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_3b
    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0}, getValFromKeyCode(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_1e

    .line 887
    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_4e
    const/4 v4, 0x7

    if-eq p1, v4, :cond_85

    const/16 v4, 0x8

    if-eq p1, v4, :cond_85

    const/16 v4, 0x9

    if-eq p1, v4, :cond_85

    const/16 v4, 0xa

    if-eq p1, v4, :cond_85

    const/16 v4, 0xb

    if-eq p1, v4, :cond_85

    const/16 v4, 0xc

    if-eq p1, v4, :cond_85

    const/16 v4, 0xd

    if-eq p1, v4, :cond_85

    const/16 v4, 0xe

    if-eq p1, v4, :cond_85

    const/16 v4, 0xf

    if-eq p1, v4, :cond_85

    const/16 v4, 0x10

    if-eq p1, v4, :cond_85

    iget-boolean v4, p0, mIs24HourView:Z

    if-nez v4, :cond_30

    invoke-direct {p0, v3}, getAmOrPmKeyCode(I)I

    move-result v4

    if-eq p1, v4, :cond_85

    invoke-direct {p0, v2}, getAmOrPmKeyCode(I)I

    move-result v4

    if-ne p1, v4, :cond_30

    .line 894
    :cond_85
    iget-boolean v4, p0, mInKbMode:Z

    if-nez v4, :cond_9e

    .line 895
    iget-object v3, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    if-nez v3, :cond_95

    .line 897
    const-string v3, "TimePickerClockDelegate"

    const-string v4, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 900
    :cond_95
    iget-object v3, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 901
    invoke-direct {p0, p1}, tryStartingKbMode(I)V

    goto :goto_31

    .line 905
    :cond_9e
    invoke-direct {p0, p1}, addKeyIfLegal(I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 906
    invoke-direct {p0, v3}, updateDisplay(Z)V

    goto :goto_31
.end method

.method private setAmOrPm(I)V
    .registers 3
    .param p1, "amOrPm"    # I

    .prologue
    .line 858
    invoke-direct {p0, p1}, updateAmPmLabelStates(I)V

    .line 859
    iget-object v0, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)V

    .line 860
    return-void
.end method

.method private setAmPmAtStart(Z)V
    .registers 6
    .param p1, "isAmPmAtStart"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 365
    iget-boolean v1, p0, mIsAmPmAtStart:Z

    if-eq v1, p1, :cond_2f

    .line 366
    iput-boolean p1, p0, mIsAmPmAtStart:Z

    .line 368
    iget-object v1, p0, mAmPmLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 370
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v1

    if-eqz v1, :cond_2a

    .line 372
    :cond_1c
    if-eqz p1, :cond_30

    .line 373
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 374
    iget-object v1, p0, mHourView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 381
    :cond_2a
    :goto_2a
    iget-object v1, p0, mAmPmLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2f
    return-void

    .line 376
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_30
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 377
    iget-object v1, p0, mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2a
.end method

.method private setCurrentItemShowing(IZZ)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z
    .param p3, "announce"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 841
    iget-object v0, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    .line 843
    if-nez p1, :cond_22

    .line 844
    if-eqz p3, :cond_12

    .line 845
    iget-object v0, p0, mDelegator:Landroid/widget/TimePicker;

    iget-object v3, p0, mSelectHours:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 853
    :cond_12
    :goto_12
    iget-object v3, p0, mHourView:Landroid/widget/TextView;

    if-nez p1, :cond_2c

    move v0, v1

    :goto_17
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 854
    iget-object v0, p0, mMinuteView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2e

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 855
    return-void

    .line 848
    :cond_22
    if-eqz p3, :cond_12

    .line 849
    iget-object v0, p0, mDelegator:Landroid/widget/TimePicker;

    iget-object v3, p0, mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_2c
    move v0, v2

    .line 853
    goto :goto_17

    :cond_2e
    move v1, v2

    .line 854
    goto :goto_1e
.end method

.method private setInKbMode(Z)V
    .registers 2
    .param p1, "inKbMode"    # Z

    .prologue
    .line 562
    iput-boolean p1, p0, mInKbMode:Z

    .line 563
    return-void
.end method

.method private setTypedTimes(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, "typeTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, mTypedTimes:Ljava/util/ArrayList;

    .line 574
    return-void
.end method

.method private setupListeners()V
    .registers 3

    .prologue
    .line 323
    iget-object v0, p0, mHeaderView:Landroid/view/View;

    iget-object v1, p0, mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 324
    iget-object v0, p0, mHeaderView:Landroid/view/View;

    iget-object v1, p0, mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 325
    iget-object v0, p0, mHeaderView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 327
    iget-object v0, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p0}, Landroid/widget/RadialTimePickerView;->setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V

    .line 328
    return-void
.end method

.method private tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isHour"    # Z

    .prologue
    .line 771
    iget-boolean v0, p0, mLastAnnouncedIsHour:Z

    if-ne v0, p2, :cond_c

    iget-object v0, p0, mLastAnnouncedText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 773
    :cond_c
    iget-object v0, p0, mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 774
    iput-object p1, p0, mLastAnnouncedText:Ljava/lang/CharSequence;

    .line 775
    iput-boolean p2, p0, mLastAnnouncedIsHour:Z

    .line 777
    :cond_15
    return-void
.end method

.method private tryStartingKbMode(I)V
    .registers 4
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 921
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    invoke-direct {p0, p1}, addKeyIfLegal(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 922
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, mInKbMode:Z

    .line 923
    invoke-virtual {p0, v1}, onValidationChanged(Z)V

    .line 924
    invoke-direct {p0, v1}, updateDisplay(Z)V

    .line 925
    iget-object v0, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setInputEnabled(Z)V

    .line 927
    :cond_18
    return-void
.end method

.method private tryVibrate()V
    .registers 3

    .prologue
    .line 683
    iget-object v0, p0, mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->performHapticFeedback(I)Z

    .line 684
    return-void
.end method

.method private updateAmPmLabelStates(I)V
    .registers 7
    .param p1, "amOrPm"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 687
    if-nez p1, :cond_1d

    move v0, v2

    .line 688
    .local v0, "isAm":Z
    :goto_5
    iget-object v4, p0, mAmLabel:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v0}, Landroid/widget/CheckedTextView;->setActivated(Z)V

    .line 689
    iget-object v4, p0, mAmLabel:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 691
    if-ne p1, v2, :cond_1f

    move v1, v2

    .line 692
    .local v1, "isPm":Z
    :goto_12
    iget-object v2, p0, mPmLabel:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setActivated(Z)V

    .line 693
    iget-object v2, p0, mPmLabel:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 694
    return-void

    .end local v0    # "isAm":Z
    .end local v1    # "isPm":Z
    :cond_1d
    move v0, v3

    .line 687
    goto :goto_5

    .restart local v0    # "isAm":Z
    :cond_1f
    move v1, v3

    .line 691
    goto :goto_12
.end method

.method private updateDisplay(Z)V
    .registers 13
    .param p1, "allowEmptyDisplay"    # Z

    .prologue
    .line 1024
    if-nez p1, :cond_3c

    iget-object v8, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 1025
    iget-object v8, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v8}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    .line 1026
    .local v1, "hour":I
    iget-object v8, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v8}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v4

    .line 1027
    .local v4, "minute":I
    const/4 v8, 0x0

    invoke-direct {p0, v1, v8}, updateHeaderHour(IZ)V

    .line 1028
    const/4 v8, 0x0

    invoke-direct {p0, v4, v8}, updateHeaderMinute(IZ)V

    .line 1029
    iget-boolean v8, p0, mIs24HourView:Z

    if-nez v8, :cond_2a

    .line 1030
    const/16 v8, 0xc

    if-ge v1, v8, :cond_3a

    const/4 v8, 0x0

    :goto_27
    invoke-direct {p0, v8}, updateAmPmLabelStates(I)V

    .line 1032
    :cond_2a
    iget-object v8, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v8}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, setCurrentItemShowing(IZZ)V

    .line 1033
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, onValidationChanged(Z)V

    .line 1051
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_39
    :goto_39
    return-void

    .line 1030
    .restart local v1    # "hour":I
    .restart local v4    # "minute":I
    :cond_3a
    const/4 v8, 0x1

    goto :goto_27

    .line 1035
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_3c
    const/4 v8, 0x2

    new-array v0, v8, [Z

    fill-array-data v0, :array_c0

    .line 1036
    .local v0, "enteredZeros":[Z
    invoke-direct {p0, v0}, getEnteredTime([Z)[I

    move-result-object v7

    .line 1037
    .local v7, "values":[I
    const/4 v8, 0x0

    aget-boolean v8, v0, v8

    if-eqz v8, :cond_85

    const-string v2, "%02d"

    .line 1038
    .local v2, "hourFormat":Ljava/lang/String;
    :goto_4d
    const/4 v8, 0x1

    aget-boolean v8, v0, v8

    if-eqz v8, :cond_88

    const-string v5, "%02d"

    .line 1039
    .local v5, "minuteFormat":Ljava/lang/String;
    :goto_54
    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8b

    iget-object v3, p0, mDoublePlaceholderText:Ljava/lang/String;

    .line 1041
    .local v3, "hourStr":Ljava/lang/String;
    :goto_5c
    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_a5

    iget-object v6, p0, mDoublePlaceholderText:Ljava/lang/String;

    .line 1043
    .local v6, "minuteStr":Ljava/lang/String;
    :goto_64
    iget-object v8, p0, mHourView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    iget-object v8, p0, mHourView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1045
    iget-object v8, p0, mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v8, p0, mMinuteView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1047
    iget-boolean v8, p0, mIs24HourView:Z

    if-nez v8, :cond_39

    .line 1048
    const/4 v8, 0x2

    aget v8, v7, v8

    invoke-direct {p0, v8}, updateAmPmLabelStates(I)V

    goto :goto_39

    .line 1037
    .end local v2    # "hourFormat":Ljava/lang/String;
    .end local v3    # "hourStr":Ljava/lang/String;
    .end local v5    # "minuteFormat":Ljava/lang/String;
    .end local v6    # "minuteStr":Ljava/lang/String;
    :cond_85
    const-string v2, "%2d"

    goto :goto_4d

    .line 1038
    .restart local v2    # "hourFormat":Ljava/lang/String;
    :cond_88
    const-string v5, "%2d"

    goto :goto_54

    .line 1039
    .restart local v5    # "minuteFormat":Ljava/lang/String;
    :cond_8b
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    goto :goto_5c

    .line 1041
    .restart local v3    # "hourStr":Ljava/lang/String;
    :cond_a5
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    iget-char v10, p0, mPlaceholderText:C

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    goto :goto_64

    .line 1035
    nop

    :array_c0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private updateHeaderAmPm()V
    .registers 5

    .prologue
    .line 352
    iget-boolean v2, p0, mIs24HourView:Z

    if-eqz v2, :cond_c

    .line 353
    iget-object v2, p0, mAmPmLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 362
    :goto_b
    return-void

    .line 356
    :cond_c
    iget-object v2, p0, mCurrentLocale:Ljava/util/Locale;

    const-string v3, "hm"

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "dateTimePattern":Ljava/lang/String;
    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 358
    .local v1, "isAmPmAtStart":Z
    invoke-direct {p0, v1}, setAmPmAtStart(Z)V

    .line 360
    iget v2, p0, mInitialHourOfDay:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_28

    const/4 v2, 0x0

    :goto_24
    invoke-direct {p0, v2}, updateAmPmLabelStates(I)V

    goto :goto_b

    :cond_28
    const/4 v2, 0x1

    goto :goto_24
.end method

.method private updateHeaderHour(IZ)V
    .registers 14
    .param p1, "value"    # I
    .param p2, "announce"    # Z

    .prologue
    .line 731
    iget-object v9, p0, mCurrentLocale:Ljava/util/Locale;

    iget-boolean v8, p0, mIs24HourView:Z

    if-eqz v8, :cond_61

    const-string v8, "Hm"

    :goto_8
    invoke-static {v9, v8}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 734
    .local v6, "lengthPattern":I
    const/4 v4, 0x0

    .line 735
    .local v4, "hourWithTwoDigit":Z
    const/4 v3, 0x0

    .line 738
    .local v3, "hourFormat":C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_13
    if-ge v5, v6, :cond_37

    .line 739
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 740
    .local v1, "c":C
    const/16 v8, 0x48

    if-eq v1, v8, :cond_29

    const/16 v8, 0x68

    if-eq v1, v8, :cond_29

    const/16 v8, 0x4b

    if-eq v1, v8, :cond_29

    const/16 v8, 0x6b

    if-ne v1, v8, :cond_64

    .line 741
    :cond_29
    move v3, v1

    .line 742
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v6, :cond_37

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v1, v8, :cond_37

    .line 743
    const/4 v4, 0x1

    .line 749
    .end local v1    # "c":C
    :cond_37
    if-eqz v4, :cond_67

    .line 750
    const-string v2, "%02d"

    .line 754
    .local v2, "format":Ljava/lang/String;
    :goto_3b
    iget-boolean v8, p0, mIs24HourView:Z

    if-eqz v8, :cond_6a

    .line 756
    const/16 v8, 0x6b

    if-ne v3, v8, :cond_47

    if-nez p1, :cond_47

    .line 757
    const/16 p1, 0x18

    .line 763
    :cond_47
    :goto_47
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 764
    .local v7, "text":Ljava/lang/CharSequence;
    iget-object v8, p0, mHourView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    if-eqz p2, :cond_60

    .line 766
    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    .line 768
    :cond_60
    return-void

    .line 731
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "format":Ljava/lang/String;
    .end local v3    # "hourFormat":C
    .end local v4    # "hourWithTwoDigit":Z
    .end local v5    # "i":I
    .end local v6    # "lengthPattern":I
    .end local v7    # "text":Ljava/lang/CharSequence;
    :cond_61
    const-string v8, "hm"

    goto :goto_8

    .line 738
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v3    # "hourFormat":C
    .restart local v4    # "hourWithTwoDigit":Z
    .restart local v5    # "i":I
    .restart local v6    # "lengthPattern":I
    :cond_64
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 752
    .end local v1    # "c":C
    :cond_67
    const-string v2, "%d"

    .restart local v2    # "format":Ljava/lang/String;
    goto :goto_3b

    .line 761
    :cond_6a
    const/16 v8, 0x4b

    if-ne v3, v8, :cond_74

    const/4 v8, 0x1

    :goto_6f
    invoke-static {p1, v8}, modulo12(IZ)I

    move-result p1

    goto :goto_47

    :cond_74
    const/4 v8, 0x0

    goto :goto_6f
.end method

.method private updateHeaderMinute(IZ)V
    .registers 9
    .param p1, "value"    # I
    .param p2, "announceForAccessibility"    # Z

    .prologue
    const/4 v5, 0x0

    .line 827
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_6

    .line 828
    const/4 p1, 0x0

    .line 830
    :cond_6
    iget-object v1, p0, mCurrentLocale:Ljava/util/Locale;

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    if-eqz p2, :cond_21

    .line 833
    invoke-direct {p0, v0, v5}, tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    .line 835
    :cond_21
    return-void
.end method

.method private updateHeaderSeparator()V
    .registers 7

    .prologue
    .line 796
    iget-object v5, p0, mCurrentLocale:Ljava/util/Locale;

    iget-boolean v4, p0, mIs24HourView:Z

    if-eqz v4, :cond_21

    const-string v4, "Hm"

    :goto_8
    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v2, v4, [C

    fill-array-data v2, :array_30

    .line 801
    .local v2, "hourFormats":[C
    invoke-static {v0, v2}, lastIndexOfAny(Ljava/lang/String;[C)I

    move-result v1

    .line 802
    .local v1, "hIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_24

    .line 804
    const-string v3, ":"

    .line 808
    .local v3, "separatorText":Ljava/lang/String;
    :goto_1b
    iget-object v4, p0, mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    return-void

    .line 796
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v1    # "hIndex":I
    .end local v2    # "hourFormats":[C
    .end local v3    # "separatorText":Ljava/lang/String;
    :cond_21
    const-string v4, "hm"

    goto :goto_8

    .line 806
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "hIndex":I
    .restart local v2    # "hourFormats":[C
    :cond_24
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1b

    .line 800
    nop

    :array_30
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
    .end array-data
.end method

.method private updateRadialPicker(I)V
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 346
    iget-object v0, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget v1, p0, mInitialHourOfDay:I

    iget v2, p0, mInitialMinute:I

    iget-boolean v3, p0, mIs24HourView:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadialTimePickerView;->initialize(IIZ)V

    .line 347
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, setCurrentItemShowing(IZZ)V

    .line 348
    return-void
.end method

.method private updateUI(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-direct {p0, p1}, updateRadialPicker(I)V

    .line 334
    invoke-direct {p0}, updateHeaderAmPm()V

    .line 336
    iget v0, p0, mInitialHourOfDay:I

    invoke-direct {p0, v0, v1}, updateHeaderHour(IZ)V

    .line 338
    invoke-direct {p0}, updateHeaderSeparator()V

    .line 340
    iget v0, p0, mInitialMinute:I

    invoke-direct {p0, v0, v1}, updateHeaderMinute(IZ)V

    .line 342
    iget-object v0, p0, mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    .line 343
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 537
    invoke-virtual {p0, p1}, onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 538
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 495
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentHour()I
    .registers 3

    .prologue
    .line 407
    iget-object v1, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .line 408
    .local v0, "currentHour":I
    iget-boolean v1, p0, mIs24HourView:Z

    if-eqz v1, :cond_b

    .line 416
    .end local v0    # "currentHour":I
    :goto_a
    return v0

    .line 411
    .restart local v0    # "currentHour":I
    :cond_b
    iget-object v1, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getAmOrPm()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    .line 416
    rem-int/lit8 v0, v0, 0xc

    goto :goto_a

    .line 413
    :pswitch_17
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v0, v1, 0xc

    goto :goto_a

    .line 411
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_17
    .end packed-switch
.end method

.method public getCurrentMinute()I
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    return v0
.end method

.method public is24HourView()Z
    .registers 2

    .prologue
    .line 469
    iget-boolean v0, p0, mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 489
    iget-boolean v0, p0, mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 500
    iget-object v0, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    invoke-direct {p0, v0}, updateUI(I)V

    .line 501
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 543
    const/4 v0, 0x1

    .line 544
    .local v0, "flags":I
    iget-boolean v2, p0, mIs24HourView:Z

    if-eqz v2, :cond_31

    .line 545
    or-int/lit16 v0, v0, 0x80

    .line 549
    :goto_7
    iget-object v2, p0, mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, getCurrentHour()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 550
    iget-object v2, p0, mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, getCurrentMinute()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 551
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "selectedDate":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    return-void

    .line 547
    .end local v1    # "selectedDate":Ljava/lang/String;
    :cond_31
    or-int/lit8 v0, v0, 0x40

    goto :goto_7
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 518
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePickerClockDelegate$SavedState;

    .line 519
    .local v0, "ss":Landroid/widget/TimePickerClockDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->inKbMode()Z

    move-result v1

    invoke-direct {p0, v1}, setInKbMode(Z)V

    .line 520
    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->getTypesTimes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, setTypedTimes(Ljava/util/ArrayList;)V

    .line 521
    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->getMinute()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->is24HourMode()Z

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->getCurrentItemShowing()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, initialize(IIZI)V

    .line 522
    iget-object v1, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 523
    iget-boolean v1, p0, mInKbMode:Z

    if-eqz v1, :cond_36

    .line 524
    const/4 v1, -0x1

    invoke-direct {p0, v1}, tryStartingKbMode(I)V

    .line 525
    iget-object v1, p0, mHourView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 527
    :cond_36
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 507
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 11
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 512
    new-instance v0, Landroid/widget/TimePickerClockDelegate$SavedState;

    invoke-virtual {p0}, getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, getCurrentMinute()I

    move-result v3

    invoke-virtual {p0}, is24HourView()Z

    move-result v4

    invoke-direct {p0}, inKbMode()Z

    move-result v5

    invoke-direct {p0}, getTypedTimes()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {p0}, getCurrentItemShowing()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/widget/TimePickerClockDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZZLjava/util/ArrayList;ILandroid/widget/TimePickerClockDelegate$1;)V

    return-object v0
.end method

.method public onValueSelected(IIZ)V
    .registers 8
    .param p1, "pickerIndex"    # I
    .param p2, "newValue"    # I
    .param p3, "autoAdvance"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 701
    packed-switch p1, :pswitch_data_60

    .line 725
    :goto_5
    iget-object v0, p0, mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_18

    .line 726
    iget-object v0, p0, mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, getCurrentMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 728
    :cond_18
    return-void

    .line 703
    :pswitch_19
    iget-boolean v0, p0, mAllowAutoAdvance:Z

    if-eqz v0, :cond_44

    if-eqz p3, :cond_44

    .line 704
    invoke-direct {p0, p2, v2}, updateHeaderHour(IZ)V

    .line 705
    invoke-direct {p0, v1, v1, v2}, setCurrentItemShowing(IZZ)V

    .line 706
    iget-object v0, p0, mDelegator:Landroid/widget/TimePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 708
    :cond_44
    invoke-direct {p0, p2, v1}, updateHeaderHour(IZ)V

    goto :goto_5

    .line 712
    :pswitch_48
    invoke-direct {p0, p2, v1}, updateHeaderMinute(IZ)V

    goto :goto_5

    .line 715
    :pswitch_4c
    invoke-direct {p0, p2}, updateAmPmLabelStates(I)V

    goto :goto_5

    .line 718
    :pswitch_50
    invoke-direct {p0}, isTypedTimeFullyLegal()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 719
    iget-object v0, p0, mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 721
    :cond_5b
    invoke-direct {p0}, finishKbMode()V

    goto :goto_5

    .line 701
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_19
        :pswitch_48
        :pswitch_4c
        :pswitch_50
    .end packed-switch
.end method

.method public setCurrentHour(I)V
    .registers 6
    .param p1, "currentHour"    # I

    .prologue
    const/4 v0, 0x1

    .line 390
    iget v1, p0, mInitialHourOfDay:I

    if-ne v1, p1, :cond_6

    .line 400
    :goto_5
    return-void

    .line 393
    :cond_6
    iput p1, p0, mInitialHourOfDay:I

    .line 394
    invoke-direct {p0, p1, v0}, updateHeaderHour(IZ)V

    .line 395
    invoke-direct {p0}, updateHeaderAmPm()V

    .line 396
    iget-object v1, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 397
    iget-object v1, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget v2, p0, mInitialHourOfDay:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1c

    const/4 v0, 0x0

    :cond_1c
    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)V

    .line 398
    iget-object v0, p0, mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    .line 399
    invoke-direct {p0}, onTimeChanged()V

    goto :goto_5
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 531
    invoke-super {p0, p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 532
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, mTempCalendar:Ljava/util/Calendar;

    .line 533
    return-void
.end method

.method public setCurrentMinute(I)V
    .registers 3
    .param p1, "currentMinute"    # I

    .prologue
    .line 426
    iget v0, p0, mInitialMinute:I

    if-ne v0, p1, :cond_5

    .line 434
    :goto_4
    return-void

    .line 429
    :cond_5
    iput p1, p0, mInitialMinute:I

    .line 430
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, updateHeaderMinute(IZ)V

    .line 431
    iget-object v0, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 432
    iget-object v0, p0, mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    .line 433
    invoke-direct {p0}, onTimeChanged()V

    goto :goto_4
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 479
    iget-object v0, p0, mHourView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 481
    iget-object v0, p0, mAmLabel:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, mPmLabel:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 483
    iget-object v0, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setEnabled(Z)V

    .line 484
    iput-boolean p1, p0, mIsEnabled:Z

    .line 485
    return-void
.end method

.method public setIs24HourView(Z)V
    .registers 4
    .param p1, "is24HourView"    # Z

    .prologue
    .line 451
    iget-boolean v1, p0, mIs24HourView:Z

    if-ne p1, v1, :cond_5

    .line 462
    :goto_4
    return-void

    .line 454
    :cond_5
    iput-boolean p1, p0, mIs24HourView:Z

    .line 455
    invoke-direct {p0}, generateLegalTimesTree()V

    .line 456
    iget-object v1, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .line 457
    .local v0, "hour":I
    iput v0, p0, mInitialHourOfDay:I

    .line 458
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, updateHeaderHour(IZ)V

    .line 459
    invoke-direct {p0}, updateHeaderAmPm()V

    .line 460
    iget-object v1, p0, mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v1

    invoke-direct {p0, v1}, updateRadialPicker(I)V

    .line 461
    iget-object v1, p0, mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->invalidate()V

    goto :goto_4
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .registers 2
    .param p1, "callback"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 474
    iput-object p1, p0, mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 475
    return-void
.end method
