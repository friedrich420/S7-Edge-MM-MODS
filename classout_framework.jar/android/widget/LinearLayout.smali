.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 202
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    iput-boolean v4, p0, mBaselineAligned:Z

    .line 114
    iput v5, p0, mBaselineAlignedChildIndex:I

    .line 122
    iput v6, p0, mBaselineChildTop:I

    .line 128
    const v3, 0x800033

    iput v3, p0, mGravity:I

    .line 187
    iput v5, p0, mLayoutDirection:I

    .line 204
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 207
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 208
    .local v2, "index":I
    if-ltz v2, :cond_22

    .line 209
    invoke-virtual {p0, v2}, setOrientation(I)V

    .line 212
    :cond_22
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 213
    if-ltz v2, :cond_2b

    .line 214
    invoke-virtual {p0, v2}, setGravity(I)V

    .line 217
    :cond_2b
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 218
    .local v1, "baselineAligned":Z
    if-nez v1, :cond_35

    .line 219
    invoke-virtual {p0, v1}, setBaselineAligned(Z)V

    .line 222
    :cond_35
    const/4 v3, 0x4

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, mWeightSum:F

    .line 224
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, mBaselineAlignedChildIndex:I

    .line 227
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, mUseLargestChild:Z

    .line 229
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, mShowDividers:I

    .line 231
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, mDividerPadding:I

    .line 233
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    return-void
.end method

