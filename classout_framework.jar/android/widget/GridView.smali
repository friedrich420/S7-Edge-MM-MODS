.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 126
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    iput v8, p0, mNumColumns:I

    .line 106
    iput v7, p0, mHorizontalSpacing:I

    .line 108
    iput v7, p0, mVerticalSpacing:I

    .line 109
    iput v9, p0, mStretchMode:I

    .line 114
    iput-object v6, p0, mReferenceView:Landroid/view/View;

    .line 115
    iput-object v6, p0, mReferenceViewInSelectedRow:Landroid/view/View;

    .line 117
    const v6, 0x800003

    iput v6, p0, mGravity:I

    .line 119
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, mTempRect:Landroid/graphics/Rect;

    .line 136
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 139
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 141
    .local v2, "hSpacing":I
    invoke-virtual {p0, v2}, setHorizontalSpacing(I)V

    .line 143
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 145
    .local v5, "vSpacing":I
    invoke-virtual {p0, v5}, setVerticalSpacing(I)V

    .line 147
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 148
    .local v3, "index":I
    if-ltz v3, :cond_3e

    .line 149
    invoke-virtual {p0, v3}, setStretchMode(I)V

    .line 152
    :cond_3e
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 153
    .local v1, "columnWidth":I
    if-lez v1, :cond_48

    .line 154
    invoke-virtual {p0, v1}, setColumnWidth(I)V

    .line 157
    :cond_48
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 158
    .local v4, "numColumns":I
    invoke-virtual {p0, v4}, setNumColumns(I)V

    .line 160
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 161
    if-ltz v3, :cond_59

    .line 162
    invoke-virtual {p0, v3}, setGravity(I)V

    .line 165
    :cond_59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .registers 8
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 807
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_1a

    .line 811
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 815
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 816
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 819
    .local v0, "offset":I
    neg-int v3, v0

    invoke-virtual {p0, v3}, offsetChildrenTopAndBottom(I)V

    .line 821
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_1a
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .registers 8
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 835
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_19

    .line 838
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 842
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 843
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 846
    .local v0, "offset":I
    invoke-virtual {p0, v0}, offsetChildrenTopAndBottom(I)V

    .line 848
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_19
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .registers 7

    .prologue
    .line 2272
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 2274
    .local v1, "childCount":I
    if-lez v1, :cond_29

    .line 2278
    iget-boolean v3, p0, mStackFromBottom:Z

    if-nez v3, :cond_2a

    .line 2281
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2282
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 2283
    .local v2, "delta":I
    iget v3, p0, mFirstPosition:I

    if-eqz v3, :cond_20

    .line 2286
    iget v3, p0, mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2288
    :cond_20
    if-gez v2, :cond_23

    .line 2290
    const/4 v2, 0x0

    .line 2309
    :cond_23
    :goto_23
    if-eqz v2, :cond_29

    .line 2310
    neg-int v3, v2

    invoke-virtual {p0, v3}, offsetChildrenTopAndBottom(I)V

    .line 2313
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_29
    return-void

    .line 2294
    :cond_2a
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2295
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, getHeight()I

    move-result v4

    iget-object v5, p0, mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 2297
    .restart local v2    # "delta":I
    iget v3, p0, mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, mItemCount:I

    if-ge v3, v4, :cond_49

    .line 2300
    iget v3, p0, mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2303
    :cond_49
    if-lez v2, :cond_23

    .line 2305
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1659
    iget-object v4, p0, mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_c

    .line 1790
    :goto_b
    return v2

    .line 1663
    :cond_c
    iget-boolean v4, p0, mDataChanged:Z

    if-eqz v4, :cond_13

    .line 1664
    invoke-virtual {p0}, layoutChildren()V

    .line 1667
    :cond_13
    const/4 v1, 0x0

    .line 1668
    .local v1, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1670
    .local v0, "action":I
    if-eq v0, v3, :cond_1d

    .line 1671
    sparse-switch p1, :sswitch_data_1d6

    .line 1774
    :cond_1d
    :goto_1d
    if-eqz v1, :cond_1b5

    move v2, v3

    .line 1775
    goto :goto_b

    .line 1673
    :sswitch_21
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1674
    :cond_2d
    iget v4, p0, mSelectedPosition:I

    iput v4, p0, mTwCurrentFocusPosition:I

    .line 1675
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_3f

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_41

    :cond_3f
    move v1, v3

    :goto_40
    goto :goto_1d

    :cond_41
    move v1, v2

    goto :goto_40

    .line 1680
    :sswitch_43
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_4f

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1681
    :cond_4f
    iget v4, p0, mSelectedPosition:I

    iput v4, p0, mTwCurrentFocusPosition:I

    .line 1682
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_61

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_63

    :cond_61
    move v1, v3

    :goto_62
    goto :goto_1d

    :cond_63
    move v1, v2

    goto :goto_62

    .line 1687
    :sswitch_65
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_71

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 1688
    :cond_71
    iget v4, p0, mSelectedPosition:I

    iput v4, p0, mTwCurrentFocusPosition:I

    .line 1689
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_81

    invoke-virtual {p0, v5}, arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_83

    :cond_81
    move v1, v3

    :goto_82
    goto :goto_1d

    :cond_83
    move v1, v2

    goto :goto_82

    .line 1690
    :cond_85
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1691
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_97

    invoke-virtual {p0, v5}, fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_99

    :cond_97
    move v1, v3

    :goto_98
    goto :goto_1d

    :cond_99
    move v1, v2

    goto :goto_98

    .line 1696
    :sswitch_9b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_a7

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 1697
    :cond_a7
    iget v4, p0, mSelectedPosition:I

    iput v4, p0, mTwCurrentFocusPosition:I

    .line 1698
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b7

    invoke-virtual {p0, v6}, arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_ba

    :cond_b7
    move v1, v3

    :goto_b8
    goto/16 :goto_1d

    :cond_ba
    move v1, v2

    goto :goto_b8

    .line 1699
    :cond_bc
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1700
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_ce

    invoke-virtual {p0, v6}, fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_d1

    :cond_ce
    move v1, v3

    :goto_cf
    goto/16 :goto_1d

    :cond_d1
    move v1, v2

    goto :goto_cf

    .line 1706
    :sswitch_d3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1707
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v1

    .line 1708
    if-nez v1, :cond_1d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {p0}, getChildCount()I

    move-result v4

    if-lez v4, :cond_1d

    .line 1710
    invoke-virtual {p0}, keyPressed()V

    .line 1711
    const/4 v1, 0x1

    goto/16 :goto_1d

    .line 1717
    :sswitch_f1
    iget-object v4, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_fd

    iget-object v4, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1718
    :cond_fd
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_114

    .line 1719
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_10f

    invoke-virtual {p0, v6}, pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_112

    :cond_10f
    move v1, v3

    :goto_110
    goto/16 :goto_1d

    :cond_112
    move v1, v2

    goto :goto_110

    .line 1720
    :cond_114
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1721
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_126

    invoke-virtual {p0, v5}, pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_129

    :cond_126
    move v1, v3

    :goto_127
    goto/16 :goto_1d

    :cond_129
    move v1, v2

    goto :goto_127

    .line 1727
    :sswitch_12b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_142

    .line 1728
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_13d

    invoke-virtual {p0, v5}, pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_140

    :cond_13d
    move v1, v3

    :goto_13e
    goto/16 :goto_1d

    :cond_140
    move v1, v2

    goto :goto_13e

    .line 1729
    :cond_142
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1730
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_154

    invoke-virtual {p0, v5}, fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_157

    :cond_154
    move v1, v3

    :goto_155
    goto/16 :goto_1d

    :cond_157
    move v1, v2

    goto :goto_155

    .line 1735
    :sswitch_159
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_170

    .line 1736
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_16b

    invoke-virtual {p0, v6}, pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_16e

    :cond_16b
    move v1, v3

    :goto_16c
    goto/16 :goto_1d

    :cond_16e
    move v1, v2

    goto :goto_16c

    .line 1737
    :cond_170
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1738
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_182

    invoke-virtual {p0, v6}, fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_185

    :cond_182
    move v1, v3

    :goto_183
    goto/16 :goto_1d

    :cond_185
    move v1, v2

    goto :goto_183

    .line 1743
    :sswitch_187
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1744
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_199

    invoke-virtual {p0, v5}, fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_19c

    :cond_199
    move v1, v3

    :goto_19a
    goto/16 :goto_1d

    :cond_19c
    move v1, v2

    goto :goto_19a

    .line 1749
    :sswitch_19e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1750
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1b0

    invoke-virtual {p0, v6}, fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1b3

    :cond_1b0
    move v1, v3

    :goto_1b1
    goto/16 :goto_1d

    :cond_1b3
    move v1, v2

    goto :goto_1b1

    .line 1778
    :cond_1b5
    invoke-virtual {p0, p1, p2, p3}, sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1be

    move v2, v3

    .line 1779
    goto/16 :goto_b

    .line 1782
    :cond_1be
    packed-switch v0, :pswitch_data_204

    goto/16 :goto_b

    .line 1784
    :pswitch_1c3
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1786
    :pswitch_1c9
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1788
    :pswitch_1cf
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1671
    nop

    :sswitch_data_1d6
    .sparse-switch
        0x13 -> :sswitch_65
        0x14 -> :sswitch_9b
        0x15 -> :sswitch_21
        0x16 -> :sswitch_43
        0x17 -> :sswitch_d3
        0x3e -> :sswitch_f1
        0x42 -> :sswitch_d3
        0x5c -> :sswitch_12b
        0x5d -> :sswitch_159
        0x7a -> :sswitch_187
        0x7b -> :sswitch_19e
    .end sparse-switch

    .line 1782
    :pswitch_data_204
    .packed-switch 0x0
        :pswitch_1c3
        :pswitch_1c9
        :pswitch_1cf
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .registers 13
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 619
    iget v7, p0, mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 620
    .local v6, "lastPosition":I
    iget v7, p0, mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_60

    if-lez p3, :cond_60

    .line 622
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 625
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 627
    .local v4, "lastBottom":I
    iget v7, p0, mBottom:I

    iget v8, p0, mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 631
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 633
    .local v0, "bottomOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 634
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 638
    .local v3, "firstTop":I
    if-lez v0, :cond_60

    iget v7, p0, mFirstPosition:I

    if-gtz v7, :cond_39

    iget-object v7, p0, mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_60

    .line 639
    :cond_39
    iget v7, p0, mFirstPosition:I

    if-nez v7, :cond_46

    .line 641
    iget-object v7, p0, mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 645
    :cond_46
    invoke-virtual {p0, v0}, offsetChildrenTopAndBottom(I)V

    .line 646
    iget v7, p0, mFirstPosition:I

    if-lez v7, :cond_60

    .line 649
    iget v7, p0, mFirstPosition:I

    iget-boolean v8, p0, mStackFromBottom:Z

    if-eqz v8, :cond_54

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_54
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, fillUp(II)Landroid/view/View;

    .line 652
    invoke-direct {p0}, adjustViewsUpOrDown()V

    .line 656
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_60
    return-void
.end method

.method private correctTooLow(III)V
    .registers 14
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 659
    iget v8, p0, mFirstPosition:I

    if-nez v8, :cond_61

    if-lez p3, :cond_61

    .line 661
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 664
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 667
    .local v2, "firstTop":I
    iget-object v8, p0, mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 670
    .local v6, "start":I
    iget v8, p0, mBottom:I

    iget v9, p0, mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 674
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 675
    .local v7, "topOffset":I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 676
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 677
    .local v3, "lastBottom":I
    iget v8, p0, mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 681
    .local v5, "lastPosition":I
    if-lez v7, :cond_61

    iget v8, p0, mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_39

    if-le v3, v0, :cond_61

    .line 682
    :cond_39
    iget v8, p0, mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_45

    .line 684
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 688
    :cond_45
    neg-int v8, v7

    invoke-virtual {p0, v8}, offsetChildrenTopAndBottom(I)V

    .line 689
    iget v8, p0, mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_61

    .line 692
    iget-boolean v8, p0, mStackFromBottom:Z

    if-nez v8, :cond_54

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_54
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, fillDown(II)Landroid/view/View;

    .line 695
    invoke-direct {p0}, adjustViewsUpOrDown()V

    .line 699
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_61
    return-void
.end method

