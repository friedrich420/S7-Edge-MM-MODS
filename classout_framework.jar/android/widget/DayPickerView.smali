.class Landroid/widget/DayPickerView;
.super Landroid/view/ViewGroup;
.source "DayPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerView$OnDaySelectedListener;
    }
.end annotation


# static fields
.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_LAYOUT:I = 0x109004d

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAdapter:Landroid/widget/DayPickerPagerAdapter;

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private final mNextButton:Landroid/widget/ImageButton;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private final mPrevButton:Landroid/widget/ImageButton;

.field private final mSelectedDay:Ljava/util/Calendar;

.field private mTempCalendar:Ljava/util/Calendar;

.field private final mViewPager:Lcom/android/internal/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010098

    aput v2, v0, v1

    sput-object v0, ATTRS_TEXT_COLOR:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const v0, 0x101035d

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 77
    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mSelectedDay:Ljava/util/Calendar;

    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mMinDate:Ljava/util/Calendar;

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mMaxDate:Ljava/util/Calendar;

    .line 390
    new-instance v4, Landroid/widget/DayPickerView$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/DayPickerView$2;-><init>(Landroid/widget/DayPickerView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 407
    new-instance v4, Landroid/widget/DayPickerView$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/DayPickerView$3;-><init>(Landroid/widget/DayPickerView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mOnClickListener:Landroid/view/View$OnClickListener;

    .line 79
    const-string v4, "accessibility"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v4, v0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 82
    sget-object v4, Lcom/android/internal/R$styleable;->CalendarView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 85
    .local v10, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v5

    iget-object v5, v5, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 88
    .local v16, "firstDayOfWeek":I
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 89
    .local v19, "minDate":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 91
    .local v18, "maxDate":Ljava/lang/String;
    const/16 v4, 0xd

    const v5, 0x1030417

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    .line 94
    .local v21, "monthTextAppearanceResId":I
    const/16 v4, 0xb

    const v5, 0x1030416

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 97
    .local v13, "dayOfWeekTextAppearanceResId":I
    const/16 v4, 0xc

    const v5, 0x1030415

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 101
    .local v15, "dayTextAppearanceResId":I
    const/16 v4, 0xe

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 104
    .local v14, "daySelectorColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    new-instance v4, Landroid/widget/DayPickerPagerAdapter;

    const v5, 0x109004b

    const v26, 0x1020392

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-direct {v4, v0, v5, v1}, Landroid/widget/DayPickerPagerAdapter;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    .line 109
    move-object/from16 v0, p0

    iget-object v4, v0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/DayPickerPagerAdapter;->setMonthTextAppearance(I)V

    .line 110
    move-object/from16 v0, p0

    iget-object v4, v0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v4, v13}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    .line 111
    move-object/from16 v0, p0

    iget-object v4, v0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v4, v15}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    .line 112
    move-object/from16 v0, p0

    iget-object v4, v0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v4, v14}, Landroid/widget/DayPickerPagerAdapter;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    .line 114
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    .line 115
    .local v17, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x109004d

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 118
    .local v12, "content":Landroid/view/ViewGroup;
    :goto_d1
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_e6

    .line 119
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 120
    .local v11, "child":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 121
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, addView(Landroid/view/View;)V

    goto :goto_d1

    .line 124
    .end local v11    # "child":Landroid/view/View;
    :cond_e6
    const v4, 0x1020397

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v4, v0, mPrevButton:Landroid/widget/ImageButton;

    .line 125
    move-object/from16 v0, p0

    iget-object v4, v0, mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v5, v0, mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v4, 0x1020398

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v4, v0, mNextButton:Landroid/widget/ImageButton;

    .line 128
    move-object/from16 v0, p0

    iget-object v4, v0, mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v5, v0, mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v4, 0x1020396

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, p0

    iput-object v4, v0, mViewPager:Lcom/android/internal/widget/ViewPager;

    .line 131
    move-object/from16 v0, p0

    iget-object v4, v0, mViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, p0

    iget-object v5, v0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, mViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, p0

    iget-object v5, v0, mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    .line 135
    if-eqz v21, :cond_172

    .line 136
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v26, ATTRS_TEXT_COLOR:[I

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v24

    .line 138
    .local v24, "ta":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    .line 139
    .local v20, "monthColor":Landroid/content/res/ColorStateList;
    if-eqz v20, :cond_16f

    .line 140
    move-object/from16 v0, p0

    iget-object v4, v0, mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v4, v0, mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 143
    :cond_16f
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    .end local v20    # "monthColor":Landroid/content/res/ColorStateList;
    .end local v24    # "ta":Landroid/content/res/TypedArray;
    :cond_172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    .line 148
    .local v25, "tempDate":Ljava/util/Calendar;
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v4

    if-nez v4, :cond_18c

    .line 149
    const/16 v4, 0x76c

    const/4 v5, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/Calendar;->set(III)V

    .line 151
    :cond_18c
    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 153
    .local v6, "minDateMillis":J
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v4

    if-nez v4, :cond_1a7

    .line 154
    const/16 v4, 0x834

    const/16 v5, 0xb

    const/16 v26, 0x1f

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/Calendar;->set(III)V

    .line 156
    :cond_1a7
    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 158
    .local v8, "maxDateMillis":J
    cmp-long v4, v8, v6

    if-gez v4, :cond_1b8

    .line 159
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "maxDate must be >= minDate"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 162
    :cond_1b8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static/range {v4 .. v9}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v22

    .line 165
    .local v22, "setDateMillis":J
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, setFirstDayOfWeek(I)V

    .line 166
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, setMinDate(J)V

    .line 167
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, setMaxDate(J)V

    .line 168
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2, v4}, setDate(JZ)V

    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    new-instance v5, Landroid/widget/DayPickerView$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/DayPickerView$1;-><init>(Landroid/widget/DayPickerView;)V

    invoke-virtual {v4, v5}, Landroid/widget/DayPickerPagerAdapter;->setOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V

    .line 179
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DayPickerView;)Landroid/widget/DayPickerView$OnDaySelectedListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DayPickerView;

    .prologue
    .line 39
    iget-object v0, p0, mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DayPickerView;

    .prologue
    .line 39
    iget-object v0, p0, mPrevButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DayPickerView;

    .prologue
    .line 39
    iget-object v0, p0, mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DayPickerView;I)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/DayPickerView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, updateButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DayPickerView;

    .prologue
    .line 39
    iget-object v0, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DayPickerView;

    .prologue
    .line 39
    iget-object v0, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    return-object v0