.method private allViewsAreGoneBefore(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .prologue
    .line 660
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_17

    .line 661
    invoke-virtual {p0, v1}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 662
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_14

    .line 663
    const/4 v2, 0x0

    .line 666
    .end local v0    # "child":Landroid/view/View;
    :goto_13
    return v2

    .line 660
    .restart local v0    # "child":Landroid/view/View;
    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 666
    .end local v0    # "child":Landroid/view/View;
    :cond_17
    const/4 v2, 0x1

    goto :goto_13
.end method

.method private forceUniformHeight(II)V
    .registers 12
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 1404
    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1406
    .local v4, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c
    if-ge v6, p1, :cond_38

    .line 1407
    invoke-virtual {p0, v6}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1408
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_35

    .line 1409
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1411
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_35

    .line 1414
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1415
    .local v8, "oldWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 1418
    invoke-virtual/range {v0 .. v5}, measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1419
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1406
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldWidth":I
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 1423
    .end local v1    # "child":Landroid/view/View;
    :cond_38
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 12
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 979
    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 981
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c
    if-ge v6, p1, :cond_38

    .line 982
    invoke-virtual {p0, v6}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 983
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_35

    .line 984
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 986
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_35

    .line 989
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 990
    .local v8, "oldHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 993
    invoke-virtual/range {v0 .. v5}, measureChildWithMargins(Landroid/view/View;IIII)V

    .line 994
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 981
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldHeight":I
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 998
    .end local v1    # "child":Landroid/view/View;
    :cond_38
    return-void
.end method

.method private getLastNonGoneChild()Landroid/view/View;
    .registers 5

    .prologue
    .line 378
    invoke-virtual {p0}, getVirtualChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_1a

    .line 379
    invoke-virtual {p0, v1}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 380
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_17

    .line 384
    .end local v0    # "child":Landroid/view/View;
    :goto_16
    return-object v0

    .line 378
    .restart local v0    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 384
    .end local v0    # "child":Landroid/view/View;
    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1742
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1743
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1845
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 388
    invoke-virtual {p0}, getVirtualChildCount()I

    move-result v1

    .line 389
    .local v1, "count":I
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v3

    .line 390
    .local v3, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_41

    .line 391
    invoke-virtual {p0, v2}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 393
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_32

    .line 394
    invoke-virtual {p0, v2}, hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 395
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 397
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_35

    .line 398
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .line 402
    .local v5, "position":I
    :goto_2f
    invoke-virtual {p0, p1, v5}, drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 390
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 400
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_35
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2f

    .line 407
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_41
    invoke-virtual {p0, v1}, hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 408
    invoke-direct {p0}, getLastNonGoneChild()Landroid/view/View;

    move-result-object v0

    .line 410
    .restart local v0    # "child":Landroid/view/View;
    if-nez v0, :cond_65

    .line 411
    if-eqz v3, :cond_57

    .line 412
    invoke-virtual {p0}, getPaddingLeft()I

    move-result v5

    .line 424
    .restart local v5    # "position":I
    :goto_53
    invoke-virtual {p0, p1, v5}, drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 426
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_56
    return-void

    .line 414
    .restart local v0    # "child":Landroid/view/View;
    :cond_57
    invoke-virtual {p0}, getWidth()I

    move-result v6

    invoke-virtual {p0}, getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_53

    .line 417
    .end local v5    # "position":I
    :cond_65
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 418
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_79

    .line 419
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_53

    .line 421
    .end local v5    # "position":I
    :cond_79
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_53
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 347
    invoke-virtual {p0}, getVirtualChildCount()I

    move-result v2

    .line 348
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v2, :cond_32

    .line 349
    invoke-virtual {p0, v3}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 351
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2f

    .line 352
    invoke-virtual {p0, v3}, hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 353
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 354
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, mDividerHeight:I

    sub-int v5, v6, v7

    .line 355
    .local v5, "top":I
    invoke-virtual {p0, p1, v5}, drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 348
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "top":I
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 360
    .end local v1    # "child":Landroid/view/View;
    :cond_32
    invoke-virtual {p0, v2}, hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 361
    invoke-direct {p0}, getLastNonGoneChild()Landroid/view/View;

    move-result-object v1

    .line 362
    .restart local v1    # "child":Landroid/view/View;
    const/4 v0, 0x0

    .line 363
    .local v0, "bottom":I
    if-nez v1, :cond_50

    .line 364
    invoke-virtual {p0}, getHeight()I

    move-result v6

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, mDividerHeight:I

    sub-int v0, v6, v7

    .line 369
    :goto_4c
    invoke-virtual {p0, p1, v0}, drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 371
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_4f
    return-void

    .line 366
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    :cond_50
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 367
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    goto :goto_4c
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .prologue
    .line 429
    iget-object v0, p0, mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v1

    iget v2, p0, mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, getWidth()I

    move-result v2

    invoke-virtual {p0}, getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 431
    iget-object v0, p0, mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 432
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .prologue
    .line 435
    iget-object v0, p0, mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getPaddingTop()I

    move-result v1

    iget v2, p0, mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, getHeight()I

    move-result v3

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 437
    iget-object v0, p0, mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 438
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 1856
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1857
    const-string v0, "layout:baselineAligned"

    iget-boolean v1, p0, mBaselineAligned:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1858
    const-string v0, "layout:baselineAlignedChildIndex"

    iget v1, p0, mBaselineAlignedChildIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1859
    const-string/jumbo v0, "measurement:baselineChildTop"

    iget v1, p0, mBaselineChildTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1860
    const-string/jumbo v0, "measurement:orientation"

    iget v1, p0, mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1861
    const-string/jumbo v0, "measurement:gravity"

    iget v1, p0, mGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1862
    const-string/jumbo v0, "measurement:totalLength"

    iget v1, p0, mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1863
    const-string v0, "layout:totalLength"

    iget v1, p0, mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1864
    const-string v0, "layout:useLargestChild"

    iget-boolean v1, p0, mUseLargestChild:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1865
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 62
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x2

    .line 1828
    iget v0, p0, mOrientation:I

    if-nez v0, :cond_b

    .line 1829
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1833
    :goto_a
    return-object v0

    .line 1830
    :cond_b
    iget v0, p0, mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 1831
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_a

    .line 1833
    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1815
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1838
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1850
    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .registers 9

    .prologue
    const/4 v5, -0x1

    .line 497
    iget v6, p0, mBaselineAlignedChildIndex:I

    if-gez v6, :cond_a

    .line 498
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    .line 545
    :cond_9
    :goto_9
    return v5

    .line 501
    :cond_a
    invoke-virtual {p0}, getChildCount()I

    move-result v6

    iget v7, p0, mBaselineAlignedChildIndex:I

    if-gt v6, v7, :cond_1a

    .line 502
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 506
    :cond_1a
    iget v6, p0, mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 507
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 509
    .local v1, "childBaseline":I
    if-ne v1, v5, :cond_32

    .line 510
    iget v6, p0, mBaselineAlignedChildIndex:I

    if-eqz v6, :cond_9

    .line 516
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 526
    :cond_32
    iget v2, p0, mBaselineChildTop:I

    .line 528
    .local v2, "childTop":I
    iget v5, p0, mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_44

    .line 529
    iget v5, p0, mGravity:I

    and-int/lit8 v4, v5, 0x70

    .line 530
    .local v4, "majorGravity":I
    const/16 v5, 0x30

    if-eq v4, v5, :cond_44

    .line 531
    sparse-switch v4, :sswitch_data_6e

    .line 544
    .end local v4    # "majorGravity":I
    :cond_44
    :goto_44
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 545
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    goto :goto_9

    .line 533
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "majorGravity":I
    :sswitch_4f
    iget v5, p0, mBottom:I

    iget v6, p0, mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, mTotalLength:I

    sub-int v2, v5, v6

    .line 534
    goto :goto_44

    .line 537
    :sswitch_5c
    iget v5, p0, mBottom:I

    iget v6, p0, mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, mTotalLength:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_44

    .line 531
    :sswitch_data_6e
    .sparse-switch
        0x10 -> :sswitch_5c
        0x50 -> :sswitch_4f
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    .prologue
    .line 554
    iget v0, p0, mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 1434
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .registers 2

    .prologue
    .line 321
    iget v0, p0, mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2

    .prologue
    .line 330
    iget v0, p0, mDividerWidth:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1476
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1488
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 1766
    iget v0, p0, mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 582
    invoke-virtual {p0, p1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .registers 2

    .prologue
    .line 595
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    .prologue
    .line 606
    iget v0, p0, mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 643
    invoke-virtual {p0}, getVirtualChildCount()I

    move-result v3

    if-ne p1, v3, :cond_11

    .line 645
    iget v3, p0, mShowDividers:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_f

    .line 652
    :cond_e
    :goto_e
    return v1

    :cond_f
    move v1, v2

    .line 645
    goto :goto_e

    .line 647
    :cond_11
    invoke-direct {p0, p1}, allViewsAreGoneBefore(I)Z

    move-result v0

    .line 648
    .local v0, "allViewsAreGoneBefore":Z
    if-eqz v0, :cond_1f

    .line 650
    iget v3, p0, mShowDividers:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_e

    move v1, v2

    goto :goto_e

    .line 652
    :cond_1f
    iget v3, p0, mShowDividers:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_e

    move v1, v2

    goto :goto_e
.end method

.method public isBaselineAligned()Z
    .registers 2

    .prologue
    .line 447
    iget-boolean v0, p0, mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    .prologue
    .line 475
    iget-boolean v0, p0, mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .registers 35
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1618
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v20

    .line 1619
    .local v20, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget v0, v0, mPaddingTop:I

    move/from16 v27, v0

    .line 1625
    .local v27, "paddingTop":I
    sub-int v18, p4, p2

    .line 1626
    .local v18, "height":I
    move-object/from16 v0, p0

    iget v2, v0, mPaddingBottom:I

    sub-int v10, v18, v2

    .line 1629
    .local v10, "childBottom":I
    sub-int v2, v18, v27

    move-object/from16 v0, p0

    iget v4, v0, mPaddingBottom:I

    sub-int v13, v2, v4

    .line 1631
    .local v13, "childSpace":I
    invoke-virtual/range {p0 .. p0}, getVirtualChildCount()I

    move-result v14

    .line 1633
    .local v14, "count":I
    move-object/from16 v0, p0

    iget v2, v0, mGravity:I

    const v4, 0x800007

    and-int v23, v2, v4

    .line 1634
    .local v23, "majorGravity":I
    move-object/from16 v0, p0

    iget v2, v0, mGravity:I

    and-int/lit8 v26, v2, 0x70

    .line 1636
    .local v26, "minorGravity":I
    move-object/from16 v0, p0

    iget-boolean v8, v0, mBaselineAligned:Z

    .line 1638
    .local v8, "baselineAligned":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mMaxAscent:[I

    move-object/from16 v24, v0

    .line 1639
    .local v24, "maxAscent":[I
    move-object/from16 v0, p0

    iget-object v0, v0, mMaxDescent:[I

    move-object/from16 v25, v0

    .line 1641
    .local v25, "maxDescent":[I
    invoke-virtual/range {p0 .. p0}, getLayoutDirection()I

    move-result v21

    .line 1642
    .local v21, "layoutDirection":I
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    sparse-switch v2, :sswitch_data_13c

    .line 1655
    move-object/from16 v0, p0

    iget v12, v0, mPaddingLeft:I

    .line 1659
    .local v12, "childLeft":I
    :goto_50
    const/16 v28, 0x0

    .line 1660
    .local v28, "start":I
    const/16 v16, 0x1

    .line 1662
    .local v16, "dir":I
    if-eqz v20, :cond_5a

    .line 1663
    add-int/lit8 v28, v14, -0x1

    .line 1664
    const/16 v16, -0x1

    .line 1667
    :cond_5a
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_5c
    move/from16 v0, v19

    if-ge v0, v14, :cond_13b

    .line 1668
    mul-int v2, v16, v19

    add-int v11, v28, v2

    .line 1669
    .local v11, "childIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1671
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_98

    .line 1672
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, measureNullChild(I)I

    move-result v2

    add-int/2addr v12, v2

    .line 1667
    :cond_73
    :goto_73
    add-int/lit8 v19, v19, 0x1

    goto :goto_5c

    .line 1645
    .end local v3    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v12    # "childLeft":I
    .end local v16    # "dir":I
    .end local v19    # "i":I
    .end local v28    # "start":I
    :sswitch_76
    move-object/from16 v0, p0

    iget v2, v0, mPaddingLeft:I

    add-int v2, v2, p3

    sub-int v2, v2, p1

    move-object/from16 v0, p0

    iget v4, v0, mTotalLength:I

    sub-int v12, v2, v4

    .line 1646
    .restart local v12    # "childLeft":I
    goto :goto_50

    .line 1650
    .end local v12    # "childLeft":I
    :sswitch_85
    move-object/from16 v0, p0

    iget v2, v0, mPaddingLeft:I

    sub-int v4, p3, p1

    move-object/from16 v0, p0

    iget v0, v0, mTotalLength:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    div-int/lit8 v4, v4, 0x2

    add-int v12, v2, v4

    .line 1651
    .restart local v12    # "childLeft":I
    goto :goto_50

    .line 1673
    .restart local v3    # "child":Landroid/view/View;
    .restart local v11    # "childIndex":I
    .restart local v16    # "dir":I
    .restart local v19    # "i":I
    .restart local v28    # "start":I
    :cond_98
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_73

    .line 1674
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1675
    .local v6, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1676
    .local v7, "childHeight":I
    const/4 v9, -0x1

    .line 1678
    .local v9, "childBaseline":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout$LayoutParams;

    .line 1681
    .local v22, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v8, :cond_bc

    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_bc

    .line 1682
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v9

    .line 1685
    :cond_bc
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v17, v0

    .line 1686
    .local v17, "gravity":I
    if-gez v17, :cond_c6

    .line 1687
    move/from16 v17, v26

    .line 1690
    :cond_c6
    and-int/lit8 v2, v17, 0x70

    sparse-switch v2, :sswitch_data_146

    .line 1722
    move/from16 v5, v27

    .line 1726
    .local v5, "childTop":I
    :cond_cd
    :goto_cd
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 1727
    move-object/from16 v0, p0

    iget v2, v0, mDividerWidth:I

    add-int/2addr v12, v2

    .line 1730
    :cond_da
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v2

    .line 1731
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v4, v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, setChildFrame(Landroid/view/View;IIII)V

    .line 1733
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v12, v2

    .line 1736
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int v19, v19, v2

    goto/16 :goto_73

    .line 1692
    .end local v5    # "childTop":I
    :sswitch_103
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v5, v27, v2

    .line 1693
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_cd

    .line 1694
    const/4 v2, 0x1

    aget v2, v24, v2

    sub-int/2addr v2, v9

    add-int/2addr v5, v2

    goto :goto_cd

    .line 1710
    .end local v5    # "childTop":I
    :sswitch_112
    sub-int v2, v13, v7

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v27

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1712
    .restart local v5    # "childTop":I
    goto :goto_cd

    .line 1715
    .end local v5    # "childTop":I
    :sswitch_124
    sub-int v2, v10, v7

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1716
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_cd

    .line 1717
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v15, v2, v9

    .line 1718
    .local v15, "descent":I
    const/4 v2, 0x2

    aget v2, v25, v2

    sub-int/2addr v2, v15

    sub-int/2addr v5, v2

    .line 1719
    goto :goto_cd

    .line 1739
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childTop":I
    .end local v6    # "childWidth":I
    .end local v7    # "childHeight":I
    .end local v9    # "childBaseline":I
    .end local v11    # "childIndex":I
    .end local v15    # "descent":I
    .end local v17    # "gravity":I
    .end local v22    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_13b
    return-void

    .line 1642
    :sswitch_data_13c
    .sparse-switch
        0x1 -> :sswitch_85
        0x5 -> :sswitch_76
    .end sparse-switch

    .line 1690
    :sswitch_data_146
    .sparse-switch
        0x10 -> :sswitch_112
        0x30 -> :sswitch_103
        0x50 -> :sswitch_124
    .end sparse-switch
.end method

.method layoutVertical(IIII)V
    .registers 26
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1513
    move-object/from16 v0, p0

    iget v0, v0, mPaddingLeft:I

    move/from16 v18, v0

    .line 1519
    .local v18, "paddingLeft":I
    sub-int v19, p3, p1

    .line 1520
    .local v19, "width":I
    move-object/from16 v0, p0

    iget v1, v0, mPaddingRight:I

    sub-int v8, v19, v1

    .line 1523
    .local v8, "childRight":I
    sub-int v1, v19, v18

    move-object/from16 v0, p0

    iget v4, v0, mPaddingRight:I

    sub-int v9, v1, v4

    .line 1525
    .local v9, "childSpace":I
    invoke-virtual/range {p0 .. p0}, getVirtualChildCount()I

    move-result v11

    .line 1527
    .local v11, "count":I
    move-object/from16 v0, p0

    iget v1, v0, mGravity:I

    and-int/lit8 v16, v1, 0x70

    .line 1528
    .local v16, "majorGravity":I
    move-object/from16 v0, p0

    iget v1, v0, mGravity:I

    const v4, 0x800007

    and-int v17, v1, v4

    .line 1530
    .local v17, "minorGravity":I
    sparse-switch v16, :sswitch_data_dc

    .line 1543
    move-object/from16 v0, p0

    iget v10, v0, mPaddingTop:I

    .line 1547
    .local v10, "childTop":I
    :goto_30
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_31
    if-ge v13, v11, :cond_da

    .line 1548
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1549
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_67

    .line 1550
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, measureNullChild(I)I

    move-result v1

    add-int/2addr v10, v1

    .line 1547
    :cond_42
    :goto_42
    add-int/lit8 v13, v13, 0x1

    goto :goto_31

    .line 1533
    .end local v2    # "child":Landroid/view/View;
    .end local v10    # "childTop":I
    .end local v13    # "i":I
    :sswitch_45
    move-object/from16 v0, p0

    iget v1, v0, mPaddingTop:I

    add-int v1, v1, p4

    sub-int v1, v1, p2

    move-object/from16 v0, p0

    iget v4, v0, mTotalLength:I

    sub-int v10, v1, v4

    .line 1534
    .restart local v10    # "childTop":I
    goto :goto_30

    .line 1538
    .end local v10    # "childTop":I
    :sswitch_54
    move-object/from16 v0, p0

    iget v1, v0, mPaddingTop:I

    sub-int v4, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, mTotalLength:I

    move/from16 v20, v0

    sub-int v4, v4, v20

    div-int/lit8 v4, v4, 0x2

    add-int v10, v1, v4

    .line 1539
    .restart local v10    # "childTop":I
    goto :goto_30

    .line 1551
    .restart local v2    # "child":Landroid/view/View;
    .restart local v13    # "i":I
    :cond_67
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_42

    .line 1552
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1553
    .local v5, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1555
    .local v6, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 1558
    .local v15, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v12, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1559
    .local v12, "gravity":I
    if-gez v12, :cond_83

    .line 1560
    move/from16 v12, v17

    .line 1562
    :cond_83
    invoke-virtual/range {p0 .. p0}, getLayoutDirection()I

    move-result v14

    .line 1563
    .local v14, "layoutDirection":I
    invoke-static {v12, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    .line 1564
    .local v7, "absoluteGravity":I
    and-int/lit8 v1, v7, 0x7

    sparse-switch v1, :sswitch_data_e6

    .line 1576
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v3, v18, v1

    .line 1580
    .local v3, "childLeft":I
    :goto_94
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 1581
    move-object/from16 v0, p0

    iget v1, v0, mDividerHeight:I

    add-int/2addr v10, v1

    .line 1584
    :cond_a1
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v1

    .line 1585
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v4, v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, setChildFrame(Landroid/view/View;IIII)V

    .line 1587
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v10, v1

    .line 1589
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v13, v1

    goto/16 :goto_42

    .line 1566
    .end local v3    # "childLeft":I
    :sswitch_c5
    sub-int v1, v9, v5

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v18

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    .line 1568
    .restart local v3    # "childLeft":I
    goto :goto_94

    .line 1571
    .end local v3    # "childLeft":I
    :sswitch_d3
    sub-int v1, v8, v5

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    .line 1572
    .restart local v3    # "childLeft":I
    goto :goto_94

    .line 1592
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v12    # "gravity":I
    .end local v14    # "layoutDirection":I
    .end local v15    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_da
    return-void

    .line 1530
    nop

    :sswitch_data_dc
    .sparse-switch
        0x10 -> :sswitch_54
        0x50 -> :sswitch_45
    .end sparse-switch

    .line 1564
    :sswitch_data_e6
    .sparse-switch
        0x1 -> :sswitch_c5
        0x5 -> :sswitch_d3
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    .line 1464
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1466
    return-void
.end method

.method measureHorizontal(II)V
    .registers 51
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1012
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 1013
    const/16 v36, 0x0

    .line 1014
    .local v36, "maxHeight":I
    const/16 v18, 0x0

    .line 1015
    .local v18, "childState":I
    const/4 v11, 0x0

    .line 1016
    .local v11, "alternativeMaxHeight":I
    const/16 v44, 0x0

    .line 1017
    .local v44, "weightedMaxHeight":I
    const/4 v10, 0x1

    .line 1018
    .local v10, "allFillParent":Z
    const/16 v41, 0x0

    .line 1020
    .local v41, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, getVirtualChildCount()I

    move-result v20

    .line 1022
    .local v20, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v45

    .line 1023
    .local v45, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v26

    .line 1025
    .local v26, "heightMode":I
    const/16 v32, 0x0

    .line 1026
    .local v32, "matchHeight":Z
    const/16 v39, 0x0

    .line 1028
    .local v39, "skippedMeasure":Z
    move-object/from16 v0, p0

    iget-object v3, v0, mMaxAscent:[I

    if-eqz v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, mMaxDescent:[I

    if-nez v3, :cond_39

    .line 1029
    :cond_2b
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, mMaxAscent:[I

    .line 1030
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, mMaxDescent:[I

    .line 1033
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, mMaxAscent:[I

    move-object/from16 v34, v0

    .line 1034
    .local v34, "maxAscent":[I
    move-object/from16 v0, p0

    iget-object v0, v0, mMaxDescent:[I

    move-object/from16 v35, v0

    .line 1036
    .local v35, "maxDescent":[I
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v34, v8

    aput v9, v34, v7

    aput v9, v34, v6

    aput v9, v34, v3

    .line 1037
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v35, v8

    aput v9, v35, v7

    aput v9, v35, v6

    aput v9, v35, v3

    .line 1039
    move-object/from16 v0, p0

    iget-boolean v13, v0, mBaselineAligned:Z

    .line 1040
    .local v13, "baselineAligned":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, mUseLargestChild:Z

    move/from16 v42, v0

    .line 1042
    .local v42, "useLargestChild":Z
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v45

    if-ne v0, v3, :cond_92

    const/16 v28, 0x1

    .line 1044
    .local v28, "isExactly":Z
    :goto_71
    const/high16 v29, -0x80000000

    .line 1047
    .local v29, "largestChildWidth":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_74
    move/from16 v0, v20

    if-ge v5, v0, :cond_257

    .line 1048
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1050
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_95

    .line 1051
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 1047
    :goto_8f
    add-int/lit8 v5, v5, 0x1

    goto :goto_74

    .line 1042
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "i":I
    .end local v28    # "isExactly":Z
    .end local v29    # "largestChildWidth":I
    :cond_92
    const/16 v28, 0x0

    goto :goto_71

    .line 1055
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "i":I
    .restart local v28    # "isExactly":Z
    .restart local v29    # "largestChildWidth":I
    :cond_95
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_a5

    .line 1056
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 1057
    goto :goto_8f

    .line 1060
    :cond_a5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 1061
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 1064
    :cond_ba
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1067
    .local v30, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v41, v41, v3

    .line 1069
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v45

    if-ne v0, v3, :cond_1b3

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_1b3

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1b3

    .line 1073
    if-eqz v28, :cond_192

    .line 1074
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v30

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 1086
    :goto_ef
    if-eqz v13, :cond_1af

    .line 1087
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v24

    .line 1089
    .local v24, "freeWidthSpec":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v23

    .line 1091
    .local v23, "freeHeightSpec":I
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1134
    .end local v23    # "freeHeightSpec":I
    .end local v24    # "freeWidthSpec":I
    :cond_10a
    :goto_10a
    const/16 v33, 0x0

    .line 1135
    .local v33, "matchHeightLocally":Z
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v26

    if-eq v0, v3, :cond_11d

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_11d

    .line 1139
    const/16 v32, 0x1

    .line 1140
    const/16 v33, 0x1

    .line 1143
    :cond_11d
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v31, v3, v6

    .line 1144
    .local v31, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v31

    .line 1145
    .local v16, "childHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v18

    invoke-static {v0, v3}, combineMeasuredStates(II)I

    move-result v18

    .line 1147
    if-eqz v13, :cond_164

    .line 1148
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1149
    .local v14, "childBaseline":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_164

    .line 1152
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_23d

    move-object/from16 v0, p0

    iget v3, v0, mGravity:I

    :goto_14a
    and-int/lit8 v25, v3, 0x70

    .line 1154
    .local v25, "gravity":I
    shr-int/lit8 v3, v25, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v27, v3, 0x1

    .line 1157
    .local v27, "index":I
    aget v3, v34, v27

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v27

    .line 1158
    aget v3, v35, v27

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v35, v27

    .line 1162
    .end local v14    # "childBaseline":I
    .end local v25    # "gravity":I
    .end local v27    # "index":I
    :cond_164
    move/from16 v0, v36

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1164
    if-eqz v10, :cond_243

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_243

    const/4 v10, 0x1

    .line 1165
    :goto_176
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_24a

    .line 1170
    if-eqz v33, :cond_246

    .end local v31    # "margin":I
    :goto_181
    move/from16 v0, v44

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v44

    .line 1177
    :goto_189
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_8f

    .line 1076
    .end local v16    # "childHeight":I
    .end local v33    # "matchHeightLocally":Z
    :cond_192
    move-object/from16 v0, p0

    iget v0, v0, mTotalLength:I

    move/from16 v40, v0

    .line 1077
    .local v40, "totalLength":I
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v3, v3, v40

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v40

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    goto/16 :goto_ef

    .line 1093
    .end local v40    # "totalLength":I
    :cond_1af
    const/16 v39, 0x1

    goto/16 :goto_10a

    .line 1096
    :cond_1b3
    const/high16 v37, -0x80000000

    .line 1098
    .local v37, "oldWidth":I
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_1cb

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1cb

    .line 1103
    const/16 v37, 0x0

    .line 1104
    const/4 v3, -0x2

    move-object/from16 v0, v30

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1111
    :cond_1cb
    const/4 v3, 0x0

    cmpl-float v3, v41, v3

    if-nez v3, :cond_217

    move-object/from16 v0, p0

    iget v7, v0, mTotalLength:I

    :goto_1d4
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1115
    const/high16 v3, -0x80000000

    move/from16 v0, v37

    if-eq v0, v3, :cond_1ea

    .line 1116
    move/from16 v0, v37

    move-object/from16 v1, v30

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1119
    :cond_1ea
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1120
    .local v19, "childWidth":I
    if-eqz v28, :cond_219

    .line 1121
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v6, v6, v19

    move-object/from16 v0, v30

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 1129
    :goto_20b
    if-eqz v42, :cond_10a

    .line 1130
    move/from16 v0, v19

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v29

    goto/16 :goto_10a

    .line 1111
    .end local v19    # "childWidth":I
    :cond_217
    const/4 v7, 0x0

    goto :goto_1d4

    .line 1124
    .restart local v19    # "childWidth":I
    :cond_219
    move-object/from16 v0, p0

    iget v0, v0, mTotalLength:I

    move/from16 v40, v0

    .line 1125
    .restart local v40    # "totalLength":I
    add-int v3, v40, v19

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v40

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    goto :goto_20b

    .line 1152
    .end local v19    # "childWidth":I
    .end local v37    # "oldWidth":I
    .end local v40    # "totalLength":I
    .restart local v14    # "childBaseline":I
    .restart local v16    # "childHeight":I
    .restart local v31    # "margin":I
    .restart local v33    # "matchHeightLocally":Z
    :cond_23d
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_14a

    .line 1164
    .end local v14    # "childBaseline":I
    :cond_243
    const/4 v10, 0x0

    goto/16 :goto_176

    :cond_246
    move/from16 v31, v16

    .line 1170
    goto/16 :goto_181

    .line 1173
    :cond_24a
    if-eqz v33, :cond_254

    .end local v31    # "margin":I
    :goto_24c
    move/from16 v0, v31

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_189

    .restart local v31    # "margin":I
    :cond_254
    move/from16 v31, v16

    goto :goto_24c

    .line 1180
    .end local v4    # "child":Landroid/view/View;
    .end local v16    # "childHeight":I
    .end local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v31    # "margin":I
    .end local v33    # "matchHeightLocally":Z
    :cond_257
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    if-lez v3, :cond_274

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_274

    .line 1181
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 1186
    :cond_274
    const/4 v3, 0x1

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_28c

    const/4 v3, 0x0

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_28c

    const/4 v3, 0x2

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_28c

    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2c4

    .line 1190
    :cond_28c
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, 0x0

    aget v6, v34, v6

    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1193
    .local v12, "ascent":I
    const/4 v3, 0x3

    aget v3, v35, v3

    const/4 v6, 0x0

    aget v6, v35, v6

    const/4 v7, 0x1

    aget v7, v35, v7

    const/4 v8, 0x2

    aget v8, v35, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1196
    .local v22, "descent":I
    add-int v3, v12, v22

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1199
    .end local v12    # "ascent":I
    .end local v22    # "descent":I
    :cond_2c4
    if-eqz v42, :cond_34a

    const/high16 v3, -0x80000000

    move/from16 v0, v45

    if-eq v0, v3, :cond_2ce

    if-nez v45, :cond_34a

    .line 1201
    :cond_2ce
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 1203
    const/4 v5, 0x0

    :goto_2d4
    move/from16 v0, v20

    if-ge v5, v0, :cond_34a

    .line 1204
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1206
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_2f2

    .line 1207
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 1203
    :goto_2ef
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d4

    .line 1211
    :cond_2f2
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_302

    .line 1212
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 1213
    goto :goto_2ef

    .line 1216
    :cond_302
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1218
    .restart local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v28, :cond_326

    .line 1219
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v6, v6, v29

    move-object/from16 v0, v30

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    goto :goto_2ef

    .line 1222
    :cond_326
    move-object/from16 v0, p0

    iget v0, v0, mTotalLength:I

    move/from16 v40, v0

    .line 1223
    .restart local v40    # "totalLength":I
    add-int v3, v40, v29

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v40

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    goto :goto_2ef

    .line 1230
    .end local v4    # "child":Landroid/view/View;
    .end local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v40    # "totalLength":I
    :cond_34a
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, mPaddingLeft:I

    move-object/from16 v0, p0

    iget v7, v0, mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 1232
    move-object/from16 v0, p0

    iget v0, v0, mTotalLength:I

    move/from16 v46, v0

    .line 1235
    .local v46, "widthSize":I
    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v46

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v46

    .line 1238
    const/4 v3, 0x0

    move/from16 v0, v46

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, resolveSizeAndState(III)I

    move-result v47

    .line 1239
    .local v47, "widthSizeAndState":I
    const v3, 0xffffff

    and-int v46, v47, v3

    .line 1244
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    sub-int v21, v46, v3

    .line 1245
    .local v21, "delta":I
    if-nez v39, :cond_389

    if-eqz v21, :cond_5b3

    const/4 v3, 0x0

    cmpl-float v3, v41, v3

    if-lez v3, :cond_5b3

    .line 1246
    :cond_389
    move-object/from16 v0, p0

    iget v3, v0, mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3d1

    move-object/from16 v0, p0

    iget v0, v0, mWeightSum:F

    move/from16 v43, v0

    .line 1248
    .local v43, "weightSum":F
    :goto_398
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v34, v8

    aput v9, v34, v7

    aput v9, v34, v6

    aput v9, v34, v3

    .line 1249
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v35, v8

    aput v9, v35, v7

    aput v9, v35, v6

    aput v9, v35, v3

    .line 1250
    const/16 v36, -0x1

    .line 1252
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 1254
    const/4 v5, 0x0

    :goto_3ba
    move/from16 v0, v20

    if-ge v5, v0, :cond_511

    .line 1255
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1257
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_3ce

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_3d4

    .line 1254
    :cond_3ce
    :goto_3ce
    add-int/lit8 v5, v5, 0x1

    goto :goto_3ba

    .end local v4    # "child":Landroid/view/View;
    .end local v43    # "weightSum":F
    :cond_3d1
    move/from16 v43, v41

    .line 1246
    goto :goto_398

    .line 1261
    .restart local v4    # "child":Landroid/view/View;
    .restart local v43    # "weightSum":F
    :cond_3d4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1264
    .restart local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v30

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1265
    .local v15, "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_43d

    .line 1267
    move/from16 v0, v21

    int-to-float v3, v0

    mul-float/2addr v3, v15

    div-float v3, v3, v43

    float-to-int v0, v3

    move/from16 v38, v0

    .line 1268
    .local v38, "share":I
    sub-float v43, v43, v15

    .line 1269
    sub-int v21, v21, v38

    .line 1271
    move-object/from16 v0, p0

    iget v3, v0, mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, mPaddingBottom:I

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v3, v6}, getChildMeasureSpec(III)I

    move-result v17

    .line 1278
    .local v17, "childHeightMeasureSpec":I
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_419

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v45

    if-eq v0, v3, :cond_4c5

    .line 1281
    :cond_419
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v19, v3, v38

    .line 1282
    .restart local v19    # "childWidth":I
    if-gez v19, :cond_423

    .line 1283
    const/16 v19, 0x0

    .line 1286
    :cond_423
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    .line 1297
    .end local v19    # "childWidth":I
    .end local v38    # "share":I
    :goto_430
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    const/high16 v6, -0x1000000

    and-int/2addr v3, v6

    move/from16 v0, v18

    invoke-static {v0, v3}, combineMeasuredStates(II)I

    move-result v18

    .line 1301
    .end local v17    # "childHeightMeasureSpec":I
    :cond_43d
    if-eqz v28, :cond_4d9

    .line 1302
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v30

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, v30

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 1310
    :goto_45d
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v26

    if-eq v0, v3, :cond_502

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_502

    const/16 v33, 0x1

    .line 1313
    .restart local v33    # "matchHeightLocally":Z
    :goto_46c
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v31, v3, v6

    .line 1314
    .restart local v31    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v31

    .line 1315
    .restart local v16    # "childHeight":I
    move/from16 v0, v36

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1316
    if-eqz v33, :cond_506

    .end local v31    # "margin":I
    :goto_486
    move/from16 v0, v31

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1319
    if-eqz v10, :cond_50a

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_50a

    const/4 v10, 0x1

    .line 1321
    :goto_496
    if-eqz v13, :cond_3ce

    .line 1322
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1323
    .restart local v14    # "childBaseline":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_3ce

    .line 1325
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_50c

    move-object/from16 v0, p0

    iget v3, v0, mGravity:I

    :goto_4a9
    and-int/lit8 v25, v3, 0x70

    .line 1327
    .restart local v25    # "gravity":I
    shr-int/lit8 v3, v25, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v27, v3, 0x1

    .line 1330
    .restart local v27    # "index":I
    aget v3, v34, v27

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v27

    .line 1331
    aget v3, v35, v27

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v35, v27

    goto/16 :goto_3ce

    .line 1291
    .end local v14    # "childBaseline":I
    .end local v16    # "childHeight":I
    .end local v25    # "gravity":I
    .end local v27    # "index":I
    .end local v33    # "matchHeightLocally":Z
    .restart local v17    # "childHeightMeasureSpec":I
    .restart local v38    # "share":I
    :cond_4c5
    if-lez v38, :cond_4d6

    .end local v38    # "share":I
    :goto_4c7
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v38

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_430

    .restart local v38    # "share":I
    :cond_4d6
    const/16 v38, 0x0

    goto :goto_4c7

    .line 1305
    .end local v17    # "childHeightMeasureSpec":I
    .end local v38    # "share":I
    :cond_4d9
    move-object/from16 v0, p0

    iget v0, v0, mTotalLength:I

    move/from16 v40, v0

    .line 1306
    .restart local v40    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v40

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v40

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    goto/16 :goto_45d

    .line 1310
    .end local v40    # "totalLength":I
    :cond_502
    const/16 v33, 0x0

    goto/16 :goto_46c

    .restart local v16    # "childHeight":I
    .restart local v31    # "margin":I
    .restart local v33    # "matchHeightLocally":Z
    :cond_506
    move/from16 v31, v16

    .line 1316
    goto/16 :goto_486

    .line 1319
    .end local v31    # "margin":I
    :cond_50a
    const/4 v10, 0x0

    goto :goto_496

    .line 1325
    .restart local v14    # "childBaseline":I
    :cond_50c
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_4a9

    .line 1338
    .end local v4    # "child":Landroid/view/View;
    .end local v14    # "childBaseline":I
    .end local v15    # "childExtra":F
    .end local v16    # "childHeight":I
    .end local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v33    # "matchHeightLocally":Z
    :cond_511
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, mPaddingLeft:I

    move-object/from16 v0, p0

    iget v7, v0, mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 1343
    const/4 v3, 0x1

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_53b

    const/4 v3, 0x0

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_53b

    const/4 v3, 0x2

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_53b

    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_573

    .line 1347
    :cond_53b
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, 0x0

    aget v6, v34, v6

    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1350
    .restart local v12    # "ascent":I
    const/4 v3, 0x3

    aget v3, v35, v3

    const/4 v6, 0x0

    aget v6, v35, v6

    const/4 v7, 0x1

    aget v7, v35, v7

    const/4 v8, 0x2

    aget v8, v35, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1353
    .restart local v22    # "descent":I
    add-int v3, v12, v22

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1382
    .end local v12    # "ascent":I
    .end local v22    # "descent":I
    .end local v43    # "weightSum":F
    :cond_573
    if-nez v10, :cond_57d

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v26

    if-eq v0, v3, :cond_57d

    .line 1383
    move/from16 v36, v11

    .line 1386
    :cond_57d
    move-object/from16 v0, p0

    iget v3, v0, mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, mPaddingBottom:I

    add-int/2addr v3, v6

    add-int v36, v36, v3

    .line 1389
    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1391
    const/high16 v3, -0x1000000

    and-int v3, v3, v18

    or-int v3, v3, v47

    shl-int/lit8 v6, v18, 0x10

    move/from16 v0, v36

    move/from16 v1, p2

    invoke-static {v0, v1, v6}, resolveSizeAndState(III)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, setMeasuredDimension(II)V

    .line 1395
    if-eqz v32, :cond_5b2

    .line 1396
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, forceUniformHeight(II)V

    .line 1398
    :cond_5b2
    return-void

    .line 1356
    :cond_5b3
    move/from16 v0, v44

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1360
    if-eqz v42, :cond_573

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v45

    if-eq v0, v3, :cond_573

    .line 1361
    const/4 v5, 0x0

    :goto_5c2
    move/from16 v0, v20

    if-ge v5, v0, :cond_573

    .line 1362
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1364
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_5d6

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_5d9

    .line 1361
    :cond_5d6
    :goto_5d6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c2

    .line 1368
    :cond_5d9
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1371
    .restart local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v30

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1372
    .restart local v15    # "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_5d6

    .line 1373
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v29

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_5d6
.end method

.method measureNullChild(I)I
    .registers 3
    .param p1, "childIndex"    # I

    .prologue
    .line 1445
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .registers 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 681
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 682
    const/16 v27, 0x0

    .line 683
    .local v27, "maxWidth":I
    const/4 v15, 0x0

    .line 684
    .local v15, "childState":I
    const/4 v11, 0x0

    .line 685
    .local v11, "alternativeMaxWidth":I
    const/16 v36, 0x0

    .line 686
    .local v36, "weightedMaxWidth":I
    const/4 v10, 0x1

    .line 687
    .local v10, "allFillParent":Z
    const/16 v33, 0x0

    .line 689
    .local v33, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, getVirtualChildCount()I

    move-result v17

    .line 691
    .local v17, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v37

    .line 692
    .local v37, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 694
    .local v19, "heightMode":I
    const/16 v25, 0x0

    .line 695
    .local v25, "matchWidth":Z
    const/16 v31, 0x0

    .line 697
    .local v31, "skippedMeasure":Z
    move-object/from16 v0, p0

    iget v12, v0, mBaselineAlignedChildIndex:I

    .line 698
    .local v12, "baselineChildIndex":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mUseLargestChild:Z

    move/from16 v34, v0

    .line 700
    .local v34, "useLargestChild":Z
    const/high16 v22, -0x80000000

    .line 703
    .local v22, "largestChildHeight":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2b
    move/from16 v0, v17

    if-ge v5, v0, :cond_19d

    .line 704
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 706
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_49

    .line 707
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 703
    :goto_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 711
    :cond_49
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_59

    .line 712
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 713
    goto :goto_46

    .line 716
    :cond_59
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 717
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 720
    :cond_6e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 722
    .local v23, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v33, v33, v3

    .line 724
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-ne v0, v3, :cond_cd

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_cd

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_cd

    .line 728
    move-object/from16 v0, p0

    iget v0, v0, mTotalLength:I

    move/from16 v32, v0

    .line 729
    .local v32, "totalLength":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v3, v3, v32

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 730
    const/16 v31, 0x1

    .line 769
    :cond_ac
    :goto_ac
    if-ltz v12, :cond_ba

    add-int/lit8 v3, v5, 0x1

    if-ne v12, v3, :cond_ba

    .line 770
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, p0

    iput v3, v0, mBaselineChildTop:I

    .line 776
    :cond_ba
    if-ge v5, v12, :cond_137

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_137

    .line 777
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 732
    .end local v32    # "totalLength":I
    :cond_cd
    const/high16 v29, -0x80000000

    .line 734
    .local v29, "oldHeight":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_e5

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_e5

    .line 739
    const/16 v29, 0x0

    .line 740
    const/4 v3, -0x2

    move-object/from16 v0, v23

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 747
    :cond_e5
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v33, v3

    if-nez v3, :cond_135

    move-object/from16 v0, p0

    iget v9, v0, mTotalLength:I

    :goto_ef
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 751
    const/high16 v3, -0x80000000

    move/from16 v0, v29

    if-eq v0, v3, :cond_104

    .line 752
    move/from16 v0, v29

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 755
    :cond_104
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 756
    .local v14, "childHeight":I
    move-object/from16 v0, p0

    iget v0, v0, mTotalLength:I

    move/from16 v32, v0

    .line 757
    .restart local v32    # "totalLength":I
    add-int v3, v32, v14

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 760
    if-eqz v34, :cond_ac

    .line 761
    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto/16 :goto_ac

    .line 747
    .end local v14    # "childHeight":I
    .end local v32    # "totalLength":I
    :cond_135
    const/4 v9, 0x0

    goto :goto_ef

    .line 783
    .end local v29    # "oldHeight":I
    .restart local v32    # "totalLength":I
    :cond_137
    const/16 v26, 0x0

    .line 784
    .local v26, "matchWidthLocally":Z
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v37

    if-eq v0, v3, :cond_14a

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_14a

    .line 789
    const/16 v25, 0x1

    .line 790
    const/16 v26, 0x1

    .line 793
    :cond_14a
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v24, v3, v6

    .line 794
    .local v24, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v28, v3, v24

    .line 795
    .local v28, "measuredWidth":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 796
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v15, v3}, combineMeasuredStates(II)I

    move-result v15

    .line 798
    if-eqz v10, :cond_18c

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_18c

    const/4 v10, 0x1

    .line 799
    :goto_170
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_191

    .line 804
    if-eqz v26, :cond_18e

    .end local v24    # "margin":I
    :goto_17b
    move/from16 v0, v36

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 811
    :goto_183
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_46

    .line 798
    .restart local v24    # "margin":I
    :cond_18c
    const/4 v10, 0x0

    goto :goto_170

    :cond_18e
    move/from16 v24, v28

    .line 804
    goto :goto_17b

    .line 807
    :cond_191
    if-eqz v26, :cond_19a

    .end local v24    # "margin":I
    :goto_193
    move/from16 v0, v24

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_183

    .restart local v24    # "margin":I
    :cond_19a
    move/from16 v24, v28

    goto :goto_193

    .line 814
    .end local v4    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "margin":I
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    .end local v32    # "totalLength":I
    :cond_19d
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    if-lez v3, :cond_1ba

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_1ba

    .line 815
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 818
    :cond_1ba
    if-eqz v34, :cond_222

    const/high16 v3, -0x80000000

    move/from16 v0, v19

    if-eq v0, v3, :cond_1c4

    if-nez v19, :cond_222

    .line 820
    :cond_1c4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 822
    const/4 v5, 0x0

    :goto_1ca
    move/from16 v0, v17

    if-ge v5, v0, :cond_222

    .line 823
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 825
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_1e8

    .line 826
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 822
    :goto_1e5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1ca

    .line 830
    :cond_1e8
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1f8

    .line 831
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 832
    goto :goto_1e5

    .line 835
    :cond_1f8
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 838
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, mTotalLength:I

    move/from16 v32, v0

    .line 839
    .restart local v32    # "totalLength":I
    add-int v3, v32, v22

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    goto :goto_1e5

    .line 845
    .end local v4    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "totalLength":I
    :cond_222
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, mPaddingTop:I

    move-object/from16 v0, p0

    iget v7, v0, mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 847
    move-object/from16 v0, p0

    iget v0, v0, mTotalLength:I

    move/from16 v20, v0

    .line 850
    .local v20, "heightSize":I
    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 853
    const/4 v3, 0x0

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, resolveSizeAndState(III)I

    move-result v21

    .line 854
    .local v21, "heightSizeAndState":I
    const v3, 0xffffff

    and-int v20, v21, v3

    .line 859
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    sub-int v18, v20, v3

    .line 860
    .local v18, "delta":I
    if-nez v31, :cond_261

    if-eqz v18, :cond_3b6

    const/4 v3, 0x0

    cmpl-float v3, v33, v3

    if-lez v3, :cond_3b6

    .line 861
    :cond_261
    move-object/from16 v0, p0

    iget v3, v0, mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_28b

    move-object/from16 v0, p0

    iget v0, v0, mWeightSum:F

    move/from16 v35, v0

    .line 863
    .local v35, "weightSum":F
    :goto_270
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 865
    const/4 v5, 0x0

    :goto_276
    move/from16 v0, v17

    if-ge v5, v0, :cond_36a

    .line 866
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 868
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_28e

    .line 865
    :goto_288
    add-int/lit8 v5, v5, 0x1

    goto :goto_276

    .end local v4    # "child":Landroid/view/View;
    .end local v35    # "weightSum":F
    :cond_28b
    move/from16 v35, v33

    .line 861
    goto :goto_270

    .line 872
    .restart local v4    # "child":Landroid/view/View;
    .restart local v35    # "weightSum":F
    :cond_28e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 874
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 875
    .local v13, "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_2f1

    .line 877
    move/from16 v0, v18

    int-to-float v3, v0

    mul-float/2addr v3, v13

    div-float v3, v3, v35

    float-to-int v0, v3

    move/from16 v30, v0

    .line 878
    .local v30, "share":I
    sub-float v35, v35, v13

    .line 879
    sub-int v18, v18, v30

    .line 881
    move-object/from16 v0, p0

    iget v3, v0, mPaddingLeft:I

    move-object/from16 v0, p0

    iget v6, v0, mPaddingRight:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v3, v6}, getChildMeasureSpec(III)I

    move-result v16

    .line 887
    .local v16, "childWidthMeasureSpec":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_2d3

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-eq v0, v3, :cond_34f

    .line 890
    :cond_2d3
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v14, v3, v30

    .line 891
    .restart local v14    # "childHeight":I
    if-gez v14, :cond_2dc

    .line 892
    const/4 v14, 0x0

    .line 895
    :cond_2dc
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    .line 906
    .end local v14    # "childHeight":I
    .end local v30    # "share":I
    :goto_2e7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    invoke-static {v15, v3}, combineMeasuredStates(II)I

    move-result v15

    .line 910
    .end local v16    # "childWidthMeasureSpec":I
    :cond_2f1
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v24, v3, v6

    .line 911
    .restart local v24    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v28, v3, v24

    .line 912
    .restart local v28    # "measuredWidth":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 914
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v37

    if-eq v0, v3, :cond_362

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_362

    const/16 v26, 0x1

    .line 917
    .restart local v26    # "matchWidthLocally":Z
    :goto_314
    if-eqz v26, :cond_365

    .end local v24    # "margin":I
    :goto_316
    move/from16 v0, v24

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 920
    if-eqz v10, :cond_368

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_368

    const/4 v10, 0x1

    .line 922
    :goto_326
    move-object/from16 v0, p0

    iget v0, v0, mTotalLength:I

    move/from16 v32, v0

    .line 923
    .restart local v32    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v32

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    goto/16 :goto_288

    .line 900
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    .end local v32    # "totalLength":I
    .restart local v16    # "childWidthMeasureSpec":I
    .restart local v30    # "share":I
    :cond_34f
    if-lez v30, :cond_35f

    .end local v30    # "share":I
    :goto_351
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v30

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    goto :goto_2e7

    .restart local v30    # "share":I
    :cond_35f
    const/16 v30, 0x0

    goto :goto_351

    .line 914
    .end local v16    # "childWidthMeasureSpec":I
    .end local v30    # "share":I
    .restart local v24    # "margin":I
    .restart local v28    # "measuredWidth":I
    :cond_362
    const/16 v26, 0x0

    goto :goto_314

    .restart local v26    # "matchWidthLocally":Z
    :cond_365
    move/from16 v24, v28

    .line 917
    goto :goto_316

    .line 920
    .end local v24    # "margin":I
    :cond_368
    const/4 v10, 0x0

    goto :goto_326

    .line 928
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "childExtra":F
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    :cond_36a
    move-object/from16 v0, p0

    iget v3, v0, mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, mPaddingTop:I

    move-object/from16 v0, p0

    iget v7, v0, mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, mTotalLength:I

    .line 960
    .end local v35    # "weightSum":F
    :cond_37c
    if-nez v10, :cond_386

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v37

    if-eq v0, v3, :cond_386

    .line 961
    move/from16 v27, v11

    .line 964
    :cond_386
    move-object/from16 v0, p0

    iget v3, v0, mPaddingLeft:I

    move-object/from16 v0, p0

    iget v6, v0, mPaddingRight:I

    add-int/2addr v3, v6

    add-int v27, v27, v3

    .line 967
    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 969
    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1, v15}, resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, setMeasuredDimension(II)V

    .line 972
    if-eqz v25, :cond_3b5

    .line 973
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, forceUniformWidth(II)V

    .line 975
    :cond_3b5
    return-void

    .line 931
    :cond_3b6
    move/from16 v0, v36

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 937
    if-eqz v34, :cond_37c

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-eq v0, v3, :cond_37c

    .line 938
    const/4 v5, 0x0

    :goto_3c5
    move/from16 v0, v17

    if-ge v5, v0, :cond_37c

    .line 939
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 941
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_3d9

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_3dc

    .line 938
    :cond_3d9
    :goto_3d9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c5

    .line 945
    :cond_3dc
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 948
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 949
    .restart local v13    # "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_3d9

    .line 950
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v22

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_3d9
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 335
    iget-object v0, p0, mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 344
    :goto_4
    return-void

    .line 339
    :cond_5
    iget v0, p0, mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 340
    invoke-virtual {p0, p1}, drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 342
    :cond_e
    invoke-virtual {p0, p1}, drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1493
    iget v0, p0, mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1494
    invoke-virtual {p0, p2, p3, p4, p5}, layoutVertical(IIII)V

    .line 1498
    :goto_8
    return-void

    .line 1496
    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, layoutHorizontal(IIII)V

    goto :goto_8
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 628
    iget v0, p0, mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 629
    invoke-virtual {p0, p1, p2}, measureVertical(II)V

    .line 633
    :goto_8
    return-void

    .line 631
    :cond_9
    invoke-virtual {p0, p1, p2}, measureHorizontal(II)V

    goto :goto_8
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1596
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 1597
    iget v0, p0, mLayoutDirection:I

    if-eq p1, v0, :cond_10

    .line 1598
    iput p1, p0, mLayoutDirection:I

    .line 1599
    iget v0, p0, mOrientation:I

    if-nez v0, :cond_10

    .line 1600
    invoke-virtual {p0}, requestLayout()V

    .line 1603
    :cond_10
    return-void
.end method

.method public setBaselineAligned(Z)V
    .registers 2
    .param p1, "baselineAligned"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 461
    iput-boolean p1, p0, mBaselineAligned:Z

    .line 462
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 5
    .param p1, "i"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 565
    if-ltz p1, :cond_8

    invoke-virtual {p0}, getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_2b

    .line 566
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_2b
    iput p1, p0, mBaselineAlignedChildIndex:I

    .line 570
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_6

    .line 298
    :goto_5
    return-void

    .line 288
    :cond_6
    iput-object p1, p0, mDivider:Landroid/graphics/drawable/Drawable;

    .line 289
    if-eqz p1, :cond_20

    .line 290
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, mDividerWidth:I

    .line 291
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, mDividerHeight:I

    .line 296
    :goto_16
    if-nez p1, :cond_19

    const/4 v0, 0x1

    :cond_19
    invoke-virtual {p0, v0}, setWillNotDraw(Z)V

    .line 297
    invoke-virtual {p0}, requestLayout()V

    goto :goto_5

    .line 293
    :cond_20
    iput v0, p0, mDividerWidth:I

    .line 294
    iput v0, p0, mDividerHeight:I

    goto :goto_16
.end method

.method public setDividerPadding(I)V
    .registers 2
    .param p1, "padding"    # I

    .prologue
    .line 310
    iput p1, p0, mDividerPadding:I

    .line 311
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1781
    iget v0, p0, mGravity:I

    if-eq v0, p1, :cond_19

    .line 1782
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    .line 1783
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1786
    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    .line 1787
    or-int/lit8 p1, p1, 0x30

    .line 1790
    :cond_14
    iput p1, p0, mGravity:I

    .line 1791
    invoke-virtual {p0}, requestLayout()V

    .line 1793
    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 5
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const v2, 0x800007

    .line 1797
    and-int v0, p1, v2

    .line 1798
    .local v0, "gravity":I
    iget v1, p0, mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_16

    .line 1799
    iget v1, p0, mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, mGravity:I

    .line 1800
    invoke-virtual {p0}, requestLayout()V

    .line 1802
    :cond_16
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 492
    iput-boolean p1, p0, mUseLargestChild:Z

    .line 493
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 1753
    iget v0, p0, mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1754
    iput p1, p0, mOrientation:I

    .line 1755
    invoke-virtual {p0}, requestLayout()V

    .line 1757
    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3
    .param p1, "showDividers"    # I

    .prologue
    .line 244
    iget v0, p0, mShowDividers:I

    if-eq p1, v0, :cond_7

    .line 245
    invoke-virtual {p0}, requestLayout()V

    .line 247
    :cond_7
    iput p1, p0, mShowDividers:I

    .line 248
    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1806
    and-int/lit8 v0, p1, 0x70

    .line 1807
    .local v0, "gravity":I
    iget v1, p0, mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_12

    .line 1808
    iget v1, p0, mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, mGravity:I

    .line 1809
    invoke-virtual {p0}, requestLayout()V

    .line 1811
    :cond_12
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3
    .param p1, "weightSum"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 623
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, mWeightSum:F

    .line 624
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method