.method private determineColumns(I)Z
    .registers 10
    .param p1, "availableSpace"    # I

    .prologue
    const/4 v7, 0x1

    .line 968
    iget v2, p0, mRequestedHorizontalSpacing:I

    .line 969
    .local v2, "requestedHorizontalSpacing":I
    iget v4, p0, mStretchMode:I

    .line 970
    .local v4, "stretchMode":I
    iget v1, p0, mRequestedColumnWidth:I

    .line 971
    .local v1, "requestedColumnWidth":I
    const/4 v0, 0x0

    .line 973
    .local v0, "didNotInitiallyFit":Z
    iget v5, p0, mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_36

    .line 974
    if-lez v1, :cond_32

    .line 976
    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, mNumColumns:I

    .line 987
    :goto_16
    iget v5, p0, mNumColumns:I

    if-gtz v5, :cond_1c

    .line 988
    iput v7, p0, mNumColumns:I

    .line 991
    :cond_1c
    packed-switch v4, :pswitch_data_74

    .line 999
    iget v5, p0, mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    .line 1002
    .local v3, "spaceLeftOver":I
    if-gez v3, :cond_2e

    .line 1003
    const/4 v0, 0x1

    .line 1006
    :cond_2e
    packed-switch v4, :pswitch_data_7a

    .line 1038
    .end local v3    # "spaceLeftOver":I
    :goto_31
    return v0

    .line 980
    :cond_32
    const/4 v5, 0x2

    iput v5, p0, mNumColumns:I

    goto :goto_16

    .line 984
    :cond_36
    iget v5, p0, mRequestedNumColumns:I

    iput v5, p0, mNumColumns:I

    goto :goto_16

    .line 994
    :pswitch_3b
    iput v1, p0, mColumnWidth:I

    .line 995
    iput v2, p0, mHorizontalSpacing:I

    goto :goto_31

    .line 1009
    .restart local v3    # "spaceLeftOver":I
    :pswitch_40
    iget v5, p0, mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, mColumnWidth:I

    .line 1010
    iput v2, p0, mHorizontalSpacing:I

    goto :goto_31

    .line 1015
    :pswitch_4a
    iput v1, p0, mColumnWidth:I

    .line 1016
    iget v5, p0, mNumColumns:I

    if-le v5, v7, :cond_5a

    .line 1017
    iget v5, p0, mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, mHorizontalSpacing:I

    goto :goto_31

    .line 1020
    :cond_5a
    add-int v5, v2, v3

    iput v5, p0, mHorizontalSpacing:I

    goto :goto_31

    .line 1026
    :pswitch_5f
    iput v1, p0, mColumnWidth:I

    .line 1027
    iget v5, p0, mNumColumns:I

    if-le v5, v7, :cond_6f

    .line 1028
    iget v5, p0, mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, mHorizontalSpacing:I

    goto :goto_31

    .line 1031
    :cond_6f
    add-int v5, v2, v3

    iput v5, p0, mHorizontalSpacing:I

    goto :goto_31

    .line 991
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_3b
    .end packed-switch

    .line 1006
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_40
        :pswitch_5f
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .registers 9
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 301
    .local v1, "selectedView":Landroid/view/View;
    iget v3, p0, mBottom:I

    iget v4, p0, mTop:I

    sub-int v0, v3, v4

    .line 302
    .local v0, "end":I
    iget v3, p0, mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_14

    .line 303
    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 306
    :cond_14
    :goto_14
    if-ge p2, v0, :cond_30

    iget v3, p0, mItemCount:I

    if-ge p1, v3, :cond_30

    .line 307
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 308
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_22

    .line 309
    move-object v1, v2

    .line 314
    :cond_22
    iget-object v3, p0, mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, mVerticalSpacing:I

    add-int p2, v3, v4

    .line 316
    iget v3, p0, mNumColumns:I

    add-int/2addr p1, v3

    .line 317
    goto :goto_14

    .line 319
    .end local v2    # "temp":Landroid/view/View;
    :cond_30
    iget v3, p0, mFirstPosition:I

    iget v4, p0, mFirstPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, setVisibleRangeHint(II)V

    .line 320
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .registers 6
    .param p1, "lastPosition"    # I
    .param p2, "nextBottom"    # I

    .prologue
    .line 446
    iget v1, p0, mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 447
    iget v1, p0, mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 449
    iget v1, p0, mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 450
    .local v0, "invertedPosition":I
    iget v1, p0, mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 452
    invoke-direct {p0, p1, p2}, fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 18
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 712
    invoke-virtual {p0}, getVerticalFadingEdgeLength()I

    move-result v2

    .line 713
    .local v2, "fadingEdgeLength":I
    iget v9, p0, mSelectedPosition:I

    .line 714
    .local v9, "selectedPosition":I
    iget v4, p0, mNumColumns:I

    .line 715
    .local v4, "numColumns":I
    iget v11, p0, mVerticalSpacing:I

    .line 718
    .local v11, "verticalSpacing":I
    const/4 v6, -0x1

    .line 720
    .local v6, "rowEnd":I
    iget-boolean v12, p0, mStackFromBottom:Z

    if-nez v12, :cond_4f

    .line 721
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 732
    .local v7, "rowStart":I
    :goto_13
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, getTopSelectionPixel(III)I

    move-result v10

    .line 733
    .local v10, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, getBottomSelectionPixel(IIII)I

    move-result v1

    .line 736
    .local v1, "bottomSelectionPixel":I
    iget-boolean v12, p0, mStackFromBottom:Z

    if-eqz v12, :cond_69

    move v12, v6

    :goto_24
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 738
    .local v8, "sel":Landroid/view/View;
    iput v7, p0, mFirstPosition:I

    .line 740
    iget-object v5, p0, mReferenceView:Landroid/view/View;

    .line 741
    .local v5, "referenceView":Landroid/view/View;
    invoke-direct {p0, v5, v10, v1}, adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 742
    invoke-direct {p0, v5, v10, v1}, adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 744
    iget-boolean v12, p0, mStackFromBottom:Z

    if-nez v12, :cond_6b

    .line 745
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, fillUp(II)Landroid/view/View;

    .line 746
    invoke-direct {p0}, adjustViewsUpOrDown()V

    .line 747
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, fillDown(II)Landroid/view/View;

    .line 755
    :goto_4e
    return-object v8

    .line 723
    .end local v1    # "bottomSelectionPixel":I
    .end local v5    # "referenceView":Landroid/view/View;
    .end local v7    # "rowStart":I
    .end local v8    # "sel":Landroid/view/View;
    .end local v10    # "topSelectionPixel":I
    :cond_4f
    iget v12, p0, mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 725
    .local v3, "invertedSelection":I
    iget v12, p0, mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 726
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "rowStart":I
    goto :goto_13

    .end local v3    # "invertedSelection":I
    .restart local v1    # "bottomSelectionPixel":I
    .restart local v10    # "topSelectionPixel":I
    :cond_69
    move v12, v7

    .line 736
    goto :goto_24

    .line 749
    .restart local v5    # "referenceView":Landroid/view/View;
    .restart local v8    # "sel":Landroid/view/View;
    :cond_6b
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, fillDown(II)Landroid/view/View;

    .line 750
    invoke-direct {p0}, adjustViewsUpOrDown()V

    .line 751
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, fillUp(II)Landroid/view/View;

    goto :goto_4e
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 5
    .param p1, "nextTop"    # I

    .prologue
    .line 436
    iget v0, p0, mFirstPosition:I

    iget v1, p0, mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, mFirstPosition:I

    .line 437
    iget v0, p0, mFirstPosition:I

    iget v1, p0, mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, mFirstPosition:I

    .line 438
    iget v0, p0, mFirstPosition:I

    if-gez v0, :cond_1d

    .line 439
    const/4 v0, 0x0

    iput v0, p0, mFirstPosition:I

    .line 441
    :cond_1d
    iget v0, p0, mFirstPosition:I

    iget v1, p0, mFirstPosition:I

    iget v2, p0, mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, mFirstPosition:I

    .line 442
    iget v0, p0, mFirstPosition:I

    invoke-direct {p0, v0, p1}, fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .registers 18
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    .line 456
    invoke-virtual {p0}, reconcileSelectedPosition()I

    move-result v10

    .line 457
    .local v10, "selectedPosition":I
    iget v4, p0, mNumColumns:I

    .line 458
    .local v4, "numColumns":I
    iget v12, p0, mVerticalSpacing:I

    .line 461
    .local v12, "verticalSpacing":I
    const/4 v7, -0x1

    .line 463
    .local v7, "rowEnd":I
    iget-boolean v13, p0, mStackFromBottom:Z

    if-nez v13, :cond_2c

    .line 464
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 472
    .local v8, "rowStart":I
    :goto_11
    invoke-virtual {p0}, getVerticalFadingEdgeLength()I

    move-result v2

    .line 473
    .local v2, "fadingEdgeLength":I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, getTopSelectionPixel(III)I

    move-result v11

    .line 475
    .local v11, "topSelectionPixel":I
    iget-boolean v13, p0, mStackFromBottom:Z

    if-eqz v13, :cond_46

    move v13, v7

    :goto_20
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 476
    .local v9, "sel":Landroid/view/View;
    iput v8, p0, mFirstPosition:I

    .line 478
    iget-object v6, p0, mReferenceView:Landroid/view/View;

    .line 480
    .local v6, "referenceView":Landroid/view/View;
    if-nez v6, :cond_48

    .line 500
    :goto_2b
    return-object v9

    .line 466
    .end local v2    # "fadingEdgeLength":I
    .end local v6    # "referenceView":Landroid/view/View;
    .end local v8    # "rowStart":I
    .end local v9    # "sel":Landroid/view/View;
    .end local v11    # "topSelectionPixel":I
    :cond_2c
    iget v13, p0, mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 468
    .local v3, "invertedSelection":I
    iget v13, p0, mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 469
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8    # "rowStart":I
    goto :goto_11

    .end local v3    # "invertedSelection":I
    .restart local v2    # "fadingEdgeLength":I
    .restart local v11    # "topSelectionPixel":I
    :cond_46
    move v13, v8

    .line 475
    goto :goto_20

    .line 484
    .restart local v6    # "referenceView":Landroid/view/View;
    .restart local v9    # "sel":Landroid/view/View;
    :cond_48
    iget-boolean v13, p0, mStackFromBottom:Z

    if-nez v13, :cond_69

    .line 485
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, fillDown(II)Landroid/view/View;

    .line 486
    move/from16 v0, p2

    invoke-direct {p0, v0}, pinToBottom(I)V

    .line 487
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, fillUp(II)Landroid/view/View;

    .line 488
    invoke-direct {p0}, adjustViewsUpOrDown()V

    goto :goto_2b

    .line 490
    :cond_69
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, getBottomSelectionPixel(IIII)I

    move-result v1

    .line 492
    .local v1, "bottomSelectionPixel":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 493
    .local v5, "offset":I
    invoke-virtual {p0, v5}, offsetChildrenTopAndBottom(I)V

    .line 494
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, fillUp(II)Landroid/view/View;

    .line 495
    invoke-direct/range {p0 .. p1}, pinToTop(I)V

    .line 496
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, fillDown(II)Landroid/view/View;

    .line 497
    invoke-direct {p0}, adjustViewsUpOrDown()V

    goto :goto_2b
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 558
    iget v6, p0, mNumColumns:I

    .line 561
    .local v6, "numColumns":I
    const/4 v4, -0x1

    .line 563
    .local v4, "motionRowEnd":I
    iget-boolean v10, p0, mStackFromBottom:Z

    if-nez v10, :cond_1d

    .line 564
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 572
    .local v5, "motionRowStart":I
    :goto_b
    iget-boolean v10, p0, mStackFromBottom:Z

    if-eqz v10, :cond_37

    move v10, v4

    :goto_10
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 575
    .local v8, "temp":Landroid/view/View;
    iput v5, p0, mFirstPosition:I

    .line 577
    iget-object v7, p0, mReferenceView:Landroid/view/View;

    .line 579
    .local v7, "referenceView":Landroid/view/View;
    if-nez v7, :cond_39

    .line 580
    const/4 v8, 0x0

    .line 613
    .end local v8    # "temp":Landroid/view/View;
    :cond_1c
    :goto_1c
    return-object v8

    .line 566
    .end local v5    # "motionRowStart":I
    .end local v7    # "referenceView":Landroid/view/View;
    :cond_1d
    iget v10, p0, mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 568
    .local v3, "invertedSelection":I
    iget v10, p0, mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 569
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "motionRowStart":I
    goto :goto_b

    .end local v3    # "invertedSelection":I
    :cond_37
    move v10, v5

    .line 572
    goto :goto_10

    .line 583
    .restart local v7    # "referenceView":Landroid/view/View;
    .restart local v8    # "temp":Landroid/view/View;
    :cond_39
    iget v9, p0, mVerticalSpacing:I

    .line 588
    .local v9, "verticalSpacing":I
    iget-boolean v10, p0, mStackFromBottom:Z

    if-nez v10, :cond_67

    .line 589
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 590
    .local v0, "above":Landroid/view/View;
    invoke-direct {p0}, adjustViewsUpOrDown()V

    .line 591
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 593
    .local v1, "below":Landroid/view/View;
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    .line 594
    .local v2, "childCount":I
    if-lez v2, :cond_61

    .line 595
    invoke-direct {p0, v6, v9, v2}, correctTooHigh(III)V

    .line 608
    :cond_61
    :goto_61
    if-nez v8, :cond_1c

    .line 610
    if-eqz v0, :cond_8a

    move-object v8, v0

    .line 611
    goto :goto_1c

    .line 598
    .end local v0    # "above":Landroid/view/View;
    .end local v1    # "below":Landroid/view/View;
    .end local v2    # "childCount":I
    :cond_67
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 599
    .restart local v1    # "below":Landroid/view/View;
    invoke-direct {p0}, adjustViewsUpOrDown()V

    .line 600
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 602
    .restart local v0    # "above":Landroid/view/View;
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    .line 603
    .restart local v2    # "childCount":I
    if-lez v2, :cond_61

    .line 604
    invoke-direct {p0, v6, v9, v2}, correctTooLow(III)V

    goto :goto_61

    :cond_8a
    move-object v8, v1

    .line 613
    goto :goto_1c
