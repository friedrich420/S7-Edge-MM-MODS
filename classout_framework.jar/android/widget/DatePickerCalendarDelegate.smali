.class Landroid/widget/DatePickerCalendarDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerCalendarDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePickerCalendarDelegate$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final UNINITIALIZED:I = -0x1

.field private static final USE_LOCALE:I = 0x0

.field private static final VIEW_MONTH_DAY:I = 0x0

.field private static final VIEW_YEAR:I = 0x1


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mCurrentDate:Ljava/util/Calendar;

.field private mCurrentView:I

.field private mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mDayPickerView:Landroid/widget/DayPickerView;

.field private mFirstDayOfWeek:I

.field private mHeaderMonthDay:Landroid/widget/TextView;

.field private mHeaderYear:Landroid/widget/TextView;

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthDayFormat:Ljava/text/SimpleDateFormat;

.field private final mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private final mTempDate:Ljava/util/Calendar;

.field private mYearFormat:Ljava/text/SimpleDateFormat;

.field private mYearPickerView:Landroid/widget/YearPickerView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-array v0, v3, [I

    const v1, 0x1010098

    aput v1, v0, v2

    sput-object v0, ATTRS_TEXT_COLOR:[I

    .line 63
    new-array v0, v3, [I

    const v1, 0x1010033

    aput v1, v0, v2

    sput-object v0, ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 24
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 98
    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    .line 87
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mCurrentView:I

    .line 94
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mFirstDayOfWeek:I

    .line 240
    new-instance v14, Landroid/widget/DatePickerCalendarDelegate$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/DatePickerCalendarDelegate$1;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    .line 251
    new-instance v14, Landroid/widget/DatePickerCalendarDelegate$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/DatePickerCalendarDelegate$2;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    .line 277
    new-instance v14, Landroid/widget/DatePickerCalendarDelegate$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/DatePickerCalendarDelegate$3;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 100
    move-object/from16 v0, p0

    iget-object v10, v0, mCurrentLocale:Ljava/util/Locale;

    .line 101
    .local v10, "locale":Ljava/util/Locale;
    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mCurrentDate:Ljava/util/Calendar;

    .line 102
    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mTempDate:Ljava/util/Calendar;

    .line 103
    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mMinDate:Ljava/util/Calendar;

    .line 104
    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mMaxDate:Ljava/util/Calendar;

    .line 106
    move-object/from16 v0, p0

    iget-object v14, v0, mMinDate:Ljava/util/Calendar;

    const/16 v15, 0x76c

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Ljava/util/Calendar;->set(III)V

    .line 107
    move-object/from16 v0, p0

    iget-object v14, v0, mMaxDate:Ljava/util/Calendar;

    const/16 v15, 0x834

    const/16 v16, 0xb

    const/16 v17, 0x1f

    invoke-virtual/range {v14 .. v17}, Ljava/util/Calendar;->set(III)V

    .line 109
    move-object/from16 v0, p0

    iget-object v14, v0, mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v14}, Landroid/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 110
    .local v12, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v14, v0, v15, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 112
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 114
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const/16 v14, 0x11

    const v15, 0x109004a

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 118
    .local v8, "layoutResourceId":I
    move-object/from16 v0, p0

    iget-object v14, v0, mDelegator:Landroid/widget/DatePicker;

    const/4 v15, 0x0

    invoke-virtual {v7, v8, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, mContainer:Landroid/view/ViewGroup;

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v0, p0

    iget-object v15, v0, mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14, v15}, Landroid/widget/DatePicker;->addView(Landroid/view/View;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, mContainer:Landroid/view/ViewGroup;

    const v15, 0x102038a

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 123
    .local v5, "header":Landroid/view/ViewGroup;
    const v14, 0x102038b

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, mHeaderYear:Landroid/widget/TextView;

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, mHeaderYear:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v14, 0x102038c

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, mHeaderMonthDay:Landroid/widget/TextView;

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, mHeaderMonthDay:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const/4 v6, 0x0

    .line 134
    .local v6, "headerTextColor":Landroid/content/res/ColorStateList;
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 136
    .local v11, "monthHeaderTextAppearance":I
    if-eqz v11, :cond_119

    .line 137
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    const/4 v15, 0x0

    sget-object v16, ATTRS_TEXT_COLOR:[I

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v0, v1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 139
    .local v13, "textAppearance":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 140
    .local v9, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 141
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    .end local v9    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    .end local v13    # "textAppearance":Landroid/content/res/TypedArray;
    :cond_119
    if-nez v6, :cond_121

    .line 145
    const/16 v14, 0x12

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 148
    :cond_121
    if-eqz v6, :cond_131

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 154
    :cond_131
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v14

    if-eqz v14, :cond_140

    .line 155
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :cond_140
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, mContainer:Landroid/view/ViewGroup;

    const v15, 0x1020393

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ViewAnimator;

    move-object/from16 v0, p0

    iput-object v14, v0, mAnimator:Landroid/widget/ViewAnimator;

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, mAnimator:Landroid/widget/ViewAnimator;

    const v15, 0x1020394

    invoke-virtual {v14, v15}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iput-object v14, v0, mDayPickerView:Landroid/widget/DayPickerView;

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget v15, v0, mFirstDayOfWeek:I

    invoke-virtual {v14, v15}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/DayPickerView;->setMinDate(J)V

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/DayPickerView;->setDate(J)V

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    invoke-virtual {v14, v15}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, mAnimator:Landroid/widget/ViewAnimator;

    const v15, 0x1020395

    invoke-virtual {v14, v15}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iput-object v14, v0, mYearPickerView:Landroid/widget/YearPickerView;

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v0, v0, mMaxDate:Ljava/util/Calendar;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/YearPickerView;->setDate(J)V

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iget-object v15, v0, mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    invoke-virtual {v14, v15}, Landroid/widget/YearPickerView;->setOnYearSelectedListener(Landroid/widget/YearPickerView$OnYearSelectedListener;)V

    .line 178
    const v14, 0x1040574

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mSelectDay:Ljava/lang/String;

    .line 179
    const v14, 0x1040575

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mSelectYear:Ljava/lang/String;

    .line 183
    move-object/from16 v0, p0

    iget-object v14, v0, mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, onLocaleChanged(Ljava/util/Locale;)V

    .line 185
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, setCurrentView(I)V

    .line 186
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DatePickerCalendarDelegate;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePickerCalendarDelegate;

    .prologue
    .line 49
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/DatePickerCalendarDelegate;ZZ)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/DatePickerCalendarDelegate;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, onDateChanged(ZZ)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/DatePickerCalendarDelegate;I)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePickerCalendarDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, setCurrentView(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/DatePickerCalendarDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/DatePickerCalendarDelegate;

    .prologue
    .line 49
    invoke-direct {p0}, tryVibrate()V

    return-void
.end method

.method private applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 14
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    const v11, 0x10102fe

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 199
    if-eqz p1, :cond_e

    invoke-virtual {p1, v11}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 227
    .end local p1    # "color":Landroid/content/res/ColorStateList;
    :cond_e
    :goto_e
    return-object p1

    .line 205
    .restart local p1    # "color":Landroid/content/res/ColorStateList;
    :cond_f
    const v6, 0x10100a1

    invoke-virtual {p1, v6}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 206
    const/16 v6, 0xa

    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 208
    .local v0, "activatedColor":I
    const/16 v6, 0x8

    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 220
    .local v2, "defaultColor":I
    :goto_2c
    if-eqz v0, :cond_30

    if-nez v2, :cond_4d

    .line 222
    :cond_30
    const/4 p1, 0x0

    goto :goto_e

    .line 211
    .end local v0    # "activatedColor":I
    .end local v2    # "defaultColor":I
    :cond_32
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 214
    .restart local v0    # "activatedColor":I
    iget-object v6, p0, mContext:Landroid/content/Context;

    sget-object v7, ATTRS_DISABLED_ALPHA:[I

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 215
    .local v5, "ta":Landroid/content/res/TypedArray;
    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 216
    .local v3, "disabledAlpha":F
    invoke-direct {p0, v0, v3}, multiplyAlphaComponent(IF)I

    move-result v2

    .line 217
    .restart local v2    # "defaultColor":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2c

    .line 225
    .end local v3    # "disabledAlpha":F
    .end local v5    # "ta":Landroid/content/res/TypedArray;
    :cond_4d
    new-array v4, v10, [[I

    new-array v6, v9, [I

    aput v11, v6, v8

    aput-object v6, v4, v8

    new-array v6, v8, [I

    aput-object v6, v4, v9

    .line 226
    .local v4, "stateSet":[[I
    new-array v1, v10, [I

    aput v0, v1, v8

    aput v2, v1, v9

    .line 227
    .local v1, "colors":[I
    new-instance p1, Landroid/content/res/ColorStateList;

    .end local p1    # "color":Landroid/content/res/ColorStateList;
    invoke-direct {p1, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_e
.end method

.method public static getDaysInMonth(II)I
    .registers 4
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    .line 579
    packed-switch p0, :pswitch_data_1c

    .line 596
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :pswitch_b
    const/16 v0, 0x1f

    .line 594
    :goto_d
    return v0

    .line 592
    :pswitch_e
    const/16 v0, 0x1e

    goto :goto_d

    .line 594
    :pswitch_11
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_18

    const/16 v0, 0x1d

    goto :goto_d

    :cond_18
    const/16 v0, 0x1c

    goto :goto_d

    .line 579
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11
        :pswitch_b
        :pswitch_e
        :pswitch_b
        :pswitch_e
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_b
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method private multiplyAlphaComponent(IF)I
    .registers 8
    .param p1, "color"    # I
    .param p2, "alphaMod"    # F

    .prologue
    .line 231
    const v3, 0xffffff

    and-int v2, p1, v3

    .line 232
    .local v2, "srcRgb":I
    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v1, v3, 0xff

    .line 233
    .local v1, "srcAlpha":I
    int-to-float v3, v1

    mul-float/2addr v3, p2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 234
    .local v0, "dstAlpha":I
    shl-int/lit8 v3, v0, 0x18

    or-int/2addr v3, v2

    return v3
.end method

.method private onCurrentDateChanged(Z)V
    .registers 10
    .param p1, "announce"    # Z

    .prologue
    .line 312
    iget-object v6, p0, mHeaderYear:Landroid/widget/TextView;

    if-nez v6, :cond_5

    .line 331
    :cond_4
    :goto_4
    return-void

    .line 318
    :cond_5
    iget-object v6, p0, mYearFormat:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, "year":Ljava/lang/String;
    iget-object v6, p0, mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v6, p0, mMonthDayFormat:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "monthDay":Ljava/lang/String;
    iget-object v6, p0, mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    if-eqz p1, :cond_4

    .line 326
    iget-object v6, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 327
    .local v2, "millis":J
    const/16 v0, 0x14

    .line 328
    .local v0, "flags":I
    iget-object v6, p0, mContext:Landroid/content/Context;

    const/16 v7, 0x14

    invoke-static {v6, v2, v3, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "fullDateText":Ljava/lang/String;
    iget-object v6, p0, mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v6, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private onDateChanged(ZZ)V
    .registers 9
    .param p1, "fromUser"    # Z
    .param p2, "callbackToClient"    # Z

    .prologue
    .line 384
    iget-object v3, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 386
    .local v2, "year":I
    if-eqz p2, :cond_22

    iget-object v3, p0, mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_22

    .line 387
    iget-object v3, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 388
    .local v1, "monthOfYear":I
    iget-object v3, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 389
    .local v0, "dayOfMonth":I
    iget-object v3, p0, mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, mDelegator:Landroid/widget/DatePicker;

    invoke-interface {v3, v4, v2, v1, v0}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 392
    .end local v0    # "dayOfMonth":I
    .end local v1    # "monthOfYear":I
    :cond_22
    iget-object v3, p0, mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v4, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/DayPickerView;->setDate(J)V

    .line 393
    iget-object v3, p0, mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v3, v2}, Landroid/widget/YearPickerView;->setYear(I)V

    .line 395
    invoke-direct {p0, p1}, onCurrentDateChanged(Z)V

    .line 397
    if-eqz p1, :cond_3a

    .line 398
    invoke-direct {p0}, tryVibrate()V

    .line 400
    :cond_3a
    return-void
.end method

.method private setCurrentView(I)V
    .registers 8
    .param p1, "viewIndex"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 334
    packed-switch p1, :pswitch_data_56

    .line 360
    :goto_5
    return-void

    .line 336
    :pswitch_6
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/DayPickerView;->setDate(J)V

    .line 338
    iget v0, p0, mCurrentView:I

    if-eq v0, p1, :cond_26

    .line 339
    iget-object v0, p0, mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setActivated(Z)V

    .line 340
    iget-object v0, p0, mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setActivated(Z)V

    .line 341
    iget-object v0, p0, mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v4}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 342
    iput p1, p0, mCurrentView:I

    .line 345
    :cond_26
    iget-object v0, p0, mAnimator:Landroid/widget/ViewAnimator;

    iget-object v1, p0, mSelectDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 348
    :pswitch_2e
    iget-object v0, p0, mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/YearPickerView;->setDate(J)V

    .line 350
    iget v0, p0, mCurrentView:I

    if-eq v0, p1, :cond_4e

    .line 351
    iget-object v0, p0, mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setActivated(Z)V

    .line 352
    iget-object v0, p0, mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setActivated(Z)V

    .line 353
    iget-object v0, p0, mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v5}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 354
    iput p1, p0, mCurrentView:I

    .line 357
    :cond_4e
    iget-object v0, p0, mAnimator:Landroid/widget/ViewAnimator;

    iget-object v1, p0, mSelectYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 334
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_6
        :pswitch_2e
    .end packed-switch
.end method

.method private tryVibrate()V
    .registers 3

    .prologue
    .line 601
    iget-object v0, p0, mDelegator:Landroid/widget/DatePicker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->performHapticFeedback(I)Z

    .line 602
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 565
    invoke-virtual {p0, p1}, onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 566
    const/4 v0, 0x1

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 575
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .registers 3

    .prologue
    .line 490
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by calendar-mode DatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCalendarViewShown()Z
    .registers 2

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .registers 3

    .prologue
    .line 414
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    .prologue
    .line 468
    iget v0, p0, mFirstDayOfWeek:I

    if-eqz v0, :cond_7

    .line 469
    iget v0, p0, mFirstDayOfWeek:I

    .line 471
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    goto :goto_6
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .registers 2

    .prologue
    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method public getYear()I
    .registers 3

    .prologue
    .line 404
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .registers 8
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "callBack"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .prologue
    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 366
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 367
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 369
    iput-object p4, p0, mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 371
    invoke-direct {p0, v2, v2}, onDateChanged(ZZ)V

    .line 372
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 485
    iget-object v0, p0, mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 515
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, setCurrentLocale(Ljava/util/Locale;)V

    .line 516
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 295
    iget-object v1, p0, mHeaderYear:Landroid/widget/TextView;

    .line 296
    .local v1, "headerYear":Landroid/widget/TextView;
    if-nez v1, :cond_5

    .line 309
    :goto_4
    return-void

    .line 303
    :cond_5
    const-string v2, "EMMMd"

    invoke-static {p1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "datePattern":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, mMonthDayFormat:Ljava/text/SimpleDateFormat;

    .line 305
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "y"

    invoke-direct {v2, v3, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, mYearFormat:Ljava/text/SimpleDateFormat;

    .line 308
    const/4 v2, 0x0

    invoke-direct {p0, v2}, onCurrentDateChanged(Z)V

    goto :goto_4
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 571
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 10
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 540
    move-object v3, p1

    check-cast v3, Landroid/widget/DatePickerCalendarDelegate$SavedState;

    .line 543
    .local v3, "ss":Landroid/widget/DatePickerCalendarDelegate$SavedState;
    iget-object v4, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getSelectedYear()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getSelectedMonth()I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getSelectedDay()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 544
    iget-object v4, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getMinDate()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 545
    iget-object v4, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getMaxDate()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 547
    const/4 v4, 0x0

    invoke-direct {p0, v4}, onCurrentDateChanged(Z)V

    .line 549
    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getCurrentView()I

    move-result v0

    .line 550
    .local v0, "currentView":I
    invoke-direct {p0, v0}, setCurrentView(I)V

    .line 552
    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getListPosition()I

    move-result v1

    .line 553
    .local v1, "listPosition":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3f

    .line 554
    if-nez v0, :cond_40

    .line 555
    iget-object v4, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v4, v1}, Landroid/widget/DayPickerView;->setPosition(I)V

    .line 561
    :cond_3f
    :goto_3f
    return-void

    .line 556
    :cond_40
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3f

    .line 557
    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getListPositionOffset()I

    move-result v2

    .line 558
    .local v2, "listPositionOffset":I
    iget-object v4, p0, mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v4, v1, v2}, Landroid/widget/YearPickerView;->setSelectionFromTop(II)V

    goto :goto_3f
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 16
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x1

    .line 520
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 521
    .local v3, "year":I
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 522
    .local v4, "month":I
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 524
    .local v5, "day":I
    const/4 v11, -0x1

    .line 525
    .local v11, "listPosition":I
    const/4 v12, -0x1

    .line 527
    .local v12, "listPositionOffset":I
    iget v0, p0, mCurrentView:I

    if-nez v0, :cond_37

    .line 528
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMostVisiblePosition()I

    move-result v11

    .line 534
    :cond_21
    :goto_21
    new-instance v1, Landroid/widget/DatePickerCalendarDelegate$SavedState;

    iget-object v0, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v0, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget v10, p0, mCurrentView:I

    const/4 v13, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Landroid/widget/DatePickerCalendarDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIIILandroid/widget/DatePickerCalendarDelegate$1;)V

    return-object v1

    .line 529
    :cond_37
    iget v0, p0, mCurrentView:I

    if-ne v0, v2, :cond_21

    .line 530
    iget-object v0, p0, mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/YearPickerView;->getFirstVisiblePosition()I

    move-result v11

    .line 531
    iget-object v0, p0, mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/YearPickerView;->getFirstPositionOffset()I

    move-result v12

    goto :goto_21
.end method

.method public setCalendarViewShown(Z)V
    .registers 2
    .param p1, "shown"    # Z

    .prologue
    .line 496
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 476
    iget-object v0, p0, mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 477
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setEnabled(Z)V

    .line 478
    iget-object v0, p0, mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/YearPickerView;->setEnabled(Z)V

    .line 479
    iget-object v0, p0, mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 481
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 461
    iput p1, p0, mFirstDayOfWeek:I

    .line 463
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 464
    return-void
.end method

.method public setMaxDate(J)V
    .registers 8
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 440
    iget-object v0, p0, mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 441
    iget-object v0, p0, mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_24

    .line 452
    :goto_23
    return-void

    .line 445
    :cond_24
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 446
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, onDateChanged(ZZ)V

    .line 449
    :cond_37
    iget-object v0, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 450
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    .line 451
    iget-object v0, p0, mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    goto :goto_23
.end method

.method public setMinDate(J)V
    .registers 8
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 419
    iget-object v0, p0, mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 420
    iget-object v0, p0, mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_24

    .line 431
    :goto_23
    return-void

    .line 424
    :cond_24
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 425
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, onDateChanged(ZZ)V

    .line 428
    :cond_37
    iget-object v0, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 429
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    .line 430
    iget-object v0, p0, mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    goto :goto_23
.end method

.method public setSpinnersShown(Z)V
    .registers 2
    .param p1, "shown"    # Z

    .prologue
    .line 506
    return-void
.end method

.method public updateDate(III)V
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v2, 0x1

    .line 376
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 377
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 378
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, onDateChanged(ZZ)V

    .line 381
    return-void
.end method
