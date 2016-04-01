.class public Landroid/widget/Gallery;
.super Landroid/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Gallery$LayoutParams;,
        Landroid/widget/Gallery$FlingRunnable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedCenterOffset:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 195
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    iput v7, p0, mSpacing:I

    .line 83
    const/16 v5, 0x190

    iput v5, p0, mAnimationDuration:I

    .line 120
    new-instance v5, Landroid/widget/Gallery$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 126
    new-instance v5, Landroid/widget/Gallery$1;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 151
    iput-boolean v6, p0, mShouldCallbackDuringFling:Z

    .line 156
    iput-boolean v6, p0, mShouldCallbackOnUnselectedItemClick:Z

    .line 182
    iput-boolean v6, p0, mIsRtl:Z

    .line 205
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, mGestureDetector:Landroid/view/GestureDetector;

    .line 206
    iget-object v5, p0, mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 208
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 211
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 212
    .local v2, "index":I
    if-ltz v2, :cond_3b

    .line 213
    invoke-virtual {p0, v2}, setGravity(I)V

    .line 216
    :cond_3b
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 218
    .local v1, "animationDuration":I
    if-lez v1, :cond_44

    .line 219
    invoke-virtual {p0, v1}, setAnimationDuration(I)V

    .line 222
    :cond_44
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 224
    .local v3, "spacing":I
    invoke-virtual {p0, v3}, setSpacing(I)V

    .line 226
    const/4 v5, 0x3

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 228
    .local v4, "unselectedAlpha":F
    invoke-virtual {p0, v4}, setUnselectedAlpha(F)V

    .line 230
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    iget v5, p0, mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, mGroupFlags:I

    .line 236
    iget v5, p0, mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, mGroupFlags:I

    .line 237
    return-void
.end method