.end method

.method private fillUp(II)Landroid/view/View;
    .registers 9
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 398
    const/4 v1, 0x0

    .line 400
    .local v1, "selectedView":Landroid/view/View;
    const/4 v0, 0x0

    .line 401
    .local v0, "end":I
    iget v3, p0, mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_f

    .line 402
    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 405
    :cond_f
    :goto_f
    if-le p2, v0, :cond_2a

    if-ltz p1, :cond_2a

    .line 407
    invoke-direct {p0, p1, p2, v5}, makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 408
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1a

    .line 409
    move-object v1, v2

    .line 412
    :cond_1a
    iget-object v3, p0, mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 414
    iput p1, p0, mFirstPosition:I

    .line 416
    iget v3, p0, mNumColumns:I

    sub-int/2addr p1, v3

    .line 417
    goto :goto_f

    .line 419
    .end local v2    # "temp":Landroid/view/View;
    :cond_2a
    iget-boolean v3, p0, mStackFromBottom:Z

    if-eqz v3, :cond_36

    .line 420
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, mFirstPosition:I

    .line 423
    :cond_36
    iget v3, p0, mFirstPosition:I

    iget v4, p0, mFirstPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, setVisibleRangeHint(II)V

    .line 424
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .registers 8
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    .prologue
    .line 770
    move v0, p1

    .line 771
    .local v0, "bottomSelectionPixel":I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_c

    .line 772
    sub-int/2addr v0, p2

    .line 774
    :cond_c
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .registers 5
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    .prologue
    .line 787
    move v0, p1

    .line 788
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_4

    .line 789
    add-int/2addr v0, p2

    .line 791
    :cond_4
    return v0
.end method

.method private isCandidateSelection(II)Z
    .registers 11
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2020
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 2021
    .local v0, "count":I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 2026
    .local v1, "invertedIndex":I
    iget-boolean v6, p0, mStackFromBottom:Z

    if-nez v6, :cond_28

    .line 2027
    iget v6, p0, mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 2028
    .local v3, "rowStart":I
    iget v6, p0, mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2034
    .local v2, "rowEnd":I
    :goto_1d
    sparse-switch p2, :sswitch_data_5e

    .line 2055
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2030
    .end local v2    # "rowEnd":I
    .end local v3    # "rowStart":I
    :cond_28
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 2031
    .restart local v2    # "rowEnd":I
    iget v6, p0, mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3    # "rowStart":I
    goto :goto_1d

    .line 2038
    :sswitch_3d
    if-ne p1, v3, :cond_40

    .line 2053
    :cond_3f
    :goto_3f
    return v4

    :cond_40
    move v4, v5

    .line 2038
    goto :goto_3f

    .line 2041
    :sswitch_42
    if-eqz v3, :cond_3f

    move v4, v5

    goto :goto_3f

    .line 2044
    :sswitch_46
    if-eq p1, v2, :cond_3f

    move v4, v5

    goto :goto_3f

    .line 2047
    :sswitch_4a
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_3f

    move v4, v5

    goto :goto_3f

    .line 2050
    :sswitch_50
    if-ne p1, v3, :cond_54

    if-eqz v3, :cond_3f

    :cond_54
    move v4, v5

    goto :goto_3f

    .line 2053
    :sswitch_56
    if-ne p1, v2, :cond_5c

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_3f

    :cond_5c
    move v4, v5

    goto :goto_3f

    .line 2034
    :sswitch_data_5e
    .sparse-switch
        0x1 -> :sswitch_56
        0x2 -> :sswitch_50
        0x11 -> :sswitch_46
        0x21 -> :sswitch_4a
        0x42 -> :sswitch_3d
        0x82 -> :sswitch_42
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .registers 17
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    .prologue
    .line 1450
    iget-boolean v0, p0, mDataChanged:Z

    if-nez v0, :cond_1a

    .line 1452
    iget-object v0, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1453
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1a

    .line 1456
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1468
    .end local v1    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    :goto_19
    return-object v9

    .line 1463
    .end local v9    # "child":Landroid/view/View;
    :cond_1a
    iget-object v0, p0, mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1466
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1468
    .end local v1    # "child":Landroid/view/View;
    .restart local v9    # "child":Landroid/view/View;
    goto :goto_19
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .registers 23
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    .prologue
    .line 324
    move-object/from16 v0, p0

    iget v9, v0, mColumnWidth:I

    .line 325
    .local v9, "columnWidth":I
    move-object/from16 v0, p0

    iget v12, v0, mHorizontalSpacing:I

    .line 327
    .local v12, "horizontalSpacing":I
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v14

    .line 332
    .local v14, "isLayoutRtl":Z
    if-eqz v14, :cond_7b

    .line 333
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    sub-int v3, v1, v9

    move-object/from16 v0, p0

    iget v1, v0, mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_79

    move v1, v12

    :goto_23
    sub-int v5, v3, v1

    .line 340
    .local v5, "nextLeft":I
    :goto_25
    move-object/from16 v0, p0

    iget-boolean v1, v0, mStackFromBottom:Z

    if-nez v1, :cond_8e

    .line 341
    move-object/from16 v0, p0

    iget v1, v0, mNumColumns:I

    add-int v1, v1, p1

    move-object/from16 v0, p0

    iget v3, v0, mItemCount:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 352
    .local v15, "last":I
    :cond_39
    :goto_39
    const/16 v18, 0x0

    .line 354
    .local v18, "selectedView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, shouldShowSelector()Z

    move-result v11

    .line 355
    .local v11, "hasFocus":Z
    invoke-virtual/range {p0 .. p0}, touchModeDrawsInPressedState()Z

    move-result v13

    .line 356
    .local v13, "inClick":Z
    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v17, v0

    .line 358
    .local v17, "selectedPosition":I
    const/4 v8, 0x0

    .line 359
    .local v8, "child":Landroid/view/View;
    if-eqz v14, :cond_b8

    const/16 v16, -0x1

    .line 360
    .local v16, "nextChildDir":I
    :goto_4e
    move/from16 v2, p1

    .local v2, "pos":I
    :goto_50
    if-ge v2, v15, :cond_c0

    .line 362
    move/from16 v0, v17

    if-ne v2, v0, :cond_bb

    const/4 v6, 0x1

    .line 365
    .local v6, "selected":Z
    :goto_57
    if-eqz p3, :cond_bd

    const/4 v7, -0x1

    .local v7, "where":I
    :goto_5a
    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    .line 366
    invoke-direct/range {v1 .. v7}, makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v8

    .line 368
    mul-int v1, v16, v9

    add-int/2addr v5, v1

    .line 369
    add-int/lit8 v1, v15, -0x1

    if-ge v2, v1, :cond_6e

    .line 370
    mul-int v1, v16, v12

    add-int/2addr v5, v1

    .line 373
    :cond_6e
    if-eqz v6, :cond_76

    if-nez v11, :cond_74

    if-eqz v13, :cond_76

    .line 374
    :cond_74
    move-object/from16 v18, v8

    .line 360
    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 333
    .end local v2    # "pos":I
    .end local v5    # "nextLeft":I
    .end local v6    # "selected":Z
    .end local v7    # "where":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "hasFocus":Z
    .end local v13    # "inClick":Z
    .end local v15    # "last":I
    .end local v16    # "nextChildDir":I
    .end local v17    # "selectedPosition":I
    .end local v18    # "selectedView":Landroid/view/View;
    :cond_79
    const/4 v1, 0x0

    goto :goto_23

    .line 336
    :cond_7b
    move-object/from16 v0, p0

    iget-object v1, v0, mListPadding:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v1, v0, mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_8c

    move v1, v12

    :goto_89
    add-int v5, v3, v1

    .restart local v5    # "nextLeft":I
    goto :goto_25

    .end local v5    # "nextLeft":I
    :cond_8c
    const/4 v1, 0x0

    goto :goto_89

    .line 343
    .restart local v5    # "nextLeft":I
    :cond_8e
    add-int/lit8 v15, p1, 0x1

    .line 344
    .restart local v15    # "last":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, mNumColumns:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 346
    sub-int v1, v15, p1

    move-object/from16 v0, p0

    iget v3, v0, mNumColumns:I

    if-ge v1, v3, :cond_39

    .line 347
    move-object/from16 v0, p0

    iget v1, v0, mNumColumns:I

    sub-int v3, v15, p1

    sub-int/2addr v1, v3

    add-int v3, v9, v12

    mul-int v10, v1, v3

    .line 348
    .local v10, "deltaLeft":I
    if-eqz v14, :cond_b6

    const/4 v1, -0x1

    :goto_b3
    mul-int/2addr v1, v10

    add-int/2addr v5, v1

    goto :goto_39

    :cond_b6
    const/4 v1, 0x1

    goto :goto_b3

    .line 359
    .end local v10    # "deltaLeft":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v11    # "hasFocus":Z
    .restart local v13    # "inClick":Z
    .restart local v17    # "selectedPosition":I
    .restart local v18    # "selectedView":Landroid/view/View;
    :cond_b8
    const/16 v16, 0x1

    goto :goto_4e

    .line 362
    .restart local v2    # "pos":I
    .restart local v16    # "nextChildDir":I
    :cond_bb
    const/4 v6, 0x0

    goto :goto_57

    .line 365
    .restart local v6    # "selected":Z
    :cond_bd
    sub-int v7, v2, p1

    goto :goto_5a

    .line 378
    .end local v6    # "selected":Z
    :cond_c0
    move-object/from16 v0, p0

    iput-object v8, v0, mReferenceView:Landroid/view/View;

    .line 380
    if-eqz v18, :cond_ce

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v1, v0, mReferenceViewInSelectedRow:Landroid/view/View;

    .line 384
    :cond_ce
    return-object v18
.end method

