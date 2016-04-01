.class Landroid/widget/CalendarViewLegacyDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarViewLegacyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarViewLegacyDelegate$WeekView;,
        Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;,
        Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final MOCHA:Z

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1

.field private static final familyRoboto:Ljava/lang/String; = "sans-serif"

.field private static final familyRobotoLight:Ljava/lang/String; = "sans-serif-light"


# instance fields
.field private mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private mDateTextAppearanceResId:I

.field private mDateTextSize:I

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDayNamesLong:[Ljava/lang/String;

.field private mDayNamesShort:[Ljava/lang/String;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Ljava/util/Calendar;

.field private mFirstDayOfWeek:I

.field private mFocusedMonthDateColor:I

.field private mFocusedSingleDateColor:I

.field private mFriction:F

.field private mIsDeviceDefault:Z

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthName:Landroid/widget/TextView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

.field private mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Ljava/util/Calendar;

.field private mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekDayTextAppearanceResId:I

.field private mWeekMinVisibleHeight:I

.field private mWeekNumberColor:I

.field private mWeekSeparatorLineColor:I

.field private final mWeekSeperatorLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 270
    const-string/jumbo v0, "mocha"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, MOCHA:Z

    return-void
.end method

.method constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 21
    .param p1, "delegator"    # Landroid/widget/CalendarView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 281
    invoke-direct/range {p0 .. p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    .line 137
    const/4 v11, 0x2

    iput v11, p0, mListScrollTopOffset:I

    .line 142
    const/16 v11, 0xc

    iput v11, p0, mWeekMinVisibleHeight:I

    .line 147
    const/16 v11, 0x14

    iput v11, p0, mBottomBuffer:I

    .line 162
    const/4 v11, 0x7

    iput v11, p0, mDaysPerWeek:I

    .line 167
    const v11, 0x3d4ccccd    # 0.05f

    iput v11, p0, mFriction:F

    .line 172
    const v11, 0x3eaa7efa    # 0.333f

    iput v11, p0, mVelocityScale:F

    .line 212
    const/4 v11, -0x1

    iput v11, p0, mCurrentMonthDisplayed:I

    .line 222
    const/4 v11, 0x0

    iput-boolean v11, p0, mIsScrollingUp:Z

    .line 227
    const/4 v11, 0x0

    iput v11, p0, mPreviousScrollState:I

    .line 232
    const/4 v11, 0x0

    iput v11, p0, mCurrentScrollState:I

    .line 242
    new-instance v11, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/CalendarViewLegacyDelegate$1;)V

    iput-object v11, p0, mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    .line 265
    const/4 v11, 0x0

    iput-boolean v11, p0, mIsDeviceDefault:Z

    .line 275
    const/4 v11, -0x1

    iput v11, p0, mFocusedSingleDateColor:I

    .line 285
    sget-object v11, Lcom/android/internal/R$styleable;->Theme:[I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 286
    .local v10, "twAttributesArray":Landroid/content/res/TypedArray;
    const/16 v11, 0x143

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, mIsDeviceDefault:Z

    .line 287
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 290
    sget-object v11, Lcom/android/internal/R$styleable;->CalendarView:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 292
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, mShowWeekNumber:Z

    .line 294
    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-static {v12}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v12

    iget-object v12, v12, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, mFirstDayOfWeek:I

    .line 296
    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 297
    .local v9, "minDate":Ljava/lang/String;
    iget-object v11, p0, mMinDate:Ljava/util/Calendar;

    invoke-static {v9, v11}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v11

    if-nez v11, :cond_88

    .line 298
    const-string v11, "01/01/1900"

    iget-object v12, p0, mMinDate:Ljava/util/Calendar;

    invoke-static {v11, v12}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 300
    :cond_88
    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 301
    .local v8, "maxDate":Ljava/lang/String;
    iget-object v11, p0, mMaxDate:Ljava/util/Calendar;

    invoke-static {v8, v11}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v11

    if-nez v11, :cond_9c

    .line 302
    const-string v11, "01/01/2100"

    iget-object v12, p0, mMaxDate:Ljava/util/Calendar;

    invoke-static {v11, v12}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 304
    :cond_9c
    iget-object v11, p0, mMaxDate:Ljava/util/Calendar;

    iget-object v12, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ae

    .line 305
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Max date cannot be before min date."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 307
    :cond_ae
    const/4 v11, 0x4

    const/4 v12, 0x6

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, mShownWeekCount:I

    .line 309
    const/4 v11, 0x5

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, mSelectedWeekBackgroundColor:I

    .line 311
    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, mFocusedMonthDateColor:I

    .line 313
    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, mUnfocusedMonthDateColor:I

    .line 315
    const/16 v11, 0x9

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, mWeekSeparatorLineColor:I

    .line 317
    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, mWeekNumberColor:I

    .line 318
    const/16 v11, 0xa

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 321
    const/16 v11, 0xc

    const v12, 0x1030046

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, p0, mDateTextAppearanceResId:I

    .line 325
    iget-boolean v11, p0, mIsDeviceDefault:Z

    if-eqz v11, :cond_1ba

    sget-boolean v11, MOCHA:Z

    if-eqz v11, :cond_1ba

    .line 326
    const/16 v11, 0x11

    const/16 v12, 0xe

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, p0, mDateTextSize:I

    .line 333
    :goto_105
    const/16 v11, 0xb

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, p0, mWeekDayTextAppearanceResId:I

    .line 336
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 338
    iget-object v11, p0, mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v11}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 339
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v11, 0x1

    const/high16 v12, 0x41400000    # 12.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, mWeekMinVisibleHeight:I

    .line 341
    const/4 v11, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, mListScrollTopOffset:I

    .line 343
    const/4 v11, 0x1

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, mBottomBuffer:I

    .line 345
    const/4 v11, 0x1

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, mSelectedDateVerticalBarWidth:I

    .line 347
    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, mWeekSeperatorLineWidth:I

    .line 350
    iget-object v11, p0, mContext:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 354
    .local v7, "layoutInflater":Landroid/view/LayoutInflater;
    iget-boolean v11, p0, mIsDeviceDefault:Z

    if-eqz v11, :cond_1bf

    sget-boolean v11, MOCHA:Z

    if-eqz v11, :cond_1bf

    .line 355
    const v11, 0x109011d

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 360
    .local v5, "content":Landroid/view/View;
    :goto_168
    iget-object v11, p0, mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v11, v5}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    .line 362
    iget-object v11, p0, mDelegator:Landroid/widget/CalendarView;

    const v12, 0x102000a

    invoke-virtual {v11, v12}, Landroid/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    iput-object v11, p0, mListView:Landroid/widget/ListView;

    .line 363
    const v11, 0x1020380

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, mDayNamesHeader:Landroid/view/ViewGroup;

    .line 364
    const v11, 0x102037f

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, mMonthName:Landroid/widget/TextView;

    .line 366
    invoke-direct {p0}, setUpHeader()V

    .line 367
    invoke-direct {p0}, setUpListView()V

    .line 368
    invoke-direct {p0}, setUpAdapter()V

    .line 371
    iget-object v11, p0, mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 372
    iget-object v11, p0, mTempDate:Ljava/util/Calendar;

    iget-object v12, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c9

    .line 373
    iget-object v11, p0, mMinDate:Ljava/util/Calendar;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {p0, v11, v12, v13, v14}, goTo(Ljava/util/Calendar;ZZZ)V

    .line 380
    :goto_1b4
    iget-object v11, p0, mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v11}, Landroid/widget/CalendarView;->invalidate()V

    .line 381
    return-void

    .line 329
    .end local v5    # "content":Landroid/view/View;
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v7    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_1ba
    invoke-direct {p0}, updateDateTextSize()V

    goto/16 :goto_105

    .line 357
    .restart local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_1bf
    const v11, 0x109003c

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "content":Landroid/view/View;
    goto :goto_168

    .line 374
    :cond_1c9
    iget-object v11, p0, mMaxDate:Ljava/util/Calendar;

    iget-object v12, p0, mTempDate:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1dc

    .line 375
    iget-object v11, p0, mMaxDate:Ljava/util/Calendar;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {p0, v11, v12, v13, v14}, goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_1b4

    .line 377
    :cond_1dc
    iget-object v11, p0, mTempDate:Ljava/util/Calendar;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {p0, v11, v12, v13, v14}, goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_1b4
