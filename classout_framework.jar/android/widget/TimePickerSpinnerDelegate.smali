.class Landroid/widget/TimePickerSpinnerDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;,
        Landroid/widget/TimePickerSpinnerDelegate$TwKeyListener;,
        Landroid/widget/TimePickerSpinnerDelegate$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc


# instance fields
.field private final PICKER_HOUR:I

.field private final PICKER_MINUTE:I

.field private TW_DEBUG:Z

.field private final mAmPmButton:Landroid/widget/Button;

.field private mAmPmDecrementButton:Landroid/widget/ImageButton;

.field private mAmPmIncrementButton:Landroid/widget/ImageButton;

.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mDivider:Landroid/widget/TextView;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mHourDecrementButton:Landroid/widget/ImageButton;

.field private mHourFormat:C

.field private mHourIncrementButton:Landroid/widget/ImageButton;

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private mMinuteDecrementButton:Landroid/widget/ImageButton;

.field private mMinuteIncrementButton:Landroid/widget/ImageButton;

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 24
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 112
    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    .line 96
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsEnabled:Z

    .line 930
    new-instance v14, Landroid/widget/TimePickerSpinnerDelegate$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TimePickerSpinnerDelegate$8;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 945
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, TW_DEBUG:Z

    .line 947
    const/4 v14, 0x3

    new-array v14, v14, [Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, mPickerTexts:[Landroid/widget/EditText;

    .line 949
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, PICKER_HOUR:I

    .line 950
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, PICKER_MINUTE:I

    .line 115
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v14, v0, v15, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 117
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v14, 0xc

    const v15, 0x1090113

    invoke-virtual {v5, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 119
    .local v10, "layoutResourceId":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 122
    .local v9, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v14, v0, mDelegator:Landroid/widget/TimePicker;

    const/4 v15, 0x1

    invoke-virtual {v9, v10, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 125
    const v14, 0x10204b4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v14, v0, mHourSpinner:Landroid/widget/NumberPicker;

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, mHourSpinner:Landroid/widget/NumberPicker;

    new-instance v15, Landroid/widget/TimePickerSpinnerDelegate$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TimePickerSpinnerDelegate$1;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, mHourSpinner:Landroid/widget/NumberPicker;

    const v15, 0x102043e

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, mHourSpinnerInput:Landroid/widget/EditText;

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, mHourSpinnerInput:Landroid/widget/EditText;

    const v15, 0x2000005

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v14, v0, mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, mHourSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, mDelegator:Landroid/widget/TimePicker;

    const v15, 0x10204b7

    invoke-virtual {v14, v15}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, mDivider:Landroid/widget/TextView;

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, mDivider:Landroid/widget/TextView;

    if-eqz v14, :cond_c1

    .line 159
    invoke-direct/range {p0 .. p0}, setDividerText()V

    .line 163
    :cond_c1
    move-object/from16 v0, p0

    iget-object v14, v0, mDelegator:Landroid/widget/TimePicker;

    const v15, 0x10204b5

    invoke-virtual {v14, v15}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v14, v0, mMinuteSpinner:Landroid/widget/NumberPicker;

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteSpinner:Landroid/widget/NumberPicker;

    const/16 v15, 0x3b

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteSpinner:Landroid/widget/NumberPicker;

    new-instance v15, Landroid/widget/TimePickerSpinnerDelegate$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TimePickerSpinnerDelegate$2;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteSpinner:Landroid/widget/NumberPicker;

    const v15, 0x102043e

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteSpinnerInput:Landroid/widget/EditText;

    const v15, 0x2000006

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 206
    invoke-static/range {p2 .. p2}, getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mAmPmStrings:[Ljava/lang/String;

    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, mDelegator:Landroid/widget/TimePicker;

    const v15, 0x10204b6

    invoke-virtual {v14, v15}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 210
    .local v7, "amPmView":Landroid/view/View;
    instance-of v14, v7, Landroid/widget/Button;

    if-eqz v14, :cond_2e5

    .line 211
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 212
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object v14, v7

    .line 213
    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, mAmPmButton:Landroid/widget/Button;

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmButton:Landroid/widget/Button;

    new-instance v15, Landroid/widget/TimePickerSpinnerDelegate$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TimePickerSpinnerDelegate$3;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    :goto_172
    new-instance v4, Landroid/widget/TimePickerSpinnerDelegate$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$5;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 262
    .local v4, "TouchListener":Landroid/view/View$OnTouchListener;
    move-object/from16 v0, p0

    iget-object v14, v0, mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mHourIncrementButton:Landroid/widget/ImageButton;

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mMinuteIncrementButton:Landroid/widget/ImageButton;

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mHourDecrementButton:Landroid/widget/ImageButton;

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mMinuteDecrementButton:Landroid/widget/ImageButton;

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, mHourIncrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_1b6

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, mHourIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    :cond_1b6
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteIncrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_1c3

    .line 272
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 274
    :cond_1c3
    move-object/from16 v0, p0

    iget-object v14, v0, mHourDecrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_1d0

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, mHourDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 277
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteDecrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_1dd

    .line 278
    move-object/from16 v0, p0

    iget-object v14, v0, mMinuteDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 280
    :cond_1dd
    instance-of v14, v7, Landroid/widget/Button;

    if-nez v14, :cond_231

    .line 281
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mAmPmIncrementButton:Landroid/widget/ImageButton;

    .line 282
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mAmPmDecrementButton:Landroid/widget/ImageButton;

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmIncrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_231

    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmDecrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_231

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v15, v0, mAmPmDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v15, v0, mAmPmIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 294
    :cond_231
    invoke-direct/range {p0 .. p0}, isAmPmAtStart()Z

    move-result v14

    if-eqz v14, :cond_25f

    .line 296
    const v14, 0x10204b3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 297
    .local v6, "amPmParent":Landroid/view/ViewGroup;
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 298
    const/4 v14, 0x0

    invoke-virtual {v6, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 301
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 303
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v12

    .line 304
    .local v12, "startMargin":I
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v8

    .line 305
    .local v8, "endMargin":I
    if-eq v12, v8, :cond_25f

    .line 306
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 307
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 311
    .end local v6    # "amPmParent":Landroid/view/ViewGroup;
    .end local v8    # "endMargin":I
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "startMargin":I
    :cond_25f
    invoke-direct/range {p0 .. p0}, getHourFormatData()V

    .line 314
    invoke-direct/range {p0 .. p0}, updateHourControl()V

    .line 315
    invoke-direct/range {p0 .. p0}, updateMinuteControl()V

    .line 316
    invoke-direct/range {p0 .. p0}, updateAmPmControl()V

    .line 319
    move-object/from16 v0, p0

    iget-object v14, v0, mTempCalendar:Ljava/util/Calendar;

    const/16 v15, 0xb

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, setCurrentHour(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v14, v0, mTempCalendar:Ljava/util/Calendar;

    const/16 v15, 0xc

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, setCurrentMinute(I)V

    .line 322
    invoke-virtual/range {p0 .. p0}, isEnabled()Z

    move-result v14

    if-nez v14, :cond_295

    .line 323
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, setEnabled(Z)V

    .line 327
    :cond_295
    invoke-direct/range {p0 .. p0}, setContentDescriptions()V

    .line 330
    move-object/from16 v0, p0

    iget-object v14, v0, mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v14}, Landroid/widget/TimePicker;->getImportantForAccessibility()I

    move-result v14

    if-nez v14, :cond_2aa

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, mDelegator:Landroid/widget/TimePicker;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/TimePicker;->setImportantForAccessibility(I)V

    .line 335
    :cond_2aa
    invoke-direct/range {p0 .. p0}, setTextWatcher()V

    .line 338
    invoke-direct/range {p0 .. p0}, isWritingBuddyFeatureEnabled()Z

    move-result v14

    if-eqz v14, :cond_2e4

    .line 339
    new-instance v13, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;-><init>(Landroid/view/View;)V

    .line 340
    .local v13, "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    invoke-virtual/range {p0 .. p0}, is24HourView()Z

    move-result v14

    if-eqz v14, :cond_34d

    .line 341
    const/16 v14, 0xf

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    .line 349
    :goto_2c5
    new-instance v14, Landroid/widget/TimePickerSpinnerDelegate$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TimePickerSpinnerDelegate$6;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextUpdateListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;)V

    .line 386
    new-instance v14, Landroid/widget/TimePickerSpinnerDelegate$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TimePickerSpinnerDelegate$7;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v14, v0, mDelegator:Landroid/widget/TimePicker;

    move-object/from16 v0, p0

    iget-boolean v15, v0, mIsEnabled:Z

    invoke-virtual {v14, v15}, Landroid/widget/TimePicker;->setWritingBuddyEnabled(Z)V

    .line 457
    .end local v13    # "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    :cond_2e4
    return-void

    .line 223
    .end local v4    # "TouchListener":Landroid/view/View$OnTouchListener;
    :cond_2e5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mAmPmButton:Landroid/widget/Button;

    move-object v14, v7

    .line 224
    check-cast v14, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v14, v0, mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v15, v0, mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmSpinner:Landroid/widget/NumberPicker;

    new-instance v15, Landroid/widget/TimePickerSpinnerDelegate$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TimePickerSpinnerDelegate$4;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmSpinner:Landroid/widget/NumberPicker;

    const v15, 0x102043e

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setInputType(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto/16 :goto_172

    .line 343
    .restart local v4    # "TouchListener":Landroid/view/View$OnTouchListener;
    .restart local v13    # "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    :cond_34d
    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsAm:Z

    if-eqz v14, :cond_35a

    .line 344
    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto/16 :goto_2c5

    .line 346
    :cond_35a
    const/16 v14, 0x11

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto/16 :goto_2c5
.end method

.method static synthetic access$000(Landroid/widget/TimePickerSpinnerDelegate;)C
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 71
    iget-char v0, p0, mHourFormat:C

    return v0
.end method

.method static synthetic access$100(Landroid/widget/TimePickerSpinnerDelegate;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 71
    iget-boolean v0, p0, mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/TimePickerSpinnerDelegate;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, mIsAm:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/TimePickerSpinnerDelegate;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 71
    iget-boolean v0, p0, TW_DEBUG:Z

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/TimePickerSpinnerDelegate;)[Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 71
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/TimePickerSpinnerDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 71
    invoke-direct {p0}, updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TimePickerSpinnerDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 71
    invoke-direct {p0}, onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TimePickerSpinnerDelegate;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 71
    invoke-direct {p0}, updateInputState()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 71
    iget-object v0, p0, mHourSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 71
    iget-object v0, p0, mMinuteSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 71
    iget-object v0, p0, mAmPmButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 71
    iget-object v0, p0, mAmPmSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/TimePickerSpinnerDelegate;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 71
    iget-object v0, p0, mAmPmStrings:[Ljava/lang/String;

    return-object v0
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 904
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 905
    .local v1, "result":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 907
    .local v0, "d":Llibcore/icu/LocaleData;
    invoke-static {}, isMeaLanguage()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 908
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    .line 909
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 915
    :goto_26
    return-object v1

    .line 912
    :cond_27
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_44

    iget-object v2, v0, Llibcore/icu/LocaleData;->narrowAm:Ljava/lang/String;

    :goto_33
    aput-object v2, v1, v3

    .line 913
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_49

    iget-object v2, v0, Llibcore/icu/LocaleData;->narrowPm:Ljava/lang/String;

    :goto_41
    aput-object v2, v1, v4

    goto :goto_26

    .line 912
    :cond_44
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_33

    .line 913
    :cond_49
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    goto :goto_41
.end method

.method private getHourFormatData()V
    .registers 8

    .prologue
    .line 460
    iget-object v6, p0, mCurrentLocale:Ljava/util/Locale;

    iget-boolean v5, p0, mIs24HourView:Z

    if-eqz v5, :cond_3d

    const-string v5, "Hm"

    :goto_8
    invoke-static {v6, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 463
    .local v4, "lengthPattern":I
    const/4 v5, 0x0

    iput-boolean v5, p0, mHourWithTwoDigit:Z

    .line 464
    const/4 v2, 0x0

    .line 467
    .local v2, "hourFormat":C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v4, :cond_3c

    .line 468
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 469
    .local v1, "c":C
    const/16 v5, 0x48

    if-eq v1, v5, :cond_2b

    const/16 v5, 0x68

    if-eq v1, v5, :cond_2b

    const/16 v5, 0x4b

    if-eq v1, v5, :cond_2b

    const/16 v5, 0x6b

    if-ne v1, v5, :cond_40

    .line 470
    :cond_2b
    iput-char v1, p0, mHourFormat:C

    .line 471
    add-int/lit8 v5, v3, 0x1

    if-ge v5, v4, :cond_3c

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v1, v5, :cond_3c

    .line 472
    const/4 v5, 0x1

    iput-boolean v5, p0, mHourWithTwoDigit:Z

    .line 477
    .end local v1    # "c":C
    :cond_3c
    return-void

    .line 460
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "hourFormat":C
    .end local v3    # "i":I
    .end local v4    # "lengthPattern":I
    :cond_3d
    const-string v5, "hm"

    goto :goto_8

    .line 467
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v2    # "hourFormat":C
    .restart local v3    # "i":I
    .restart local v4    # "lengthPattern":I
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_15
.end method

.method private isAmPmAtStart()Z
    .registers 4

    .prologue
    .line 480
    iget-object v1, p0, mCurrentLocale:Ljava/util/Locale;

    const-string v2, "hm"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isMeaLanguage()Z
    .registers 2

    .prologue
    .line 920
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, "language":Ljava/lang/String;
    const-string v1, "lo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 923
    :cond_29
    const/4 v1, 0x1

    .line 925
    :goto_2a
    return v1

    :cond_2b
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method private isWritingBuddyFeatureEnabled()Z
    .registers 2

    .prologue
    .line 1062
    const/4 v0, 0x0

    return v0
.end method

.method private onTimeChanged()V
    .registers 5

    .prologue
    .line 785
    iget-object v0, p0, mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 786
    iget-object v0, p0, mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_19

    .line 787
    iget-object v0, p0, mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, getCurrentMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 790
    :cond_19
    return-void
.end method

.method private setContentDescriptions()V
    .registers 5

    .prologue
    const v3, 0x102043f

    const v2, 0x102043d

    .line 832
    iget-object v0, p0, mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040477

    invoke-direct {p0, v0, v2, v1}, trySetContentDescription(Landroid/view/View;II)V

    .line 834
    iget-object v0, p0, mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040478

    invoke-direct {p0, v0, v3, v1}, trySetContentDescription(Landroid/view/View;II)V

    .line 837
    iget-object v0, p0, mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040479

    invoke-direct {p0, v0, v2, v1}, trySetContentDescription(Landroid/view/View;II)V

    .line 839
    iget-object v0, p0, mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104047a

    invoke-direct {p0, v0, v3, v1}, trySetContentDescription(Landroid/view/View;II)V

    .line 842
    iget-object v0, p0, mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_3a

    .line 843
    iget-object v0, p0, mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104047b

    invoke-direct {p0, v0, v2, v1}, trySetContentDescription(Landroid/view/View;II)V

    .line 845
    iget-object v0, p0, mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104047c

    invoke-direct {p0, v0, v3, v1}, trySetContentDescription(Landroid/view/View;II)V

    .line 848
    :cond_3a
    return-void
.end method

.method private setCurrentHour(IZ)V
    .registers 5
    .param p1, "currentHour"    # I
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/16 v1, 0xc

    .line 524
    invoke-virtual {p0}, getCurrentHour()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 546
    :cond_8
    :goto_8
    return-void

    .line 527
    :cond_9
    invoke-virtual {p0}, is24HourView()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 529
    if-lt p1, v1, :cond_26

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsAm:Z

    .line 531
    if-le p1, v1, :cond_18

    .line 532
    add-int/lit8 p1, p1, -0xc

    .line 540
    :cond_18
    :goto_18
    invoke-direct {p0}, updateAmPmControl()V

    .line 542
    :cond_1b
    iget-object v0, p0, mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 543
    if-eqz p2, :cond_8

    .line 544
    invoke-direct {p0}, onTimeChanged()V

    goto :goto_8

    .line 535
    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsAm:Z

    .line 536
    if-nez p1, :cond_18

    .line 537
    const/16 p1, 0xc

    goto :goto_18
.end method

.method private setDividerText()V
    .registers 9

    .prologue
    const/4 v7, -0x1

    .line 495
    iget-boolean v5, p0, mIs24HourView:Z

    if-eqz v5, :cond_25

    const-string v4, "Hm"

    .line 496
    .local v4, "skeleton":Ljava/lang/String;
    :goto_7
    iget-object v5, p0, mCurrentLocale:Ljava/util/Locale;

    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 500
    .local v1, "hourIndex":I
    if-ne v1, v7, :cond_1b

    .line 501
    const/16 v5, 0x68

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 503
    :cond_1b
    if-ne v1, v7, :cond_28

    .line 505
    const-string v3, ":"

    .line 514
    .local v3, "separatorText":Ljava/lang/String;
    :goto_1f
    iget-object v5, p0, mDivider:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    return-void

    .line 495
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v1    # "hourIndex":I
    .end local v3    # "separatorText":Ljava/lang/String;
    .end local v4    # "skeleton":Ljava/lang/String;
    :cond_25
    const-string v4, "hm"

    goto :goto_7

    .line 507
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "hourIndex":I
    .restart local v4    # "skeleton":Ljava/lang/String;
    :cond_28
    const/16 v5, 0x6d

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 508
    .local v2, "minuteIndex":I
    if-ne v2, v7, :cond_3d

    .line 509
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1f

    .line 511
    .end local v3    # "separatorText":Ljava/lang/String;
    :cond_3d
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1f
.end method

.method private setTextWatcher()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 960
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 961
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 963
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2}, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/TimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 964
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3}, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/TimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 966
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/TimePickerSpinnerDelegate$TwKeyListener;

    invoke-direct {v1, p0}, Landroid/widget/TimePickerSpinnerDelegate$TwKeyListener;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 967
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/TimePickerSpinnerDelegate$TwKeyListener;

    invoke-direct {v1, p0}, Landroid/widget/TimePickerSpinnerDelegate$TwKeyListener;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 968
    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 851
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 852
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 853
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 855
    :cond_f
    return-void
.end method

.method private updateAmPmControl()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 754
    invoke-virtual {p0}, is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 755
    iget-object v1, p0, mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_19

    .line 756
    iget-object v1, p0, mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 770
    :goto_12
    iget-object v1, p0, mDelegator:Landroid/widget/TimePicker;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 771
    return-void

    .line 758
    :cond_19
    iget-object v1, p0, mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_12

    .line 761
    :cond_1f
    iget-boolean v2, p0, mIsAm:Z

    if-eqz v2, :cond_33

    move v0, v1

    .line 762
    .local v0, "index":I
    :goto_24
    iget-object v2, p0, mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v2, :cond_35

    .line 763
    iget-object v2, p0, mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 764
    iget-object v2, p0, mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    goto :goto_12

    .line 761
    .end local v0    # "index":I
    :cond_33
    const/4 v0, 0x1

    goto :goto_24

    .line 766
    .restart local v0    # "index":I
    :cond_35
    iget-object v2, p0, mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v2, p0, mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_12
.end method

.method private updateHourControl()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 793
    invoke-virtual {p0}, is24HourView()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 795
    iget-char v0, p0, mHourFormat:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_28

    .line 796
    iget-object v0, p0, mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 797
    iget-object v0, p0, mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 812
    :goto_1a
    iget-object v1, p0, mHourSpinner:Landroid/widget/NumberPicker;

    iget-boolean v0, p0, mHourWithTwoDigit:Z

    if-eqz v0, :cond_55

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v0

    :goto_24
    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 813
    return-void

    .line 799
    :cond_28
    iget-object v0, p0, mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 800
    iget-object v0, p0, mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_1a

    .line 804
    :cond_35
    iget-char v0, p0, mHourFormat:C

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_48

    .line 805
    iget-object v0, p0, mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 806
    iget-object v0, p0, mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_1a

    .line 808
    :cond_48
    iget-object v0, p0, mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 809
    iget-object v0, p0, mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_1a

    .line 812
    :cond_55
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private updateInputState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 723
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 724
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_21

    .line 725
    iget-object v1, p0, mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 728
    iget-object v1, p0, mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 729
    iget-object v1, p0, mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_21

    .line 730
    iget-object v1, p0, mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 751
    :cond_21
    :goto_21
    return-void

    .line 733
    :cond_22
    iget-object v1, p0, mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 736
    iget-object v1, p0, mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 737
    iget-object v1, p0, mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_21

    .line 738
    iget-object v1, p0, mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_21

    .line 741
    :cond_3d
    iget-object v1, p0, mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 744
    iget-object v1, p0, mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 745
    iget-object v1, p0, mAmPmSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_21

    .line 746
    iget-object v1, p0, mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_21
.end method

.method private updateMinuteControl()V
    .registers 3

    .prologue
    const/4 v1, 0x6

    .line 816
    invoke-virtual {p0}, is24HourView()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 817
    iget-object v0, p0, mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 826
    :goto_c
    iget-object v0, p0, mMinuteSpinnerInput:Landroid/widget/EditText;

    const v1, 0x2000006

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 828
    return-void

    .line 819
    :cond_15
    iget-object v0, p0, mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_20

    .line 820
    iget-object v0, p0, mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_c

    .line 822
    :cond_20
    iget-object v0, p0, mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_c
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 698
    invoke-virtual {p0, p1}, onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 699
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 646
    iget-object v0, p0, mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()I
    .registers 3

    .prologue
    .line 550
    iget-object v1, p0, mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 551
    .local v0, "currentHour":I
    invoke-virtual {p0}, is24HourView()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 556
    .end local v0    # "currentHour":I
    :goto_c
    return v0

    .line 553
    .restart local v0    # "currentHour":I
    :cond_d
    iget-boolean v1, p0, mIsAm:Z

    if-eqz v1, :cond_14

    .line 554
    rem-int/lit8 v0, v0, 0xc

    goto :goto_c

    .line 556
    :cond_14
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v0, v1, 0xc

    goto :goto_c
.end method

.method public getCurrentMinute()I
    .registers 2

    .prologue
    .line 571
    iget-object v0, p0, mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method public getTimePickerText()[Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 956
    iget-object v0, p0, mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method public is24HourView()Z
    .registers 2

    .prologue
    .line 610
    iget-boolean v0, p0, mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 641
    iget-boolean v0, p0, mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 651
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, setCurrentLocale(Ljava/util/Locale;)V

    .line 652
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 704
    const/4 v0, 0x1

    .line 705
    .local v0, "flags":I
    iget-boolean v2, p0, mIs24HourView:Z

    if-eqz v2, :cond_31

    .line 706
    or-int/lit16 v0, v0, 0x80

    .line 710
    :goto_7
    iget-object v2, p0, mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, getCurrentHour()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 711
    iget-object v2, p0, mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, getCurrentMinute()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 712
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    return-void

    .line 708
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_31
    or-int/lit8 v0, v0, 0x40

    goto :goto_7
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 691
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    .line 692
    .local v0, "ss":Landroid/widget/TimePickerSpinnerDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {p0, v1}, setCurrentHour(I)V

    .line 693
    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-virtual {p0, v1}, setCurrentMinute(I)V

    .line 694
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 5
    .param p1, "layoutDirection"    # I

    .prologue
    const v2, 0x2000006

    const v1, 0x2000005

    .line 657
    packed-switch p1, :pswitch_data_20

    .line 664
    iget-object v0, p0, mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 665
    iget-object v0, p0, mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 667
    :goto_13
    return-void

    .line 659
    :pswitch_14
    iget-object v0, p0, mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 660
    iget-object v0, p0, mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_13

    .line 657
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_14
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 6
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 673
    invoke-direct {p0}, updateInputState()V

    .line 675
    iget-object v0, p0, mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v0, :cond_c

    .line 676
    iget-object v0, p0, mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 678
    :cond_c
    iget-object v0, p0, mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v0, :cond_15

    .line 679
    iget-object v0, p0, mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 681
    :cond_15
    iget-object v0, p0, mAmPmSpinnerInput:Landroid/widget/EditText;

    if-eqz v0, :cond_1e

    .line 682
    iget-object v0, p0, mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 686
    :cond_1e
    new-instance v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    invoke-virtual {p0}, getCurrentHour()I

    move-result v1

    invoke-virtual {p0}, getCurrentMinute()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/TimePickerSpinnerDelegate$1;)V

    return-object v0
.end method

.method public setCurrentHour(I)V
    .registers 3
    .param p1, "currentHour"    # I

    .prologue
    .line 519
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, setCurrentHour(IZ)V

    .line 520
    return-void
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 780
    invoke-super {p0, p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 781
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, mTempCalendar:Ljava/util/Calendar;

    .line 782
    return-void
.end method

.method public setCurrentMinute(I)V
    .registers 3
    .param p1, "currentMinute"    # I

    .prologue
    .line 562
    invoke-virtual {p0}, getCurrentMinute()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 567
    :goto_6
    return-void

    .line 565
    :cond_7
    iget-object v0, p0, mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 566
    invoke-direct {p0}, onTimeChanged()V

    goto :goto_6
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 620
    iget-object v0, p0, mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 621
    iget-object v0, p0, mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 622
    iget-object v0, p0, mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 624
    :cond_e
    iget-object v0, p0, mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 625
    iget-object v0, p0, mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_2a

    .line 626
    iget-object v0, p0, mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 630
    :goto_1c
    iput-boolean p1, p0, mIsEnabled:Z

    .line 633
    invoke-direct {p0}, isWritingBuddyFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 634
    iget-object v0, p0, mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->setWritingBuddyEnabled(Z)V

    .line 637
    :cond_29
    return-void

    .line 628
    :cond_2a
    iget-object v0, p0, mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1c
.end method

.method public setIs24HourView(Z)V
    .registers 6
    .param p1, "is24HourView"    # Z

    .prologue
    const/4 v3, 0x0

    .line 576
    iget-boolean v2, p0, mIs24HourView:Z

    if-ne v2, p1, :cond_6

    .line 606
    :cond_5
    :goto_5
    return-void

    .line 580
    :cond_6
    invoke-virtual {p0}, getCurrentHour()I

    move-result v0

    .line 582
    .local v0, "currentHour":I
    iput-boolean p1, p0, mIs24HourView:Z

    .line 583
    invoke-direct {p0}, getHourFormatData()V

    .line 584
    invoke-direct {p0}, updateHourControl()V

    .line 586
    invoke-direct {p0, v0, v3}, setCurrentHour(IZ)V

    .line 587
    invoke-direct {p0}, updateMinuteControl()V

    .line 588
    invoke-direct {p0}, updateAmPmControl()V

    .line 591
    invoke-direct {p0}, isWritingBuddyFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 592
    iget-object v2, p0, mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v1

    .line 593
    .local v1, "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    if-eqz v1, :cond_5

    .line 594
    iget-boolean v2, p0, mIs24HourView:Z

    if-eqz v2, :cond_33

    .line 595
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_5

    .line 597
    :cond_33
    iget-boolean v2, p0, mIsAm:Z

    if-eqz v2, :cond_3d

    .line 598
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_5

    .line 600
    :cond_3d
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_5
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .registers 2
    .param p1, "onTimeChangedListener"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 615
    iput-object p1, p0, mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 616
    return-void
.end method
