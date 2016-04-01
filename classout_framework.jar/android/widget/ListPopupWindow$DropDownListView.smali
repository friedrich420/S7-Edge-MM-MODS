.class Landroid/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# static fields
.field private static final CLICK_ANIM_ALPHA:I = 0x80

.field private static final CLICK_ANIM_DURATION:J = 0x96L

.field private static final DRAWABLE_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClickAnimation:Landroid/animation/Animator;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mIsAutoCompleteTextPopup:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1641
    new-instance v0, Landroid/widget/ListPopupWindow$DropDownListView$1;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, DRAWABLE_ALPHA:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1708
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1699
    iput-boolean v2, p0, mIsAutoCompleteTextPopup:Z

    .line 1709
    iput-boolean p2, p0, mHijackFocus:Z

    .line 1711
    invoke-virtual {p0, v2}, setCacheColorHint(I)V

    .line 1712
    return-void
.end method

.method static synthetic access$502(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/ListPopupWindow$DropDownListView;
    .param p1, "x1"    # Z

    .prologue
    .line 1633
    iput-boolean p1, p0, mIsAutoCompleteTextPopup:Z

    return p1
.end method

.method static synthetic access$602(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/ListPopupWindow$DropDownListView;
    .param p1, "x1"    # Z

    .prologue
    .line 1633
    iput-boolean p1, p0, mListSelectionHidden:Z

    return p1
.end method

.method private clearPressedItem()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1801
    iput-boolean v3, p0, mDrawsInPressedState:Z

    .line 1802
    invoke-virtual {p0, v3}, setPressed(Z)V

    .line 1803
    invoke-virtual {p0}, updateSelectorState()V

    .line 1805
    iget v1, p0, mMotionPosition:I

    iget v2, p0, mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1806
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_17

    .line 1807
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1810
    :cond_17
    iget-object v1, p0, mClickAnimation:Landroid/animation/Animator;

    if-eqz v1, :cond_23

    .line 1811
    iget-object v1, p0, mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1812
    const/4 v1, 0x0

    iput-object v1, p0, mClickAnimation:Landroid/animation/Animator;

    .line 1814
    :cond_23
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1781
    invoke-virtual {p0, p2}, getItemIdAtPosition(I)J

    move-result-wide v4

    .line 1782
    .local v4, "id":J
    iget-object v0, p0, mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, DRAWABLE_ALPHA:Landroid/util/IntProperty;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_3a

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1784
    .local v6, "anim":Landroid/animation/Animator;
    const-wide/16 v0, 0x96

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1785
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1786
    new-instance v0, Landroid/widget/ListPopupWindow$DropDownListView$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListPopupWindow$DropDownListView$2;-><init>(Landroid/widget/ListPopupWindow$DropDownListView;Landroid/view/View;IJ)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1792
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 1794
    iget-object v0, p0, mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_36

    .line 1795
    iget-object v0, p0, mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1797
    :cond_36
    iput-object v6, p0, mClickAnimation:Landroid/animation/Animator;

    .line 1798
    return-void

    .line 1782
    nop

    :array_3a
    .array-data 4
        0xff
        0x80
        0xff
    .end array-data
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/4 v5, 0x1

    .line 1817
    iput-boolean v5, p0, mDrawsInPressedState:Z

    .line 1820
    invoke-virtual {p0, p3, p4}, drawableHotspotChanged(FF)V

    .line 1821
    invoke-virtual {p0}, isPressed()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1822
    invoke-virtual {p0, v5}, setPressed(Z)V

    .line 1826
    :cond_f
    iget-boolean v3, p0, mDataChanged:Z

    if-eqz v3, :cond_16

    .line 1827
    invoke-virtual {p0}, layoutChildren()V

    .line 1832
    :cond_16
    iget v3, p0, mMotionPosition:I

    iget v4, p0, mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1833
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_2d

    if-eq v2, p1, :cond_2d

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1834
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1836
    :cond_2d
    iput p2, p0, mMotionPosition:I

    .line 1839
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, p3, v3

    .line 1840
    .local v0, "childX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, p4, v3

    .line 1841
    .local v1, "childY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1842
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-nez v3, :cond_49

    .line 1843
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 1847
    :cond_49
    invoke-virtual {p0, p2}, setSelectedPositionInt(I)V

    .line 1848
    invoke-virtual {p0, p2, p1, p3, p4}, positionSelectorLikeTouch(ILandroid/view/View;FF)V

    .line 1852
    invoke-virtual {p0}, refreshDrawableState()V

    .line 1854
    iget-object v3, p0, mClickAnimation:Landroid/animation/Animator;

    if-eqz v3, :cond_5e

    .line 1855
    iget-object v3, p0, mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 1856
    const/4 v3, 0x0

    iput-object v3, p0, mClickAnimation:Landroid/animation/Animator;

    .line 1858
    :cond_5e
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .registers 2

    .prologue
    .line 1923
    iget-boolean v0, p0, mHijackFocus:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasWindowFocus()Z
    .registers 2

    .prologue
    .line 1903
    iget-boolean v0, p0, mHijackFocus:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isFocused()Z
    .registers 2

    .prologue
    .line 1913
    iget-boolean v0, p0, mHijackFocus:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isInTouchMode()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1887
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.folder_type"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1889
    .local v0, "isFolderTypeFeature":Z
    if-eqz v0, :cond_21

    iget-boolean v3, p0, mIsAutoCompleteTextPopup:Z

    if-eqz v3, :cond_21

    .line 1890
    iget-boolean v3, p0, mHijackFocus:Z

    if-eqz v3, :cond_1f

    iget-boolean v3, p0, mListSelectionHidden:Z

    if-eqz v3, :cond_1f

    .line 1893
    :goto_1e
    return v1

    :cond_1f
    move v1, v2

    .line 1890
    goto :goto_1e

    .line 1893
    :cond_21
    iget-boolean v3, p0, mHijackFocus:Z

    if-eqz v3, :cond_29

    iget-boolean v3, p0, mListSelectionHidden:Z

    if-nez v3, :cond_2f

    :cond_29
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_2f
    move v2, v1

    :cond_30
    move v1, v2

    goto :goto_1e
.end method

.method obtainView(I[Z)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    .line 1874
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 1876
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_f

    move-object v1, v0

    .line 1877
    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 1880
    :cond_f
    return-object v0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    const/4 v10, 0x1

    .line 1721
    const/4 v4, 0x1

    .line 1722
    .local v4, "handledEvent":Z
    const/4 v3, 0x0

    .line 1724
    .local v3, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1725
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_68

    .line 1758
    :cond_a
    :goto_a
    if-eqz v4, :cond_e

    if-eqz v3, :cond_11

    .line 1759
    :cond_e
    invoke-direct {p0}, clearPressedItem()V

    .line 1763
    :cond_11
    if-eqz v4, :cond_5d

    .line 1764
    iget-object v8, p0, mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-nez v8, :cond_1e

    .line 1765
    new-instance v8, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v8, p0, mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 1767
    :cond_1e
    iget-object v8, p0, mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 1768
    iget-object v8, p0, mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1773
    :cond_28
    :goto_28
    return v4

    .line 1727
    :pswitch_29
    const/4 v4, 0x0

    .line 1728
    goto :goto_a

    .line 1730
    :pswitch_2b
    const/4 v4, 0x0

    .line 1733
    :pswitch_2c
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1734
    .local v1, "activeIndex":I
    if-gez v1, :cond_34

    .line 1735
    const/4 v4, 0x0

    .line 1736
    goto :goto_a

    .line 1739
    :cond_34
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v6, v8

    .line 1740
    .local v6, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 1741
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, pointToPosition(II)I

    move-result v5

    .line 1742
    .local v5, "position":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_47

    .line 1743
    const/4 v3, 0x1

    .line 1744
    goto :goto_a

    .line 1747
    :cond_47
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1748
    .local v2, "child":Landroid/view/View;
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-direct {p0, v2, v5, v8, v9}, setPressedItem(Landroid/view/View;IFF)V

    .line 1749
    const/4 v4, 0x1

    .line 1751
    if-ne v0, v10, :cond_a

    .line 1752
    invoke-direct {p0, v2, v5}, clickPressedItem(Landroid/view/View;I)V

    goto :goto_a

    .line 1769
    .end local v1    # "activeIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_5d
    iget-object v8, p0, mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-eqz v8, :cond_28

    .line 1770
    iget-object v8, p0, mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    goto :goto_28

    .line 1725
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2c
        :pswitch_29
    .end packed-switch
.end method

.method touchModeDrawsInPressedState()Z
    .registers 2

    .prologue
    .line 1862
    iget-boolean v0, p0, mDrawsInPressedState:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/widget/ListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
