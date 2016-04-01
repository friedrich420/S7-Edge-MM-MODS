.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatePickerSpinnerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;,
        Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final TW_DEBUG:Z

.field static final productName:Ljava/lang/String;


# instance fields
.field private final FORMAT_DDMMYYYY:I

.field private final FORMAT_MMDDYYYY:I

.field private final FORMAT_YYYYMMDD:I

.field private final PICKER_DAY:I

.field private final PICKER_MONTH:I

.field private final PICKER_YEAR:I

.field private isMonthJan:Z

.field private final mCalendarView:Landroid/widget/CalendarView;

.field private mCurrentDate:Ljava/util/Calendar;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDayDecrementButton:Landroid/widget/ImageButton;

.field private mDayIncrementButton:Landroid/widget/ImageButton;

.field private final mDaySpinner:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mIsEnabled:Z

.field private mIsParentThemeDeviceDefault:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthDecrementButton:Landroid/widget/ImageButton;

.field mMonthEdit:Landroid/widget/EditText;

.field private mMonthIncrementButton:Landroid/widget/ImageButton;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private mWBOriginSpninnerHeight:I

.field private mYearDecrementButton:Landroid/widget/ImageButton;

.field private mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mYearIncrementButton:Landroid/widget/ImageButton;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 633
    const-string/jumbo v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, productName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 31
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 642
    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    .line 605
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string v22, "MM/dd/yyyy"

    invoke-direct/range {v21 .. v22}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mDateFormat:Ljava/text/DateFormat;

    .line 617
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsEnabled:Z

    .line 636
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mWBOriginSpninnerHeight:I

    .line 637
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsParentThemeDeviceDefault:Z

    .line 1538
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mPickerTexts:[Landroid/widget/EditText;

    .line 1540
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, isMonthJan:Z

    .line 1541
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, PICKER_DAY:I

    .line 1542
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, PICKER_MONTH:I

    .line 1543
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, PICKER_YEAR:I

    .line 1545
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, FORMAT_MMDDYYYY:I

    .line 1546
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, FORMAT_DDMMYYYY:I

    .line 1547
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, FORMAT_YYYYMMDD:I

    .line 1553
    new-instance v21, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$6;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1563
    new-instance v21, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$7;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 644
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mDelegator:Landroid/widget/DatePicker;

    .line 645
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, mContext:Landroid/content/Context;

    .line 648
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, setCurrentLocale(Ljava/util/Locale;)V

    .line 650
    sget-object v21, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 652
    .local v7, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v21, 0x6

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    .line 654
    .local v18, "spinnersShown":Z
    const/16 v21, 0x7

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 656
    .local v8, "calendarViewShown":Z
    const/16 v21, 0x1

    const/16 v22, 0x76c

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .line 658
    .local v19, "startYear":I
    const/16 v21, 0x2

    const/16 v22, 0x834

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 659
    .local v9, "endYear":I
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 660
    .local v15, "minDate":Ljava/lang/String;
    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 661
    .local v14, "maxDate":Ljava/lang/String;
    const/16 v21, 0x14

    const v22, 0x1090048

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 663
    .local v12, "layoutResourceId":I
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 665
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 666
    .local v17, "outValue":Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v21

    const v22, 0x11600bd

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 667
    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v21, v0

    if-eqz v21, :cond_132

    .line 668
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsParentThemeDeviceDefault:Z

    .line 671
    :cond_132
    const-string v21, "layout_inflater"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 673
    .local v10, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 675
    new-instance v16, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 728
    .local v16, "onChangeListener":Landroid/widget/NumberPicker$OnValueChangeListener;
    move-object/from16 v0, p0

    iget-object v0, v0, mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    const v22, 0x102038d

    invoke-virtual/range {v21 .. v22}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mSpinners:Landroid/widget/LinearLayout;

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    const v22, 0x1020391

    invoke-virtual/range {v21 .. v22}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/CalendarView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mCalendarView:Landroid/widget/CalendarView;

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, mCalendarView:Landroid/widget/CalendarView;

    move-object/from16 v21, v0

    new-instance v22, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$2;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    const v22, 0x102038f

    invoke-virtual/range {v21 .. v22}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/NumberPicker;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mDaySpinner:Landroid/widget/NumberPicker;

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x64

    invoke-virtual/range {v21 .. v23}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const v22, 0x102043e

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mDaySpinnerInput:Landroid/widget/EditText;

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    const v22, 0x102038e

    invoke-virtual/range {v21 .. v22}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/NumberPicker;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mMonthSpinner:Landroid/widget/NumberPicker;

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const v22, 0x102043e

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mMonthSpinnerInput:Landroid/widget/EditText;

    .line 755
    invoke-direct/range {p0 .. p0}, usingNumericMonths()Z

    move-result v21

    if-eqz v21, :cond_55d

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const/16 v22, 0xc

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 769
    :goto_25c
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    invoke-virtual/range {v21 .. v23}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    const v22, 0x1020390

    invoke-virtual/range {v21 .. v22}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/NumberPicker;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mYearSpinner:Landroid/widget/NumberPicker;

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x64

    invoke-virtual/range {v21 .. v23}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const v22, 0x102043e

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mYearSpinnerInput:Landroid/widget/EditText;

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    .line 781
    .local v11, "language":Ljava/lang/String;
    const-string v21, "ar"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2df

    const-string v21, "fa"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2df

    const-string/jumbo v21, "ur"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_314

    .line 782
    :cond_2df
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsParentThemeDeviceDefault:Z

    move/from16 v21, v0

    if-eqz v21, :cond_314

    invoke-direct/range {p0 .. p0}, isPhone()Z

    move-result v21

    if-eqz v21, :cond_314

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/high16 v23, 0x41f00000    # 30.0f

    invoke-virtual/range {v21 .. v23}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, mYearSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/high16 v23, 0x41f00000    # 30.0f

    invoke-virtual/range {v21 .. v23}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, mDaySpinnerInput:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/high16 v23, 0x41f00000    # 30.0f

    invoke-virtual/range {v21 .. v23}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 790
    :cond_314
    move-object/from16 v0, p0

    iget-object v0, v0, mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 793
    new-instance v6, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$3;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 804
    .local v6, "TouchListener":Landroid/view/View$OnTouchListener;
    move-object/from16 v0, p0

    iget-object v0, v0, mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mDayIncrementButton:Landroid/widget/ImageButton;

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mMonthIncrementButton:Landroid/widget/ImageButton;

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mYearIncrementButton:Landroid/widget/ImageButton;

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mDayDecrementButton:Landroid/widget/ImageButton;

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mMonthDecrementButton:Landroid/widget/ImageButton;

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mYearDecrementButton:Landroid/widget/ImageButton;

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, mDayIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3a2

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, mDayIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 813
    :cond_3a2
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3b5

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 815
    :cond_3b5
    move-object/from16 v0, p0

    iget-object v0, v0, mYearIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3c8

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, mYearIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 817
    :cond_3c8
    move-object/from16 v0, p0

    iget-object v0, v0, mDayDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3db

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, mDayDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 819
    :cond_3db
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3ee

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 821
    :cond_3ee
    move-object/from16 v0, p0

    iget-object v0, v0, mYearDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_401

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, mYearDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 827
    :cond_401
    if-nez v18, :cond_59e

    if-nez v8, :cond_59e

    .line 828
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, setSpinnersShown(Z)V

    .line 835
    :goto_40e
    move-object/from16 v0, p0

    iget-object v0, v0, mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->clear()V

    .line 836
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5ac

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v15, v1}, parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v21

    if-nez v21, :cond_442

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 843
    :cond_442
    :goto_442
    move-object/from16 v0, p0

    iget-object v0, v0, mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, setMinDate(J)V

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->clear()V

    .line 847
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5c3

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v14, v1}, parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v21

    if-nez v21, :cond_485

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    const/16 v22, 0xb

    const/16 v23, 0x1f

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 854
    :cond_485
    :goto_485
    move-object/from16 v0, p0

    iget-object v0, v0, mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, setMaxDate(J)V

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Ljava/util/Calendar;->get(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    invoke-virtual/range {v23 .. v24}, Ljava/util/Calendar;->get(I)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 862
    invoke-direct/range {p0 .. p0}, reorderSpinners()V

    .line 865
    invoke-direct/range {p0 .. p0}, setContentDescriptions()V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/DatePicker;->getImportantForAccessibility()I

    move-result v21

    if-nez v21, :cond_4f3

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/DatePicker;->setImportantForAccessibility(I)V

    .line 873
    :cond_4f3
    move-object/from16 v0, p0

    iget-object v0, v0, mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    # invokes: Landroid/widget/DatePicker;->isWritingBuddyFeatureEnabled()Z
    invoke-static/range {v21 .. v21}, Landroid/widget/DatePicker;->access$1000(Landroid/widget/DatePicker;)Z

    move-result v21

    if-eqz v21, :cond_55c

    .line 874
    new-instance v20, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, mSpinners:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;-><init>(Landroid/view/View;)V

    .line 875
    .local v20, "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    const/16 v21, 0x12

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    .line 876
    new-instance v21, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextUpdateListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;)V

    .line 905
    new-instance v21, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, mSpinners:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsEnabled:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setWritingBuddyEnabled(Z)V

    .line 947
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsParentThemeDeviceDefault:Z

    move/from16 v21, v0

    if-eqz v21, :cond_55c

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, mSpinners:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 950
    .local v13, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v13, :cond_55c

    move-object/from16 v0, p0

    iget v0, v0, mWBOriginSpninnerHeight:I

    move/from16 v21, v0

    if-nez v21, :cond_55c

    .line 951
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mWBOriginSpninnerHeight:I

    .line 956
    .end local v13    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v20    # "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    :cond_55c
    return-void

    .line 762
    .end local v6    # "TouchListener":Landroid/view/View$OnTouchListener;
    .end local v11    # "language":Ljava/lang/String;
    :cond_55d
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mNumberOfMonths:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mShortMonths:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/EditText;->setInputType(I)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->twSetMonthInputMode()V

    goto/16 :goto_25c

    .line 830
    .restart local v6    # "TouchListener":Landroid/view/View$OnTouchListener;
    .restart local v11    # "language":Ljava/lang/String;
    :cond_59e
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, setSpinnersShown(Z)V

    .line 831
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, setCalendarViewShown(Z)V

    goto/16 :goto_40e

    .line 841
    :cond_5ac
    move-object/from16 v0, p0

    iget-object v0, v0, mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_442

    .line 852
    :cond_5c3
    move-object/from16 v0, p0

    iget-object v0, v0, mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    const/16 v22, 0xb

    const/16 v23, 0x1f

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_485
.end method