.end method

.method private getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .registers 7
    .param p1, "start"    # Ljava/util/Calendar;
    .param p2, "end"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 361
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 362
    .local v0, "diffYears":I
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v2, v0, 0xc

    add-int/2addr v1, v2

    return v1
.end method

.method private getPositionFromDay(J)I
    .registers 8
    .param p1, "timeInMillis"    # J

    .prologue
    .line 366
    iget-object v2, p0, mMinDate:Ljava/util/Calendar;

    iget-object v3, p0, mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, v3}, getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    .line 367
    .local v1, "diffMonthMax":I
    iget-object v2, p0, mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, p1, p2}, getTempCalendarForTime(J)Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {p0, v2, v3}, getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    .line 368
    .local v0, "diffMonth":I
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    return v2
.end method

.method private getTempCalendarForTime(J)Ljava/util/Calendar;
    .registers 4
    .param p1, "timeInMillis"    # J

    .prologue
    .line 372
    iget-object v0, p0, mTempCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_a

    .line 373
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, mTempCalendar:Ljava/util/Calendar;

    .line 375
    :cond_a
    iget-object v0, p0, mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 376
    iget-object v0, p0, mTempCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method private setDate(JZZ)V
    .registers 8
    .param p1, "timeInMillis"    # J
    .param p3, "animate"    # Z
    .param p4, "setSelected"    # Z

    .prologue
    .line 295
    if-eqz p4, :cond_7

    .line 296
    iget-object v1, p0, mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 299
    :cond_7
    invoke-direct {p0, p1, p2}, getPositionFromDay(J)I

    move-result v0

    .line 300
    .local v0, "position":I
    iget-object v1, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_18

    .line 301
    iget-object v1, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1, v0, p3}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    .line 304
    :cond_18
    iget-object v1, p0, mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 305
    iget-object v1, p0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object v2, p0, mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/widget/DayPickerPagerAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 306
    return-void