.method private moveSelection(III)Landroid/view/View;
    .registers 26
    .param p1, "delta"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 884
    invoke-virtual/range {p0 .. p0}, getVerticalFadingEdgeLength()I

    move-result v5

    .line 885
    .local v5, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v16, v0

    .line 886
    .local v16, "selectedPosition":I
    move-object/from16 v0, p0

    iget v7, v0, mNumColumns:I

    .line 887
    .local v7, "numColumns":I
    move-object/from16 v0, p0

    iget v0, v0, mVerticalSpacing:I

    move/from16 v18, v0

    .line 891
    .local v18, "verticalSpacing":I
    const/4 v13, -0x1

    .line 893
    .local v13, "rowEnd":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9d

    .line 894
    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .line 896
    .local v9, "oldRowStart":I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .line 908
    .local v14, "rowStart":I
    :goto_29
    sub-int v12, v14, v9

    .line 910
    .local v12, "rowDelta":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, getTopSelectionPixel(III)I

    move-result v17

    .line 911
    .local v17, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, getBottomSelectionPixel(IIII)I

    move-result v4

    .line 915
    .local v4, "bottomSelectionPixel":I
    move-object/from16 v0, p0

    iput v14, v0, mFirstPosition:I

    .line 920
    if-lez v12, :cond_f5

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_e5

    const/4 v8, 0x0

    .line 928
    .local v8, "oldBottom":I
    :goto_4a
    move-object/from16 v0, p0

    iget-boolean v0, v0, mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f1

    move/from16 v19, v13

    :goto_54
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 929
    .local v15, "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, mReferenceView:Landroid/view/View;

    .line 931
    .local v11, "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 954
    .end local v8    # "oldBottom":I
    :goto_6f
    move-object/from16 v0, p0

    iget-boolean v0, v0, mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_168

    .line 955
    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, fillUp(II)Landroid/view/View;

    .line 956
    invoke-direct/range {p0 .. p0}, adjustViewsUpOrDown()V

    .line 957
    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, fillDown(II)Landroid/view/View;

    .line 964
    :goto_9c
    return-object v15

    .line 898
    .end local v4    # "bottomSelectionPixel":I
    .end local v9    # "oldRowStart":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v12    # "rowDelta":I
    .end local v14    # "rowStart":I
    .end local v15    # "sel":Landroid/view/View;
    .end local v17    # "topSelectionPixel":I
    :cond_9d
    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .line 900
    .local v6, "invertedSelection":I
    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    .line 901
    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 903
    .restart local v14    # "rowStart":I
    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    .line 904
    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .line 905
    .restart local v9    # "oldRowStart":I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_29

    .line 925
    .end local v6    # "invertedSelection":I
    .restart local v4    # "bottomSelectionPixel":I
    .restart local v12    # "rowDelta":I
    .restart local v17    # "topSelectionPixel":I
    :cond_e5
    move-object/from16 v0, p0

    iget-object v0, v0, mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_4a

    .restart local v8    # "oldBottom":I
    :cond_f1
    move/from16 v19, v14

    .line 928
    goto/16 :goto_54

    .line 932
    .end local v8    # "oldBottom":I
    :cond_f5
    if-gez v12, :cond_135

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_127

    const/4 v10, 0x0

    .line 939
    .local v10, "oldTop":I
    :goto_100
    move-object/from16 v0, p0

    iget-boolean v0, v0, mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_132

    move/from16 v19, v13

    :goto_10a
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 940
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, mReferenceView:Landroid/view/View;

    .line 942
    .restart local v11    # "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_6f

    .line 936
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_100

    .restart local v10    # "oldTop":I
    :cond_132
    move/from16 v19, v14

    .line 939
    goto :goto_10a

    .line 947
    .end local v10    # "oldTop":I
    :cond_135
    move-object/from16 v0, p0

    iget-object v0, v0, mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_15a

    const/4 v10, 0x0

    .line 950
    .restart local v10    # "oldTop":I
    :goto_13e
    move-object/from16 v0, p0

    iget-boolean v0, v0, mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_165

    move/from16 v19, v13

    :goto_148
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 951
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, mReferenceView:Landroid/view/View;

    .restart local v11    # "referenceView":Landroid/view/View;
    goto/16 :goto_6f

    .line 947
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_15a
    move-object/from16 v0, p0

    iget-object v0, v0, mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_13e

    .restart local v10    # "oldTop":I
    :cond_165
    move/from16 v19, v14

    .line 950
    goto :goto_148

    .line 959
    .end local v10    # "oldTop":I
    .restart local v11    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    :cond_168
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, fillDown(II)Landroid/view/View;

    .line 960
    invoke-direct/range {p0 .. p0}, adjustViewsUpOrDown()V

    .line 961
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, fillUp(II)Landroid/view/View;

    goto/16 :goto_9c
.end method

.method private pinToBottom(I)V
    .registers 7
    .param p1, "childrenBottom"    # I

    .prologue
    .line 514
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 515
    .local v1, "count":I
    iget v3, p0, mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, mItemCount:I

    if-ne v3, v4, :cond_1c

    .line 516
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 517
    .local v0, "bottom":I
    sub-int v2, p1, v0

    .line 518
    .local v2, "offset":I
    if-lez v2, :cond_1c

    .line 519
    invoke-virtual {p0, v2}, offsetChildrenTopAndBottom(I)V

    .line 522
    .end local v0    # "bottom":I
    .end local v2    # "offset":I
    :cond_1c
    return-void
.end method

.method private pinToTop(I)V
    .registers 5
    .param p1, "childrenTop"    # I

    .prologue
    .line 504
    iget v2, p0, mFirstPosition:I

    if-nez v2, :cond_14

    .line 505
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 506
    .local v1, "top":I
    sub-int v0, p1, v1

    .line 507
    .local v0, "offset":I
    if-gez v0, :cond_14

    .line 508
    invoke-virtual {p0, v0}, offsetChildrenTopAndBottom(I)V

    .line 511
    .end local v0    # "offset":I
    .end local v1    # "top":I
    :cond_14
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .registers 35
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flow"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z
    .param p8, "where"    # I

    .prologue
    .line 1489
    const-wide/16 v24, 0x8

    const-string/jumbo v23, "setupGridItem"

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1491
    if-eqz p6, :cond_16e

    invoke-virtual/range {p0 .. p0}, shouldShowSelector()Z

    move-result v23

    if-eqz v23, :cond_16e

    const/4 v15, 0x1

    .line 1492
    .local v15, "isSelected":Z
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v23

    move/from16 v0, v23

    if-eq v15, v0, :cond_171

    const/16 v21, 0x1

    .line 1493
    .local v21, "updateChildSelected":Z
    :goto_1f
    move-object/from16 v0, p0

    iget v0, v0, mTouchMode:I

    move/from16 v17, v0

    .line 1494
    .local v17, "mode":I
    if-lez v17, :cond_175

    const/16 v23, 0x3

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_175

    move-object/from16 v0, p0

    iget v0, v0, mMotionPosition:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p2

    if-ne v0, v1, :cond_175

    const/4 v14, 0x1

    .line 1496
    .local v14, "isPressed":Z
    :goto_3c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v23

    move/from16 v0, v23

    if-eq v14, v0, :cond_178

    const/16 v20, 0x1

    .line 1498
    .local v20, "updateChildPressed":Z
    :goto_46
    if-eqz p7, :cond_50

    if-nez v21, :cond_50

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v23

    if-eqz v23, :cond_17c

    :cond_50
    const/16 v18, 0x1

    .line 1502
    .local v18, "needToMeasure":Z
    :goto_52
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    .line 1503
    .local v19, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v19, :cond_60

    .line 1504
    invoke-virtual/range {p0 .. p0}, generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .end local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    .line 1506
    .restart local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1509
    if-eqz p7, :cond_180

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v23, v0

    if-nez v23, :cond_180

    .line 1510
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1516
    :goto_9d
    if-eqz v21, :cond_a9

    .line 1517
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setSelected(Z)V

    .line 1518
    if-eqz v15, :cond_a9

    .line 1519
    invoke-virtual/range {p0 .. p0}, requestFocus()Z

    .line 1523
    :cond_a9
    if-eqz v20, :cond_b0

    .line 1524
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setPressed(Z)V

    .line 1527
    :cond_b0
    move-object/from16 v0, p0

    iget v0, v0, mChoiceMode:I

    move/from16 v23, v0

    if-eqz v23, :cond_dd

    move-object/from16 v0, p0

    iget-object v0, v0, mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    if-eqz v23, :cond_dd

    .line 1528
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v23, v0

    if-eqz v23, :cond_199

    move-object/from16 v23, p1

    .line 1529
    check-cast v23, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v24

    invoke-interface/range {v23 .. v24}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1536
    :cond_dd
    :goto_dd
    if-eqz v18, :cond_1c6

    .line 1537
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v25, v0

    invoke-static/range {v23 .. v25}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 1540
    .local v8, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, mColumnWidth:I

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v25, v0

    invoke-static/range {v23 .. v25}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    .line 1542
    .local v12, "childWidthSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v8}, Landroid/view/View;->measure(II)V

    .line 1547
    .end local v8    # "childHeightSpec":I
    .end local v12    # "childWidthSpec":I
    :goto_110
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    .line 1548
    .local v22, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1551
    .local v13, "h":I
    if-eqz p4, :cond_1cb

    move/from16 v11, p3

    .line 1553
    .local v11, "childTop":I
    :goto_11c
    invoke-virtual/range {p0 .. p0}, getLayoutDirection()I

    move-result v16

    .line 1554
    .local v16, "layoutDirection":I
    move-object/from16 v0, p0

    iget v0, v0, mGravity:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    .line 1555
    .local v6, "absoluteGravity":I
    and-int/lit8 v23, v6, 0x7

    packed-switch v23, :pswitch_data_20a

    .line 1566
    :pswitch_133
    move/from16 v9, p5

    .line 1570
    .local v9, "childLeft":I
    :goto_135
    if-eqz v18, :cond_1ed

    .line 1571
    add-int v10, v9, v22

    .line 1572
    .local v10, "childRight":I
    add-int v7, v11, v13

    .line 1573
    .local v7, "childBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11, v10, v7}, Landroid/view/View;->layout(IIII)V

    .line 1579
    .end local v7    # "childBottom":I
    .end local v10    # "childRight":I
    :goto_140
    move-object/from16 v0, p0

    iget-boolean v0, v0, mCachingStarted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_151

    .line 1580
    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1583
    :cond_151
    if-eqz p7, :cond_168

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p2

    if-eq v0, v1, :cond_168

    .line 1585
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1588
    :cond_168
    const-wide/16 v24, 0x8

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 1589
    return-void

    .line 1491
    .end local v6    # "absoluteGravity":I
    .end local v9    # "childLeft":I
    .end local v11    # "childTop":I
    .end local v13    # "h":I
    .end local v14    # "isPressed":Z
    .end local v15    # "isSelected":Z
    .end local v16    # "layoutDirection":I
    .end local v17    # "mode":I
    .end local v18    # "needToMeasure":Z
    .end local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v20    # "updateChildPressed":Z
    .end local v21    # "updateChildSelected":Z
    .end local v22    # "w":I
    :cond_16e
    const/4 v15, 0x0

    goto/16 :goto_15

    .line 1492
    .restart local v15    # "isSelected":Z
    :cond_171
    const/16 v21, 0x0

    goto/16 :goto_1f

    .line 1494
    .restart local v17    # "mode":I
    .restart local v21    # "updateChildSelected":Z
    :cond_175
    const/4 v14, 0x0

    goto/16 :goto_3c

    .line 1496
    .restart local v14    # "isPressed":Z
    :cond_178
    const/16 v20, 0x0

    goto/16 :goto_46

    .line 1498
    .restart local v20    # "updateChildPressed":Z
    :cond_17c
    const/16 v18, 0x0

    goto/16 :goto_52

    .line 1512
    .restart local v18    # "needToMeasure":Z
    .restart local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_180
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1513
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v19

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_9d

    .line 1530
    :cond_199
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v23, v0

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_dd

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_dd

    .line 1544
    :cond_1c6
    invoke-virtual/range {p0 .. p1}, cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_110

    .line 1551
    .restart local v13    # "h":I
    .restart local v22    # "w":I
    :cond_1cb
    sub-int v11, p3, v13

    goto/16 :goto_11c

    .line 1557
    .restart local v6    # "absoluteGravity":I
    .restart local v11    # "childTop":I
    .restart local v16    # "layoutDirection":I
    :pswitch_1cf
    move/from16 v9, p5

    .line 1558
    .restart local v9    # "childLeft":I
    goto/16 :goto_135

    .line 1560
    .end local v9    # "childLeft":I
    :pswitch_1d3
    move-object/from16 v0, p0

    iget v0, v0, mColumnWidth:I

    move/from16 v23, v0

    sub-int v23, v23, v22

    div-int/lit8 v23, v23, 0x2

    add-int v9, p5, v23

    .line 1561
    .restart local v9    # "childLeft":I
    goto/16 :goto_135

    .line 1563
    .end local v9    # "childLeft":I
    :pswitch_1e1
    move-object/from16 v0, p0

    iget v0, v0, mColumnWidth:I

    move/from16 v23, v0

    add-int v23, v23, p5

    sub-int v9, v23, v22

    .line 1564
    .restart local v9    # "childLeft":I
    goto/16 :goto_135

    .line 1575
    :cond_1ed
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v23

    sub-int v23, v9, v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1576
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    sub-int v23, v11, v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_140

    .line 1555
    nop

    :pswitch_data_20a
    .packed-switch 0x1
        :pswitch_1d3
        :pswitch_133
        :pswitch_1cf
        :pswitch_133
        :pswitch_1e1
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .registers 15
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    const/4 v10, 0x0

    const/4 v9, 0x6

    .line 1856
    iget v5, p0, mSelectedPosition:I

    .line 1857
    .local v5, "selectedPosition":I
    iget v4, p0, mNumColumns:I

    .line 1862
    .local v4, "numColumns":I
    const/4 v3, 0x0

    .line 1864
    .local v3, "moved":Z
    iget-boolean v7, p0, mStackFromBottom:Z

    if-nez v7, :cond_4e

    .line 1865
    div-int v7, v5, v4

    mul-int v6, v7, v4

    .line 1866
    .local v6, "startOfRowPos":I
    add-int v7, v6, v4

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1873
    .local v0, "endOfRowPos":I
    :goto_1f
    sparse-switch p1, :sswitch_data_a8

    .line 1890
    :cond_22
    :goto_22
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v2

    .line 1891
    .local v2, "isLayoutRtl":Z
    if-le v5, v6, :cond_8c

    if-ne p1, v11, :cond_2c

    if-eqz v2, :cond_30

    :cond_2c
    if-ne p1, v12, :cond_8c

    if-eqz v2, :cond_8c

    .line 1893
    :cond_30
    iput v9, p0, mLayoutMode:I

    .line 1894
    add-int/lit8 v7, v5, -0x1

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, setSelectionInt(I)V

    .line 1895
    const/4 v3, 0x1

    .line 1903
    :cond_3c
    :goto_3c
    if-eqz v3, :cond_48

    .line 1904
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {p0, v7}, playSoundEffect(I)V

    .line 1905
    invoke-virtual {p0}, invokeOnItemScrollListener()V

    .line 1908
    :cond_48
    if-eqz v3, :cond_4d

    .line 1909
    invoke-virtual {p0}, awakenScrollBars()Z

    .line 1912
    :cond_4d
    return v3

    .line 1868
    .end local v0    # "endOfRowPos":I
    .end local v2    # "isLayoutRtl":Z
    .end local v6    # "startOfRowPos":I
    :cond_4e
    iget v7, p0, mItemCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v1, v7, v5

    .line 1869
    .local v1, "invertedSelection":I
    iget v7, p0, mItemCount:I

    add-int/lit8 v7, v7, -0x1

    div-int v8, v1, v4

    mul-int/2addr v8, v4

    sub-int v0, v7, v8

    .line 1870
    .restart local v0    # "endOfRowPos":I
    sub-int v7, v0, v4

    add-int/lit8 v7, v7, 0x1

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .restart local v6    # "startOfRowPos":I
    goto :goto_1f

    .line 1875
    .end local v1    # "invertedSelection":I
    :sswitch_66
    if-lez v6, :cond_22

    .line 1876
    iput v9, p0, mLayoutMode:I

    .line 1877
    sub-int v7, v5, v4

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, setSelectionInt(I)V

    .line 1878
    const/4 v3, 0x1

    goto :goto_22

    .line 1882
    :sswitch_75
    iget v7, p0, mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_22

    .line 1883
    iput v9, p0, mLayoutMode:I

    .line 1884
    add-int v7, v5, v4

    iget v8, p0, mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7}, setSelectionInt(I)V

    .line 1885
    const/4 v3, 0x1

    goto :goto_22

    .line 1896
    .restart local v2    # "isLayoutRtl":Z
    :cond_8c
    if-ge v5, v0, :cond_3c

    if-ne p1, v11, :cond_92

    if-nez v2, :cond_96

    :cond_92
    if-ne p1, v12, :cond_3c

    if-nez v2, :cond_3c

    .line 1898
    :cond_96
    iput v9, p0, mLayoutMode:I

    .line 1899
    add-int/lit8 v7, v5, 0x1

    iget v8, p0, mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7}, setSelectionInt(I)V

    .line 1900
    const/4 v3, 0x1

    goto :goto_3c

    .line 1873
    nop

    :sswitch_data_a8
    .sparse-switch
        0x21 -> :sswitch_66
        0x82 -> :sswitch_75
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .prologue
    .line 1134
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1137
    .local v0, "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_d

    .line 1138
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1139
    .restart local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1142
    :cond_d
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1143
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1144
    iget v2, p0, mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1145
    iget v2, p0, mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1147
    iget-boolean v2, p0, mStackFromBottom:Z

    if-nez v2, :cond_2c

    .line 1148
    iget v2, p0, mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1149
    iget v2, p0, mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1156
    :goto_2b
    return-void

    .line 1151
    :cond_2c
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 1153
    .local v1, "invertedIndex":I
    iget v2, p0, mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1154
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_2b
.end method

