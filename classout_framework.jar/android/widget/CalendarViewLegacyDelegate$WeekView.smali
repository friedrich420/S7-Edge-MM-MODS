.class Landroid/widget/CalendarViewLegacyDelegate$WeekView;
.super Landroid/view/View;
.source "CalendarViewLegacyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewLegacyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekView"
.end annotation


# instance fields
.field private mDayNumbers:[Ljava/lang/String;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFirstDay:Ljava/util/Calendar;

.field private mFocusDay:[Z

.field private mHasFocusedDay:Z

.field private mHasSelectedDay:Z

.field private mHasUnfocusedDay:Z

.field private mHeight:I

.field private mLastWeekDayMonth:I

.field private final mMonthNumDrawPaint:Landroid/graphics/Paint;

.field private mMonthOfFirstWeekDay:I

.field private mNumCells:I

.field private mSelectedDay:I

.field private mSelectedLeft:I

.field private mSelectedRight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mWeek:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 1252
    iput-object p1, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 1253
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempRect:Landroid/graphics/Rect;

    .line 1202
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mDrawPaint:Landroid/graphics/Paint;

    .line 1204
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 1222
    iput v1, p0, mMonthOfFirstWeekDay:I

    .line 1225
    iput v1, p0, mLastWeekDayMonth:I

    .line 1229
    iput v1, p0, mWeek:I

    .line 1238
    const/4 v0, 0x0

    iput-boolean v0, p0, mHasSelectedDay:Z

    .line 1241
    iput v1, p0, mSelectedDay:I

    .line 1247
    iput v1, p0, mSelectedLeft:I

    .line 1250
    iput v1, p0, mSelectedRight:I

    .line 1256
    invoke-direct {p0}, initilaizePaints()V

    .line 1257
    return-void
.end method

.method static synthetic access$100(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .prologue
    .line 1198
    iget-boolean v0, p0, mHasSelectedDay:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .prologue
    .line 1198
    iget-boolean v0, p0, mHasFocusedDay:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .prologue
    .line 1198
    iget-boolean v0, p0, mHasUnfocusedDay:Z

    return v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 1460
    iget-boolean v2, p0, mHasSelectedDay:Z

    if-nez v2, :cond_6

    .line 1487
    :goto_5
    return-void

    .line 1463
    :cond_6
    iget-object v2, p0, mDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$2700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1465
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1466
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    iget v3, p0, mHeight:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1468
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v0

    .line 1470
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_60

    .line 1471
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 1472
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    iget v2, p0, mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1477
    :goto_33
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1479
    if-eqz v0, :cond_7d

    .line 1480
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    iget v2, p0, mSelectedRight:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1481
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget v1, p0, mWidth:I

    iget v3, p0, mWidth:I

    iget v4, p0, mNumCells:I

    div-int/2addr v3, v4

    sub-int/2addr v1, v3

    :goto_56
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 1486
    :goto_58
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 1474
    :cond_60
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v3

    if-eqz v3, :cond_6f

    iget v1, p0, mWidth:I

    iget v3, p0, mNumCells:I

    div-int/2addr v1, v3

    :cond_6f
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 1475
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    iget v2, p0, mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_33

    .line 1481
    :cond_7a
    iget v1, p0, mWidth:I

    goto :goto_56

    .line 1483
    :cond_7d
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    iget v2, p0, mSelectedRight:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1484
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    iget v2, p0, mWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_58
.end method

.method private drawBackgroundForSelected(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1496
    iget-boolean v0, p0, mHasSelectedDay:Z

    if-nez v0, :cond_5

    .line 1507
    :goto_4
    return-void

    .line 1499
    :cond_5
    iget-object v0, p0, mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1501
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1502
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    iget v1, p0, mHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1503
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    iget v1, p0, mSelectedLeft:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1504
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    iget v1, p0, mSelectedRight:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1506
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4
.end method

.method private drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1625
    iget-boolean v0, p0, mHasSelectedDay:Z

    if-nez v0, :cond_5

    .line 1640
    :goto_4
    return-void

    .line 1628
    :cond_5
    iget-object v0, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$3400(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, mSelectedLeft:I

    iget-object v2, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$3300(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    iget v3, p0, mSelectedLeft:I

    iget-object v4, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$3300(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1633
    iget-object v0, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$3400(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1634
    iget-object v0, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$3400(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, mSelectedRight:I

    iget-object v2, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$3300(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    iget v3, p0, mSelectedRight:I

    iget-object v4, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$3300(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1639
    iget-object v0, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$3400(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method private drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1515
    iget-object v7, p0, mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    .line 1516
    .local v4, "textHeight":F
    iget v7, p0, mHeight:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    sub-int v6, v7, v8

    .line 1517
    .local v6, "y":I
    iget v3, p0, mNumCells:I

    .line 1518
    .local v3, "nDays":I
    mul-int/lit8 v0, v3, 0x2

    .line 1520
    .local v0, "divisor":I
    iget-object v7, p0, mDrawPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1521
    iget-object v7, p0, mDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$2300(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1523
    const/4 v2, 0x0

    .line 1525
    .local v2, "i":I
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 1526
    :goto_36
    if-ge v2, v3, :cond_d4

    .line 1527
    iget-object v8, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, mFocusDay:[Z

    add-int/lit8 v9, v3, -0x1

    sub-int/2addr v9, v2

    aget-boolean v7, v7, v9

    if-eqz v7, :cond_c1

    iget-object v7, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2600(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    :goto_49
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1529
    iget-object v7, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v8, "sans-serif"

    invoke-static {v8, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1531
    iget-object v7, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2400(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v7

    if-eqz v7, :cond_a6

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->MOCHA:Z
    invoke-static {}, Landroid/widget/CalendarViewLegacyDelegate;->access$2500()Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 1532
    const/4 v1, -0x1

    .line 1533
    .local v1, "fixedDayIndex":I
    iget v7, p0, mSelectedDay:I

    if-lez v7, :cond_a6

    .line 1534
    iget v7, p0, mSelectedDay:I

    iget-object v8, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    sub-int/2addr v7, v8

    if-ltz v7, :cond_c8

    iget v7, p0, mSelectedDay:I

    iget-object v8, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x1

    .line 1535
    :goto_81
    iget-object v7, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v7

    if-nez v7, :cond_8d

    if-lez v1, :cond_8d

    .line 1536
    rsub-int/lit8 v1, v1, 0x7

    .line 1538
    :cond_8d
    if-ne v2, v1, :cond_a6

    .line 1540
    iget-object v7, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFocusedSingleDateColor:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$3000(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1541
    iget-object v7, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v8, "sans-serif"

    invoke-static {v8, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1546
    .end local v1    # "fixedDayIndex":I
    :cond_a6
    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, mWidth:I

    mul-int/2addr v7, v8

    div-int v5, v7, v0

    .line 1547
    .local v5, "x":I
    iget-object v7, p0, mDayNumbers:[Ljava/lang/String;

    add-int/lit8 v8, v3, -0x1

    sub-int/2addr v8, v2

    aget-object v7, v7, v8

    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1526
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_36

    .line 1527
    .end local v5    # "x":I
    :cond_c1
    iget-object v7, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2900(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    goto :goto_49

    .line 1534
    .restart local v1    # "fixedDayIndex":I
    :cond_c8
    iget v7, p0, mSelectedDay:I

    iget-object v8, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x8

    goto :goto_81

    .line 1549
    .end local v1    # "fixedDayIndex":I
    :cond_d4
    iget-object v7, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 1550
    iget-object v7, p0, mDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$3100(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1551
    iget v7, p0, mWidth:I

    iget v8, p0, mWidth:I

    div-int/2addr v8, v0

    sub-int v5, v7, v8

    .line 1552
    .restart local v5    # "x":I
    iget-object v7, p0, mDayNumbers:[Ljava/lang/String;

    aget-object v7, v7, v11

    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1585
    .end local v5    # "x":I
    :cond_f9
    return-void

    .line 1555
    :cond_fa
    iget-object v7, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v7

    if-eqz v7, :cond_11e

    .line 1556
    iget-object v7, p0, mDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$3100(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1557
    iget v7, p0, mWidth:I

    div-int v5, v7, v0

    .line 1558
    .restart local v5    # "x":I
    iget-object v7, p0, mDayNumbers:[Ljava/lang/String;

    aget-object v7, v7, v11

    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1559
    add-int/lit8 v2, v2, 0x1

    .line 1561
    .end local v5    # "x":I
    :cond_11e
    :goto_11e
    if-ge v2, v3, :cond_f9

    .line 1562
    iget-object v8, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, mFocusDay:[Z

    aget-boolean v7, v7, v2

    if-eqz v7, :cond_1a3

    iget-object v7, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2600(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    :goto_12e
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1564
    iget-object v7, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v8, "sans-serif"

    invoke-static {v8, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1566
    iget-object v7, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2400(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v7

    if-eqz v7, :cond_18b

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->MOCHA:Z
    invoke-static {}, Landroid/widget/CalendarViewLegacyDelegate;->access$2500()Z

    move-result v7

    if-eqz v7, :cond_18b

    .line 1567
    const/4 v1, -0x1

    .line 1568
    .restart local v1    # "fixedDayIndex":I
    iget v7, p0, mSelectedDay:I

    if-lez v7, :cond_18b

    .line 1569
    iget v7, p0, mSelectedDay:I

    iget-object v8, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    sub-int/2addr v7, v8

    if-ltz v7, :cond_1aa

    iget v7, p0, mSelectedDay:I

    iget-object v8, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x1

    .line 1570
    :goto_166
    iget-object v7, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v7

    if-nez v7, :cond_172

    if-lez v1, :cond_172

    .line 1571
    add-int/lit8 v1, v1, -0x1

    .line 1573
    :cond_172
    if-ne v2, v1, :cond_18b

    .line 1575
    iget-object v7, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFocusedSingleDateColor:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$3000(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1576
    iget-object v7, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v8, "sans-serif"

    invoke-static {v8, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1581
    .end local v1    # "fixedDayIndex":I
    :cond_18b
    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, mWidth:I

    mul-int/2addr v7, v8

    div-int v5, v7, v0

    .line 1582
    .restart local v5    # "x":I
    iget-object v7, p0, mDayNumbers:[Ljava/lang/String;

    aget-object v7, v7, v2

    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1561
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11e

    .line 1562
    .end local v5    # "x":I
    :cond_1a3
    iget-object v7, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->access$2900(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    goto :goto_12e

    .line 1569
    .restart local v1    # "fixedDayIndex":I
    :cond_1aa
    iget v7, p0, mSelectedDay:I

    iget-object v8, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x8

    goto :goto_166
.end method

.method private drawWeekSeparators(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 1594
    iget-object v0, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    .line 1595
    .local v6, "firstFullyVisiblePosition":I
    iget-object v0, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_1e

    .line 1596
    add-int/lit8 v6, v6, 0x1

    .line 1598
    :cond_1e
    iget v0, p0, mWeek:I

    if-ne v6, v0, :cond_2b

    .line 1600
    iget-object v0, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2400(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1617
    :goto_2a
    return-void

    .line 1605
    :cond_2b
    iget-object v0, p0, mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$3200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1606
    iget-object v0, p0, mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1609
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1610
    const/4 v1, 0x0

    .line 1611
    .local v1, "startX":F
    iget-object v0, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v0

    if-eqz v0, :cond_62

    iget v0, p0, mWidth:I

    iget v4, p0, mWidth:I

    iget v5, p0, mNumCells:I

    div-int/2addr v4, v5

    sub-int/2addr v0, v4

    int-to-float v3, v0

    .line 1616
    .local v3, "stopX":F
    :goto_5a
    iget-object v5, p0, mDrawPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2a

    .line 1611
    .end local v3    # "stopX":F
    :cond_62
    iget v0, p0, mWidth:I

    int-to-float v3, v0

    goto :goto_5a

    .line 1613
    .end local v1    # "startX":F
    :cond_66
    iget-object v0, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget v0, p0, mWidth:I

    iget v4, p0, mNumCells:I

    div-int/2addr v0, v4

    int-to-float v1, v0

    .line 1614
    .restart local v1    # "startX":F
    :goto_74
    iget v0, p0, mWidth:I

    int-to-float v3, v0

    .restart local v3    # "stopX":F
    goto :goto_5a

    .end local v1    # "startX":F
    .end local v3    # "stopX":F
    :cond_78
    move v1, v2

    .line 1613
    goto :goto_74
.end method

.method private initilaizePaints()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1350
    iget-object v0, p0, mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1351
    iget-object v0, p0, mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1352
    iget-object v0, p0, mDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1354
    iget-object v0, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1355
    iget-object v0, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1356
    iget-object v0, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1357
    iget-object v0, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1358
    iget-object v0, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2300(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1360
    iget-object v0, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2400(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v0

    if-eqz v0, :cond_5d

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->MOCHA:Z
    invoke-static {}, Landroid/widget/CalendarViewLegacyDelegate;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1361
    iget-object v0, p0, mDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sans-serif-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1362
    iget-object v0, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sans-serif-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1367
    :cond_5d
    iget-object v0, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2400(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1368
    iget-object v0, p0, mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2300(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1369
    iget-object v0, p0, mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2600(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1372
    :cond_7c
    return-void
.end method

.method private updateSelectionPositions()V
    .registers 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1652
    iget-boolean v2, p0, mHasSelectedDay:Z

    if-eqz v2, :cond_6a

    .line 1653
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v0

    .line 1654
    .local v0, "isLayoutRtl":Z
    iget v2, p0, mSelectedDay:I

    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1655
    .local v1, "selectedPosition":I
    if-gez v1, :cond_18

    .line 1656
    add-int/lit8 v1, v1, 0x7

    .line 1658
    :cond_18
    iget-object v2, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v2

    if-eqz v2, :cond_24

    if-nez v0, :cond_24

    .line 1659
    add-int/lit8 v1, v1, 0x1

    .line 1661
    :cond_24
    if-eqz v0, :cond_6b

    .line 1662
    iget-object v2, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    iget v3, p0, mWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, mNumCells:I

    div-int/2addr v2, v3

    iput v2, p0, mSelectedLeft:I

    .line 1667
    :goto_37
    iget v2, p0, mSelectedLeft:I

    iget v3, p0, mWidth:I

    iget v4, p0, mNumCells:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, mSelectedRight:I

    .line 1668
    iget v2, p0, mSelectedLeft:I

    if-nez v2, :cond_53

    .line 1669
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, mSelectedLeft:I

    .line 1671
    :cond_53
    iget v2, p0, mNumCells:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_6a

    .line 1672
    iget v2, p0, mSelectedRight:I

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, p0, mSelectedRight:I

    .line 1675
    .end local v0    # "isLayoutRtl":Z
    .end local v1    # "selectedPosition":I
    :cond_6a
    return-void

    .line 1665
    .restart local v0    # "isLayoutRtl":Z
    .restart local v1    # "selectedPosition":I
    :cond_6b
    iget v2, p0, mWidth:I

    mul-int/2addr v2, v1

    iget v3, p0, mNumCells:I

    div-int/2addr v2, v3

    iput v2, p0, mSelectedLeft:I

    goto :goto_37
.end method


# virtual methods
.method public getDayFromLocation(FLjava/util/Calendar;)Z
    .registers 11
    .param p1, "x"    # F
    .param p2, "outCalendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x0

    .line 1409
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v2

    .line 1414
    .local v2, "isLayoutRtl":Z
    if-eqz v2, :cond_2a

    .line 1415
    const/4 v3, 0x0

    .line 1416
    .local v3, "start":I
    iget-object v5, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v5

    if-eqz v5, :cond_27

    iget v5, p0, mWidth:I

    iget v6, p0, mWidth:I

    iget v7, p0, mNumCells:I

    div-int/2addr v6, v7

    sub-int v1, v5, v6

    .line 1422
    .local v1, "end":I
    :goto_19
    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_23

    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_3d

    .line 1423
    :cond_23
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    .line 1437
    :goto_26
    return v4

    .line 1416
    .end local v1    # "end":I
    :cond_27
    iget v1, p0, mWidth:I

    goto :goto_19

    .line 1418
    .end local v3    # "start":I
    :cond_2a
    iget-object v5, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v5

    if-eqz v5, :cond_3b

    iget v5, p0, mWidth:I

    iget v6, p0, mNumCells:I

    div-int v3, v5, v6

    .line 1419
    .restart local v3    # "start":I
    :goto_38
    iget v1, p0, mWidth:I

    .restart local v1    # "end":I
    goto :goto_19

    .end local v1    # "end":I
    .end local v3    # "start":I
    :cond_3b
    move v3, v4

    .line 1418
    goto :goto_38

    .line 1428
    .restart local v1    # "end":I
    .restart local v3    # "start":I
    :cond_3d
    int-to-float v4, v3

    sub-float v4, p1, v4

    iget-object v5, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I
    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-int v5, v1, v3

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 1430
    .local v0, "dayPosition":I
    if-eqz v2, :cond_59

    .line 1431
    iget-object v4, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int v0, v4, v0

    .line 1434
    :cond_59
    iget-object v4, p0, mFirstDay:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1435
    const/4 v4, 0x5

    invoke-virtual {p2, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 1437
    const/4 v4, 0x1

    goto :goto_26
.end method

.method public getFirstDay()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 1398
    iget-object v0, p0, mFirstDay:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonthOfFirstWeekDay()I
    .registers 2

    .prologue
    .line 1380
    iget v0, p0, mMonthOfFirstWeekDay:I

    return v0
.end method

.method public getMonthOfLastWeekDay()I
    .registers 2

    .prologue
    .line 1389
    iget v0, p0, mLastWeekDayMonth:I

    return v0
.end method

.method public init(III)V
    .registers 15
    .param p1, "weekNumber"    # I
    .param p2, "selectedWeekDay"    # I
    .param p3, "focusedMonth"    # I

    .prologue
    .line 1271
    iput p2, p0, mSelectedDay:I

    .line 1272
    iget v3, p0, mSelectedDay:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d4

    const/4 v3, 0x1

    :goto_8
    iput-boolean v3, p0, mHasSelectedDay:Z

    .line 1273
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_1a
    iput v3, p0, mNumCells:I

    .line 1274
    iput p1, p0, mWeek:I

    .line 1275
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$1600(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1277
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x3

    iget v5, p0, mWeek:I

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1278
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1281
    iget v3, p0, mNumCells:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, mDayNumbers:[Ljava/lang/String;

    .line 1282
    iget v3, p0, mNumCells:I

    new-array v3, v3, [Z

    iput-object v3, p0, mFocusDay:[Z

    .line 1285
    const/4 v1, 0x0

    .line 1286
    .local v1, "i":I
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 1287
    iget-object v3, p0, mDayNumbers:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1289
    add-int/lit8 v1, v1, 0x1

    .line 1293
    :cond_87
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    iget-object v4, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v0, v3, v4

    .line 1295
    .local v0, "diff":I
    if-gtz v0, :cond_1df

    .line 1296
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 1301
    :goto_a6
    const-string v3, "Asia/Shanghai"

    iget-object v4, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e8

    const-string v3, "America/Sao_Paulo"

    iget-object v4, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e8

    const-string v3, "America/Santiago"

    iget-object v4, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15b

    .line 1304
    :cond_e8
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_120

    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_120

    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_120

    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_15b

    .line 1308
    :cond_120
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1310
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1311
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1312
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1313
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1318
    :cond_15b
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    iput-object v3, p0, mFirstDay:Ljava/util/Calendar;

    .line 1319
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, mMonthOfFirstWeekDay:I

    .line 1321
    const/4 v3, 0x1

    iput-boolean v3, p0, mHasUnfocusedDay:Z

    .line 1322
    :goto_179
    iget v3, p0, mNumCells:I

    if-ge v1, v3, :cond_215

    .line 1323
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p3, :cond_1ed

    const/4 v2, 0x1

    .line 1324
    .local v2, "isFocusedDay":Z
    :goto_18b
    iget-object v3, p0, mFocusDay:[Z

    aput-boolean v2, v3, v1

    .line 1325
    iget-boolean v3, p0, mHasFocusedDay:Z

    or-int/2addr v3, v2

    iput-boolean v3, p0, mHasFocusedDay:Z

    .line 1326
    iget-boolean v4, p0, mHasUnfocusedDay:Z

    if-nez v2, :cond_1ef

    const/4 v3, 0x1

    :goto_199
    and-int/2addr v3, v4

    iput-boolean v3, p0, mHasUnfocusedDay:Z

    .line 1328
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$1600(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c0

    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$1500(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f1

    .line 1329
    :cond_1c0
    iget-object v3, p0, mDayNumbers:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v1

    .line 1334
    :goto_1c6
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1322
    add-int/lit8 v1, v1, 0x1

    goto :goto_179

    .line 1272
    .end local v0    # "diff":I
    .end local v1    # "i":I
    .end local v2    # "isFocusedDay":Z
    :cond_1d4
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 1273
    :cond_1d7
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    goto/16 :goto_1a

    .line 1298
    .restart local v0    # "diff":I
    .restart local v1    # "i":I
    :cond_1df
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    add-int/lit8 v5, v0, -0x7

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_a6

    .line 1323
    :cond_1ed
    const/4 v2, 0x0

    goto :goto_18b

    .line 1326
    .restart local v2    # "isFocusedDay":Z
    :cond_1ef
    const/4 v3, 0x0

    goto :goto_199

    .line 1331
    :cond_1f1
    iget-object v3, p0, mDayNumbers:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_1c6

    .line 1338
    .end local v2    # "isFocusedDay":Z
    :cond_215
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22e

    .line 1339
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1341
    :cond_22e
    iget-object v3, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, mLastWeekDayMonth:I

    .line 1343
    invoke-direct {p0}, updateSelectionPositions()V

    .line 1344
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1442
    iget-object v0, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2400(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v0

    if-eqz v0, :cond_18

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->MOCHA:Z
    invoke-static {}, Landroid/widget/CalendarViewLegacyDelegate;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1443
    invoke-direct {p0, p1}, drawBackgroundForSelected(Landroid/graphics/Canvas;)V

    .line 1444
    invoke-direct {p0, p1}, drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V

    .line 1445
    invoke-direct {p0, p1}, drawWeekSeparators(Landroid/graphics/Canvas;)V

    .line 1452
    :goto_17
    return-void

    .line 1447
    :cond_18
    invoke-direct {p0, p1}, drawBackground(Landroid/graphics/Canvas;)V

    .line 1448
    invoke-direct {p0, p1}, drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V

    .line 1449
    invoke-direct {p0, p1}, drawWeekSeparators(Landroid/graphics/Canvas;)V

    .line 1450
    invoke-direct {p0, p1}, drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V

    goto :goto_17
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1679
    iget-object v0, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$3500(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, mHeight:I

    .line 1681
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, mHeight:I

    invoke-virtual {p0, v0, v1}, setMeasuredDimension(II)V

    .line 1682
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1644
    iput p1, p0, mWidth:I

    .line 1645
    invoke-direct {p0}, updateSelectionPositions()V

    .line 1646
    return-void
.end method