.method static synthetic access$000(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    iget-object v0, p0, mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    iget-object v0, p0, mDaySpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    iget-object v0, p0, mMonthSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    iget-object v0, p0, mYearSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    iget-object v0, p0, mSpinners:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;CLjava/lang/String;)I
    .registers 4
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
    .param p1, "x1"    # C
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 573
    invoke-direct {p0, p1, p2}, getValueFromWBResult(CLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    iget-object v0, p0, mDaySpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 573
    invoke-direct {p0, p1}, twLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2402(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, isMonthJan:Z

    return p1
.end method

.method static synthetic access$2500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/CalendarView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    iget-object v0, p0, mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    invoke-direct {p0}, usingNumericMonths()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    iget v0, p0, mNumberOfMonths:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    iget-object v0, p0, mShortMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    iget-object v0, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    iget-object v0, p0, mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;III)V
    .registers 4
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 573
    invoke-direct {p0, p1, p2, p3}, setDate(III)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    invoke-direct {p0}, updateSpinners()V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    invoke-direct {p0}, updateCalendarView()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    invoke-direct {p0}, notifyDateChanged()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 573
    invoke-direct {p0}, updateInputState()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 6
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1204
    if-nez p1, :cond_7

    .line 1205
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 1210
    :goto_6
    return-object v2

    .line 1207
    :cond_7
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1208
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 1209
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_6
.end method

.method private getValueFromWBResult(CLjava/lang/String;)I
    .registers 11
    .param p1, "type"    # C
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1495
    const/4 v3, -0x1

    .line 1496
    .local v3, "result":I
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_d
    move v4, v3

    .line 1528
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_e
    return v4

    .line 1499
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_f
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1500
    .local v5, "valueString":Ljava/lang/String;
    const/16 v6, 0x64

    if-ne p1, v6, :cond_20

    .line 1502
    :try_start_17
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1a} :catch_1d

    move-result v3

    :cond_1b
    :goto_1b
    move v4, v3

    .line 1528
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_e

    .line 1503
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :catch_1d
    move-exception v2

    .line 1504
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    .line 1505
    goto :goto_1b

    .line 1506
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_20
    const/16 v6, 0x4d

    if-ne p1, v6, :cond_53

    .line 1507
    invoke-direct {p0}, usingNumericMonths()Z

    move-result v6

    if-nez v6, :cond_2e

    iget-object v6, p0, mShortMonths:[Ljava/lang/String;

    if-nez v6, :cond_36

    .line 1509
    :cond_2e
    :try_start_2e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_31} :catch_33

    move-result v3

    goto :goto_1b

    .line 1510
    :catch_33
    move-exception v2

    .line 1511
    .restart local v2    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    .line 1512
    goto :goto_1b

    .line 1514
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_36
    iget-object v6, p0, mShortMonths:[Ljava/lang/String;

    array-length v0, v6

    .line 1515
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3a
    if-ge v1, v0, :cond_1b

    .line 1516
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, mShortMonths:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 1517
    add-int/lit8 v3, v1, 0x1

    .line 1515
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 1521
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_53
    const/16 v6, 0x79

    if-ne p1, v6, :cond_1b

    .line 1523
    :try_start_57
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_5a} :catch_5c

    move-result v3

    goto :goto_1b

    .line 1524
    :catch_5c
    move-exception v2

    .line 1525
    .restart local v2    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_1b
