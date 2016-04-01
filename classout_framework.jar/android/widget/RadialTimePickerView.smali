.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$1;,
        Landroid/widget/RadialTimePickerView$IntHolder;,
        Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;,
        Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_OPAQUE:I = 0xff

.field private static final ALPHA_TRANSPARENT:I = 0x0

.field private static final AM:I = 0x0

.field private static final COS_30:[F

.field private static final DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final DEGREES_FOR_ONE_MINUTE:I = 0x6

.field private static final FADE_IN_DURATION:I = 0x1f4

.field private static final FADE_OUT_DURATION:I = 0x1f4

.field private static final HOURS:I = 0x0

.field private static final HOURS_INNER:I = 0x2

.field private static final HOURS_IN_CIRCLE:I = 0xc

.field private static final HOURS_NUMBERS:[I

.field private static final HOURS_NUMBERS_24:[I

.field private static final MINUTES:I = 0x1

.field private static final MINUTES_IN_CIRCLE:I = 0x3c

.field private static final MINUTES_NUMBERS:[I

.field private static final NUM_POSITIONS:I = 0xc

.field private static final PM:I = 0x1

.field private static final SELECTOR_CIRCLE:I = 0x0

.field private static final SELECTOR_DOT:I = 0x1

.field private static final SELECTOR_LINE:I = 0x2

.field private static final SIN_30:[F

.field private static final SNAP_PREFER_30S_MAP:[I

.field private static final TAG:Ljava/lang/String; = "RadialTimePickerView"


# instance fields
.field private final mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

.field private mAmOrPm:I

.field private mCenterDotRadius:I

.field mChangedDuringTouch:Z

.field private mCircleRadius:I

.field private mDisabledAlpha:F

.field private mHalfwayDist:I

.field private final mHours12Texts:[Ljava/lang/String;

.field private final mHoursToMinutesAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mInnerHours24Texts:[Ljava/lang/String;

.field private mInnerTextHours:[Ljava/lang/String;

.field private final mInnerTextX:[F

.field private final mInnerTextY:[F

.field private mInputEnabled:Z

.field private final mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsOnInnerCircle:Z

.field private mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private mMaxDistForOuterNumber:I

.field private mMinDistForInnerNumber:I

.field private final mMinuteToHoursAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mMinutesText:[Ljava/lang/String;

.field private final mMinutesTexts:[Ljava/lang/String;

.field private final mOuterHours24Texts:[Ljava/lang/String;

.field private mOuterTextHours:[Ljava/lang/String;

.field private final mOuterTextX:[[F

.field private final mOuterTextY:[[F

.field private final mPaint:[Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintCenter:Landroid/graphics/Paint;

.field private final mPaintSelector:[[Landroid/graphics/Paint;

.field private final mSelectionDegrees:[I

.field private final mSelectorColor:I

.field private final mSelectorDotColor:I

.field private mSelectorDotRadius:I

.field private final mSelectorPath:Landroid/graphics/Path;

.field private mSelectorRadius:I

.field private mSelectorStroke:I

.field private mShowHours:Z

.field private final mTextColor:[Landroid/content/res/ColorStateList;

.field private final mTextInset:[I

.field private final mTextSize:[I

.field private final mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private mTransition:Landroid/animation/AnimatorSet;

.field private final mTypeface:Landroid/graphics/Typeface;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0xc

    .line 87
    new-array v3, v8, [I

    fill-array-data v3, :array_52

    sput-object v3, HOURS_NUMBERS:[I

    .line 88
    new-array v3, v8, [I

    fill-array-data v3, :array_6e

    sput-object v3, HOURS_NUMBERS_24:[I

    .line 89
    new-array v3, v8, [I

    fill-array-data v3, :array_8a

    sput-object v3, MINUTES_NUMBERS:[I

    .line 94
    const/16 v3, 0x169

    new-array v3, v3, [I

    sput-object v3, SNAP_PREFER_30S_MAP:[I

    .line 97
    new-array v3, v8, [F

    sput-object v3, COS_30:[F

    .line 98
    new-array v3, v8, [F

    sput-object v3, SIN_30:[F

    .line 102
    invoke-static {}, preparePrefer30sMap()V

    .line 104
    const-wide v4, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 105
    .local v4, "increment":D
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 106
    .local v0, "angle":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    if-ge v2, v8, :cond_50

    .line 107
    sget-object v3, COS_30:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v3, v2

    .line 108
    sget-object v3, SIN_30:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v3, v2

    .line 109
    const-wide v6, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v0, v6

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 111
    :cond_50
    return-void

    .line 87
    nop

    :array_52
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    .line 88
    :array_6e
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    .line 89
    :array_8a
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 296
    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 297
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 301
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 305
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    new-instance v13, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;-><init>(Landroid/widget/RadialTimePickerView;Landroid/widget/RadialTimePickerView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    .line 116
    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, mHours12Texts:[Ljava/lang/String;

    .line 117
    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, mOuterHours24Texts:[Ljava/lang/String;

    .line 118
    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, mInnerHours24Texts:[Ljava/lang/String;

    .line 119
    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, mMinutesTexts:[Ljava/lang/String;

    .line 121
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v13, v0, mPaint:[Landroid/graphics/Paint;

    .line 122
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/widget/RadialTimePickerView$IntHolder;

    move-object/from16 v0, p0

    iput-object v13, v0, mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    .line 124
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mPaintCenter:Landroid/graphics/Paint;

    .line 126
    const/4 v13, 0x2

    const/4 v14, 0x3

    filled-new-array {v13, v14}, [I

    move-result-object v13

    const-class v14, Landroid/graphics/Paint;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v13, v0, mPaintSelector:[[Landroid/graphics/Paint;

    .line 131
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mPaintBackground:Landroid/graphics/Paint;

    .line 135
    const/4 v13, 0x3

    new-array v13, v13, [Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    iput-object v13, v0, mTextColor:[Landroid/content/res/ColorStateList;

    .line 136
    const/4 v13, 0x3

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, mTextSize:[I

    .line 137
    const/4 v13, 0x3

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, mTextInset:[I

    .line 139
    const/4 v13, 0x2

    const/16 v14, 0xc

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[F

    move-object/from16 v0, p0

    iput-object v13, v0, mOuterTextX:[[F

    .line 140
    const/4 v13, 0x2

    const/16 v14, 0xc

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[F

    move-object/from16 v0, p0

    iput-object v13, v0, mOuterTextY:[[F

    .line 142
    const/16 v13, 0xc

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, mInnerTextX:[F

    .line 143
    const/16 v13, 0xc

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, mInnerTextY:[F

    .line 145
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, mSelectionDegrees:[I

    .line 147
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mHoursToMinutesAnims:Ljava/util/ArrayList;

    .line 148
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mMinuteToHoursAnims:Ljava/util/ArrayList;

    .line 152
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mSelectorPath:Landroid/graphics/Path;

    .line 187
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mInputEnabled:Z

    .line 952
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mChangedDuringTouch:Z

    .line 308
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 309
    .local v9, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v14, 0x1010033

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v9, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 310
    invoke-virtual {v9}, Landroid/util/TypedValue;->getFloat()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, mDisabledAlpha:F

    .line 313
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 314
    .local v10, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    sget-object v14, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v13, v0, v14, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 317
    .local v3, "a":Landroid/content/res/TypedArray;
    const-string/jumbo v13, "sans-serif"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mTypeface:Landroid/graphics/Typeface;

    .line 320
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_111
    move-object/from16 v0, p0

    iget-object v13, v0, mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    array-length v13, v13

    if-ge v8, v13, :cond_128

    .line 321
    move-object/from16 v0, p0

    iget-object v13, v0, mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    new-instance v14, Landroid/widget/RadialTimePickerView$IntHolder;

    const/16 v15, 0xff

    invoke-direct {v14, v15}, Landroid/widget/RadialTimePickerView$IntHolder;-><init>(I)V

    aput-object v14, v13, v8

    .line 320
    add-int/lit8 v8, v8, 0x1

    goto :goto_111

    .line 324
    :cond_128
    move-object/from16 v0, p0

    iget-object v13, v0, mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    aput-object v15, v13, v14

    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v14, 0x2

    const/16 v15, 0x9

    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    aput-object v15, v13, v14

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, mTextColor:[Landroid/content/res/ColorStateList;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aput-object v15, v13, v14

    .line 328
    move-object/from16 v0, p0

    iget-object v13, v0, mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 329
    move-object/from16 v0, p0

    iget-object v13, v0, mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 330
    move-object/from16 v0, p0

    iget-object v13, v0, mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 333
    move-object/from16 v0, p0

    iget-object v13, v0, mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 334
    move-object/from16 v0, p0

    iget-object v13, v0, mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 336
    const/4 v13, 0x5

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 338
    .local v12, "selectorColors":Landroid/content/res/ColorStateList;
    const/16 v13, 0x28

    invoke-static {v13}, Landroid/util/StateSet;->get(I)[I

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    .line 341
    .local v11, "selectorActivatedColor":I
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintCenter:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 344
    const/16 v13, 0x28

    invoke-static {v13}, Landroid/util/StateSet;->get(I)[I

    move-result-object v4

    .line 347
    .local v4, "activatedStateSet":[I
    move-object/from16 v0, p0

    iput v11, v0, mSelectorColor:I

    .line 348
    move-object/from16 v0, p0

    iget-object v13, v0, mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x0

    invoke-virtual {v13, v4, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, mSelectorDotColor:I

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 353
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 354
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x2

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 357
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 360
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 364
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 366
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    aput-object v15, v13, v14

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintBackground:Landroid/graphics/Paint;

    const/4 v14, 0x4

    const v15, 0x10600dc

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getColor(I)I

    move-result v15

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    move-object/from16 v0, p0

    iget-object v13, v0, mPaintBackground:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 374
    const v13, 0x1050111

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, mSelectorRadius:I

    .line 375
    const v13, 0x1050112

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, mSelectorStroke:I

    .line 376
    const v13, 0x1050114

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, mSelectorDotRadius:I

    .line 377
    const v13, 0x1050113

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, mCenterDotRadius:I

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, mTextSize:[I

    const/4 v14, 0x0

    const v15, 0x1050116

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    aput v15, v13, v14

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, mTextSize:[I

    const/4 v14, 0x1

    const v15, 0x1050116

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    aput v15, v13, v14

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, mTextSize:[I

    const/4 v14, 0x2

    const v15, 0x1050117

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    aput v15, v13, v14

    .line 383
    move-object/from16 v0, p0

    iget-object v13, v0, mTextInset:[I

    const/4 v14, 0x0

    const v15, 0x1050115

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    aput v15, v13, v14

    .line 384
    move-object/from16 v0, p0

    iget-object v13, v0, mTextInset:[I

    const/4 v14, 0x1

    const v15, 0x1050115

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    aput v15, v13, v14

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, mTextInset:[I

    const/4 v14, 0x2

    const v15, 0x10500ab

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    aput v15, v13, v14

    .line 387
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mShowHours:Z

    .line 388
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIs24HourMode:Z

    .line 389
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, mAmOrPm:I

    .line 392
    new-instance v13, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Landroid/widget/RadialTimePickerView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 393
    move-object/from16 v0, p0

    iget-object v13, v0, mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 395
    invoke-virtual/range {p0 .. p0}, getImportantForAccessibility()I

    move-result v13

    if-nez v13, :cond_367

    .line 396
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, setImportantForAccessibility(I)V

    .line 399
    :cond_367
    invoke-direct/range {p0 .. p0}, initHoursAndMinutesText()V

    .line 400
    invoke-direct/range {p0 .. p0}, initData()V

    .line 402
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 405
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    .line 406
    .local v5, "calendar":Ljava/util/Calendar;
    const/16 v13, 0xb

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 407
    .local v6, "currentHour":I
    const/16 v13, 0xc

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 409
    .local v7, "currentMinute":I
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13, v14}, setCurrentHourInternal(IZZ)V

    .line 410
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, setCurrentMinuteInternal(IZ)V

    .line 412
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, setHapticFeedbackEnabled(Z)V

    .line 413
    return-void
.end method

.method static synthetic access$100(Landroid/widget/RadialTimePickerView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 62
    iget-boolean v0, p0, mShowHours:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/RadialTimePickerView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 62
    iget v0, p0, mCircleRadius:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/RadialTimePickerView;)[I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 62
    iget-object v0, p0, mTextInset:[I

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/RadialTimePickerView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 62
    iget v0, p0, mSelectorRadius:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/RadialTimePickerView;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, getDegreesForHour(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/RadialTimePickerView;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, getDegreesForMinute(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/RadialTimePickerView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 62
    iget v0, p0, mXCenter:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/RadialTimePickerView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 62
    iget v0, p0, mYCenter:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RadialTimePickerView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 62
    iget-boolean v0, p0, mIs24HourMode:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/RadialTimePickerView;FFZ)I
    .registers 5
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, getDegreesFromXY(FFZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(II)I
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-static {p0, p1}, snapOnly30s(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/widget/RadialTimePickerView;FF)Z
    .registers 4
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, getInnerCircleFromXY(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/RadialTimePickerView;IZ)I
    .registers 4
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RadialTimePickerView;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/RadialTimePickerView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    .line 62
    iget v0, p0, mAmOrPm:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/RadialTimePickerView;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, getInnerCircleForHour(I)Z

    move-result v0

    return v0
.end method

.method private applyAlpha(II)I
    .registers 11
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 717
    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v1, v2, 0xff

    .line 718
    .local v1, "srcAlpha":I
    int-to-double v2, v1

    int-to-double v4, p2

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 719
    .local v0, "dstAlpha":I
    const v2, 0xffffff

    and-int/2addr v2, p1

    shl-int/lit8 v3, v0, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method private static calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .registers 10
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "radius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "x"    # [F
    .param p6, "y"    # [F

    .prologue
    .line 806
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 807
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p3, v1

    .line 809
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    const/16 v1, 0xc

    if-ge v0, v1, :cond_2a

    .line 810
    sget-object v1, COS_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p2, v1

    aput v1, p5, v0

    .line 811
    sget-object v1, SIN_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p3, v1

    aput v1, p6, v0

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 813
    :cond_2a
    return-void
.end method

.method private calculatePositionsHours()V
    .registers 11

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 775
    iget v0, p0, mCircleRadius:I

    iget-object v2, p0, mTextInset:[I

    aget v2, v2, v7

    sub-int/2addr v0, v2

    int-to-float v1, v0

    .line 778
    .local v1, "numbersRadius":F
    iget-object v0, p0, mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    iget v2, p0, mXCenter:I

    int-to-float v2, v2

    iget v3, p0, mYCenter:I

    int-to-float v3, v3

    iget-object v4, p0, mTextSize:[I

    aget v4, v4, v7

    int-to-float v4, v4

    iget-object v5, p0, mOuterTextX:[[F

    aget-object v5, v5, v7

    iget-object v6, p0, mOuterTextY:[[F

    aget-object v6, v6, v7

    invoke-static/range {v0 .. v6}, calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 782
    iget-boolean v0, p0, mIs24HourMode:Z

    if-eqz v0, :cond_47

    .line 783
    iget v0, p0, mCircleRadius:I

    iget-object v2, p0, mTextInset:[I

    aget v2, v2, v8

    sub-int v9, v0, v2

    .line 784
    .local v9, "innerNumbersRadius":I
    iget-object v0, p0, mPaint:[Landroid/graphics/Paint;

    aget-object v2, v0, v7

    int-to-float v3, v9

    iget v0, p0, mXCenter:I

    int-to-float v4, v0

    iget v0, p0, mYCenter:I

    int-to-float v5, v0

    iget-object v0, p0, mTextSize:[I

    aget v0, v0, v8

    int-to-float v6, v0

    iget-object v7, p0, mInnerTextX:[F

    iget-object v8, p0, mInnerTextY:[F

    invoke-static/range {v2 .. v8}, calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 787
    .end local v9    # "innerNumbersRadius":I
    :cond_47
    return-void
.end method

.method private calculatePositionsMinutes()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 791
    iget v0, p0, mCircleRadius:I

    iget-object v2, p0, mTextInset:[I

    aget v2, v2, v7

    sub-int/2addr v0, v2

    int-to-float v1, v0

    .line 794
    .local v1, "numbersRadius":F
    iget-object v0, p0, mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    iget v2, p0, mXCenter:I

    int-to-float v2, v2

    iget v3, p0, mYCenter:I

    int-to-float v3, v3

    iget-object v4, p0, mTextSize:[I

    aget v4, v4, v7

    int-to-float v4, v4

    iget-object v5, p0, mOuterTextX:[[F

    aget-object v5, v5, v7

    iget-object v6, p0, mOuterTextY:[[F

    aget-object v6, v6, v7

    invoke-static/range {v0 .. v6}, calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 796
    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;F)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    .prologue
    .line 712
    iget-object v0, p0, mPaintCenter:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 713
    iget v0, p0, mXCenter:I

    int-to-float v0, v0

    iget v1, p0, mYCenter:I

    int-to-float v1, v1

    iget v2, p0, mCenterDotRadius:I

    int-to-float v2, v2

    iget-object v3, p0, mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 714
    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 662
    iget v0, p0, mXCenter:I

    int-to-float v0, v0

    iget v1, p0, mYCenter:I

    int-to-float v1, v1

    iget v2, p0, mCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 663
    return-void
.end method

.method private drawHours(Landroid/graphics/Canvas;F)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    .prologue
    .line 666
    iget-object v0, p0, mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 667
    .local v9, "hoursAlpha":I
    if-lez v9, :cond_75

    .line 669
    iget-boolean v0, p0, mIsOnInnerCircle:Z

    if-eqz v0, :cond_76

    const/4 v0, 0x2

    :goto_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, drawSelector(Landroid/graphics/Canvas;ILandroid/graphics/Path;F)V

    .line 672
    iget-object v0, p0, mTextSize:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, p0, mTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    aget-object v4, v0, v1

    iget-object v5, p0, mOuterTextHours:[Ljava/lang/String;

    iget-object v0, p0, mOuterTextX:[[F

    const/4 v1, 0x0

    aget-object v6, v0, v1

    iget-object v0, p0, mOuterTextY:[[F

    const/4 v1, 0x0

    aget-object v7, v0, v1

    iget-object v0, p0, mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget-object v8, v0, v1

    iget-boolean v0, p0, mIsOnInnerCircle:Z

    if-nez v0, :cond_78

    const/4 v10, 0x1

    :goto_3d
    iget-object v0, p0, mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v11, v0, v1

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 677
    iget-boolean v0, p0, mIs24HourMode:Z

    if-eqz v0, :cond_75

    iget-object v0, p0, mInnerTextHours:[Ljava/lang/String;

    if-eqz v0, :cond_75

    .line 678
    iget-object v0, p0, mTextSize:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, p0, mTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    aget-object v4, v0, v1

    iget-object v5, p0, mInnerTextHours:[Ljava/lang/String;

    iget-object v6, p0, mInnerTextX:[F

    iget-object v7, p0, mInnerTextY:[F

    iget-object v0, p0, mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget-object v8, v0, v1

    iget-boolean v10, p0, mIsOnInnerCircle:Z

    iget-object v0, p0, mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v11, v0, v1

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 683
    :cond_75
    return-void

    .line 669
    :cond_76
    const/4 v0, 0x0

    goto :goto_16

    .line 672
    :cond_78
    const/4 v10, 0x0

    goto :goto_3d
.end method

.method private drawMinutes(Landroid/graphics/Canvas;F)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    .prologue
    .line 686
    iget-object v0, p0, mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 687
    .local v9, "minutesAlpha":I
    if-lez v9, :cond_83

    .line 689
    const/4 v0, 0x1

    iget-object v1, p0, mSelectorPath:Landroid/graphics/Path;

    invoke-direct {p0, p1, v0, v1, p2}, drawSelector(Landroid/graphics/Canvas;ILandroid/graphics/Path;F)V

    .line 693
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 694
    iget-object v0, p0, mSelectorPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 695
    iget-object v0, p0, mTextSize:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, p0, mTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    aget-object v4, v0, v1

    iget-object v5, p0, mMinutesText:[Ljava/lang/String;

    iget-object v0, p0, mOuterTextX:[[F

    const/4 v1, 0x1

    aget-object v6, v0, v1

    iget-object v0, p0, mOuterTextY:[[F

    const/4 v1, 0x1

    aget-object v7, v0, v1

    iget-object v0, p0, mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x1

    aget-object v8, v0, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 698
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 702
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 703
    iget-object v0, p0, mSelectorPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 704
    iget-object v0, p0, mTextSize:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, p0, mTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    aget-object v4, v0, v1

    iget-object v5, p0, mMinutesText:[Ljava/lang/String;

    iget-object v0, p0, mOuterTextX:[[F

    const/4 v1, 0x1

    aget-object v6, v0, v1

    iget-object v0, p0, mOuterTextY:[[F

    const/4 v1, 0x1

    aget-object v7, v0, v1

    iget-object v0, p0, mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x1

    aget-object v8, v0, v1

    const/4 v10, 0x1

    iget-object v0, p0, mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v11, v0, v1

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 707
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 709
    :cond_83
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;ILandroid/graphics/Path;F)V
    .registers 35
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I
    .param p3, "selectorPath"    # Landroid/graphics/Path;
    .param p4, "alphaMod"    # F

    .prologue
    .line 727
    move-object/from16 v0, p0

    iget-object v4, v0, mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v5, p2, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v10, v4

    .line 728
    .local v10, "alpha":I
    move-object/from16 v0, p0

    iget v4, v0, mSelectorColor:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, applyAlpha(II)I

    move-result v13

    .line 731
    .local v13, "color":I
    move-object/from16 v0, p0

    iget v0, v0, mSelectorRadius:I

    move/from16 v24, v0

    .line 732
    .local v24, "selRadius":I
    move-object/from16 v0, p0

    iget v4, v0, mCircleRadius:I

    move-object/from16 v0, p0

    iget-object v5, v0, mTextInset:[I

    aget v5, v5, p2

    sub-int v23, v4, v5

    .line 733
    .local v23, "selLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, mSelectionDegrees:[I

    rem-int/lit8 v5, p2, 0x2

    aget v4, v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    .line 734
    .local v20, "selAngleRad":D
    move-object/from16 v0, p0

    iget v4, v0, mXCenter:I

    int-to-float v4, v4

    move/from16 v0, v23

    int-to-float v5, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v6, v0

    mul-float/2addr v5, v6

    add-float v19, v4, v5

    .line 735
    .local v19, "selCenterX":F
    move-object/from16 v0, p0

    iget v4, v0, mYCenter:I

    int-to-float v4, v4

    move/from16 v0, v23

    int-to-float v5, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v6, v0

    mul-float/2addr v5, v6

    sub-float v22, v4, v5

    .line 738
    .local v22, "selCenterY":F
    move-object/from16 v0, p0

    iget-object v4, v0, mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v5, p2, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v18, v4, v5

    .line 739
    .local v18, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 740
    move/from16 v0, v24

    int-to-float v4, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v22

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 743
    if-eqz p3, :cond_91

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 745
    move/from16 v0, v24

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 749
    :cond_91
    move-object/from16 v0, p0

    iget-object v4, v0, mSelectionDegrees:[I

    rem-int/lit8 v5, p2, 0x2

    aget v4, v4, v5

    rem-int/lit8 v4, v4, 0x1e

    if-eqz v4, :cond_129

    const/16 v25, 0x1

    .line 750
    .local v25, "shouldDrawDot":Z
    :goto_9f
    if-eqz v25, :cond_c5

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v5, p2, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-object v16, v4, v5

    .line 752
    .local v16, "dotPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v4, v0, mSelectorDotColor:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 753
    move-object/from16 v0, p0

    iget v4, v0, mSelectorDotRadius:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 758
    .end local v16    # "dotPaint":Landroid/graphics/Paint;
    :cond_c5
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    .line 759
    .local v26, "sin":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 760
    .local v14, "cos":D
    sub-int v17, v23, v24

    .line 761
    .local v17, "lineLength":I
    move-object/from16 v0, p0

    iget v4, v0, mXCenter:I

    move-object/from16 v0, p0

    iget v5, v0, mCenterDotRadius:I

    int-to-double v0, v5

    move-wide/from16 v28, v0

    mul-double v28, v28, v26

    move-wide/from16 v0, v28

    double-to-int v5, v0

    add-int v11, v4, v5

    .line 762
    .local v11, "centerX":I
    move-object/from16 v0, p0

    iget v4, v0, mYCenter:I

    move-object/from16 v0, p0

    iget v5, v0, mCenterDotRadius:I

    int-to-double v0, v5

    move-wide/from16 v28, v0

    mul-double v28, v28, v14

    move-wide/from16 v0, v28

    double-to-int v5, v0

    sub-int v12, v4, v5

    .line 763
    .local v12, "centerY":I
    move/from16 v0, v17

    int-to-double v4, v0

    mul-double v4, v4, v26

    double-to-int v4, v4

    add-int/2addr v4, v11

    int-to-float v7, v4

    .line 764
    .local v7, "linePointX":F
    move/from16 v0, v17

    int-to-double v4, v0

    mul-double/2addr v4, v14

    double-to-int v4, v4

    sub-int v4, v12, v4

    int-to-float v8, v4

    .line 767
    .local v8, "linePointY":F
    move-object/from16 v0, p0

    iget-object v4, v0, mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v5, p2, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-object v9, v4, v5

    .line 768
    .local v9, "linePaint":Landroid/graphics/Paint;
    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 769
    move-object/from16 v0, p0

    iget v4, v0, mSelectorStroke:I

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 770
    move-object/from16 v0, p0

    iget v4, v0, mXCenter:I

    int-to-float v5, v4

    move-object/from16 v0, p0

    iget v4, v0, mYCenter:I

    int-to-float v6, v4

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 771
    return-void

    .line 749
    .end local v7    # "linePointX":F
    .end local v8    # "linePointY":F
    .end local v9    # "linePaint":Landroid/graphics/Paint;
    .end local v11    # "centerX":I
    .end local v12    # "centerY":I
    .end local v14    # "cos":D
    .end local v17    # "lineLength":I
    .end local v25    # "shouldDrawDot":Z
    .end local v26    # "sin":D
    :cond_129
    const/16 v25, 0x0

    goto/16 :goto_9f
.end method

.method private drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .registers 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "textColor"    # Landroid/content/res/ColorStateList;
    .param p5, "texts"    # [Ljava/lang/String;
    .param p6, "textX"    # [F
    .param p7, "textY"    # [F
    .param p8, "paint"    # Landroid/graphics/Paint;
    .param p9, "alpha"    # I
    .param p10, "showActivated"    # Z
    .param p11, "activatedDegrees"    # I
    .param p12, "activatedOnly"    # Z

    .prologue
    .line 821
    move-object/from16 v0, p8

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 822
    move-object/from16 v0, p8

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 825
    move/from16 v0, p11

    int-to-float v9, v0

    const/high16 v10, 0x41f00000    # 30.0f

    div-float v5, v9, v10

    .line 826
    .local v5, "activatedIndex":F
    float-to-int v4, v5

    .line 827
    .local v4, "activatedFloor":I
    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    rem-int/lit8 v3, v9, 0xc

    .line 829
    .local v3, "activatedCeil":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1b
    const/16 v9, 0xc

    if-ge v7, v9, :cond_5e

    .line 830
    if-eq v4, v7, :cond_23

    if-ne v3, v7, :cond_2b

    :cond_23
    const/4 v2, 0x1

    .line 831
    .local v2, "activated":Z
    :goto_24
    if-eqz p12, :cond_2d

    if-nez v2, :cond_2d

    .line 829
    :goto_28
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 830
    .end local v2    # "activated":Z
    :cond_2b
    const/4 v2, 0x0

    goto :goto_24

    .line 835
    .restart local v2    # "activated":Z
    :cond_2d
    if-eqz p10, :cond_5c

    if-eqz v2, :cond_5c

    const/16 v9, 0x20

    :goto_33
    or-int/lit8 v8, v9, 0x8

    .line 837
    .local v8, "stateMask":I
    invoke-static {v8}, Landroid/util/StateSet;->get(I)[I

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 838
    .local v6, "color":I
    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 839
    move/from16 v0, p9

    invoke-direct {p0, v6, v0}, getMultipliedAlpha(II)I

    move-result v9

    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 841
    aget-object v9, p5, v7

    aget v10, p6, v7

    aget v11, p7, v7

    move-object/from16 v0, p8

    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_28

    .line 835
    .end local v6    # "color":I
    .end local v8    # "stateMask":I
    :cond_5c
    const/4 v9, 0x0

    goto :goto_33

    .line 843
    .end local v2    # "activated":Z
    :cond_5e
    return-void
.end method

.method private getDegreesForHour(I)I
    .registers 4
    .param p1, "hour"    # I

    .prologue
    const/16 v1, 0xc

    .line 517
    iget-boolean v0, p0, mIs24HourMode:Z

    if-eqz v0, :cond_d

    .line 518
    if-lt p1, v1, :cond_a

    .line 519
    add-int/lit8 p1, p1, -0xc

    .line 524
    :cond_a
    :goto_a
    mul-int/lit8 v0, p1, 0x1e

    return v0

    .line 521
    :cond_d
    if-ne p1, v1, :cond_a

    .line 522
    const/4 p1, 0x0

    goto :goto_a
.end method

.method private getDegreesForMinute(I)I
    .registers 3
    .param p1, "minute"    # I

    .prologue
    .line 558
    mul-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getDegreesFromXY(FFZ)I
    .registers 22
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "constrainOutside"    # Z

    .prologue
    .line 916
    move-object/from16 v0, p0

    iget-boolean v13, v0, mIs24HourMode:Z

    if-eqz v13, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v13, v0, mShowHours:Z

    if-eqz v13, :cond_3c

    .line 917
    move-object/from16 v0, p0

    iget v11, v0, mMinDistForInnerNumber:I

    .line 918
    .local v11, "innerBound":I
    move-object/from16 v0, p0

    iget v12, v0, mMaxDistForOuterNumber:I

    .line 926
    .local v12, "outerBound":I
    :goto_14
    move-object/from16 v0, p0

    iget v13, v0, mXCenter:I

    int-to-float v13, v13

    sub-float v13, p1, v13

    float-to-double v4, v13

    .line 927
    .local v4, "dX":D
    move-object/from16 v0, p0

    iget v13, v0, mYCenter:I

    int-to-float v13, v13

    sub-float v13, p2, v13

    float-to-double v6, v13

    .line 928
    .local v6, "dY":D
    mul-double v14, v4, v4

    mul-double v16, v6, v6

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 929
    .local v8, "distFromCenter":D
    int-to-double v14, v11

    cmpg-double v13, v8, v14

    if-ltz v13, :cond_3a

    if-eqz p3, :cond_5e

    int-to-double v14, v12

    cmpl-double v13, v8, v14

    if-lez v13, :cond_5e

    .line 930
    :cond_3a
    const/4 v3, -0x1

    .line 938
    :cond_3b
    :goto_3b
    return v3

    .line 920
    .end local v4    # "dX":D
    .end local v6    # "dY":D
    .end local v8    # "distFromCenter":D
    .end local v11    # "innerBound":I
    .end local v12    # "outerBound":I
    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v13, v0, mShowHours:Z

    if-eqz v13, :cond_5c

    const/4 v10, 0x0

    .line 921
    .local v10, "index":I
    :goto_43
    move-object/from16 v0, p0

    iget v13, v0, mCircleRadius:I

    move-object/from16 v0, p0

    iget-object v14, v0, mTextInset:[I

    aget v14, v14, v10

    sub-int v2, v13, v14

    .line 922
    .local v2, "center":I
    move-object/from16 v0, p0

    iget v13, v0, mSelectorRadius:I

    sub-int v11, v2, v13

    .line 923
    .restart local v11    # "innerBound":I
    move-object/from16 v0, p0

    iget v13, v0, mSelectorRadius:I

    add-int v12, v2, v13

    .restart local v12    # "outerBound":I
    goto :goto_14

    .line 920
    .end local v2    # "center":I
    .end local v10    # "index":I
    .end local v11    # "innerBound":I
    .end local v12    # "outerBound":I
    :cond_5c
    const/4 v10, 0x1

    goto :goto_43

    .line 934
    .restart local v4    # "dX":D
    .restart local v6    # "dY":D
    .restart local v8    # "distFromCenter":D
    .restart local v11    # "innerBound":I
    .restart local v12    # "outerBound":I
    :cond_5e
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v3, v14

    .line 935
    .local v3, "degrees":I
    if-gez v3, :cond_3b

    .line 936
    add-int/lit16 v3, v3, 0x168

    goto :goto_3b
.end method

.method private static getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .registers 19
    .param p0, "target"    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1, "startAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    .prologue
    .line 855
    const/high16 v3, 0x3e800000    # 0.25f

    .line 856
    .local v3, "delayMultiplier":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 857
    .local v11, "transitionDurationMultiplier":F
    const/high16 v10, 0x3fa00000    # 1.25f

    .line 858
    .local v10, "totalDurationMultiplier":F
    const/16 v9, 0x271

    .line 859
    .local v9, "totalDuration":I
    const v4, 0x3e4ccccd    # 0.2f

    .line 862
    .local v4, "delayPoint":F
    const/4 v12, 0x0

    move/from16 v0, p1

    invoke-static {v12, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v6

    .line 863
    .local v6, "kf0":Landroid/animation/Keyframe;
    const v12, 0x3e4ccccd    # 0.2f

    move/from16 v0, p1

    invoke-static {v12, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v7

    .line 864
    .local v7, "kf1":Landroid/animation/Keyframe;
    const/high16 v12, 0x3f800000    # 1.0f

    move/from16 v0, p2

    invoke-static {v12, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v8

    .line 865
    .local v8, "kf2":Landroid/animation/Keyframe;
    const-string/jumbo v12, "value"

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Keyframe;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    aput-object v7, v13, v14

    const/4 v14, 0x2

    aput-object v8, v13, v14

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 867
    .local v5, "fadeIn":Landroid/animation/PropertyValuesHolder;
    const/4 v12, 0x1

    new-array v12, v12, [Landroid/animation/PropertyValuesHolder;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {p0, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 868
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v12, 0x271

    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 869
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 870
    return-object v2
.end method

.method private static getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .registers 8
    .param p0, "target"    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1, "startAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    .prologue
    .line 847
    const-string/jumbo v1, "value"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 848
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 849
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 850
    return-object v0
.end method

.method private getHourForDegrees(IZ)I
    .registers 6
    .param p1, "degrees"    # I
    .param p2, "innerCircle"    # Z

    .prologue
    .line 495
    div-int/lit8 v1, p1, 0x1e

    rem-int/lit8 v0, v1, 0xc

    .line 496
    .local v0, "hour":I
    iget-boolean v1, p0, mIs24HourMode:Z

    if-eqz v1, :cond_16

    .line 499
    if-nez p2, :cond_f

    if-nez v0, :cond_f

    .line 501
    const/16 v0, 0xc

    .line 509
    :cond_e
    :goto_e
    return v0

    .line 502
    :cond_f
    if-eqz p2, :cond_e

    if-eqz v0, :cond_e

    .line 504
    add-int/lit8 v0, v0, 0xc

    goto :goto_e

    .line 506
    :cond_16
    iget v1, p0, mAmOrPm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 507
    add-int/lit8 v0, v0, 0xc

    goto :goto_e
.end method

.method private getInnerCircleForHour(I)Z
    .registers 3
    .param p1, "hour"    # I

    .prologue
    .line 531
    iget-boolean v0, p0, mIs24HourMode:Z

    if-eqz v0, :cond_c

    if-eqz p1, :cond_a

    const/16 v0, 0xc

    if-le p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private getInnerCircleFromXY(FF)Z
    .registers 15
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x0

    .line 943
    iget-boolean v7, p0, mIs24HourMode:Z

    if-eqz v7, :cond_26

    iget-boolean v7, p0, mShowHours:Z

    if-eqz v7, :cond_26

    .line 944
    iget v7, p0, mXCenter:I

    int-to-float v7, v7

    sub-float v7, p1, v7

    float-to-double v0, v7

    .line 945
    .local v0, "dX":D
    iget v7, p0, mYCenter:I

    int-to-float v7, v7

    sub-float v7, p2, v7

    float-to-double v2, v7

    .line 946
    .local v2, "dY":D
    mul-double v8, v0, v0

    mul-double v10, v2, v2

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 947
    .local v4, "distFromCenter":D
    iget v7, p0, mHalfwayDist:I

    int-to-double v8, v7

    cmpg-double v7, v4, v8

    if-gtz v7, :cond_26

    const/4 v6, 0x1

    .line 949
    .end local v0    # "dX":D
    .end local v2    # "dY":D
    .end local v4    # "distFromCenter":D
    :cond_26
    return v6
.end method

.method private getMinuteForDegrees(I)I
    .registers 3
    .param p1, "degrees"    # I

    .prologue
    .line 554
    div-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getMultipliedAlpha(II)I
    .registers 9
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 723
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private handleTouchInput(FFZZ)Z
    .registers 14
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "forceSelection"    # Z
    .param p4, "autoAdvance"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 989
    invoke-direct {p0, p1, p2}, getInnerCircleFromXY(FF)Z

    move-result v1

    .line 990
    .local v1, "isOnInnerCircle":Z
    invoke-direct {p0, p1, p2, v6}, getDegreesFromXY(FFZ)I

    move-result v0

    .line 991
    .local v0, "degrees":I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_e

    .line 1029
    :cond_d
    :goto_d
    return v6

    .line 999
    :cond_e
    iget-boolean v8, p0, mShowHours:Z

    if-eqz v8, :cond_4c

    .line 1000
    invoke-static {v0, v6}, snapOnly30s(II)I

    move-result v8

    rem-int/lit16 v3, v8, 0x168

    .line 1001
    .local v3, "snapDegrees":I
    iget-boolean v8, p0, mIsOnInnerCircle:Z

    if-ne v8, v1, :cond_22

    iget-object v8, p0, mSelectionDegrees:[I

    aget v8, v8, v6

    if-eq v8, v3, :cond_4a

    :cond_22
    move v5, v7

    .line 1003
    .local v5, "valueChanged":Z
    :goto_23
    iput-boolean v1, p0, mIsOnInnerCircle:Z

    .line 1004
    iget-object v8, p0, mSelectionDegrees:[I

    aput v3, v8, v6

    .line 1005
    const/4 v4, 0x0

    .line 1006
    .local v4, "type":I
    invoke-virtual {p0}, getCurrentHour()I

    move-result v2

    .line 1015
    .local v2, "newValue":I
    :goto_2e
    if-nez v5, :cond_34

    if-nez p3, :cond_34

    if-eqz p4, :cond_d

    .line 1017
    :cond_34
    iget-object v6, p0, mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v6, :cond_3d

    .line 1018
    iget-object v6, p0, mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v6, v4, v2, p4}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 1022
    :cond_3d
    if-nez v5, :cond_41

    if-eqz p3, :cond_48

    .line 1023
    :cond_41
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, performHapticFeedback(I)Z

    .line 1024
    invoke-virtual {p0}, invalidate()V

    :cond_48
    move v6, v7

    .line 1026
    goto :goto_d

    .end local v2    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_4a
    move v5, v6

    .line 1001
    goto :goto_23

    .line 1008
    .end local v3    # "snapDegrees":I
    :cond_4c
    invoke-static {v0}, snapPrefer30s(I)I

    move-result v8

    rem-int/lit16 v3, v8, 0x168

    .line 1009
    .restart local v3    # "snapDegrees":I
    iget-object v8, p0, mSelectionDegrees:[I

    aget v8, v8, v7

    if-eq v8, v3, :cond_63

    move v5, v7

    .line 1010
    .restart local v5    # "valueChanged":Z
    :goto_59
    iget-object v8, p0, mSelectionDegrees:[I

    aput v3, v8, v7

    .line 1011
    const/4 v4, 0x1

    .line 1012
    .restart local v4    # "type":I
    invoke-virtual {p0}, getCurrentMinute()I

    move-result v2

    .restart local v2    # "newValue":I
    goto :goto_2e

    .end local v2    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_63
    move v5, v6

    .line 1009
    goto :goto_59
.end method

.method private initData()V
    .registers 6

    .prologue
    const/16 v2, 0xff

    const/4 v3, 0x0

    .line 614
    iget-boolean v4, p0, mIs24HourMode:Z

    if-eqz v4, :cond_2d

    .line 615
    iget-object v4, p0, mOuterHours24Texts:[Ljava/lang/String;

    iput-object v4, p0, mOuterTextHours:[Ljava/lang/String;

    .line 616
    iget-object v4, p0, mInnerHours24Texts:[Ljava/lang/String;

    iput-object v4, p0, mInnerTextHours:[Ljava/lang/String;

    .line 622
    :goto_f
    iget-object v4, p0, mMinutesTexts:[Ljava/lang/String;

    iput-object v4, p0, mMinutesText:[Ljava/lang/String;

    .line 624
    iget-boolean v4, p0, mShowHours:Z

    if-eqz v4, :cond_36

    move v0, v2

    .line 625
    .local v0, "hoursAlpha":I
    :goto_18
    iget-object v4, p0, mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v4, v4, v3

    invoke-virtual {v4, v0}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 627
    iget-boolean v4, p0, mShowHours:Z

    if-eqz v4, :cond_38

    move v1, v3

    .line 628
    .local v1, "minutesAlpha":I
    :goto_24
    iget-object v2, p0, mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    .line 629
    return-void

    .line 618
    .end local v0    # "hoursAlpha":I
    .end local v1    # "minutesAlpha":I
    :cond_2d
    iget-object v4, p0, mHours12Texts:[Ljava/lang/String;

    iput-object v4, p0, mOuterTextHours:[Ljava/lang/String;

    .line 619
    iget-object v4, p0, mHours12Texts:[Ljava/lang/String;

    iput-object v4, p0, mInnerTextHours:[Ljava/lang/String;

    goto :goto_f

    :cond_36
    move v0, v3

    .line 624
    goto :goto_18

    .restart local v0    # "hoursAlpha":I
    :cond_38
    move v1, v2

    .line 627
    goto :goto_24
.end method

.method private initHoursAndMinutesText()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 605
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    const/16 v1, 0xc

    if-ge v0, v1, :cond_62

    .line 606
    iget-object v1, p0, mHours12Texts:[Ljava/lang/String;

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, HOURS_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 607
    iget-object v1, p0, mInnerHours24Texts:[Ljava/lang/String;

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, HOURS_NUMBERS_24:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 608
    iget-object v1, p0, mOuterHours24Texts:[Ljava/lang/String;

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, HOURS_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 609
    iget-object v1, p0, mMinutesTexts:[Ljava/lang/String;

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, MINUTES_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 611
    :cond_62
    return-void
.end method

.method private static preparePrefer30sMap()V
    .registers 5

    .prologue
    .line 217
    const/4 v3, 0x0

    .line 219
    .local v3, "snappedOutputDegrees":I
    const/4 v0, 0x1

    .line 223
    .local v0, "count":I
    const/16 v2, 0x8

    .line 225
    .local v2, "expectedCount":I
    const/4 v1, 0x0

    .local v1, "degrees":I
    :goto_5
    const/16 v4, 0x169

    if-ge v1, v4, :cond_26

    .line 227
    sget-object v4, SNAP_PREFER_30S_MAP:[I

    aput v3, v4, v1

    .line 230
    if-ne v0, v2, :cond_23

    .line 231
    add-int/lit8 v3, v3, 0x6

    .line 232
    const/16 v4, 0x168

    if-ne v3, v4, :cond_1a

    .line 233
    const/4 v2, 0x7

    .line 239
    :goto_16
    const/4 v0, 0x1

    .line 225
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 234
    :cond_1a
    rem-int/lit8 v4, v3, 0x1e

    if-nez v4, :cond_21

    .line 235
    const/16 v2, 0xe

    goto :goto_16

    .line 237
    :cond_21
    const/4 v2, 0x4

    goto :goto_16

    .line 241
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 244
    :cond_26
    return-void
.end method

.method private setCurrentHourInternal(IZZ)V
    .registers 10
    .param p1, "hour"    # I
    .param p2, "callback"    # Z
    .param p3, "autoAdvance"    # Z

    .prologue
    const/4 v3, 0x0

    .line 464
    rem-int/lit8 v4, p1, 0xc

    mul-int/lit8 v1, v4, 0x1e

    .line 465
    .local v1, "degrees":I
    iget-object v4, p0, mSelectionDegrees:[I

    aput v1, v4, v3

    .line 468
    if-eqz p1, :cond_11

    rem-int/lit8 v4, p1, 0x18

    const/16 v5, 0xc

    if-ge v4, v5, :cond_39

    :cond_11
    move v0, v3

    .line 469
    .local v0, "amOrPm":I
    :goto_12
    invoke-direct {p0, p1}, getInnerCircleForHour(I)Z

    move-result v2

    .line 470
    .local v2, "isOnInnerCircle":Z
    iget v4, p0, mAmOrPm:I

    if-ne v4, v0, :cond_1e

    iget-boolean v4, p0, mIsOnInnerCircle:Z

    if-eq v4, v2, :cond_2a

    .line 471
    :cond_1e
    iput v0, p0, mAmOrPm:I

    .line 472
    iput-boolean v2, p0, mIsOnInnerCircle:Z

    .line 474
    invoke-direct {p0}, initData()V

    .line 475
    iget-object v4, p0, mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 478
    :cond_2a
    invoke-virtual {p0}, invalidate()V

    .line 480
    if-eqz p2, :cond_38

    iget-object v4, p0, mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v4, :cond_38

    .line 481
    iget-object v4, p0, mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v4, v3, p1, p3}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 483
    :cond_38
    return-void

    .line 468
    .end local v0    # "amOrPm":I
    .end local v2    # "isOnInnerCircle":Z
    :cond_39
    const/4 v0, 0x1

    goto :goto_12
.end method

.method private setCurrentMinuteInternal(IZ)V
    .registers 6
    .param p1, "minute"    # I
    .param p2, "callback"    # Z

    .prologue
    const/4 v2, 0x1

    .line 539
    iget-object v0, p0, mSelectionDegrees:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    aput v1, v0, v2

    .line 541
    invoke-virtual {p0}, invalidate()V

    .line 543
    if-eqz p2, :cond_18

    iget-object v0, p0, mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v0, :cond_18

    .line 544
    iget-object v0, p0, mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 546
    :cond_18
    return-void
.end method

.method private static snapOnly30s(II)I
    .registers 7
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    .prologue
    .line 270
    const/16 v2, 0x1e

    .line 271
    .local v2, "stepSize":I
    div-int/lit8 v3, p0, 0x1e

    mul-int/lit8 v1, v3, 0x1e

    .line 272
    .local v1, "floor":I
    add-int/lit8 v0, v1, 0x1e

    .line 273
    .local v0, "ceiling":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_d

    .line 274
    move p0, v0

    .line 287
    :goto_c
    return p0

    .line 275
    :cond_d
    const/4 v3, -0x1

    if-ne p1, v3, :cond_16

    .line 276
    if-ne p0, v1, :cond_14

    .line 277
    add-int/lit8 v1, v1, -0x1e

    .line 279
    :cond_14
    move p0, v1

    goto :goto_c

    .line 281
    :cond_16
    sub-int v3, p0, v1

    sub-int v4, v0, p0

    if-ge v3, v4, :cond_1e

    .line 282
    move p0, v1

    goto :goto_c

    .line 284
    :cond_1e
    move p0, v0

    goto :goto_c
.end method

.method private static snapPrefer30s(I)I
    .registers 2
    .param p0, "degrees"    # I

    .prologue
    .line 254
    sget-object v0, SNAP_PREFER_30S_MAP:[I

    if-nez v0, :cond_6

    .line 255
    const/4 v0, -0x1

    .line 257
    :goto_5
    return v0

    :cond_6
    sget-object v0, SNAP_PREFER_30S_MAP:[I

    aget v0, v0, p0

    goto :goto_5
.end method

.method private startHoursToMinutesAnimation()V
    .registers 6

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 881
    iget-object v0, p0, mHoursToMinutesAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2a

    .line 882
    iget-object v0, p0, mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    iget-object v2, p0, mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v4, v3, v2}, getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    iget-object v0, p0, mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v3, v4, v2}, getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    :cond_2a
    iget-object v0, p0, mTransition:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3b

    iget-object v0, p0, mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 889
    iget-object v0, p0, mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 891
    :cond_3b
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, mTransition:Landroid/animation/AnimatorSet;

    .line 892
    iget-object v0, p0, mTransition:Landroid/animation/AnimatorSet;

    iget-object v1, p0, mHoursToMinutesAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 893
    iget-object v0, p0, mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 894
    return-void
.end method

.method private startMinutesToHoursAnimation()V
    .registers 6

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 897
    iget-object v0, p0, mMinuteToHoursAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2a

    .line 898
    iget-object v0, p0, mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v4, v3, v2}, getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    iget-object v0, p0, mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    iget-object v2, p0, mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v3, v4, v2}, getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    :cond_2a
    iget-object v0, p0, mTransition:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3b

    iget-object v0, p0, mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 905
    iget-object v0, p0, mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 907
    :cond_3b
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, mTransition:Landroid/animation/AnimatorSet;

    .line 908
    iget-object v0, p0, mTransition:Landroid/animation/AnimatorSet;

    iget-object v1, p0, mMinuteToHoursAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 909
    iget-object v0, p0, mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 910
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1035
    iget-object v0, p0, mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1036
    const/4 v0, 0x1

    .line 1038
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public getAmOrPm()I
    .registers 2

    .prologue
    .line 568
    iget v0, p0, mAmOrPm:I

    return v0
.end method

.method public getCurrentHour()I
    .registers 3

    .prologue
    .line 491
    iget-object v0, p0, mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-boolean v1, p0, mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method public getCurrentItemShowing()I
    .registers 2

    .prologue
    .line 439
    iget-boolean v0, p0, mShowHours:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getCurrentMinute()I
    .registers 3

    .prologue
    .line 550
    iget-object v0, p0, mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method public initialize(IIZ)V
    .registers 6
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 416
    iget-boolean v0, p0, mIs24HourMode:Z

    if-eq v0, p3, :cond_a

    .line 417
    iput-boolean p3, p0, mIs24HourMode:Z

    .line 418
    invoke-direct {p0}, initData()V

    .line 421
    :cond_a
    invoke-direct {p0, p1, v1, v1}, setCurrentHourInternal(IZZ)V

    .line 422
    invoke-direct {p0, p2, v1}, setCurrentMinuteInternal(IZ)V

    .line 423
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 653
    iget-boolean v1, p0, mInputEnabled:Z

    if-eqz v1, :cond_13

    const/high16 v0, 0x3f800000    # 1.0f

    .line 655
    .local v0, "alphaMod":F
    :goto_6
    invoke-direct {p0, p1}, drawCircleBackground(Landroid/graphics/Canvas;)V

    .line 656
    invoke-direct {p0, p1, v0}, drawHours(Landroid/graphics/Canvas;F)V

    .line 657
    invoke-direct {p0, p1, v0}, drawMinutes(Landroid/graphics/Canvas;F)V

    .line 658
    invoke-direct {p0, p1, v0}, drawCenter(Landroid/graphics/Canvas;F)V

    .line 659
    return-void

    .line 653
    .end local v0    # "alphaMod":F
    :cond_13
    iget v0, p0, mDisabledAlpha:F

    goto :goto_6
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 633
    if-nez p1, :cond_5

    .line 649
    :goto_4
    return-void

    .line 637
    :cond_5
    invoke-virtual {p0}, getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, mXCenter:I

    .line 638
    invoke-virtual {p0}, getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, mYCenter:I

    .line 639
    iget v0, p0, mXCenter:I

    iget v1, p0, mYCenter:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, mCircleRadius:I

    .line 641
    iget v0, p0, mCircleRadius:I

    iget-object v1, p0, mTextInset:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iget v1, p0, mSelectorRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, mMinDistForInnerNumber:I

    .line 642
    iget v0, p0, mCircleRadius:I

    iget-object v1, p0, mTextInset:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, mSelectorRadius:I

    add-int/2addr v0, v1

    iput v0, p0, mMaxDistForOuterNumber:I

    .line 643
    iget v0, p0, mCircleRadius:I

    iget-object v1, p0, mTextInset:[I

    aget v1, v1, v2

    iget-object v2, p0, mTextInset:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, mHalfwayDist:I

    .line 645
    invoke-direct {p0}, calculatePositionsHours()V

    .line 646
    invoke-direct {p0}, calculatePositionsMinutes()V

    .line 648
    iget-object v0, p0, mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    goto :goto_4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 956
    iget-boolean v3, p0, mInputEnabled:Z

    if-nez v3, :cond_6

    .line 984
    :cond_5
    :goto_5
    return v6

    .line 960
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 961
    .local v0, "action":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_11

    if-eq v0, v6, :cond_11

    if-nez v0, :cond_5

    .line 964
    :cond_11
    const/4 v2, 0x0

    .line 965
    .local v2, "forceSelection":Z
    const/4 v1, 0x0

    .line 967
    .local v1, "autoAdvance":Z
    if-nez v0, :cond_2a

    .line 969
    const/4 v3, 0x0

    iput-boolean v3, p0, mChangedDuringTouch:Z

    .line 980
    :cond_18
    :goto_18
    iget-boolean v3, p0, mChangedDuringTouch:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5, v2, v1}, handleTouchInput(FFZZ)Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, p0, mChangedDuringTouch:Z

    goto :goto_5

    .line 970
    :cond_2a
    if-ne v0, v6, :cond_18

    .line 971
    const/4 v1, 0x1

    .line 975
    iget-boolean v3, p0, mChangedDuringTouch:Z

    if-nez v3, :cond_18

    .line 976
    const/4 v2, 0x1

    goto :goto_18
.end method

.method public setAmOrPm(I)V
    .registers 3
    .param p1, "val"    # I

    .prologue
    .line 562
    rem-int/lit8 v0, p1, 0x2

    iput v0, p0, mAmOrPm:I

    .line 563
    invoke-virtual {p0}, invalidate()V

    .line 564
    iget-object v0, p0, mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 565
    return-void
.end method

.method public setCurrentHour(I)V
    .registers 4
    .param p1, "hour"    # I

    .prologue
    .line 452
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, setCurrentHourInternal(IZZ)V

    .line 453
    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .registers 6
    .param p1, "item"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 426
    packed-switch p1, :pswitch_data_24

    .line 434
    const-string v0, "RadialTimePickerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClockView does not support showing item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_1b
    return-void

    .line 428
    :pswitch_1c
    invoke-virtual {p0, p2}, showHours(Z)V

    goto :goto_1b

    .line 431
    :pswitch_20
    invoke-virtual {p0, p2}, showMinutes(Z)V

    goto :goto_1b

    .line 426
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method public setCurrentMinute(I)V
    .registers 3
    .param p1, "minute"    # I

    .prologue
    .line 535
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, setCurrentMinuteInternal(IZ)V

    .line 536
    return-void
.end method

.method public setInputEnabled(Z)V
    .registers 2
    .param p1, "inputEnabled"    # Z

    .prologue
    .line 1042
    iput-boolean p1, p0, mInputEnabled:Z

    .line 1043
    invoke-virtual {p0}, invalidate()V

    .line 1044
    return-void
.end method

.method public setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .prologue
    .line 443
    iput-object p1, p0, mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 444
    return-void
.end method

.method public showHours(Z)V
    .registers 3
    .param p1, "animate"    # Z

    .prologue
    .line 572
    iget-boolean v0, p0, mShowHours:Z

    if-eqz v0, :cond_5

    .line 585
    :goto_4
    return-void

    .line 576
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, mShowHours:Z

    .line 578
    if-eqz p1, :cond_d

    .line 579
    invoke-direct {p0}, startMinutesToHoursAnimation()V

    .line 582
    :cond_d
    invoke-direct {p0}, initData()V

    .line 583
    invoke-virtual {p0}, invalidate()V

    .line 584
    iget-object v0, p0, mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    goto :goto_4
.end method

.method public showMinutes(Z)V
    .registers 3
    .param p1, "animate"    # Z

    .prologue
    .line 588
    iget-boolean v0, p0, mShowHours:Z

    if-nez v0, :cond_5

    .line 601
    :goto_4
    return-void

    .line 592
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, mShowHours:Z

    .line 594
    if-eqz p1, :cond_d

    .line 595
    invoke-direct {p0}, startHoursToMinutesAnimation()V

    .line 598
    :cond_d
    invoke-direct {p0}, initData()V

    .line 599
    invoke-virtual {p0}, invalidate()V

    .line 600
    iget-object v0, p0, mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    goto :goto_4
.end method