.end method

.method private updateButtonVisibility(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 182
    if-lez p1, :cond_21

    move v1, v2

    .line 183
    .local v1, "hasPrev":Z
    :goto_6
    iget-object v5, p0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v5}, Landroid/widget/DayPickerPagerAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_23

    move v0, v2

    .line 184
    .local v0, "hasNext":Z
    :goto_11
    iget-object v5, p0, mPrevButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_25

    move v2, v3

    :goto_16
    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 185
    iget-object v2, p0, mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_27

    :goto_1d
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 186
    return-void

    .end local v0    # "hasNext":Z
    .end local v1    # "hasPrev":Z
    :cond_21
    move v1, v3

    .line 182
    goto :goto_6

    .restart local v1    # "hasPrev":Z
    :cond_23
    move v0, v3

    .line 183
    goto :goto_11

    .restart local v0    # "hasNext":Z
    :cond_25
    move v2, v4

    .line 184
    goto :goto_16

    :cond_27
    move v3, v4

    .line 185
    goto :goto_1d
.end method


# virtual methods
.method public getDate()J
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDayOfWeekTextAppearance()I
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getDayOfWeekTextAppearance()I

    move-result v0

    return v0
.end method

.method public getDayTextAppearance()I
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getDayTextAppearance()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    .prologue
    .line 326
    iget-object v0, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMostVisiblePosition()I
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 28
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 216
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_92

    .line 217
    move-object/from16 v0, p0

    iget-object v6, v0, mNextButton:Landroid/widget/ImageButton;

    .line 218
    .local v6, "leftButton":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v13, v0, mPrevButton:Landroid/widget/ImageButton;

    .line 224
    .local v13, "rightButton":Landroid/widget/ImageButton;
    :goto_e
    sub-int v18, p4, p2

    .line 225
    .local v18, "width":I
    sub-int v5, p5, p3

    .line 226
    .local v5, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, mViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/widget/ViewPager;->layout(IIII)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, mViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/SimpleMonthView;

    .line 229
    .local v12, "monthView":Landroid/widget/SimpleMonthView;
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getMonthHeight()I

    move-result v11

    .line 230
    .local v11, "monthHeight":I
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getCellWidth()I

    move-result v4

    .line 234
    .local v4, "cellWidth":I
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v8

    .line 235
    .local v8, "leftDW":I
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v7

    .line 236
    .local v7, "leftDH":I
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v19

    sub-int v20, v11, v7

    div-int/lit8 v20, v20, 0x2

    add-int v10, v19, v20

    .line 237
    .local v10, "leftIconTop":I
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v19

    sub-int v20, v4, v8

    div-int/lit8 v20, v20, 0x2

    add-int v9, v19, v20

    .line 238
    .local v9, "leftIconLeft":I
    add-int v19, v9, v8

    add-int v20, v10, v7

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v9, v10, v0, v1}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 240
    invoke-virtual {v13}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v15

    .line 241
    .local v15, "rightDW":I
    invoke-virtual {v13}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v14

    .line 242
    .local v14, "rightDH":I
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v19

    sub-int v20, v11, v14

    div-int/lit8 v20, v20, 0x2

    add-int v17, v19, v20

    .line 243
    .local v17, "rightIconTop":I
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v19

    sub-int v19, v18, v19

    sub-int v20, v4, v15

    div-int/lit8 v20, v20, 0x2

    sub-int v16, v19, v20

    .line 244
    .local v16, "rightIconRight":I
    sub-int v19, v16, v15

    add-int v20, v17, v14

    move/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 246
    return-void

    .line 220
    .end local v4    # "cellWidth":I
    .end local v5    # "height":I
    .end local v6    # "leftButton":Landroid/widget/ImageButton;
    .end local v7    # "leftDH":I
    .end local v8    # "leftDW":I
    .end local v9    # "leftIconLeft":I
    .end local v10    # "leftIconTop":I
    .end local v11    # "monthHeight":I
    .end local v12    # "monthView":Landroid/widget/SimpleMonthView;
    .end local v13    # "rightButton":Landroid/widget/ImageButton;
    .end local v14    # "rightDH":I
    .end local v15    # "rightDW":I
    .end local v16    # "rightIconRight":I
    .end local v17    # "rightIconTop":I
    .end local v18    # "width":I
    :cond_92
    move-object/from16 v0, p0

    iget-object v6, v0, mPrevButton:Landroid/widget/ImageButton;

    .line 221
    .restart local v6    # "leftButton":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v13, v0, mNextButton:Landroid/widget/ImageButton;

    .restart local v13    # "rightButton":Landroid/widget/ImageButton;
    goto/16 :goto_e
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, -0x80000000

    .line 190
    iget-object v6, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    .line 191
    .local v6, "viewPager":Lcom/android/internal/widget/ViewPager;
    invoke-virtual {p0, v6, p1, p2}, measureChild(Landroid/view/View;II)V

    .line 193
    invoke-virtual {v6}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidthAndState()I

    move-result v3

    .line 194
    .local v3, "measuredWidthAndState":I
    invoke-virtual {v6}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeightAndState()I

    move-result v2

    .line 195
    .local v2, "measuredHeightAndState":I
    invoke-virtual {p0, v3, v2}, setMeasuredDimension(II)V

    .line 197
    invoke-virtual {v6}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v5

    .line 198
    .local v5, "pagerWidth":I
    invoke-virtual {v6}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeight()I

    move-result v4

    .line 199
    .local v4, "pagerHeight":I
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 200
    .local v1, "buttonWidthSpec":I
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 201
    .local v0, "buttonHeightSpec":I
    iget-object v7, p0, mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1, v0}, Landroid/widget/ImageButton;->measure(II)V

    .line 202
    iget-object v7, p0, mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1, v0}, Landroid/widget/ImageButton;->measure(II)V

    .line 203
    return-void