.method protected computeVerticalScrollExtent()I
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 2317
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 2318
    .local v1, "count":I
    if-lez v1, :cond_46

    .line 2319
    iget v4, p0, mNumColumns:I

    .line 2320
    .local v4, "numColumns":I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .line 2322
    .local v5, "rowCount":I
    mul-int/lit8 v2, v5, 0x64

    .line 2324
    .local v2, "extent":I
    invoke-virtual {p0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2325
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2326
    .local v6, "top":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, mVerticalSpacing:I

    add-int v3, v8, v9

    .line 2327
    .local v3, "height":I
    if-lez v3, :cond_27

    .line 2328
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 2331
    :cond_27
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2332
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2333
    .local v0, "bottom":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, mVerticalSpacing:I

    add-int v3, v8, v9

    .line 2334
    if-lez v3, :cond_45

    .line 2335
    invoke-virtual {p0}, getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 2340
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "numColumns":I
    .end local v5    # "rowCount":I
    .end local v6    # "top":I
    .end local v7    # "view":Landroid/view/View;
    :cond_45
    :goto_45
    return v2

    :cond_46
    move v2, v8

    goto :goto_45
.end method

.method protected computeVerticalScrollOffset()I
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 2345
    iget v8, p0, mFirstPosition:I

    if-ltz v8, :cond_51

    invoke-virtual {p0}, getChildCount()I

    move-result v8

    if-lez v8, :cond_51

    .line 2346
    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2347
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2348
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, mVerticalSpacing:I

    add-int v0, v8, v9

    .line 2349
    .local v0, "height":I
    if-lez v0, :cond_51

    .line 2350
    iget v1, p0, mNumColumns:I

    .line 2351
    .local v1, "numColumns":I
    iget v8, p0, mItemCount:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    div-int v3, v8, v1

    .line 2355
    .local v3, "rowCount":I
    invoke-virtual {p0}, isStackFromBottom()Z

    move-result v8

    if-eqz v8, :cond_52

    mul-int v8, v3, v1

    iget v9, p0, mItemCount:I

    sub-int v2, v8, v9

    .line 2357
    .local v2, "oddItemsOnFirstRow":I
    :goto_32
    iget v8, p0, mFirstPosition:I

    add-int/2addr v8, v2

    div-int v6, v8, v1

    .line 2358
    .local v6, "whichRow":I
    mul-int/lit8 v8, v6, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v0

    sub-int/2addr v8, v9

    iget v9, p0, mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v3

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2362
    .end local v0    # "height":I
    .end local v1    # "numColumns":I
    .end local v2    # "oddItemsOnFirstRow":I
    .end local v3    # "rowCount":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "whichRow":I
    :cond_51
    return v7

    .restart local v0    # "height":I
    .restart local v1    # "numColumns":I
    .restart local v3    # "rowCount":I
    .restart local v4    # "top":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_52
    move v2, v7

    .line 2355
    goto :goto_32
.end method

.method protected computeVerticalScrollRange()I
    .registers 6

    .prologue
    .line 2368
    iget v0, p0, mNumColumns:I

    .line 2369
    .local v0, "numColumns":I
    iget v3, p0, mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .line 2370
    .local v2, "rowCount":I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2371
    .local v1, "result":I
    iget v3, p0, mScrollY:I

    if-eqz v3, :cond_28

    .line 2373
    iget v3, p0, mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2375
    :cond_28
    return v1
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 2458
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2459
    const-string/jumbo v0, "numColumns"

    invoke-virtual {p0}, getNumColumns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2460
    return-void
.end method

.method fillGap(Z)V
    .registers 11
    .param p1, "down"    # Z

    .prologue
    const/16 v8, 0x22

    .line 251
    iget v1, p0, mNumColumns:I

    .line 252
    .local v1, "numColumns":I
    iget v6, p0, mVerticalSpacing:I

    .line 254
    .local v6, "verticalSpacing":I
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 256
    .local v0, "count":I
    if-eqz p1, :cond_3d

    .line 257
    const/4 v3, 0x0

    .line 258
    .local v3, "paddingTop":I
    iget v7, p0, mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_17

    .line 259
    invoke-virtual {p0}, getListPaddingTop()I

    move-result v3

    .line 261
    :cond_17
    if-lez v0, :cond_3b

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    .line 263
    .local v5, "startOffset":I
    :goto_25
    iget v7, p0, mFirstPosition:I

    add-int v4, v7, v0

    .line 264
    .local v4, "position":I
    iget-boolean v7, p0, mStackFromBottom:Z

    if-eqz v7, :cond_30

    .line 265
    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    .line 267
    :cond_30
    invoke-direct {p0, v4, v5}, fillDown(II)Landroid/view/View;

    .line 268
    invoke-virtual {p0}, getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, correctTooHigh(III)V

    .line 285
    .end local v3    # "paddingTop":I
    :goto_3a
    return-void

    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    .restart local v3    # "paddingTop":I
    :cond_3b
    move v5, v3

    .line 261
    goto :goto_25

    .line 270
    .end local v3    # "paddingTop":I
    :cond_3d
    const/4 v2, 0x0

    .line 271
    .local v2, "paddingBottom":I
    iget v7, p0, mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_48

    .line 272
    invoke-virtual {p0}, getListPaddingBottom()I

    move-result v2

    .line 274
    :cond_48
    if-lez v0, :cond_67

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    .line 276
    .restart local v5    # "startOffset":I
    :goto_55
    iget v4, p0, mFirstPosition:I

    .line 277
    .restart local v4    # "position":I
    iget-boolean v7, p0, mStackFromBottom:Z

    if-nez v7, :cond_6e

    .line 278
    sub-int/2addr v4, v1

    .line 282
    :goto_5c
    invoke-direct {p0, v4, v5}, fillUp(II)Landroid/view/View;

    .line 283
    invoke-virtual {p0}, getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, correctTooLow(III)V

    goto :goto_3a

    .line 274
    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    :cond_67
    invoke-virtual {p0}, getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_55

    .line 280
    .restart local v4    # "position":I
    .restart local v5    # "startOffset":I
    :cond_6e
    add-int/lit8 v4, v4, -0x1

    goto :goto_5c
.end method

.method findMotionRow(I)I
    .registers 6
    .param p1, "y"    # I

    .prologue
    .line 526
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 527
    .local v0, "childCount":I
    if-lez v0, :cond_33

    .line 529
    iget v2, p0, mNumColumns:I

    .line 530
    .local v2, "numColumns":I
    iget-boolean v3, p0, mStackFromBottom:Z

    if-nez v3, :cond_1f

    .line 531
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_33

    .line 532
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1d

    .line 533
    iget v3, p0, mFirstPosition:I

    add-int/2addr v3, v1

    .line 544
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :goto_1c
    return v3

    .line 531
    .restart local v1    # "i":I
    .restart local v2    # "numColumns":I
    :cond_1d
    add-int/2addr v1, v2

    goto :goto_d

    .line 537
    .end local v1    # "i":I
    :cond_1f
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_21
    if-ltz v1, :cond_33

    .line 538
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_31

    .line 539
    iget v3, p0, mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1c

    .line 537
    :cond_31
    sub-int/2addr v1, v2

    goto :goto_21

    .line 544
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :cond_33
    const/4 v3, -0x1

    goto :goto_1c
.end method

.method fullScroll(I)Z
    .registers 5
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x2

    .line 1827
    const/4 v0, 0x0

    .line 1828
    .local v0, "moved":Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_16

    .line 1829
    iput v2, p0, mLayoutMode:I

    .line 1830
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, setSelectionInt(I)V

    .line 1831
    invoke-virtual {p0}, invokeOnItemScrollListener()V

    .line 1832
    const/4 v0, 0x1

    .line 1840
    :cond_10
    :goto_10
    if-eqz v0, :cond_15

    .line 1841
    invoke-virtual {p0}, awakenScrollBars()Z

    .line 1844
    :cond_15
    return v0

    .line 1833
    :cond_16
    const/16 v1, 0x82

    if-ne p1, v1, :cond_10

    .line 1834
    iput v2, p0, mLayoutMode:I

    .line 1835
    iget v1, p0, mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, setSelectionInt(I)V

    .line 1836
    invoke-virtual {p0}, invokeOnItemScrollListener()V

    .line 1837
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2380
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 65
    invoke-virtual {p0}, getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnWidth()I
    .registers 2

    .prologue
    .line 2220
    iget v0, p0, mColumnWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 2084
    iget v0, p0, mGravity:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .registers 2

    .prologue
    .line 2119
    iget v0, p0, mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2264
    iget v0, p0, mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .registers 2

    .prologue
    .line 2237
    iget v0, p0, mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .registers 2

    .prologue
    .line 2139
    iget v0, p0, mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .registers 2

    .prologue
    .line 2190
    iget v0, p0, mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .registers 2

    .prologue
    .line 2170
    iget v0, p0, mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .registers 37

    .prologue
    .line 1160
    move-object/from16 v0, p0

    iget-boolean v7, v0, mBlockLayoutRequests:Z

    .line 1161
    .local v7, "blockLayoutRequests":Z
    if-nez v7, :cond_e

    .line 1162
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, mBlockLayoutRequests:Z

    .line 1166
    :cond_e
    :try_start_e
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1168
    invoke-virtual/range {p0 .. p0}, invalidate()V

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v33, v0

    if-nez v33, :cond_2d

    .line 1171
    invoke-virtual/range {p0 .. p0}, resetList()V

    .line 1172
    invoke-virtual/range {p0 .. p0}, invokeOnItemScrollListener()V
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_264

    .line 1425
    if-nez v7, :cond_2c

    .line 1426
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, mBlockLayoutRequests:Z

    .line 1429
    :cond_2c
    :goto_2c
    return-void

    .line 1176
    :cond_2d
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 1177
    .local v11, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, mBottom:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, mTop:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    sub-int v10, v33, v34

    .line 1179
    .local v10, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v9

    .line 1181
    .local v9, "childCount":I
    const/4 v13, 0x0

    .line 1184
    .local v13, "delta":I
    const/16 v25, 0x0

    .line 1185
    .local v25, "oldSel":Landroid/view/View;
    const/16 v24, 0x0

    .line 1186
    .local v24, "oldFirst":Landroid/view/View;
    const/16 v23, 0x0

    .line 1189
    .local v23, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, mLayoutMode:I

    move/from16 v33, v0

    packed-switch v33, :pswitch_data_458

    .line 1208
    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v34, v0

    sub-int v19, v33, v34

    .line 1209
    .local v19, "index":I
    if-ltz v19, :cond_83

    move/from16 v0, v19

    if-ge v0, v9, :cond_83

    .line 1210
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 1214
    :cond_83
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 1217
    .end local v19    # "index":I
    :cond_8d
    :goto_8d
    :pswitch_8d
    move-object/from16 v0, p0

    iget-boolean v12, v0, mDataChanged:Z

    .line 1218
    .local v12, "dataChanged":Z
    if-eqz v12, :cond_96

    .line 1219
    invoke-virtual/range {p0 .. p0}, handleDataChanged()V

    .line 1224
    :cond_96
    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v33, v0

    if-nez v33, :cond_e4

    .line 1225
    invoke-virtual/range {p0 .. p0}, resetList()V

    .line 1226
    invoke-virtual/range {p0 .. p0}, invokeOnItemScrollListener()V
    :try_end_a4
    .catchall {:try_start_2d .. :try_end_a4} :catchall_264

    .line 1425
    if-nez v7, :cond_2c

    .line 1426
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, mBlockLayoutRequests:Z

    goto/16 :goto_2c

    .line 1191
    .end local v12    # "dataChanged":Z
    :pswitch_b0
    :try_start_b0
    move-object/from16 v0, p0

    iget v0, v0, mNextSelectedPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v34, v0

    sub-int v19, v33, v34

    .line 1192
    .restart local v19    # "index":I
    if-ltz v19, :cond_8d

    move/from16 v0, v19

    if-ge v0, v9, :cond_8d

    .line 1193
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v23

    goto :goto_8d

    .line 1202
    .end local v19    # "index":I
    :pswitch_cd
    move-object/from16 v0, p0

    iget v0, v0, mNextSelectedPosition:I

    move/from16 v33, v0

    if-ltz v33, :cond_8d

    .line 1203
    move-object/from16 v0, p0

    iget v0, v0, mNextSelectedPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v34, v0

    sub-int v13, v33, v34

    goto :goto_8d

    .line 1230
    .restart local v12    # "dataChanged":Z
    :cond_e4
    move-object/from16 v0, p0

    iget v0, v0, mNextSelectedPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, setSelectedPositionInt(I)V

    .line 1232
    const/4 v4, 0x0

    .line 1233
    .local v4, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v5, 0x0

    .line 1234
    .local v5, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v6, -0x1

    .line 1235
    .local v6, "accessibilityFocusPosition":I
    const/16 v21, 0x0

    .line 1240
    .local v21, "mInsideViewAccFocused":Z
    invoke-virtual/range {p0 .. p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v31

    .line 1241
    .local v31, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v31, :cond_12e

    .line 1242
    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v16

    .line 1243
    .local v16, "focusHost":Landroid/view/View;
    if-eqz v16, :cond_12e

    .line 1244
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v15

    .line 1245
    .local v15, "focusChild":Landroid/view/View;
    move-object/from16 v0, v16

    if-eq v0, v15, :cond_110

    .line 1246
    const/16 v21, 0x1

    .line 1248
    :cond_110
    if-eqz v15, :cond_12e

    .line 1249
    if-eqz v12, :cond_122

    invoke-virtual {v15}, Landroid/view/View;->hasTransientState()Z

    move-result v33

    if-nez v33, :cond_122

    move-object/from16 v0, p0

    iget-boolean v0, v0, mAdapterHasStableIds:Z

    move/from16 v33, v0

    if-eqz v33, :cond_128

    .line 1253
    :cond_122
    move-object/from16 v5, v16

    .line 1254
    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 1259
    :cond_128
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getPositionForView(Landroid/view/View;)I

    move-result v6

    .line 1266
    .end local v15    # "focusChild":Landroid/view/View;
    .end local v16    # "focusHost":Landroid/view/View;
    :cond_12e
    move-object/from16 v0, p0

    iget v14, v0, mFirstPosition:I

    .line 1267
    .local v14, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v28, v0

    .line 1269
    .local v28, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v12, :cond_156

    .line 1270
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_13c
    move/from16 v0, v17

    if-ge v0, v9, :cond_15b

    .line 1271
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v33

    add-int v34, v14, v17

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1270
    add-int/lit8 v17, v17, 0x1

    goto :goto_13c

    .line 1274
    .end local v17    # "i":I
    :cond_156
    move-object/from16 v0, v28

    invoke-virtual {v0, v9, v14}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1278
    :cond_15b
    invoke-virtual/range {p0 .. p0}, detachAllViewsFromParent()V

    .line 1279
    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1281
    move-object/from16 v0, p0

    iget v0, v0, mLayoutMode:I

    move/from16 v33, v0

    packed-switch v33, :pswitch_data_468

    .line 1309
    if-nez v9, :cond_2ed

    .line 1310
    move-object/from16 v0, p0

    iget-boolean v0, v0, mStackFromBottom:Z

    move/from16 v33, v0

    if-nez v33, :cond_2c1

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v33, v0

    if-eqz v33, :cond_182

    invoke-virtual/range {p0 .. p0}, isInTouchMode()Z

    move-result v33

    if-eqz v33, :cond_2bd

    :cond_182
    const/16 v33, -0x1

    :goto_184
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, setSelectedPositionInt(I)V

    .line 1313
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, fillFromTop(I)Landroid/view/View;

    move-result-object v30

    .line 1335
    .end local v11    # "childrenTop":I
    .local v30, "sel":Landroid/view/View;
    :goto_191
    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1337
    if-eqz v30, :cond_353

    .line 1338
    const/16 v33, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, positionSelector(ILandroid/view/View;)V

    .line 1339
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTop()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mSelectedTop:I

    .line 1365
    :cond_1ab
    :goto_1ab
    if-eqz v31, :cond_1da

    .line 1366
    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v22

    .line 1367
    .local v22, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v22, :cond_40d

    .line 1368
    if-eqz v5, :cond_3e4

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v33

    if-eqz v33, :cond_3e4

    .line 1370
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v27

    .line 1372
    .local v27, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v4, :cond_3df

    if-eqz v27, :cond_3df

    .line 1373
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v32

    .line 1375
    .local v32, "virtualViewId":I
    const/16 v33, 0x40

    const/16 v34, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1408
    .end local v22    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v27    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v32    # "virtualViewId":I
    :cond_1da
    :goto_1da
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mLayoutMode:I

    .line 1409
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, mDataChanged:Z

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_207

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, post(Ljava/lang/Runnable;)Z

    .line 1412
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1414
    :cond_207
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, mNeedSync:Z

    .line 1415
    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, setNextSelectedPositionInt(I)V

    .line 1417
    invoke-virtual/range {p0 .. p0}, updateScrollIndicators()V

    .line 1419
    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v33, v0

    if-lez v33, :cond_22a

    .line 1420
    invoke-virtual/range {p0 .. p0}, checkSelectionChanged()V

    .line 1423
    :cond_22a
    invoke-virtual/range {p0 .. p0}, invokeOnItemScrollListener()V
    :try_end_22d
    .catchall {:try_start_b0 .. :try_end_22d} :catchall_264

    .line 1425
    if-nez v7, :cond_2c

    .line 1426
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, mBlockLayoutRequests:Z

    goto/16 :goto_2c

    .line 1283
    .end local v30    # "sel":Landroid/view/View;
    .restart local v11    # "childrenTop":I
    :pswitch_239
    if-eqz v23, :cond_249

    .line 1284
    :try_start_23b
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1, v11, v10}, fillFromSelection(III)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_191

    .line 1286
    .end local v30    # "sel":Landroid/view/View;
    :cond_249
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, fillSelection(II)Landroid/view/View;

    move-result-object v30

    .line 1288
    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_191

    .line 1290
    .end local v30    # "sel":Landroid/view/View;
    :pswitch_251
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mFirstPosition:I

    .line 1291
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, fillFromTop(I)Landroid/view/View;

    move-result-object v30

    .line 1292
    .restart local v30    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, adjustViewsUpOrDown()V
    :try_end_262
    .catchall {:try_start_23b .. :try_end_262} :catchall_264

    goto/16 :goto_191

    .line 1425
    .end local v4    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .end local v9    # "childCount":I
    .end local v10    # "childrenBottom":I
    .end local v11    # "childrenTop":I
    .end local v12    # "dataChanged":Z
    .end local v13    # "delta":I
    .end local v14    # "firstPosition":I
    .end local v21    # "mInsideViewAccFocused":Z
    .end local v23    # "newSel":Landroid/view/View;
    .end local v24    # "oldFirst":Landroid/view/View;
    .end local v25    # "oldSel":Landroid/view/View;
    .end local v28    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v30    # "sel":Landroid/view/View;
    .end local v31    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :catchall_264
    move-exception v33

    if-nez v7, :cond_26f

    .line 1426
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, mBlockLayoutRequests:Z

    :cond_26f
    throw v33

    .line 1295
    .restart local v4    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v5    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .restart local v9    # "childCount":I
    .restart local v10    # "childrenBottom":I
    .restart local v11    # "childrenTop":I
    .restart local v12    # "dataChanged":Z
    .restart local v13    # "delta":I
    .restart local v14    # "firstPosition":I
    .restart local v21    # "mInsideViewAccFocused":Z
    .restart local v23    # "newSel":Landroid/view/View;
    .restart local v24    # "oldFirst":Landroid/view/View;
    .restart local v25    # "oldSel":Landroid/view/View;
    .restart local v28    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v31    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :pswitch_270
    :try_start_270
    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1, v10}, fillUp(II)Landroid/view/View;

    move-result-object v30

    .line 1296
    .restart local v30    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, adjustViewsUpOrDown()V

    goto/16 :goto_191

    .line 1299
    .end local v30    # "sel":Landroid/view/View;
    :pswitch_285
    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpecificTop:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .line 1300
    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_191

    .line 1302
    .end local v30    # "sel":Landroid/view/View;
    :pswitch_29d
    move-object/from16 v0, p0

    iget v0, v0, mSyncPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpecificTop:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .line 1303
    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_191

    .line 1306
    .end local v30    # "sel":Landroid/view/View;
    :pswitch_2b5
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11, v10}, moveSelection(III)Landroid/view/View;

    move-result-object v30

    .line 1307
    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_191

    .line 1311
    .end local v30    # "sel":Landroid/view/View;
    :cond_2bd
    const/16 v33, 0x0

    goto/16 :goto_184

    .line 1315
    :cond_2c1
    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v33, v0

    add-int/lit8 v20, v33, -0x1

    .line 1316
    .local v20, "last":I
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2d7

    invoke-virtual/range {p0 .. p0}, isInTouchMode()Z

    move-result v33

    if-eqz v33, :cond_2ea

    :cond_2d7
    const/16 v33, -0x1

    :goto_2d9
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, setSelectedPositionInt(I)V

    .line 1318
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v10}, fillFromBottom(II)Landroid/view/View;

    move-result-object v30

    .line 1319
    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_191

    .end local v30    # "sel":Landroid/view/View;
    :cond_2ea
    move/from16 v33, v20

    .line 1316
    goto :goto_2d9

    .line 1321
    .end local v20    # "last":I
    :cond_2ed
    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v33, v0

    if-ltz v33, :cond_31e

    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_31e

    .line 1322
    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v33, v0

    if-nez v25, :cond_319

    .end local v11    # "childrenTop":I
    :goto_30f
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1, v11}, fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_191

    .end local v30    # "sel":Landroid/view/View;
    .restart local v11    # "childrenTop":I
    :cond_319
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_30f

    .line 1324
    :cond_31e
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_347

    .line 1325
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v33, v0

    if-nez v24, :cond_342

    .end local v11    # "childrenTop":I
    :goto_338
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1, v11}, fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_191

    .end local v30    # "sel":Landroid/view/View;
    .restart local v11    # "childrenTop":I
    :cond_342
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_338

    .line 1328
    :cond_347
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1, v11}, fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_191

    .line 1341
    .end local v11    # "childrenTop":I
    :cond_353
    move-object/from16 v0, p0

    iget v0, v0, mTouchMode:I

    move/from16 v33, v0

    if-lez v33, :cond_394

    move-object/from16 v0, p0

    iget v0, v0, mTouchMode:I

    move/from16 v33, v0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_394

    const/16 v18, 0x1

    .line 1343
    .local v18, "inTouchMode":Z
    :goto_36b
    if-eqz v18, :cond_397

    .line 1345
    move-object/from16 v0, p0

    iget v0, v0, mMotionPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1346
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_1ab

    .line 1347
    move-object/from16 v0, p0

    iget v0, v0, mMotionPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v8}, positionSelector(ILandroid/view/View;)V

    goto/16 :goto_1ab

    .line 1341
    .end local v8    # "child":Landroid/view/View;
    .end local v18    # "inTouchMode":Z
    :cond_394
    const/16 v18, 0x0

    goto :goto_36b

    .line 1349
    .restart local v18    # "inTouchMode":Z
    :cond_397
    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_3cc

    .line 1353
    move-object/from16 v0, p0

    iget v0, v0, mSelectorPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1354
    .restart local v8    # "child":Landroid/view/View;
    if-eqz v8, :cond_1ab

    .line 1355
    move-object/from16 v0, p0

    iget v0, v0, mSelectorPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v8}, positionSelector(ILandroid/view/View;)V

    goto/16 :goto_1ab

    .line 1359
    .end local v8    # "child":Landroid/view/View;
    :cond_3cc
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mSelectedTop:I

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_1ab

    .line 1378
    .end local v18    # "inTouchMode":Z
    .restart local v22    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v27    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3df
    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_1da

    .line 1380
    .end local v27    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3e4
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_1da

    .line 1382
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v33, v0

    sub-int v33, v6, v33

    const/16 v34, 0x0

    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    invoke-static/range {v33 .. v35}, Landroid/util/MathUtils;->constrain(III)I

    move-result v26

    .line 1385
    .local v26, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 1386
    .local v29, "restoreView":Landroid/view/View;
    if-eqz v29, :cond_1da

    .line 1387
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_1da

    .line 1390
    .end local v26    # "position":I
    .end local v29    # "restoreView":Landroid/view/View;
    :cond_40d
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_1da

    .line 1391
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v33, v0

    sub-int v33, v6, v33

    const/16 v34, 0x0

    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    invoke-static/range {v33 .. v35}, Landroid/util/MathUtils;->constrain(III)I

    move-result v26

    .line 1394
    .restart local v26    # "position":I
    if-eqz v21, :cond_44f

    .line 1395
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v33

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 1399
    .restart local v29    # "restoreView":Landroid/view/View;
    :goto_439
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v33

    if-eqz v33, :cond_1da

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_1da

    .line 1400
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 1401
    if-eqz v29, :cond_1da

    .line 1402
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_1da

    .line 1397
    .end local v29    # "restoreView":Landroid/view/View;
    :cond_44f
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;
    :try_end_456
    .catchall {:try_start_270 .. :try_end_456} :catchall_264

    move-result-object v29

    .restart local v29    # "restoreView":Landroid/view/View;
    goto :goto_439

    .line 1189
    :pswitch_data_458
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_b0
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_cd
    .end packed-switch

    .line 1281
    :pswitch_data_468
    .packed-switch 0x1
        :pswitch_251
        :pswitch_239
        :pswitch_270
        :pswitch_285
        :pswitch_29d
        :pswitch_2b5
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 6
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v1, -0x1

    .line 235
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 236
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    move p1, v1

    .line 243
    .end local p1    # "position":I
    :cond_c
    :goto_c
    return p1

    .line 240
    .restart local p1    # "position":I
    :cond_d
    if-ltz p1, :cond_13

    iget v2, p0, mItemCount:I

    if-lt p1, v2, :cond_c

    :cond_13
    move p1, v1

    .line 241
    goto :goto_c
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 13
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1975
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1977
    const/4 v1, -0x1

    .line 1978
    .local v1, "closestChildIndex":I
    if-eqz p1, :cond_37

    if-eqz p3, :cond_37

    .line 1979
    iget v7, p0, mScrollX:I

    iget v8, p0, mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1983
    iget-object v6, p0, mTempRect:Landroid/graphics/Rect;

    .line 1984
    .local v6, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1985
    .local v4, "minDistance":I
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 1986
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v0, :cond_37

    .line 1988
    invoke-direct {p0, v3, p2}, isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_24

    .line 1986
    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1992
    :cond_24
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1993
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1994
    invoke-virtual {p0, v5, v6}, offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1995
    invoke-static {p3, v6, p2}, getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1997
    .local v2, "distance":I
    if-ge v2, v4, :cond_21

    .line 1998
    move v4, v2

    .line 1999
    move v1, v3

    goto :goto_21

    .line 2004
    .end local v0    # "childCount":I
    .end local v2    # "distance":I
    .end local v3    # "i":I
    .end local v4    # "minDistance":I
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "otherRect":Landroid/graphics/Rect;
    :cond_37
    if-ltz v1, :cond_40

    .line 2005
    iget v7, p0, mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, setSelection(I)V

    .line 2009
    :goto_3f
    return-void

    .line 2007
    :cond_40
    invoke-virtual {p0}, requestLayout()V

    goto :goto_3f
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2429
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2431
    invoke-virtual {p0}, getCount()I

    move-result v7

    .line 2432
    .local v7, "count":I
    invoke-virtual {p0}, getNumColumns()I

    move-result v6

    .line 2433
    .local v6, "columnsCount":I
    div-int v11, v7, v6

    .line 2437
    .local v11, "rowsCount":I
    iget-boolean v1, p0, mStackFromBottom:Z

    if-nez v1, :cond_31

    .line 2438
    rem-int v2, p2, v6

    .line 2439
    .local v2, "column":I
    div-int v0, p2, v6

    .line 2447
    .local v0, "row":I
    :goto_15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    .line 2448
    .local v10, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v10, :cond_42

    iget v1, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-eq v1, v3, :cond_42

    const/4 v4, 0x1

    .line 2449
    .local v4, "isHeading":Z
    :goto_23
    invoke-virtual {p0, p2}, isItemChecked(I)Z

    move-result v5

    .line 2450
    .local v5, "isSelected":Z
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v9

    .line 2452
    .local v9, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 2453
    return-void

    .line 2441
    .end local v0    # "row":I
    .end local v2    # "column":I
    .end local v4    # "isHeading":Z
    .end local v5    # "isSelected":Z
    .end local v9    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .end local v10    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_31
    add-int/lit8 v1, v7, -0x1

    sub-int v8, v1, p2

    .line 2443
    .local v8, "invertedIndex":I
    add-int/lit8 v1, v6, -0x1

    rem-int v3, v8, v6

    sub-int v2, v1, v3

    .line 2444
    .restart local v2    # "column":I
    add-int/lit8 v1, v11, -0x1

    div-int v3, v8, v6

    sub-int v0, v1, v3

    .restart local v0    # "row":I
    goto :goto_15

    .line 2448
    .end local v8    # "invertedIndex":I
    .restart local v10    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_42
    const/4 v4, 0x0

    goto :goto_23
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2386
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2388
    invoke-virtual {p0}, getNumColumns()I

    move-result v1

    .line 2389
    .local v1, "columnsCount":I
    invoke-virtual {p0}, getCount()I

    move-result v4

    div-int v2, v4, v1

    .line 2390
    .local v2, "rowsCount":I
    invoke-virtual {p0}, getSelectionModeForAccessibility()I

    move-result v3

    .line 2391
    .local v3, "selectionMode":I
    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 2393
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 2395
    if-gtz v1, :cond_1d

    if-lez v2, :cond_22

    .line 2396
    :cond_1d
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2398
    :cond_22
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1645
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1650
    invoke-direct {p0, p1, p2, p3}, commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1655
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1044
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1046
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 1047
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1048
    .local v11, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 1049
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1051
    .local v12, "heightSize":I
    if-nez v17, :cond_45

    .line 1052
    move-object/from16 v0, p0

    iget v0, v0, mColumnWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_1fa

    .line 1053
    move-object/from16 v0, p0

    iget v0, v0, mColumnWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    .line 1057
    :goto_3f
    invoke-virtual/range {p0 .. p0}, getVerticalScrollbarWidth()I

    move-result v19

    add-int v18, v18, v19

    .line 1060
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 1061
    .local v7, "childWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, determineColumns(I)Z

    move-result v10

    .line 1063
    .local v10, "didNotInitiallyFit":Z
    const/4 v4, 0x0

    .line 1064
    .local v4, "childHeight":I
    const/4 v6, 0x0

    .line 1066
    .local v6, "childState":I
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_216

    const/16 v19, 0x0

    :goto_73
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mItemCount:I

    .line 1067
    move-object/from16 v0, p0

    iget v9, v0, mItemCount:I

    .line 1068
    .local v9, "count":I
    if-lez v9, :cond_130

    .line 1069
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mIsScrap:[Z

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1071
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1072
    .local v16, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v16, :cond_a4

    .line 1073
    invoke-virtual/range {p0 .. p0}, generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .end local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1074
    .restart local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1076
    :cond_a4
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1078
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1080
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, getChildMeasureSpec(III)I

    move-result v5

    .line 1083
    .local v5, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, mColumnWidth:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, getChildMeasureSpec(III)I

    move-result v8

    .line 1085
    .local v8, "childWidthSpec":I
    invoke-virtual {v3, v8, v5}, Landroid/view/View;->measure(II)V

    .line 1087
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1088
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, combineMeasuredStates(II)I

    move-result v6

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v19

    if-eqz v19, :cond_130

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1095
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_130
    if-nez v11, :cond_156

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v19, v19, v4

    invoke-virtual/range {p0 .. p0}, getVerticalFadingEdgeLength()I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    .line 1100
    :cond_156
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v11, v0, :cond_190

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v15, v19, v20

    .line 1103
    .local v15, "ourSize":I
    move-object/from16 v0, p0

    iget v14, v0, mNumColumns:I

    .line 1104
    .local v14, "numColumns":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_17b
    if-ge v13, v9, :cond_18f

    .line 1105
    add-int/2addr v15, v4

    .line 1106
    add-int v19, v13, v14

    move/from16 v0, v19

    if-ge v0, v9, :cond_18c

    .line 1107
    move-object/from16 v0, p0

    iget v0, v0, mVerticalSpacing:I

    move/from16 v19, v0

    add-int v15, v15, v19

    .line 1109
    :cond_18c
    if-lt v15, v12, :cond_222

    .line 1110
    move v15, v12

    .line 1114
    :cond_18f
    move v12, v15

    .line 1117
    .end local v13    # "i":I
    .end local v14    # "numColumns":I
    .end local v15    # "ourSize":I
    :cond_190
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1ec

    move-object/from16 v0, p0

    iget v0, v0, mRequestedNumColumns:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1ec

    .line 1118
    move-object/from16 v0, p0

    iget v0, v0, mRequestedNumColumns:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, mColumnWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, mRequestedNumColumns:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, mHorizontalSpacing:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v15, v19, v20

    .line 1121
    .restart local v15    # "ourSize":I
    move/from16 v0, v18

    if-gt v15, v0, :cond_1e8

    if-eqz v10, :cond_1ec

    .line 1122
    :cond_1e8
    const/high16 v19, 0x1000000

    or-int v18, v18, v19

    .line 1126
    .end local v15    # "ourSize":I
    :cond_1ec
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, setMeasuredDimension(II)V

    .line 1127
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mWidthMeasureSpec:I

    .line 1128
    return-void

    .line 1055
    .end local v4    # "childHeight":I
    .end local v6    # "childState":I
    .end local v7    # "childWidth":I
    .end local v9    # "count":I
    .end local v10    # "didNotInitiallyFit":Z
    :cond_1fa
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    goto/16 :goto_3f

    .line 1066
    .restart local v4    # "childHeight":I
    .restart local v6    # "childState":I
    .restart local v7    # "childWidth":I
    .restart local v10    # "didNotInitiallyFit":Z
    :cond_216
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/ListAdapter;->getCount()I

    move-result v19

    goto/16 :goto_73

    .line 1104
    .restart local v9    # "count":I
    .restart local v13    # "i":I
    .restart local v14    # "numColumns":I
    .restart local v15    # "ourSize":I
    :cond_222
    add-int/2addr v13, v14

    goto/16 :goto_17b
.end method

.method pageScroll(I)Z
    .registers 7
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 1801
    const/4 v0, -0x1

    .line 1803
    .local v0, "nextPage":I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1e

    .line 1804
    iget v2, p0, mSelectedPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1809
    :cond_11
    :goto_11
    if-ltz v0, :cond_1d

    .line 1810
    invoke-virtual {p0, v0}, setSelectionInt(I)V

    .line 1811
    invoke-virtual {p0}, invokeOnItemScrollListener()V

    .line 1812
    invoke-virtual {p0}, awakenScrollBars()Z

    .line 1813
    const/4 v1, 0x1

    .line 1816
    :cond_1d
    return v1

    .line 1805
    :cond_1e
    const/16 v2, 0x82

    if-ne p1, v2, :cond_11

    .line 1806
    iget v2, p0, mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, mSelectedPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_11
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 2403
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2423
    :goto_7
    return v3

    .line 2407
    :cond_8
    packed-switch p1, :pswitch_data_2a

    .line 2423
    :cond_b
    const/4 v3, 0x0

    goto :goto_7

    .line 2411
    :pswitch_d
    invoke-virtual {p0}, getNumColumns()I

    move-result v0

    .line 2412
    .local v0, "numColumns":I
    const-string v4, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2413
    .local v2, "row":I
    mul-int v4, v2, v0

    invoke-virtual {p0}, getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2414
    .local v1, "position":I
    if-ltz v2, :cond_b

    .line 2417
    invoke-virtual {p0, v1}, smoothScrollToPosition(I)V

    goto :goto_7

    .line 2407
    :pswitch_data_2a
    .packed-switch 0x1020037
        :pswitch_d
    .end packed-switch
.end method

.method sequenceScroll(I)Z
    .registers 15
    .param p1, "direction"    # I

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1920
    iget v5, p0, mSelectedPosition:I

    .line 1921
    .local v5, "selectedPosition":I
    iget v4, p0, mNumColumns:I

    .line 1922
    .local v4, "numColumns":I
    iget v0, p0, mItemCount:I

    .line 1926
    .local v0, "count":I
    iget-boolean v10, p0, mStackFromBottom:Z

    if-nez v10, :cond_32

    .line 1927
    div-int v10, v5, v4

    mul-int v7, v10, v4

    .line 1928
    .local v7, "startOfRow":I
    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1935
    .local v1, "endOfRow":I
    :goto_1b
    const/4 v3, 0x0

    .line 1936
    .local v3, "moved":Z
    const/4 v6, 0x0

    .line 1937
    .local v6, "showScroll":Z
    packed-switch p1, :pswitch_data_68

    .line 1961
    :cond_20
    :goto_20
    if-eqz v3, :cond_2c

    .line 1962
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, playSoundEffect(I)V

    .line 1963
    invoke-virtual {p0}, invokeOnItemScrollListener()V

    .line 1966
    :cond_2c
    if-eqz v6, :cond_31

    .line 1967
    invoke-virtual {p0}, awakenScrollBars()Z

    .line 1970
    :cond_31
    return v3

    .line 1930
    .end local v1    # "endOfRow":I
    .end local v3    # "moved":Z
    .end local v6    # "showScroll":Z
    .end local v7    # "startOfRow":I
    :cond_32
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    .line 1931
    .local v2, "invertedSelection":I
    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    .line 1932
    .restart local v1    # "endOfRow":I
    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "startOfRow":I
    goto :goto_1b

    .line 1939
    .end local v2    # "invertedSelection":I
    .restart local v3    # "moved":Z
    .restart local v6    # "showScroll":Z
    :pswitch_46
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_20

    .line 1941
    iput v12, p0, mLayoutMode:I

    .line 1942
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, setSelectionInt(I)V

    .line 1943
    const/4 v3, 0x1

    .line 1945
    if-ne v5, v1, :cond_56

    move v6, v8

    :goto_55
    goto :goto_20

    :cond_56
    move v6, v9

    goto :goto_55

    .line 1950
    :pswitch_58
    if-lez v5, :cond_20

    .line 1952
    iput v12, p0, mLayoutMode:I

    .line 1953
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, setSelectionInt(I)V

    .line 1954
    const/4 v3, 0x1

    .line 1956
    if-ne v5, v7, :cond_66

    move v6, v8

    :goto_65
    goto :goto_20

    :cond_66
    move v6, v9

    goto :goto_65

    .line 1937
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_58
        :pswitch_46
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 65
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 8
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_11

    iget-object v1, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_11

    .line 191
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 194
    :cond_11
    invoke-virtual {p0}, resetList()V

    .line 195
    iget-object v1, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 196
    iput-object p1, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 198
    const/4 v1, -0x1

    iput v1, p0, mOldSelectedPosition:I

    .line 199
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, mOldSelectedRowId:J

    .line 202
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_71

    .line 205
    iget v1, p0, mItemCount:I

    iput v1, p0, mOldItemCount:I

    .line 206
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, mItemCount:I

    .line 207
    iput-boolean v5, p0, mDataChanged:Z

    .line 208
    invoke-virtual {p0}, checkFocus()V

    .line 210
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 211
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 213
    iget-object v1, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 216
    iget-boolean v1, p0, mStackFromBottom:Z

    if-eqz v1, :cond_6c

    .line 217
    iget v1, p0, mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, lookForSelectablePosition(IZ)I

    move-result v0

    .line 221
    .local v0, "position":I
    :goto_5f
    invoke-virtual {p0, v0}, setSelectedPositionInt(I)V

    .line 222
    invoke-virtual {p0, v0}, setNextSelectedPositionInt(I)V

    .line 223
    invoke-virtual {p0}, checkSelectionChanged()V

    .line 230
    .end local v0    # "position":I
    :goto_68
    invoke-virtual {p0}, requestLayout()V

    .line 231
    return-void

    .line 219
    :cond_6c
    invoke-virtual {p0, v4, v5}, lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_5f

    .line 225
    .end local v0    # "position":I
    :cond_71
    invoke-virtual {p0}, checkFocus()V

    .line 227
    invoke-virtual {p0}, checkSelectionChanged()V

    goto :goto_68
.end method

.method public setColumnWidth(I)V
    .registers 3
    .param p1, "columnWidth"    # I

    .prologue
    .line 2201
    iget v0, p0, mRequestedColumnWidth:I

    if-eq p1, v0, :cond_9

    .line 2202
    iput p1, p0, mRequestedColumnWidth:I

    .line 2203
    invoke-virtual {p0}, requestLayoutIfNecessary()V

    .line 2205
    :cond_9
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 2070
    iget v0, p0, mGravity:I

    if-eq v0, p1, :cond_9

    .line 2071
    iput p1, p0, mGravity:I

    .line 2072
    invoke-virtual {p0}, requestLayoutIfNecessary()V

    .line 2074
    :cond_9
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .registers 3
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 2097
    iget v0, p0, mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_9

    .line 2098
    iput p1, p0, mRequestedHorizontalSpacing:I

    .line 2099
    invoke-virtual {p0}, requestLayoutIfNecessary()V

    .line 2101
    :cond_9
    return-void
.end method

.method public setNumColumns(I)V
    .registers 3
    .param p1, "numColumns"    # I

    .prologue
    .line 2248
    iget v0, p0, mRequestedNumColumns:I

    if-eq p1, v0, :cond_9

    .line 2249
    iput p1, p0, mRequestedNumColumns:I

    .line 2250
    invoke-virtual {p0}, requestLayoutIfNecessary()V

    .line 2252
    :cond_9
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 181
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1601
    invoke-virtual {p0}, isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1602
    invoke-virtual {p0, p1}, setNextSelectedPositionInt(I)V

    .line 1606
    :goto_9
    const/4 v0, 0x2

    iput v0, p0, mLayoutMode:I

    .line 1607
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_15

    .line 1608
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1610
    :cond_15
    invoke-virtual {p0}, requestLayout()V

    .line 1611
    return-void

    .line 1604
    :cond_19
    iput p1, p0, mResurrectToPosition:I

    goto :goto_9
.end method

.method setSelectionInt(I)V
    .registers 9
    .param p1, "position"    # I

    .prologue
    .line 1620
    iget v4, p0, mNextSelectedPosition:I

    .line 1622
    .local v4, "previousSelectedPosition":I
    iget-object v5, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_b

    .line 1623
    iget-object v5, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1626
    :cond_b
    invoke-virtual {p0, p1}, setNextSelectedPositionInt(I)V

    .line 1627
    invoke-virtual {p0}, layoutChildren()V

    .line 1629
    iget-boolean v5, p0, mStackFromBottom:Z

    if-eqz v5, :cond_35

    iget v5, p0, mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 1631
    .local v0, "next":I
    :goto_1d
    iget-boolean v5, p0, mStackFromBottom:Z

    if-eqz v5, :cond_38

    iget v5, p0, mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 1634
    .local v2, "previous":I
    :goto_27
    iget v5, p0, mNumColumns:I

    div-int v1, v0, v5

    .line 1635
    .local v1, "nextRow":I
    iget v5, p0, mNumColumns:I

    div-int v3, v2, v5

    .line 1637
    .local v3, "previousRow":I
    if-eq v1, v3, :cond_34

    .line 1638
    invoke-virtual {p0}, awakenScrollBars()Z

    .line 1641
    :cond_34
    return-void

    .line 1629
    .end local v0    # "next":I
    .end local v1    # "nextRow":I
    .end local v2    # "previous":I
    .end local v3    # "previousRow":I
    :cond_35
    iget v0, p0, mNextSelectedPosition:I

    goto :goto_1d

    .restart local v0    # "next":I
    :cond_38
    move v2, v4

    .line 1631
    goto :goto_27
.end method

.method public setStretchMode(I)V
    .registers 3
    .param p1, "stretchMode"    # I

    .prologue
    .line 2182
    iget v0, p0, mStretchMode:I

    if-eq p1, v0, :cond_9

    .line 2183
    iput p1, p0, mStretchMode:I

    .line 2184
    invoke-virtual {p0}, requestLayoutIfNecessary()V

    .line 2186
    :cond_9
    return-void
.end method

.method public setVerticalSpacing(I)V
    .registers 3
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 2154
    iget v0, p0, mVerticalSpacing:I

    if-eq p1, v0, :cond_9

    .line 2155
    iput p1, p0, mVerticalSpacing:I

    .line 2156
    invoke-virtual {p0}, requestLayoutIfNecessary()V

    .line 2158
    :cond_9
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .registers 2
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 867
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 868
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 857
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 858
    return-void
.end method