.end method

.method private isNewDate(III)Z
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 1276
    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_1b

    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_1b

    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1c

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private isPhone()Z
    .registers 3

    .prologue
    .line 962
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, "characteristics":Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 964
    const/4 v1, 0x0

    .line 966
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method

.method private notifyDateChanged()V
    .registers 6

    .prologue
    .line 1404
    iget-object v0, p0, mDelegator:Landroid/widget/DatePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->sendAccessibilityEvent(I)V

    .line 1405
    iget-object v0, p0, mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1d

    .line 1406
    iget-object v0, p0, mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v1, p0, mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {p0}, getYear()I

    move-result v2

    invoke-virtual {p0}, getMonth()I

    move-result v3

    invoke-virtual {p0}, getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 1409
    :cond_1d
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .registers 7
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 1267
    :try_start_0
    iget-object v1, p0, mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_9} :catch_b

    .line 1268
    const/4 v1, 0x1

    .line 1271
    :goto_a
    return v1

    .line 1269
    :catch_b
    move-exception v0

    .line 1270
    .local v0, "e":Ljava/text/ParseException;
    # getter for: Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/DatePicker;->access$2200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private reorderSpinners()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1220
    iget-object v5, p0, mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1223
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string/jumbo v6, "yyyyMMMdd"

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1224
    .local v3, "pattern":Ljava/lang/String;
    invoke-static {v3}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v2

    .line 1225
    .local v2, "order":[C
    array-length v4, v2

    .line 1226
    .local v4, "spinnerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v4, :cond_51

    .line 1227
    aget-char v5, v2, v1

    sparse-switch v5, :sswitch_data_6e

    .line 1241
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1229
    :sswitch_28
    iget-object v5, p0, mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1230
    iget-object v5, p0, mDaySpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v5, v4, v1}, setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 1226
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1233
    :sswitch_37
    iget-object v5, p0, mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1234
    iget-object v5, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v5, v4, v1}, setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_34

    .line 1237
    :sswitch_44
    iget-object v5, p0, mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1238
    iget-object v5, p0, mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v5, v4, v1}, setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_34

    .line 1249
    :cond_51
    aget-char v0, v2, v7

    .line 1250
    .local v0, "c":C
    const/16 v5, 0x4d

    if-ne v0, v5, :cond_5b

    .line 1251
    invoke-direct {p0, v7}, setTextWatcher(I)V

    .line 1257
    :cond_5a
    :goto_5a
    return-void

    .line 1252
    :cond_5b
    const/16 v5, 0x64

    if-ne v0, v5, :cond_64

    .line 1253
    const/4 v5, 0x1

    invoke-direct {p0, v5}, setTextWatcher(I)V

    goto :goto_5a

    .line 1254
    :cond_64
    const/16 v5, 0x79

    if-ne v0, v5, :cond_5a

    .line 1255
    const/4 v5, 0x2

    invoke-direct {p0, v5}, setTextWatcher(I)V

    goto :goto_5a

    .line 1227
    nop

    :sswitch_data_6e
    .sparse-switch
        0x4d -> :sswitch_37
        0x64 -> :sswitch_28
        0x79 -> :sswitch_44
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .registers 5

    .prologue
    const v3, 0x102043f

    const v2, 0x102043d

    .line 1440
    iget-object v0, p0, mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x104047f

    invoke-direct {p0, v0, v2, v1}, trySetContentDescription(Landroid/view/View;II)V

    .line 1442
    iget-object v0, p0, mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040480

    invoke-direct {p0, v0, v3, v1}, trySetContentDescription(Landroid/view/View;II)V

    .line 1445
    iget-object v0, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104047d

    invoke-direct {p0, v0, v2, v1}, trySetContentDescription(Landroid/view/View;II)V

    .line 1447
    iget-object v0, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104047e

    invoke-direct {p0, v0, v3, v1}, trySetContentDescription(Landroid/view/View;II)V

    .line 1450
    iget-object v0, p0, mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040481

    invoke-direct {p0, v0, v2, v1}, trySetContentDescription(Landroid/view/View;II)V

    .line 1452
    iget-object v0, p0, mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040482

    invoke-direct {p0, v0, v3, v1}, trySetContentDescription(Landroid/view/View;II)V

    .line 1454
    return-void