.end method

.method public onRangeChanged()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 342
    iget-object v0, p0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object v1, p0, mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/DayPickerPagerAdapter;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 346
    iget-object v0, p0, mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v3, v3}, setDate(JZZ)V

    .line 348
    iget-object v0, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, updateButtonVisibility(I)V

    .line 349
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 209
    invoke-virtual {p0}, requestLayout()V

    .line 210
    return-void
.end method

.method public setDate(J)V
    .registers 4
    .param p1, "timeInMillis"    # J

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, setDate(JZ)V

    .line 273
    return-void
.end method

.method public setDate(JZ)V
    .registers 5
    .param p1, "timeInMillis"    # J
    .param p3, "animate"    # Z

    .prologue
    .line 283
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, setDate(JZZ)V

    .line 284
    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 249
    iget-object v0, p0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    .line 250
    return-void
.end method

.method public setDayTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 257
    iget-object v0, p0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    .line 258
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 313
    iget-object v0, p0, mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setFirstDayOfWeek(I)V

    .line 314
    return-void
.end method

.method public setMaxDate(J)V
    .registers 4
    .param p1, "timeInMillis"    # J

    .prologue
    .line 330
    iget-object v0, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 331
    invoke-virtual {p0}, onRangeChanged()V

    .line 332
    return-void
.end method

.method public setMinDate(J)V
    .registers 4
    .param p1, "timeInMillis"    # J

    .prologue
    .line 321
    iget-object v0, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 322
    invoke-virtual {p0}, onRangeChanged()V

    .line 323
    return-void
.end method

.method public setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/DayPickerView$OnDaySelectedListener;

    .prologue
    .line 357
    iput-object p1, p0, mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    .line 358
    return-void
.end method

.method public setPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 387
    iget-object v0, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    .line 388
    return-void
.end method