.method static synthetic access$002(Landroid/widget/Gallery;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Gallery;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Landroid/widget/Gallery;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 62
    iget v0, p0, mPaddingRight:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/Gallery;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 62
    iget v0, p0, mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/Gallery;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 62
    iget v0, p0, mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/Gallery;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 62
    invoke-direct {p0}, dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/Gallery;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 62
    iget v0, p0, mAnimationDuration:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/Gallery;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 62
    invoke-direct {p0}, scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/Gallery;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 62
    iget-boolean v0, p0, mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/Gallery;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Gallery;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$702(Landroid/widget/Gallery;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/Gallery;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/Gallery;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 62
    iget-boolean v0, p0, mIsRtl:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/Gallery;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 62
    iget v0, p0, mPaddingLeft:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "duringLayout"    # Z

    .prologue
    .line 936
    if-eqz p2, :cond_13

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v3

    .line 937
    .local v3, "myHeight":I
    :goto_6
    if-eqz p2, :cond_18

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 939
    .local v1, "childHeight":I
    :goto_c
    const/4 v2, 0x0

    .line 941
    .local v2, "childTop":I
    iget v4, p0, mGravity:I

    sparse-switch v4, :sswitch_data_42

    .line 954
    :goto_12
    return v2

    .line 936
    .end local v1    # "childHeight":I
    .end local v2    # "childTop":I
    .end local v3    # "myHeight":I
    :cond_13
    invoke-virtual {p0}, getHeight()I

    move-result v3

    goto :goto_6

    .line 937
    .restart local v3    # "myHeight":I
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_c

    .line 943
    .restart local v1    # "childHeight":I
    .restart local v2    # "childTop":I
    :sswitch_1d
    iget-object v4, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 944
    goto :goto_12

    .line 946
    :sswitch_22
    iget-object v4, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 948
    .local v0, "availableSpace":I
    iget-object v4, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 949
    goto :goto_12

    .line 951
    .end local v0    # "availableSpace":I
    :sswitch_38
    iget-object v4, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_12

    .line 941
    nop

    :sswitch_data_42
    .sparse-switch
        0x10 -> :sswitch_22
        0x30 -> :sswitch_1d
        0x50 -> :sswitch_38
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .registers 13
    .param p1, "toLeft"    # Z

    .prologue
    .line 485
    invoke-virtual {p0}, getChildCount()I

    move-result v7

    .line 486
    .local v7, "numChildren":I
    iget v2, p0, mFirstPosition:I

    .line 487
    .local v2, "firstPosition":I
    const/4 v8, 0x0

    .line 488
    .local v8, "start":I
    const/4 v1, 0x0

    .line 490
    .local v1, "count":I
    if-eqz p1, :cond_42

    .line 491
    iget v3, p0, mPaddingLeft:I

    .line 492
    .local v3, "galleryLeft":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    if-ge v5, v7, :cond_21

    .line 493
    iget-boolean v9, p0, mIsRtl:Z

    if-eqz v9, :cond_33

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 494
    .local v6, "n":I
    :goto_17
    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 495
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-lt v9, v3, :cond_35

    .line 503
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_21
    iget-boolean v9, p0, mIsRtl:Z

    if-nez v9, :cond_26

    .line 504
    const/4 v8, 0x0

    .line 524
    .end local v3    # "galleryLeft":I
    :cond_26
    :goto_26
    invoke-virtual {p0, v8, v1}, detachViewsFromParent(II)V

    .line 526
    iget-boolean v9, p0, mIsRtl:Z

    if-eq p1, v9, :cond_32

    .line 527
    iget v9, p0, mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, p0, mFirstPosition:I

    .line 529
    :cond_32
    return-void

    .restart local v3    # "galleryLeft":I
    :cond_33
    move v6, v5

    .line 493
    goto :goto_17

    .line 498
    .restart local v0    # "child":Landroid/view/View;
    .restart local v6    # "n":I
    :cond_35
    move v8, v6

    .line 499
    add-int/lit8 v1, v1, 0x1

    .line 500
    iget-object v9, p0, mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 492
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 507
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "galleryLeft":I
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_42
    invoke-virtual {p0}, getWidth()I

    move-result v9

    iget v10, p0, mPaddingRight:I

    sub-int v4, v9, v10

    .line 508
    .local v4, "galleryRight":I
    add-int/lit8 v5, v7, -0x1

    .restart local v5    # "i":I
    :goto_4c
    if-ltz v5, :cond_60

    .line 509
    iget-boolean v9, p0, mIsRtl:Z

    if-eqz v9, :cond_66

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 510
    .restart local v6    # "n":I
    :goto_56
    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 511
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-gt v9, v4, :cond_68

    .line 519
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_60
    iget-boolean v9, p0, mIsRtl:Z

    if-eqz v9, :cond_26

    .line 520
    const/4 v8, 0x0

    goto :goto_26

    :cond_66
    move v6, v5

    .line 509
    goto :goto_56

    .line 514
    .restart local v0    # "child":Landroid/view/View;
    .restart local v6    # "n":I
    :cond_68
    move v8, v6

    .line 515
    add-int/lit8 v1, v1, 0x1

    .line 516
    iget-object v9, p0, mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 508
    add-int/lit8 v5, v5, -0x1

    goto :goto_4c
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1178
    const/4 v6, 0x0

    .line 1180
    .local v6, "handled":Z
    iget-object v0, p0, mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_11

    .line 1181
    iget-object v0, p0, mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, mDownTouchView:Landroid/view/View;

    iget v3, p0, mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1185
    :cond_11
    if-nez v6, :cond_1e

    .line 1186
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1187
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1190
    :cond_1e
    if-eqz v6, :cond_24

    .line 1191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, performHapticFeedback(I)Z

    .line 1194
    :cond_24
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 1114
    if-eqz p1, :cond_6

    .line 1115
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1118
    :cond_6
    invoke-virtual {p0, v0}, setPressed(Z)V

    .line 1119
    return-void
.end method

.method private dispatchUnpress()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1123
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_7
    if-ltz v0, :cond_13

    .line 1124
    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1123
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1127
    :cond_13
    invoke-virtual {p0, v2}, setPressed(Z)V

    .line 1128
    return-void
.end method

.method private fillToGalleryLeft()V
    .registers 2

    .prologue
    .line 692
    iget-boolean v0, p0, mIsRtl:Z

    if-eqz v0, :cond_8

    .line 693
    invoke-direct {p0}, fillToGalleryLeftRtl()V

    .line 697
    :goto_7
    return-void

    .line 695
    :cond_8
    invoke-direct {p0}, fillToGalleryLeftLtr()V

    goto :goto_7
.end method

.method private fillToGalleryLeftLtr()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 731
    iget v3, p0, mSpacing:I

    .line 732
    .local v3, "itemSpacing":I
    iget v2, p0, mPaddingLeft:I

    .line 735
    .local v2, "galleryLeft":I
    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 739
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_2c

    .line 740
    iget v5, p0, mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 741
    .local v0, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 749
    .local v1, "curRightEdge":I
    :goto_15
    if-le v1, v2, :cond_3a

    if-ltz v0, :cond_3a

    .line 750
    iget v5, p0, mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 754
    iput v0, p0, mFirstPosition:I

    .line 757
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 758
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 744
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_2c
    const/4 v0, 0x0

    .line 745
    .restart local v0    # "curPosition":I
    iget v5, p0, mRight:I

    iget v6, p0, mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, mPaddingRight:I

    sub-int v1, v5, v6

    .line 746
    .restart local v1    # "curRightEdge":I
    const/4 v5, 0x1

    iput-boolean v5, p0, mShouldStopFling:Z

    goto :goto_15

    .line 760
    :cond_3a
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .registers 10

    .prologue
    .line 700
    iget v3, p0, mSpacing:I

    .line 701
    .local v3, "itemSpacing":I
    iget v2, p0, mPaddingLeft:I

    .line 702
    .local v2, "galleryLeft":I
    invoke-virtual {p0}, getChildCount()I

    move-result v4

    .line 703
    .local v4, "numChildren":I
    iget v5, p0, mItemCount:I

    .line 706
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 710
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_34

    .line 711
    iget v7, p0, mFirstPosition:I

    add-int v0, v7, v4

    .line 712
    .local v0, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 720
    .local v1, "curRightEdge":I
    :goto_1c
    if-le v1, v2, :cond_47

    iget v7, p0, mItemCount:I

    if-ge v0, v7, :cond_47

    .line 721
    iget v7, p0, mSelectedPosition:I

    sub-int v7, v0, v7

    const/4 v8, 0x0

    invoke-direct {p0, v0, v7, v1, v8}, makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 725
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 715
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_34
    iget v7, p0, mItemCount:I

    add-int/lit8 v0, v7, -0x1

    .restart local v0    # "curPosition":I
    iput v0, p0, mFirstPosition:I

    .line 716
    iget v7, p0, mRight:I

    iget v8, p0, mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, mPaddingRight:I

    sub-int v1, v7, v8

    .line 717
    .restart local v1    # "curRightEdge":I
    const/4 v7, 0x1

    iput-boolean v7, p0, mShouldStopFling:Z

    goto :goto_1c

    .line 728
    :cond_47
    return-void
.end method

.method private fillToGalleryRight()V
    .registers 2

    .prologue
    .line 763
    iget-boolean v0, p0, mIsRtl:Z

    if-eqz v0, :cond_8

    .line 764
    invoke-direct {p0}, fillToGalleryRightRtl()V

    .line 768
    :goto_7
    return-void

    .line 766
    :cond_8
    invoke-direct {p0}, fillToGalleryRightLtr()V

    goto :goto_7
.end method

.method private fillToGalleryRightLtr()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 802
    iget v3, p0, mSpacing:I

    .line 803
    .local v3, "itemSpacing":I
    iget v7, p0, mRight:I

    iget v8, p0, mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, mPaddingRight:I

    sub-int v2, v7, v8

    .line 804
    .local v2, "galleryRight":I
    invoke-virtual {p0}, getChildCount()I

    move-result v4

    .line 805
    .local v4, "numChildren":I
    iget v5, p0, mItemCount:I

    .line 808
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 812
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_39

    .line 813
    iget v7, p0, mFirstPosition:I

    add-int v1, v7, v4

    .line 814
    .local v1, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 821
    .local v0, "curLeftEdge":I
    :goto_24
    if-ge v0, v2, :cond_44

    if-ge v1, v5, :cond_44

    .line 822
    iget v7, p0, mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 826
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 827
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 816
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_39
    iget v7, p0, mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1    # "curPosition":I
    iput v1, p0, mFirstPosition:I

    .line 817
    iget v0, p0, mPaddingLeft:I

    .line 818
    .restart local v0    # "curLeftEdge":I
    iput-boolean v9, p0, mShouldStopFling:Z

    goto :goto_24

    .line 829
    :cond_44
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 771
    iget v3, p0, mSpacing:I

    .line 772
    .local v3, "itemSpacing":I
    iget v5, p0, mRight:I

    iget v6, p0, mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, mPaddingRight:I

    sub-int v2, v5, v6

    .line 775
    .local v2, "galleryRight":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 779
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_34

    .line 780
    iget v5, p0, mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 781
    .local v1, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 788
    .local v0, "curLeftEdge":I
    :goto_1d
    if-ge v0, v2, :cond_3a

    if-ltz v1, :cond_3a

    .line 789
    iget v5, p0, mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v7}, makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 793
    iput v1, p0, mFirstPosition:I

    .line 796
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 797
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 783
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_34
    const/4 v1, 0x0

    .line 784
    .restart local v1    # "curPosition":I
    iget v0, p0, mPaddingLeft:I

    .line 785
    .restart local v0    # "curLeftEdge":I
    iput-boolean v7, p0, mShouldStopFling:Z

    goto :goto_1d

    .line 799
    :cond_3a
    return-void
.end method

.method private getCenterOfGallery()I
    .registers 3

    .prologue
    .line 468
    invoke-virtual {p0}, getWidth()I

    move-result v0

    iget v1, p0, mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    .line 849
    iget-boolean v3, p0, mDataChanged:Z

    if-nez v3, :cond_2a

    .line 850
    iget-object v3, p0, mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 851
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2a

    .line 853
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 856
    .local v2, "childLeft":I
    iget v3, p0, mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, mRightMost:I

    .line 858
    iget v3, p0, mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, mLeftMost:I

    .line 861
    invoke-direct {p0, v0, p2, p3, p4}, setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 873
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .local v1, "child":Landroid/view/View;
    :goto_29
    return-object v1

    .line 868
    .end local v1    # "child":Landroid/view/View;
    :cond_2a
    iget-object v3, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 871
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 873
    .end local v0    # "child":Landroid/view/View;
    .restart local v1    # "child":Landroid/view/View;
    goto :goto_29
.end method

.method private offsetChildrenLeftAndRight(I)V
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 459
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_12

    .line 460
    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 459
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 462
    :cond_12
    return-void
.end method

.method private onFinishedMovement()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 551
    iget-boolean v0, p0, mSuppressSelectionChanged:Z

    if-eqz v0, :cond_a

    .line 552
    iput-boolean v1, p0, mSuppressSelectionChanged:Z

    .line 555
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 557
    :cond_a
    iput v1, p0, mSelectedCenterOffset:I

    .line 558
    invoke-virtual {p0}, invalidate()V

    .line 559
    return-void
.end method

.method private scrollIntoSlots()V
    .registers 5

    .prologue
    .line 537
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_b

    .line 548
    :cond_a
    :goto_a
    return-void

    .line 539
    :cond_b
    iget-object v3, p0, mSelectedChild:Landroid/view/View;

    invoke-static {v3}, getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 540
    .local v1, "selectedCenter":I
    invoke-direct {p0}, getCenterOfGallery()I

    move-result v2

    .line 542
    .local v2, "targetCenter":I
    sub-int v0, v2, v1

    .line 543
    .local v0, "scrollAmount":I
    if-eqz v0, :cond_1f

    .line 544
    iget-object v3, p0, mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v3, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_a

    .line 546
    :cond_1f
    invoke-direct {p0}, onFinishedMovement()V

    goto :goto_a
.end method

.method private scrollToChild(I)Z
    .registers 6
    .param p1, "childPosition"    # I

    .prologue
    .line 1271
    invoke-virtual {p0, p1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1273
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_17

    .line 1274
    invoke-direct {p0}, getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1275
    .local v1, "distance":I
    iget-object v2, p0, mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v2, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 1276
    const/4 v2, 0x1

    .line 1279
    .end local v1    # "distance":I
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method private setSelectionToCenterChild()V
    .registers 11

    .prologue
    .line 574
    iget-object v7, p0, mSelectedChild:Landroid/view/View;

    .line 575
    .local v7, "selView":Landroid/view/View;
    iget-object v8, p0, mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_7

    .line 612
    :cond_6
    :goto_6
    return-void

    .line 577
    :cond_7
    invoke-direct {p0}, getCenterOfGallery()I

    move-result v3

    .line 580
    .local v3, "galleryCenter":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_17

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_6

    .line 585
    :cond_17
    const v2, 0x7fffffff

    .line 586
    .local v2, "closestEdgeDistance":I
    const/4 v6, 0x0

    .line 587
    .local v6, "newSelectedChildIndex":I
    invoke-virtual {p0}, getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_21
    if-ltz v4, :cond_34

    .line 589
    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 591
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_46

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_46

    .line 593
    move v6, v4

    .line 605
    .end local v0    # "child":Landroid/view/View;
    :cond_34
    iget v8, p0, mFirstPosition:I

    add-int v5, v8, v6

    .line 607
    .local v5, "newPos":I
    iget v8, p0, mSelectedPosition:I

    if-eq v5, v8, :cond_6

    .line 608
    invoke-virtual {p0, v5}, setSelectedPositionInt(I)V

    .line 609
    invoke-virtual {p0, v5}, setNextSelectedPositionInt(I)V

    .line 610
    invoke-virtual {p0}, checkSelectionChanged()V

    goto :goto_6

    .line 597
    .end local v5    # "newPos":I
    .restart local v0    # "child":Landroid/view/View;
    :cond_46
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 599
    .local v1, "childClosestEdgeDistance":I
    if-ge v1, v2, :cond_60

    .line 600
    move v2, v1

    .line 601
    move v6, v4

    .line 587
    :cond_60
    add-int/lit8 v4, v4, -0x1

    goto :goto_21
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    .line 892
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 893
    .local v6, "lp":Landroid/widget/Gallery$LayoutParams;
    if-nez v6, :cond_e

    .line 894
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "lp":Landroid/widget/Gallery$LayoutParams;
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 897
    .restart local v6    # "lp":Landroid/widget/Gallery$LayoutParams;
    :cond_e
    iget-boolean v8, p0, mIsRtl:Z

    if-eq p4, v8, :cond_5a

    const/4 v8, -0x1

    :goto_13
    const/4 v9, 0x1

    invoke-virtual {p0, p1, v8, v6, v9}, addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 899
    if-nez p2, :cond_5c

    const/4 v8, 0x1

    :goto_1a
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 902
    iget v8, p0, mHeightMeasureSpec:I

    iget-object v9, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 904
    .local v1, "childHeightSpec":I
    iget v8, p0, mWidthMeasureSpec:I

    iget-object v9, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 908
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 914
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 915
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 917
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 918
    .local v7, "width":I
    if-eqz p4, :cond_5e

    .line 919
    move v2, p3

    .line 920
    .local v2, "childLeft":I
    add-int v3, v2, v7

    .line 926
    .local v3, "childRight":I
    :goto_56
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 927
    return-void

    .line 897
    .end local v0    # "childBottom":I
    .end local v1    # "childHeightSpec":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    .end local v5    # "childWidthSpec":I
    .end local v7    # "width":I
    :cond_5a
    const/4 v8, 0x0

    goto :goto_13

    .line 899
    :cond_5c
    const/4 v8, 0x0

    goto :goto_1a

    .line 922
    .restart local v0    # "childBottom":I
    .restart local v1    # "childHeightSpec":I
    .restart local v4    # "childTop":I
    .restart local v5    # "childWidthSpec":I
    .restart local v7    # "width":I
    :cond_5e
    sub-int v2, p3, v7

    .line 923
    .restart local v2    # "childLeft":I
    move v3, p3

    .restart local v3    # "childRight":I
    goto :goto_56
.end method

.method private updateSelectedItemMetadata()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1292
    iget-object v1, p0, mSelectedChild:Landroid/view/View;

    .line 1294
    .local v1, "oldSelectedChild":Landroid/view/View;
    iget v2, p0, mSelectedPosition:I

    iget v3, p0, mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mSelectedChild:Landroid/view/View;

    .line 1295
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_12

    .line 1318
    :cond_11
    :goto_11
    return-void

    .line 1299
    :cond_12
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1300
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1302
    invoke-virtual {p0}, hasFocus()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1303
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1308
    :cond_21
    if-eqz v1, :cond_11

    if-eq v1, v0, :cond_11

    .line 1311
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1315
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_11
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 329
    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 2

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 318
    iget v0, p0, mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 324
    iget v0, p0, mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1200
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .registers 3
    .param p1, "pressed"    # Z

    .prologue
    .line 1143
    iget-object v0, p0, mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1144
    iget-object v0, p0, mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1146
    :cond_9
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .registers 2
    .param p1, "selected"    # Z

    .prologue
    .line 1137
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 347
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 339
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 334
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1371
    const-class v0, Landroid/widget/Gallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 6
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1336
    iget v1, p0, mSelectedPosition:I

    iget v2, p0, mFirstPosition:I

    sub-int v0, v1, v2

    .line 1339
    .local v0, "selectedIndex":I
    if-gez v0, :cond_9

    .line 1349
    .end local p2    # "i":I
    :cond_8
    :goto_8
    return p2

    .line 1341
    .restart local p2    # "i":I
    :cond_9
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_f

    move p2, v0

    .line 1343
    goto :goto_8

    .line 1344
    :cond_f
    if-lt p2, v0, :cond_8

    .line 1346
    add-int/lit8 p2, p2, 0x1

    goto :goto_8
.end method

.method getChildHeight(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 303
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 304
    iget-object v0, p0, mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_9
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 306
    const/4 v0, 0x1

    return v0

    .line 304
    :cond_e
    iget v0, p0, mUnselectedAlpha:F

    goto :goto_9
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 1150
    iget-object v0, p0, mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .registers 10
    .param p1, "motionToLeft"    # Z
    .param p2, "deltaX"    # I

    .prologue
    const/4 v5, 0x0

    .line 421
    iget-boolean v6, p0, mIsRtl:Z

    if-eq p1, v6, :cond_15

    iget v6, p0, mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 422
    .local v3, "extremeItemPosition":I
    :goto_9
    iget v6, p0, mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 424
    .local v1, "extremeChild":Landroid/view/View;
    if-nez v1, :cond_17

    move v5, p2

    .line 447
    :cond_14
    :goto_14
    return v5

    .end local v1    # "extremeChild":Landroid/view/View;
    .end local v3    # "extremeItemPosition":I
    :cond_15
    move v3, v5

    .line 421
    goto :goto_9

    .line 428
    .restart local v1    # "extremeChild":Landroid/view/View;
    .restart local v3    # "extremeItemPosition":I
    :cond_17
    invoke-static {v1}, getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 429
    .local v2, "extremeChildCenter":I
    invoke-direct {p0}, getCenterOfGallery()I

    move-result v4

    .line 431
    .local v4, "galleryCenter":I
    if-eqz p1, :cond_2c

    .line 432
    if-le v2, v4, :cond_14

    .line 445
    :cond_23
    sub-int v0, v4, v2

    .line 447
    .local v0, "centerDifference":I
    if-eqz p1, :cond_2f

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_14

    .line 438
    .end local v0    # "centerDifference":I
    :cond_2c
    if-lt v2, v4, :cond_23

    goto :goto_14

    .line 447
    .restart local v0    # "centerDifference":I
    :cond_2f
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_14
.end method

.method layout(IZ)V
    .registers 10
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x0

    .line 627
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v4

    iput-boolean v4, p0, mIsRtl:Z

    .line 629
    iget-object v4, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 630
    .local v0, "childrenLeft":I
    iget v4, p0, mRight:I

    iget v5, p0, mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 632
    .local v1, "childrenWidth":I
    iget-boolean v4, p0, mDataChanged:Z

    if-eqz v4, :cond_22

    .line 633
    invoke-virtual {p0}, handleDataChanged()V

    .line 637
    :cond_22
    iget v4, p0, mItemCount:I

    if-nez v4, :cond_2a

    .line 638
    invoke-virtual {p0}, resetList()V

    .line 689
    :goto_29
    return-void

    .line 643
    :cond_2a
    iget v4, p0, mNextSelectedPosition:I

    if-ltz v4, :cond_33

    .line 644
    iget v4, p0, mNextSelectedPosition:I

    invoke-virtual {p0, v4}, setSelectedPositionInt(I)V

    .line 648
    :cond_33
    invoke-virtual {p0}, recycleAllViews()V

    .line 652
    invoke-virtual {p0}, detachAllViewsFromParent()V

    .line 658
    iput v6, p0, mRightMost:I

    .line 659
    iput v6, p0, mLeftMost:I

    .line 667
    iget v4, p0, mSelectedPosition:I

    iput v4, p0, mFirstPosition:I

    .line 668
    iget v4, p0, mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 671
    .local v2, "sel":Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, mSelectedCenterOffset:I

    add-int v3, v4, v5

    .line 673
    .local v3, "selectedOffset":I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 675
    invoke-direct {p0}, fillToGalleryRight()V

    .line 676
    invoke-direct {p0}, fillToGalleryLeft()V

    .line 679
    iget-object v4, p0, mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 681
    invoke-virtual {p0}, invalidate()V

    .line 682
    invoke-virtual {p0}, checkSelectionChanged()V

    .line 684
    iput-boolean v6, p0, mDataChanged:Z

    .line 685
    iput-boolean v6, p0, mNeedSync:Z

    .line 686
    iget v4, p0, mSelectedPosition:I

    invoke-virtual {p0, v4}, setNextSelectedPositionInt(I)V

    .line 688
    invoke-direct {p0}, updateSelectedItemMetadata()V

    goto :goto_29
.end method

.method moveDirection(I)Z
    .registers 4
    .param p1, "direction"    # I

    .prologue
    .line 1259
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_7

    neg-int p1, p1

    .line 1260
    :cond_7
    iget v1, p0, mSelectedPosition:I

    add-int v0, v1, p1

    .line 1262
    .local v0, "targetPosition":I
    iget v1, p0, mItemCount:I

    if-lez v1, :cond_1e

    if-ltz v0, :cond_1e

    iget v1, p0, mItemCount:I

    if-ge v0, v1, :cond_1e

    .line 1263
    iget v1, p0, mFirstPosition:I

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, scrollToChild(I)Z

    .line 1264
    const/4 v1, 0x1

    .line 1266
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method onCancel()V
    .registers 1

    .prologue
    .line 1089
    invoke-virtual {p0}, onUp()V

    .line 1090
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1056
    iget-object v0, p0, mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 1059
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, pointToPosition(II)I

    move-result v0

    iput v0, p0, mDownTouchPosition:I

    .line 1061
    iget v0, p0, mDownTouchPosition:I

    if-ltz v0, :cond_2b

    .line 1062
    iget v0, p0, mDownTouchPosition:I

    iget v1, p0, mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mDownTouchView:Landroid/view/View;

    .line 1063
    iget-object v0, p0, mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1067
    :cond_2b
    iput-boolean v2, p0, mIsFirstScroll:Z

    .line 1070
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    .line 997
    iget-boolean v0, p0, mShouldCallbackDuringFling:Z

    if-nez v0, :cond_10

    .line 1001
    iget-object v0, p0, mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1004
    iget-boolean v0, p0, mSuppressSelectionChanged:Z

    if-nez v0, :cond_10

    iput-boolean v2, p0, mSuppressSelectionChanged:Z

    .line 1008
    :cond_10
    iget-object v0, p0, mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    .line 1010
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1355
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1362
    if-eqz p1, :cond_14

    iget-object v0, p0, mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 1363
    iget-object v0, p0, mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1364
    iget-object v0, p0, mSelectedChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1367
    :cond_14
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 1377
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1378
    iget v1, p0, mItemCount:I

    if-le v1, v0, :cond_36

    :goto_8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1379
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1380
    iget v0, p0, mItemCount:I

    if-lez v0, :cond_22

    iget v0, p0, mSelectedPosition:I

    iget v1, p0, mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_22

    .line 1381
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1383
    :cond_22
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    iget v0, p0, mItemCount:I

    if-lez v0, :cond_35

    iget v0, p0, mSelectedPosition:I

    if-lez v0, :cond_35

    .line 1384
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1387
    :cond_35
    return-void

    .line 1378
    :cond_36
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1209
    sparse-switch p1, :sswitch_data_22

    .line 1229
    :cond_4
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    return v0

    .line 1212
    :sswitch_9
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, moveDirection(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1213
    invoke-virtual {p0, v0}, playSoundEffect(I)V

    goto :goto_8

    .line 1218
    :sswitch_14
    invoke-virtual {p0, v0}, moveDirection(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1219
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, playSoundEffect(I)V

    goto :goto_8

    .line 1225
    :sswitch_1f
    iput-boolean v0, p0, mReceivedInvokeKeyDown:Z

    goto :goto_4

    .line 1209
    :sswitch_data_22
    .sparse-switch
        0x15 -> :sswitch_9
        0x16 -> :sswitch_14
        0x17 -> :sswitch_1f
        0x42 -> :sswitch_1f
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1234
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1235
    iget-boolean v1, p0, mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_37

    .line 1236
    iget v1, p0, mItemCount:I

    if-lez v1, :cond_37

    .line 1237
    iget-object v1, p0, mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, dispatchPress(Landroid/view/View;)V

    .line 1238
    new-instance v1, Landroid/widget/Gallery$2;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, postDelayed(Ljava/lang/Runnable;J)Z

    .line 1245
    iget v1, p0, mSelectedPosition:I

    iget v2, p0, mFirstPosition:I

    sub-int v0, v1, v2

    .line 1246
    .local v0, "selectedIndex":I
    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, mSelectedPosition:I

    iget-object v3, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0, v1, v2, v4, v5}, performItemClick(Landroid/view/View;IJ)Z

    .line 1252
    .end local v0    # "selectedIndex":I
    :cond_37
    const/4 v1, 0x0

    iput-boolean v1, p0, mReceivedInvokeKeyDown:Z

    .line 1253
    const/4 v1, 0x1

    .line 1255
    :goto_3b
    return v1

    :cond_3c
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3b
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 353
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, mInLayout:Z

    .line 360
    invoke-virtual {p0, v1, v1}, layout(IZ)V

    .line 361
    iput-boolean v1, p0, mInLayout:Z

    .line 362
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1095
    iget v2, p0, mDownTouchPosition:I

    if-gez v2, :cond_5

    .line 1102
    :goto_4
    return-void

    .line 1099
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, performHapticFeedback(I)Z

    .line 1100
    iget v2, p0, mDownTouchPosition:I

    invoke-virtual {p0, v2}, getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1101
    .local v0, "id":J
    iget-object v2, p0, mDownTouchView:Landroid/view/View;

    iget v3, p0, mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_4
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1027
    iget-object v0, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1031
    iget-boolean v0, p0, mShouldCallbackDuringFling:Z

    if-nez v0, :cond_25

    .line 1032
    iget-boolean v0, p0, mIsFirstScroll:Z

    if-eqz v0, :cond_1c

    .line 1038
    iget-boolean v0, p0, mSuppressSelectionChanged:Z

    if-nez v0, :cond_15

    iput-boolean v1, p0, mSuppressSelectionChanged:Z

    .line 1039
    :cond_15
    iget-object v0, p0, mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, postDelayed(Ljava/lang/Runnable;J)Z

    .line 1046
    :cond_1c
    :goto_1c
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, trackMotionScroll(I)V

    .line 1048
    iput-boolean v4, p0, mIsFirstScroll:Z

    .line 1049
    return v1

    .line 1042
    :cond_25
    iget-boolean v0, p0, mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1c

    iput-boolean v4, p0, mSuppressSelectionChanged:Z

    goto :goto_1c
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1108
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 977
    iget v0, p0, mDownTouchPosition:I

    if-ltz v0, :cond_27

    .line 980
    iget v0, p0, mDownTouchPosition:I

    iget v1, p0, mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, scrollToChild(I)Z

    .line 983
    iget-boolean v0, p0, mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_16

    iget v0, p0, mDownTouchPosition:I

    iget v1, p0, mSelectedPosition:I

    if-ne v0, v1, :cond_25

    .line 984
    :cond_16
    iget-object v0, p0, mDownTouchView:Landroid/view/View;

    iget v1, p0, mDownTouchPosition:I

    iget-object v2, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, performItemClick(Landroid/view/View;IJ)Z

    .line 988
    :cond_25
    const/4 v0, 0x1

    .line 991
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 961
    iget-object v2, p0, mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 963
    .local v1, "retValue":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 964
    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    .line 966
    invoke-virtual {p0}, onUp()V

    .line 971
    :cond_10
    :goto_10
    return v1

    .line 967
    :cond_11
    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    .line 968
    invoke-virtual {p0}, onCancel()V

    goto :goto_10
.end method

.method onUp()V
    .registers 2

    .prologue
    .line 1078
    iget-object v0, p0, mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    # getter for: Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1079
    invoke-direct {p0}, scrollIntoSlots()V

    .line 1082
    :cond_f
    invoke-direct {p0}, dispatchUnpress()V

    .line 1083
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 1392
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1393
    const/4 v1, 0x1

    .line 1409
    :cond_8
    :goto_8
    return v1

    .line 1395
    :cond_9
    sparse-switch p1, :sswitch_data_48

    goto :goto_8

    .line 1397
    :sswitch_d
    invoke-virtual {p0}, isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, mItemCount:I

    if-lez v2, :cond_8

    iget v2, p0, mSelectedPosition:I

    iget v3, p0, mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_8

    .line 1398
    iget v1, p0, mSelectedPosition:I

    iget v2, p0, mFirstPosition:I

    sub-int v0, v1, v2

    .line 1399
    .local v0, "currentChildIndex":I
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, scrollToChild(I)Z

    move-result v1

    goto :goto_8

    .line 1403
    .end local v0    # "currentChildIndex":I
    :sswitch_2c
    invoke-virtual {p0}, isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, mItemCount:I

    if-lez v2, :cond_8

    iget v2, p0, mSelectedPosition:I

    if-lez v2, :cond_8

    .line 1404
    iget v1, p0, mSelectedPosition:I

    iget v2, p0, mFirstPosition:I

    sub-int v0, v1, v2

    .line 1405
    .restart local v0    # "currentChildIndex":I
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, scrollToChild(I)Z

    move-result v1

    goto :goto_8

    .line 1395
    nop

    :sswitch_data_48
    .sparse-switch
        0x1000 -> :sswitch_d
        0x2000 -> :sswitch_2c
    .end sparse-switch
.end method

.method selectionChanged()V
    .registers 2

    .prologue
    .line 563
    iget-boolean v0, p0, mSuppressSelectionChanged:Z

    if-nez v0, :cond_7

    .line 564
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 566
    :cond_7
    return-void
.end method

.method public setAnimationDuration(I)V
    .registers 2
    .param p1, "animationDurationMillis"    # I

    .prologue
    .line 275
    iput p1, p0, mAnimationDuration:I

    .line 276
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .registers 2
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, mShouldCallbackDuringFling:Z

    .line 250
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .registers 2
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, mShouldCallbackOnUnselectedItemClick:Z

    .line 263
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 1328
    iget v0, p0, mGravity:I

    if-eq v0, p1, :cond_9

    .line 1329
    iput p1, p0, mGravity:I

    .line 1330
    invoke-virtual {p0}, requestLayout()V

    .line 1332
    :cond_9
    return-void
.end method

.method setSelectedPositionInt(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 1284
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1287
    invoke-direct {p0}, updateSelectedItemMetadata()V

    .line 1288
    return-void
.end method

.method public setSpacing(I)V
    .registers 2
    .param p1, "spacing"    # I

    .prologue
    .line 286
    iput p1, p0, mSpacing:I

    .line 287
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .registers 2
    .param p1, "unselectedAlpha"    # F

    .prologue
    .line 297
    iput p1, p0, mUnselectedAlpha:F

    .line 298
    return-void
.end method

.method public showContextMenu()Z
    .registers 7

    .prologue
    .line 1168
    invoke-virtual {p0}, isPressed()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget v2, p0, mSelectedPosition:I

    if-ltz v2, :cond_1d

    .line 1169
    iget v2, p0, mSelectedPosition:I

    iget v3, p0, mFirstPosition:I

    sub-int v0, v2, v3

    .line 1170
    .local v0, "index":I
    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1171
    .local v1, "v":Landroid/view/View;
    iget v2, p0, mSelectedPosition:I

    iget-wide v4, p0, mSelectedRowId:J

    invoke-direct {p0, v1, v2, v4, v5}, dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1174
    .end local v0    # "index":I
    .end local v1    # "v":Landroid/view/View;
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 6
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 1156
    invoke-virtual {p0, p1}, getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1157
    .local v2, "longPressPosition":I
    if-gez v2, :cond_8

    .line 1158
    const/4 v3, 0x0

    .line 1162
    :goto_7
    return v3

    .line 1161
    :cond_8
    iget-object v3, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1162
    .local v0, "longPressId":J
    invoke-direct {p0, p1, v2, v0, v1}, dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_7
.end method

.method trackMotionScroll(I)V
    .registers 10
    .param p1, "deltaX"    # I

    .prologue
    const/4 v6, 0x0

    .line 377
    invoke-virtual {p0}, getChildCount()I

    move-result v7

    if-nez v7, :cond_8

    .line 418
    :goto_7
    return-void

    .line 381
    :cond_8
    if-gez p1, :cond_4c

    const/4 v5, 0x1

    .line 383
    .local v5, "toLeft":Z
    :goto_b
    invoke-virtual {p0, v5, p1}, getLimitedMotionScrollAmount(ZI)I

    move-result v3

    .line 384
    .local v3, "limitedDeltaX":I
    if-eq v3, p1, :cond_19

    .line 386
    iget-object v7, p0, mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    # invokes: Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v7, v6}, Landroid/widget/Gallery$FlingRunnable;->access$100(Landroid/widget/Gallery$FlingRunnable;Z)V

    .line 387
    invoke-direct {p0}, onFinishedMovement()V

    .line 390
    :cond_19
    invoke-direct {p0, v3}, offsetChildrenLeftAndRight(I)V

    .line 392
    invoke-direct {p0, v5}, detachOffScreenChildren(Z)V

    .line 394
    if-eqz v5, :cond_4e

    .line 396
    invoke-direct {p0}, fillToGalleryRight()V

    .line 403
    :goto_24
    iget-object v7, p0, mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v7}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 405
    invoke-direct {p0}, setSelectionToCenterChild()V

    .line 407
    iget-object v4, p0, mSelectedChild:Landroid/view/View;

    .line 408
    .local v4, "selChild":Landroid/view/View;
    if-eqz v4, :cond_45

    .line 409
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 410
    .local v1, "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    .line 411
    .local v0, "childCenter":I
    invoke-virtual {p0}, getWidth()I

    move-result v7

    div-int/lit8 v2, v7, 0x2

    .line 412
    .local v2, "galleryCenter":I
    add-int v7, v1, v0

    sub-int/2addr v7, v2

    iput v7, p0, mSelectedCenterOffset:I

    .line 415
    .end local v0    # "childCenter":I
    .end local v1    # "childLeft":I
    .end local v2    # "galleryCenter":I
    :cond_45
    invoke-virtual {p0, v6, v6, v6, v6}, onScrollChanged(IIII)V

    .line 417
    invoke-virtual {p0}, invalidate()V

    goto :goto_7

    .end local v3    # "limitedDeltaX":I
    .end local v4    # "selChild":Landroid/view/View;
    .end local v5    # "toLeft":Z
    :cond_4c
    move v5, v6

    .line 381
    goto :goto_b

    .line 399
    .restart local v3    # "limitedDeltaX":I
    .restart local v5    # "toLeft":Z
    :cond_4e
    invoke-direct {p0}, fillToGalleryLeft()V

    goto :goto_24
.end method