.end method

.method static synthetic access$1002(Landroid/widget/CalendarViewLegacyDelegate;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget v0, p0, mPreviousScrollState:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/CalendarViewLegacyDelegate;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, mPreviousScrollState:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget v0, p0, mListScrollTopOffset:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget-boolean v0, p0, mIsScrollingUp:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 54
    invoke-direct {p0, p1}, getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget-object v0, p0, mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget-object v0, p0, mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget v0, p0, mFirstDayOfWeek:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget-object v0, p0, mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget-object v0, p0, mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 54
    invoke-direct {p0, p1}, setMonthDisplayed(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget-boolean v0, p0, mShowWeekNumber:Z

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget v0, p0, mDaysPerWeek:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget v0, p0, mDateTextSize:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget-boolean v0, p0, mIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$2500()Z
    .registers 1

    .prologue
    .line 54
    sget-boolean v0, MOCHA:Z

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget v0, p0, mFocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget v0, p0, mSelectedWeekBackgroundColor:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget v0, p0, mWeekSeperatorLineWidth:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget v0, p0, mUnfocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget v0, p0, mFocusedSingleDateColor:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget v0, p0, mWeekNumberColor:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget v0, p0, mWeekSeparatorLineColor:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget v0, p0, mSelectedDateVerticalBarWidth:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget-object v0, p0, mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget v0, p0, mShownWeekCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget-object v0, p0, mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;

    .prologue
    .line 54
    iget-object v0, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;I)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # Landroid/widget/AbsListView;
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;III)V
    .registers 5
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p1, "x1"    # Landroid/widget/AbsListView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method private static getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 5
    .param p0, "oldCalendar"    # Ljava/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 698
    if-nez p0, :cond_7

    .line 699
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 704
    :goto_6
    return-object v2

    .line 701
    :cond_7
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 702
    .local v0, "currentTimeMillis":J
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 703
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_6
.end method