.end method

.method private setDate(III)V
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 1282
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 1283
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1284
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1288
    :cond_1a
    :goto_1a
    return-void

    .line 1285
    :cond_1b
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1286
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1a
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .registers 8
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    const/high16 v3, 0x2000000

    .line 1423
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_15

    .line 1424
    const/4 v0, 0x5

    .line 1426
    .local v0, "imeOptions":I
    or-int/2addr v0, v3

    .line 1434
    :goto_8
    const v2, 0x102043e

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1435
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1436
    return-void

    .line 1429
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_15
    const/4 v0, 0x6

    .line 1431
    .restart local v0    # "imeOptions":I
    or-int/2addr v0, v3

    goto :goto_8
.end method

.method private setTextWatcher(I)V
    .registers 9
    .param p1, "format"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextWatcher() usingNumericMonths  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, usingNumericMonths()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "format  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, twLog(Ljava/lang/String;)V

    .line 1581
    packed-switch p1, :pswitch_data_18c

    .line 1625
    :goto_2d
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;

    invoke-direct {v1, p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1626
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;

    invoke-direct {v1, p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1627
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;

    invoke-direct {v1, p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1628
    return-void

    .line 1583
    :pswitch_52
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1584
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1585
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1586
    invoke-direct {p0}, usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1587
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1588
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    iget-object v1, p0, mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1592
    :goto_8b
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1593
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1594
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    iget-object v1, p0, mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_2d

    .line 1590
    :cond_ad
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v5, v3, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_8b

    .line 1597
    :pswitch_ba
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1598
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1599
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1600
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1601
    invoke-direct {p0}, usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 1602
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1603
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1607
    :goto_ff
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1608
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    iget-object v1, p0, mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_2d

    .line 1605
    :cond_116
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_ff

    .line 1611
    :pswitch_123
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1612
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1613
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1614
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v6, v3, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1615
    invoke-direct {p0}, usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 1616
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1617
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1621
    :goto_168
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v4, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1622
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    iget-object v1, p0, mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_2d

    .line 1619
    :cond_17f
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_168

    .line 1581
    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_52
        :pswitch_ba
        :pswitch_123
    .end packed-switch
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 1457
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1458
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 1459
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1461
    :cond_f
    return-void
.end method

.method private twLog(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1656
    return-void
.end method

.method private updateCalendarView()V
    .registers 6

    .prologue
    .line 1395
    iget-object v0, p0, mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 1397
    return-void
.end method

.method private updateInputState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1469
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1470
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1d

    .line 1471
    iget-object v1, p0, mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1474
    iget-object v1, p0, mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1475
    iget-object v1, p0, mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1491
    :cond_1d
    :goto_1d
    return-void

    .line 1477
    :cond_1e
    iget-object v1, p0, mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1480
    iget-object v1, p0, mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1481
    iget-object v1, p0, mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1d

    .line 1483
    :cond_35
    iget-object v1, p0, mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1486
    iget-object v1, p0, mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1487
    iget-object v1, p0, mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1d
.end method

.method private updateSpinners()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1294
    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_122

    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_122

    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_122

    .line 1299
    :cond_39
    iget-object v1, p0, mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1300
    iget-object v1, p0, mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1301
    iget-object v1, p0, mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1302
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1304
    invoke-direct {p0}, usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 1305
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1306
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1312
    :goto_79
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1353
    :goto_7e
    iget-object v1, p0, mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1356
    .local v0, "displayedValues":[Ljava/lang/String;
    invoke-direct {p0}, usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_1f4

    .line 1357
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1364
    :goto_9f
    iget-object v1, p0, mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1365
    iget-object v1, p0, mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1366
    iget-object v1, p0, mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1369
    iget-object v1, p0, mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1371
    iget-object v1, p0, mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 1372
    iget-object v1, p0, mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1375
    :cond_e0
    invoke-direct {p0}, usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_1fb

    .line 1376
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1382
    :goto_f3
    iget-object v1, p0, mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1384
    invoke-direct {p0}, usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_109

    .line 1385
    iget-object v1, p0, mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1387
    :cond_109
    return-void

    .line 1308
    .end local v0    # "displayedValues":[Ljava/lang/String;
    :cond_10a
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1309
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto/16 :goto_79

    .line 1315
    :cond_122
    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_156

    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1b4

    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1b4

    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1b4

    .line 1320
    :cond_156
    iget-object v1, p0, mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1321
    iget-object v1, p0, mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1322
    iget-object v1, p0, mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1323
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1325
    invoke-direct {p0}, usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_19d

    .line 1326
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1327
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1333
    :goto_196
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_7e

    .line 1329
    :cond_19d
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1330
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_196

    .line 1335
    :cond_1b4
    iget-object v1, p0, mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1336
    iget-object v1, p0, mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1337
    iget-object v1, p0, mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1338
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1340
    invoke-direct {p0}, usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_1e7

    .line 1341
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1342
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1348
    :goto_1e0
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_7e

    .line 1344
    :cond_1e7
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1345
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_1e0

    .line 1359
    .restart local v0    # "displayedValues":[Ljava/lang/String;
    :cond_1f4
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    goto/16 :goto_9f

    .line 1378
    :cond_1fb
    iget-object v1, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto/16 :goto_f3
.end method

.method private usingNumericMonths()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1190
    sget-object v0, productName:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, productName:Ljava/lang/String;

    const-string v1, "ks02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1191
    const/4 v0, 0x1

    .line 1194
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, mShortMonths:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    goto :goto_10
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1145
    invoke-virtual {p0, p1}, onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1146
    const/4 v0, 0x1

    return v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .registers 2

    .prologue
    .line 1082
    iget-object v0, p0, mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .registers 2

    .prologue
    .line 1111
    iget-object v0, p0, mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getDayOfMonth()I
    .registers 3

    .prologue
    .line 1001
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    .prologue
    .line 1011
    iget-object v0, p0, mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .registers 5

    .prologue
    .line 1055
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1056
    .local v0, "maxDate":Ljava/util/Calendar;
    iget-object v1, p0, mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1057
    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .registers 5

    .prologue
    .line 1032
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1033
    .local v0, "minDate":Ljava/util/Calendar;
    iget-object v1, p0, mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1034
    return-object v0
.end method

.method public getMonth()I
    .registers 3

    .prologue
    .line 996
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .registers 2

    .prologue
    .line 1121
    iget-object v0, p0, mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .registers 3

    .prologue
    .line 991
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .prologue
    .line 972
    invoke-direct {p0, p1, p2, p3}, setDate(III)V

    .line 973
    invoke-direct {p0}, updateSpinners()V

    .line 974
    invoke-direct {p0}, updateCalendarView()V

    .line 975
    iput-object p4, p0, mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 976
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 1077
    iget-boolean v0, p0, mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1126
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, setCurrentLocale(Ljava/util/Locale;)V

    .line 1127
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1151
    const/16 v0, 0x14

    .line 1152
    .local v0, "flags":I
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x14

    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 1154
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1137
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$SavedState;

    .line 1138
    .local v0, "ss":Landroid/widget/DatePicker$SavedState;
    # getter for: Landroid/widget/DatePicker$SavedState;->mYear:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$1900(Landroid/widget/DatePicker$SavedState;)I

    move-result v1

    # getter for: Landroid/widget/DatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$2000(Landroid/widget/DatePicker$SavedState;)I

    move-result v2

    # getter for: Landroid/widget/DatePicker$SavedState;->mDay:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$2100(Landroid/widget/DatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, setDate(III)V

    .line 1139
    invoke-direct {p0}, updateSpinners()V

    .line 1140
    invoke-direct {p0}, updateCalendarView()V

    .line 1141
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 8
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1131
    invoke-direct {p0}, updateInputState()V

    .line 1132
    new-instance v0, Landroid/widget/DatePicker$SavedState;

    invoke-virtual {p0}, getYear()I

    move-result v2

    invoke-virtual {p0}, getMonth()I

    move-result v3

    invoke-virtual {p0}, getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .registers 6
    .param p1, "shown"    # Z

    .prologue
    .line 1087
    iget-object v3, p0, mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_3f

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/CalendarView;->setVisibility(I)V

    .line 1090
    iget-object v2, p0, mDelegator:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->isWritingBuddyFeatureEnabled()Z
    invoke-static {v2}, Landroid/widget/DatePicker;->access$1700(Landroid/widget/DatePicker;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-boolean v2, p0, mIsParentThemeDeviceDefault:Z

    if-eqz v2, :cond_3e

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1092
    iget-object v2, p0, mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1093
    .local v1, "spinnnerLP":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v2}, Landroid/widget/CalendarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1094
    .local v0, "calendarLP":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v2}, Landroid/widget/CalendarView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_42

    .line 1095
    if-eqz v1, :cond_3e

    if-eqz v0, :cond_3e

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_3e

    .line 1097
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, mWBOriginSpninnerHeight:I

    .line 1098
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1107
    .end local v0    # "calendarLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "spinnnerLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_3e
    :goto_3e
    return-void

    .line 1087
    :cond_3f
    const/16 v2, 0x8

    goto :goto_5

    .line 1101
    .restart local v0    # "calendarLP":Landroid/view/ViewGroup$LayoutParams;
    .restart local v1    # "spinnnerLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_42
    iget v2, p0, mWBOriginSpninnerHeight:I

    if-eqz v2, :cond_3e

    if-eqz v1, :cond_3e

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, p0, mWBOriginSpninnerHeight:I

    if-eq v2, v3, :cond_3e

    .line 1102
    iget v2, p0, mWBOriginSpninnerHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3e
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .registers 8
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1164
    invoke-super {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 1166
    iget-object v1, p0, mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, mTempDate:Ljava/util/Calendar;

    .line 1167
    iget-object v1, p0, mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, mMinDate:Ljava/util/Calendar;

    .line 1168
    iget-object v1, p0, mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, mMaxDate:Ljava/util/Calendar;

    .line 1169
    iget-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, mCurrentDate:Ljava/util/Calendar;

    .line 1171
    iget-object v1, p0, mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mNumberOfMonths:I

    .line 1172
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mShortMonths:[Ljava/lang/String;

    .line 1174
    invoke-direct {p0}, usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1177
    iget v1, p0, mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, mShortMonths:[Ljava/lang/String;

    .line 1178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_46
    iget v1, p0, mNumberOfMonths:I

    if-ge v0, v1, :cond_63

    .line 1179
    iget-object v1, p0, mShortMonths:[Ljava/lang/String;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1178
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 1182
    .end local v0    # "i":I
    :cond_63
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1062
    iget-object v0, p0, mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 1063
    iget-object v0, p0, mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 1064
    iget-object v0, p0, mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 1065
    iget-object v0, p0, mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    .line 1066
    iput-boolean p1, p0, mIsEnabled:Z

    .line 1069
    iget-object v0, p0, mDelegator:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->isWritingBuddyFeatureEnabled()Z
    invoke-static {v0}, Landroid/widget/DatePicker;->access$1600(Landroid/widget/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1070
    iget-object v0, p0, mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setWritingBuddyEnabled(Z)V

    .line 1073
    :cond_23
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 1006
    iget-object v0, p0, mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    .line 1007
    return-void
.end method

.method public setMaxDate(J)V
    .registers 8
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 1039
    iget-object v0, p0, mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1040
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

    .line 1051
    :goto_23
    return-void

    .line 1044
    :cond_24
    iget-object v0, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1045
    iget-object v0, p0, mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 1046
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1047
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1048
    invoke-direct {p0}, updateCalendarView()V

    .line 1050
    :cond_46
    invoke-direct {p0}, updateSpinners()V

    goto :goto_23
.end method

.method public setMinDate(J)V
    .registers 8
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 1016
    iget-object v0, p0, mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1017
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

    .line 1028
    :goto_23
    return-void

    .line 1021
    :cond_24
    iget-object v0, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1022
    iget-object v0, p0, mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 1023
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1024
    iget-object v0, p0, mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1025
    invoke-direct {p0}, updateCalendarView()V

    .line 1027
    :cond_46
    invoke-direct {p0}, updateSpinners()V

    goto :goto_23
.end method

.method public setSpinnersShown(Z)V
    .registers 4
    .param p1, "shown"    # Z

    .prologue
    .line 1116
    iget-object v1, p0, mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1117
    return-void

    .line 1116
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public updateDate(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 980
    invoke-direct {p0, p1, p2, p3}, isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_7

    .line 987
    :goto_6
    return-void

    .line 983
    :cond_7
    invoke-direct {p0, p1, p2, p3}, setDate(III)V

    .line 984
    invoke-direct {p0}, updateSpinners()V

    .line 985
    invoke-direct {p0}, updateCalendarView()V

    .line 986
    invoke-direct {p0}, notifyDateChanged()V

    goto :goto_6
.end method