.method private getWeeksSinceMinDate(Ljava/util/Calendar;)I
    .registers 16
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    const-wide/32 v12, 0x240c8400

    .line 973
    iget-object v6, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 974
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not precede toDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 977
    :cond_38
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v2, v6, v8

    .line 979
    .local v2, "endTimeMillis":J
    iget-object v6, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v8, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    iget-object v9, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 981
    .local v4, "startTimeMillis":J
    iget-object v6, p0, mMinDate:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget v7, p0, mFirstDayOfWeek:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/32 v8, 0x5265c00

    mul-long v0, v6, v8

    .line 984
    .local v0, "dayOffsetMillis":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_7b

    .line 985
    add-long/2addr v0, v12

    .line 988
    :cond_7b
    sub-long v6, v2, v4

    add-long/2addr v6, v0

    div-long/2addr v6, v12

    long-to-int v6, v6

    return v6
.end method

.method private goTo(Ljava/util/Calendar;ZZZ)V
    .registers 14
    .param p1, "date"    # Ljava/util/Calendar;
    .param p2, "animate"    # Z
    .param p3, "setSelected"    # Z
    .param p4, "forceScroll"    # Z

    .prologue
    const/4 v8, 0x0

    .line 822
    iget-object v4, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 823
    :cond_11
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time not between "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 827
    :cond_40
    iget-object v4, p0, mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 828
    .local v1, "firstFullyVisiblePosition":I
    iget-object v4, p0, mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 829
    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_56

    .line 830
    add-int/lit8 v1, v1, 0x1

    .line 832
    :cond_56
    iget v4, p0, mShownWeekCount:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 833
    .local v2, "lastFullyVisiblePosition":I
    if-eqz v0, :cond_67

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, mBottomBuffer:I

    if-le v4, v5, :cond_67

    .line 834
    add-int/lit8 v2, v2, -0x1

    .line 836
    :cond_67
    if-eqz p3, :cond_6e

    .line 837
    iget-object v4, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 840
    :cond_6e
    invoke-direct {p0, p1}, getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    .line 844
    .local v3, "position":I
    if-lt v3, v1, :cond_78

    if-gt v3, v2, :cond_78

    if-eqz p4, :cond_bb

    .line 846
    :cond_78
    iget-object v4, p0, mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 847
    iget-object v4, p0, mFirstDayOfMonth:Ljava/util/Calendar;

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 849
    iget-object v4, p0, mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, setMonthDisplayed(Ljava/util/Calendar;)V

    .line 852
    iget-object v4, p0, mFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v5, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 853
    const/4 v3, 0x0

    .line 858
    :goto_98
    const/4 v4, 0x2

    iput v4, p0, mPreviousScrollState:I

    .line 859
    if-eqz p2, :cond_ae

    .line 860
    iget-object v4, p0, mListView:Landroid/widget/ListView;

    iget v5, p0, mListScrollTopOffset:I

    const/16 v6, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 871
    :cond_a6
    :goto_a6
    return-void

    .line 855
    :cond_a7
    iget-object v4, p0, mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    goto :goto_98

    .line 863
    :cond_ae
    iget-object v4, p0, mListView:Landroid/widget/ListView;

    iget v5, p0, mListScrollTopOffset:I

    invoke-virtual {v4, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 865
    iget-object v4, p0, mListView:Landroid/widget/ListView;

    invoke-direct {p0, v4, v8}, onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_a6

    .line 867
    :cond_bb
    if-eqz p3, :cond_a6

    .line 869
    invoke-direct {p0, p1}, setMonthDisplayed(Ljava/util/Calendar;)V

    goto :goto_a6
.end method

.method private invalidateAllWeekViews()V
    .registers 5

    .prologue
    .line 684
    iget-object v3, p0, mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 685
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 686
    iget-object v3, p0, mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 687
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 689
    .end local v2    # "view":Landroid/view/View;
    :cond_15
    return-void
.end method

.method private static isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 5
    .param p0, "firstDate"    # Ljava/util/Calendar;
    .param p1, "secondDate"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    .line 713
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_17

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_17

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .registers 15
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 887
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 888
    .local v0, "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    if-nez v0, :cond_a

    .line 949
    :cond_9
    :goto_9
    return-void

    .line 893
    :cond_a
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v2, v7

    .line 897
    .local v2, "currScroll":J
    iget-wide v8, p0, mPreviousScrollPosition:J

    cmp-long v7, v2, v8

    if-gez v7, :cond_6d

    .line 898
    const/4 v7, 0x1

    iput-boolean v7, p0, mIsScrollingUp:Z

    .line 909
    :goto_22
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    move-result v7

    iget v8, p0, mWeekMinVisibleHeight:I

    if-ge v7, v8, :cond_77

    const/4 v6, 0x1

    .line 910
    .local v6, "offset":I
    :goto_2b
    iget-boolean v7, p0, mIsScrollingUp:Z

    if-eqz v7, :cond_79

    .line 911
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 916
    .restart local v0    # "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_37
    :goto_37
    if-eqz v0, :cond_66

    .line 919
    iget-boolean v7, p0, mIsScrollingUp:Z

    if-eqz v7, :cond_82

    .line 920
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfFirstWeekDay()I

    move-result v4

    .line 927
    .local v4, "month":I
    :goto_41
    iget v7, p0, mCurrentMonthDisplayed:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_87

    if-nez v4, :cond_87

    .line 928
    const/4 v5, 0x1

    .line 937
    .local v5, "monthDiff":I
    :goto_4a
    iget-boolean v7, p0, mIsScrollingUp:Z

    if-nez v7, :cond_50

    if-gtz v5, :cond_56

    :cond_50
    iget-boolean v7, p0, mIsScrollingUp:Z

    if-eqz v7, :cond_66

    if-gez v5, :cond_66

    .line 938
    :cond_56
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getFirstDay()Ljava/util/Calendar;

    move-result-object v1

    .line 939
    .local v1, "firstDay":Ljava/util/Calendar;
    iget-boolean v7, p0, mIsScrollingUp:Z

    if-eqz v7, :cond_96

    .line 940
    const/4 v7, 0x5

    const/4 v8, -0x7

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 944
    :goto_63
    invoke-direct {p0, v1}, setMonthDisplayed(Ljava/util/Calendar;)V

    .line 947
    .end local v1    # "firstDay":Ljava/util/Calendar;
    .end local v4    # "month":I
    .end local v5    # "monthDiff":I
    :cond_66
    iput-wide v2, p0, mPreviousScrollPosition:J

    .line 948
    iget v7, p0, mCurrentScrollState:I

    iput v7, p0, mPreviousScrollState:I

    goto :goto_9

    .line 899
    .end local v6    # "offset":I
    :cond_6d
    iget-wide v8, p0, mPreviousScrollPosition:J

    cmp-long v7, v2, v8

    if-lez v7, :cond_9

    .line 900
    const/4 v7, 0x0

    iput-boolean v7, p0, mIsScrollingUp:Z

    goto :goto_22

    .line 909
    :cond_77
    const/4 v6, 0x0

    goto :goto_2b

    .line 912
    .restart local v6    # "offset":I
    :cond_79
    if-eqz v6, :cond_37

    .line 913
    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .restart local v0    # "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    goto :goto_37

    .line 922
    :cond_82
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfLastWeekDay()I

    move-result v4

    .restart local v4    # "month":I
    goto :goto_41

    .line 929
    :cond_87
    iget v7, p0, mCurrentMonthDisplayed:I

    if-nez v7, :cond_91

    const/16 v7, 0xb

    if-ne v4, v7, :cond_91

    .line 930
    const/4 v5, -0x1

    .restart local v5    # "monthDiff":I
    goto :goto_4a

    .line 932
    .end local v5    # "monthDiff":I
    :cond_91
    iget v7, p0, mCurrentMonthDisplayed:I

    sub-int v5, v4, v7

    .restart local v5    # "monthDiff":I
    goto :goto_4a

    .line 942
    .restart local v1    # "firstDay":Ljava/util/Calendar;
    :cond_96
    const/4 v7, 0x5

    const/4 v8, 0x7

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_63
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 878
    iget-object v0, p0, mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 879
    return-void
.end method

.method private setMonthDisplayed(Ljava/util/Calendar;)V
    .registers 10
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 958
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, mCurrentMonthDisplayed:I

    .line 959
    iget-object v1, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget v4, p0, mCurrentMonthDisplayed:I

    invoke-virtual {v1, v4}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setFocusMonth(I)V

    .line 960
    const/16 v0, 0x34

    .line 962
    .local v0, "flags":I
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 963
    .local v2, "millis":J
    iget-object v1, p0, mContext:Landroid/content/Context;

    const/16 v6, 0x34

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    .line 964
    .local v7, "newMonthName":Ljava/lang/String;
    iget-object v1, p0, mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    iget-object v1, p0, mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 966
    return-void
.end method

.method private setUpAdapter()V
    .registers 3

    .prologue
    .line 721
    iget-object v0, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    if-nez v0, :cond_1e

    .line 722
    new-instance v0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V

    iput-object v0, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 723
    iget-object v0, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$1;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$1;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 735
    iget-object v0, p0, mListView:Landroid/widget/ListView;

    iget-object v1, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 739
    :cond_1e
    iget-object v0, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 740
    return-void
.end method

.method private setUpHeader()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 746
    iget v4, p0, mDaysPerWeek:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, mDayNamesShort:[Ljava/lang/String;

    .line 747
    iget v4, p0, mDaysPerWeek:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, mDayNamesLong:[Ljava/lang/String;

    .line 748
    iget v2, p0, mFirstDayOfWeek:I

    .local v2, "i":I
    iget v4, p0, mFirstDayOfWeek:I

    iget v5, p0, mDaysPerWeek:I

    add-int v1, v4, v5

    .local v1, "count":I
    :goto_17
    if-ge v2, v1, :cond_3f

    .line 749
    const/4 v4, 0x7

    if-le v2, v4, :cond_3d

    add-int/lit8 v0, v2, -0x7

    .line 750
    .local v0, "calendarDay":I
    :goto_1e
    iget-object v4, p0, mDayNamesShort:[Ljava/lang/String;

    iget v5, p0, mFirstDayOfWeek:I

    sub-int v5, v2, v5

    const/16 v6, 0x32

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 752
    iget-object v4, p0, mDayNamesLong:[Ljava/lang/String;

    iget v5, p0, mFirstDayOfWeek:I

    sub-int v5, v2, v5

    const/16 v6, 0xa

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .end local v0    # "calendarDay":I
    :cond_3d
    move v0, v2

    .line 749
    goto :goto_1e

    .line 756
    :cond_3f
    iget-object v4, p0, mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 757
    .local v3, "label":Landroid/widget/TextView;
    iget-boolean v4, p0, mShowWeekNumber:Z

    if-eqz v4, :cond_87

    .line 758
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 762
    :goto_4e
    const/4 v2, 0x1

    iget-object v4, p0, mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_55
    if-ge v2, v1, :cond_8f

    .line 763
    iget-object v4, p0, mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "label":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 764
    .restart local v3    # "label":Landroid/widget/TextView;
    iget v4, p0, mWeekDayTextAppearanceResId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_69

    .line 765
    iget v4, p0, mWeekDayTextAppearanceResId:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 767
    :cond_69
    iget v4, p0, mDaysPerWeek:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_8b

    .line 768
    iget-object v4, p0, mDayNamesShort:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v4, p0, mDayNamesLong:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 770
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 762
    :goto_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 760
    :cond_87
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4e

    .line 772
    :cond_8b
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_84

    .line 775
    :cond_8f
    iget-object v4, p0, mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 776
    return-void
.end method

.method private setUpListView()V
    .registers 3

    .prologue
    .line 783
    iget-object v0, p0, mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 784
    iget-object v0, p0, mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 785
    iget-object v0, p0, mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 786
    iget-object v0, p0, mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$2;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$2;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 799
    iget-object v0, p0, mListView:Landroid/widget/ListView;

    iget v1, p0, mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    .line 800
    iget-object v0, p0, mListView:Landroid/widget/ListView;

    iget v1, p0, mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    .line 801
    return-void
.end method

.method private updateDateTextSize()V
    .registers 5

    .prologue
    .line 673
    iget-object v1, p0, mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, mDateTextAppearanceResId:I

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 675
    .local v0, "dateTextAppearance":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, mDateTextSize:I

    .line 677
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 678
    return-void
.end method


# virtual methods
.method public getDate()J
    .registers 3

    .prologue
    .line 645
    iget-object v0, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .registers 2

    .prologue
    .line 530
    iget v0, p0, mDateTextAppearanceResId:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    .prologue
    .line 626
    iget v0, p0, mFirstDayOfWeek:I

    return v0
.end method

.method public getFocusedMonthDateColor()I
    .registers 2

    .prologue
    .line 431
    iget v0, p0, mFocusedMonthDateColor:I

    return v0
.end method

.method public getMaxDate()J
    .registers 3

    .prologue
    .line 595
    iget-object v0, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    .prologue
    .line 566
    iget-object v0, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .registers 2

    .prologue
    .line 412
    iget v0, p0, mSelectedWeekBackgroundColor:I

    return v0
.end method

.method public getShowWeekNumber()Z
    .registers 2

    .prologue
    .line 610
    iget-boolean v0, p0, mShowWeekNumber:Z

    return v0
.end method

.method public getShownWeekCount()I
    .registers 2

    .prologue
    .line 393
    iget v0, p0, mShownWeekCount:I

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .registers 2

    .prologue
    .line 450
    iget v0, p0, mFocusedMonthDateColor:I

    return v0
.end method

.method public getWeekDayTextAppearance()I
    .registers 2

    .prologue
    .line 516
    iget v0, p0, mWeekDayTextAppearanceResId:I

    return v0
.end method

.method public getWeekNumberColor()I
    .registers 2

    .prologue
    .line 465
    iget v0, p0, mWeekNumberColor:I

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .registers 2

    .prologue
    .line 478
    iget v0, p0, mWeekSeparatorLineColor:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 655
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, setCurrentLocale(Ljava/util/Locale;)V

    .line 656
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 665
    invoke-super {p0, p1}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 667
    iget-object v0, p0, mTempDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, mTempDate:Ljava/util/Calendar;

    .line 668
    iget-object v0, p0, mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-static {v0, p1}, getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, mFirstDayOfMonth:Ljava/util/Calendar;

    .line 669
    iget-object v0, p0, mMinDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, mMinDate:Ljava/util/Calendar;

    .line 670
    iget-object v0, p0, mMaxDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, mMaxDate:Ljava/util/Calendar;

    .line 671
    return-void
.end method

.method public setDate(J)V
    .registers 4
    .param p1, "date"    # J

    .prologue
    const/4 v0, 0x0

    .line 631
    invoke-virtual {p0, p1, p2, v0, v0}, setDate(JZZ)V

    .line 632
    return-void
.end method

.method public setDate(JZZ)V
    .registers 8
    .param p1, "date"    # J
    .param p3, "animate"    # Z
    .param p4, "center"    # Z

    .prologue
    .line 636
    iget-object v0, p0, mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 637
    iget-object v0, p0, mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 641
    :goto_13
    return-void

    .line 640
    :cond_14
    iget-object v0, p0, mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1, p4}, goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_13
.end method

.method public setDateTextAppearance(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 521
    iget v0, p0, mDateTextAppearanceResId:I

    if-eq v0, p1, :cond_c

    .line 522
    iput p1, p0, mDateTextAppearanceResId:I

    .line 523
    invoke-direct {p0}, updateDateTextSize()V

    .line 524
    invoke-direct {p0}, invalidateAllWeekViews()V

    .line 526
    :cond_c
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 615
    iget v0, p0, mFirstDayOfWeek:I

    if-ne v0, p1, :cond_5

    .line 622
    :goto_4
    return-void

    .line 618
    :cond_5
    iput p1, p0, mFirstDayOfWeek:I

    .line 619
    iget-object v0, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # invokes: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 620
    iget-object v0, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 621
    invoke-direct {p0}, setUpHeader()V

    goto :goto_4
.end method

.method public setFocusedMonthDateColor(I)V
    .registers 6
    .param p1, "color"    # I

    .prologue
    .line 417
    iget v3, p0, mFocusedMonthDateColor:I

    if-eq v3, p1, :cond_23

    .line 418
    iput p1, p0, mFocusedMonthDateColor:I

    .line 419
    iget-object v3, p0, mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 420
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_23

    .line 421
    iget-object v3, p0, mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 422
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$200(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 423
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 420
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 427
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_23
    return-void
.end method

.method public setMaxDate(J)V
    .registers 8
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x1

    .line 571
    iget-object v1, p0, mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 572
    iget-object v1, p0, mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, mMaxDate:Ljava/util/Calendar;

    invoke-static {v1, v2}, isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 591
    :goto_10
    return-void

    .line 575
    :cond_11
    iget-object v1, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 577
    iget-object v1, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # invokes: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 578
    iget-object v1, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .line 579
    .local v0, "date":Ljava/util/Calendar;
    iget-object v1, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 580
    iget-object v1, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, setDate(J)V

    goto :goto_10

    .line 587
    :cond_33
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3, v3}, goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_10
.end method

.method public setMinDate(J)V
    .registers 8
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x1

    .line 535
    iget-object v1, p0, mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 536
    iget-object v1, p0, mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, mMinDate:Ljava/util/Calendar;

    invoke-static {v1, v2}, isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 562
    :goto_10
    return-void

    .line 539
    :cond_11
    iget-object v1, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 544
    iget-object v1, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .line 545
    .local v0, "date":Ljava/util/Calendar;
    iget-object v1, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 546
    iget-object v1, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v2, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 549
    :cond_2b
    iget-object v1, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # invokes: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 550
    iget-object v1, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 551
    iget-object v1, p0, mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, setDate(J)V

    goto :goto_10

    .line 558
    :cond_42
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3, v3}, goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_10
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/CalendarView$OnDateChangeListener;

    .prologue
    .line 650
    iput-object p1, p0, mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    .line 651
    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .registers 4
    .param p1, "resourceId"    # I

    .prologue
    .line 483
    iget-object v1, p0, mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 484
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    .line 485
    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 489
    iget-object v3, p0, mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    if-eq v3, p1, :cond_23

    .line 490
    iput-object p1, p0, mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 491
    iget-object v3, p0, mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 492
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_23

    .line 493
    iget-object v3, p0, mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 494
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$100(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 495
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 492
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 499
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_23
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .registers 6
    .param p1, "color"    # I

    .prologue
    .line 398
    iget v3, p0, mSelectedWeekBackgroundColor:I

    if-eq v3, p1, :cond_23

    .line 399
    iput p1, p0, mSelectedWeekBackgroundColor:I

    .line 400
    iget-object v3, p0, mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 401
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_23

    .line 402
    iget-object v3, p0, mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 403
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$100(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 404
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 401
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 408
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_23
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .registers 3
    .param p1, "showWeekNumber"    # Z

    .prologue
    .line 600
    iget-boolean v0, p0, mShowWeekNumber:Z

    if-ne v0, p1, :cond_5

    .line 606
    :goto_4
    return-void

    .line 603
    :cond_5
    iput-boolean p1, p0, mShowWeekNumber:Z

    .line 604
    iget-object v0, p0, mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 605
    invoke-direct {p0}, setUpHeader()V

    goto :goto_4
.end method

.method public setShownWeekCount(I)V
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 385
    iget v0, p0, mShownWeekCount:I

    if-eq v0, p1, :cond_b

    .line 386
    iput p1, p0, mShownWeekCount:I

    .line 387
    iget-object v0, p0, mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->invalidate()V

    .line 389
    :cond_b
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .registers 6
    .param p1, "color"    # I

    .prologue
    .line 436
    iget v3, p0, mUnfocusedMonthDateColor:I

    if-eq v3, p1, :cond_23

    .line 437
    iput p1, p0, mUnfocusedMonthDateColor:I

    .line 438
    iget-object v3, p0, mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 439
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_23

    .line 440
    iget-object v3, p0, mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 441
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$300(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 442
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 439
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 446
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_23
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 508
    iget v0, p0, mWeekDayTextAppearanceResId:I

    if-eq v0, p1, :cond_9

    .line 509
    iput p1, p0, mWeekDayTextAppearanceResId:I

    .line 510
    invoke-direct {p0}, setUpHeader()V

    .line 512
    :cond_9
    return-void
.end method

.method public setWeekNumberColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 455
    iget v0, p0, mWeekNumberColor:I

    if-eq v0, p1, :cond_d

    .line 456
    iput p1, p0, mWeekNumberColor:I

    .line 457
    iget-boolean v0, p0, mShowWeekNumber:Z

    if-eqz v0, :cond_d

    .line 458
    invoke-direct {p0}, invalidateAllWeekViews()V

    .line 461
    :cond_d
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 470
    iget v0, p0, mWeekSeparatorLineColor:I

    if-eq v0, p1, :cond_9

    .line 471
    iput p1, p0, mWeekSeparatorLineColor:I

    .line 472
    invoke-direct {p0}, invalidateAllWeekViews()V

    .line 474
    :cond_9
    return-void
.end method
