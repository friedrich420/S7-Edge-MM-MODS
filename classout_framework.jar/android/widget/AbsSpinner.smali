.class public abstract Landroid/widget/AbsSpinner;
.super Landroid/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSpinner$RecycleBin;,
        Landroid/widget/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 44
    iput v0, p0, mSelectionLeftPadding:I

    .line 45
    iput v0, p0, mSelectionTopPadding:I

    .line 46
    iput v0, p0, mSelectionRightPadding:I

    .line 47
    iput v0, p0, mSelectionBottomPadding:I

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mSpinnerPadding:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Landroid/widget/AbsSpinner$RecycleBin;-><init>(Landroid/widget/AbsSpinner;)V

    iput-object v0, p0, mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 58
    invoke-direct {p0}, initAbsSpinner()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    iput v4, p0, mSelectionLeftPadding:I

    .line 45
    iput v4, p0, mSelectionTopPadding:I

    .line 46
    iput v4, p0, mSelectionRightPadding:I

    .line 47
    iput v4, p0, mSelectionBottomPadding:I

    .line 48
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, mSpinnerPadding:Landroid/graphics/Rect;

    .line 50
    new-instance v3, Landroid/widget/AbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Landroid/widget/AbsSpinner$RecycleBin;-><init>(Landroid/widget/AbsSpinner;)V

    iput-object v3, p0, mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 71
    invoke-direct {p0}, initAbsSpinner()V

    .line 73
    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 77
    .local v2, "entries":[Ljava/lang/CharSequence;
    if-eqz v2, :cond_3a

    .line 78
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 80
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 81
    invoke-virtual {p0, v1}, setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 84
    .end local v1    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_3a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Landroid/widget/AbsSpinner;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsSpinner;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setFocusable(Z)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setWillNotDraw(Z)V

    .line 93
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 248
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 473
    const-class v0, Landroid/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 332
    iget v0, p0, mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 3

    .prologue
    .line 305
    iget v0, p0, mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 306
    iget v0, p0, mSelectedPosition:I

    iget v1, p0, mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 308
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 167
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 171
    .local v6, "widthMode":I
    iget-object v9, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, mPaddingLeft:I

    iget v10, p0, mSelectionLeftPadding:I

    if-le v8, v10, :cond_dc

    iget v8, p0, mPaddingLeft:I

    :goto_10
    iput v8, v9, Landroid/graphics/Rect;->left:I

    .line 173
    iget-object v9, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, mPaddingTop:I

    iget v10, p0, mSelectionTopPadding:I

    if-le v8, v10, :cond_e0

    iget v8, p0, mPaddingTop:I

    :goto_1c
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 175
    iget-object v9, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, mPaddingRight:I

    iget v10, p0, mSelectionRightPadding:I

    if-le v8, v10, :cond_e4

    iget v8, p0, mPaddingRight:I

    :goto_28
    iput v8, v9, Landroid/graphics/Rect;->right:I

    .line 177
    iget-object v9, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, mPaddingBottom:I

    iget v10, p0, mSelectionBottomPadding:I

    if-le v8, v10, :cond_e8

    iget v8, p0, mPaddingBottom:I

    :goto_34
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 180
    iget-boolean v8, p0, mDataChanged:Z

    if-eqz v8, :cond_3d

    .line 181
    invoke-virtual {p0}, handleDataChanged()V

    .line 184
    :cond_3d
    const/4 v2, 0x0

    .line 185
    .local v2, "preferredHeight":I
    const/4 v3, 0x0

    .line 186
    .local v3, "preferredWidth":I
    const/4 v1, 0x1

    .line 188
    .local v1, "needsMeasuring":Z
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v4

    .line 189
    .local v4, "selectedPosition":I
    if-ltz v4, :cond_a4

    iget-object v8, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_a4

    iget-object v8, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_a4

    .line 191
    iget-object v8, p0, mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    .line 192
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_6a

    .line 194
    iget-object v8, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 196
    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_6a

    .line 197
    invoke-virtual {v5, v12}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 201
    :cond_6a
    if-eqz v5, :cond_a4

    .line 203
    iget-object v8, p0, mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 205
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_82

    .line 206
    iput-boolean v12, p0, mBlockLayoutRequests:Z

    .line 207
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iput-boolean v11, p0, mBlockLayoutRequests:Z

    .line 210
    :cond_82
    invoke-virtual {p0, v5, p1, p2}, measureChild(Landroid/view/View;II)V

    .line 212
    invoke-virtual {p0, v5}, getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 213
    invoke-virtual {p0, v5}, getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 215
    const/4 v1, 0x0

    .line 219
    .end local v5    # "view":Landroid/view/View;
    :cond_a4
    if-eqz v1, :cond_bc

    .line 221
    iget-object v8, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 222
    if-nez v6, :cond_bc

    .line 223
    iget-object v8, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 227
    :cond_bc
    invoke-virtual {p0}, getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 228
    invoke-virtual {p0}, getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 230
    invoke-static {v2, p2, v11}, resolveSizeAndState(III)I

    move-result v0

    .line 231
    .local v0, "heightSize":I
    invoke-static {v3, p1, v11}, resolveSizeAndState(III)I

    move-result v7

    .line 233
    .local v7, "widthSize":I
    invoke-virtual {p0, v7, v0}, setMeasuredDimension(II)V

    .line 234
    iput p2, p0, mHeightMeasureSpec:I

    .line 235
    iput p1, p0, mWidthMeasureSpec:I

    .line 236
    return-void

    .line 171
    .end local v0    # "heightSize":I
    .end local v1    # "needsMeasuring":Z
    .end local v2    # "preferredHeight":I
    .end local v3    # "preferredWidth":I
    .end local v4    # "selectedPosition":I
    .end local v7    # "widthSize":I
    :cond_dc
    iget v8, p0, mSelectionLeftPadding:I

    goto/16 :goto_10

    .line 173
    :cond_e0
    iget v8, p0, mSelectionTopPadding:I

    goto/16 :goto_1c

    .line 175
    :cond_e4
    iget v8, p0, mSelectionRightPadding:I

    goto/16 :goto_28

    .line 177
    :cond_e8
    iget v8, p0, mSelectionBottomPadding:I

    goto/16 :goto_34
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 9
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v6, 0x1

    .line 425
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsSpinner$SavedState;

    .line 427
    .local v0, "ss":Landroid/widget/AbsSpinner$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 429
    iget-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_25

    .line 430
    iput-boolean v6, p0, mDataChanged:Z

    .line 431
    iput-boolean v6, p0, mNeedSync:Z

    .line 432
    iget-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v2, p0, mSyncRowId:J

    .line 433
    iget v1, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, mSyncPosition:I

    .line 434
    const/4 v1, 0x0

    iput v1, p0, mSyncMode:I

    .line 435
    invoke-virtual {p0}, requestLayout()V

    .line 437
    :cond_25
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .prologue
    .line 412
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 413
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 414
    .local v0, "ss":Landroid/widget/AbsSpinner$SavedState;
    invoke-virtual {p0}, getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    .line 415
    iget-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1e

    .line 416
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    .line 420
    :goto_1d
    return-object v0

    .line 418
    :cond_1e
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    goto :goto_1d
.end method

.method public pointToPosition(II)I
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 344
    iget-object v2, p0, mTouchFrame:Landroid/graphics/Rect;

    .line 345
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_d

    .line 346
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, mTouchFrame:Landroid/graphics/Rect;

    .line 347
    iget-object v2, p0, mTouchFrame:Landroid/graphics/Rect;

    .line 350
    :cond_d
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 351
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_13
    if-ltz v3, :cond_2f

    .line 352
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 353
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 354
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 355
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 356
    iget v4, p0, mFirstPosition:I

    add-int/2addr v4, v3

    .line 360
    .end local v0    # "child":Landroid/view/View;
    :goto_2b
    return v4

    .line 351
    .restart local v0    # "child":Landroid/view/View;
    :cond_2c
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 360
    .end local v0    # "child":Landroid/view/View;
    :cond_2f
    const/4 v4, -0x1

    goto :goto_2b
.end method

.method recycleAllViews()V
    .registers 7

    .prologue
    .line 254
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 255
    .local v0, "childCount":I
    iget-object v4, p0, mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 256
    .local v4, "recycleBin":Landroid/widget/AbsSpinner$RecycleBin;
    iget v3, p0, mFirstPosition:I

    .line 259
    .local v3, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_17

    .line 260
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 261
    .local v5, "v":Landroid/view/View;
    add-int v2, v3, v1

    .line 262
    .local v2, "index":I
    invoke-virtual {v4, v2, v5}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 264
    .end local v2    # "index":I
    .end local v5    # "v":Landroid/view/View;
    :cond_17
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 320
    iget-boolean v0, p0, mBlockLayoutRequests:Z

    if-nez v0, :cond_7

    .line 321
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 323
    :cond_7
    return-void
.end method

.method resetList()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 145
    iput-boolean v0, p0, mDataChanged:Z

    .line 146
    iput-boolean v0, p0, mNeedSync:Z

    .line 148
    invoke-virtual {p0}, removeAllViewsInLayout()V

    .line 149
    iput v2, p0, mOldSelectedPosition:I

    .line 150
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, mOldSelectedRowId:J

    .line 152
    invoke-virtual {p0, v2}, setSelectedPositionInt(I)V

    .line 153
    invoke-virtual {p0, v2}, setNextSelectedPositionInt(I)V

    .line 154
    invoke-virtual {p0}, invalidate()V

    .line 155
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 38
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 6
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    const/4 v0, -0x1

    .line 103
    iget-object v1, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_f

    .line 104
    iget-object v1, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 105
    invoke-virtual {p0}, resetList()V

    .line 108
    :cond_f
    iput-object p1, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    .line 110
    iput v0, p0, mOldSelectedPosition:I

    .line 111
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, mOldSelectedRowId:J

    .line 113
    iget-object v1, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_4e

    .line 114
    iget v1, p0, mItemCount:I

    iput v1, p0, mOldItemCount:I

    .line 115
    iget-object v1, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, mItemCount:I

    .line 116
    invoke-virtual {p0}, checkFocus()V

    .line 118
    new-instance v1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, mDataSetObserver:Landroid/database/DataSetObserver;

    .line 119
    iget-object v1, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 121
    iget v1, p0, mItemCount:I

    if-lez v1, :cond_3d

    const/4 v0, 0x0

    .line 123
    .local v0, "position":I
    :cond_3d
    invoke-virtual {p0, v0}, setSelectedPositionInt(I)V

    .line 124
    invoke-virtual {p0, v0}, setNextSelectedPositionInt(I)V

    .line 126
    iget v1, p0, mItemCount:I

    if-nez v1, :cond_4a

    .line 128
    invoke-virtual {p0}, checkSelectionChanged()V

    .line 138
    .end local v0    # "position":I
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, requestLayout()V

    .line 139
    return-void

    .line 132
    :cond_4e
    invoke-virtual {p0}, checkFocus()V

    .line 133
    invoke-virtual {p0}, resetList()V

    .line 135
    invoke-virtual {p0}, checkSelectionChanged()V

    goto :goto_4a
.end method

.method public setSelection(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 278
    invoke-virtual {p0, p1}, setNextSelectedPositionInt(I)V

    .line 279
    invoke-virtual {p0}, requestLayout()V

    .line 280
    invoke-virtual {p0}, invalidate()V

    .line 281
    return-void
.end method

.method public setSelection(IZ)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 271
    if-eqz p2, :cond_16

    iget v1, p0, mFirstPosition:I

    if-gt v1, p1, :cond_16

    iget v1, p0, mFirstPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_16

    const/4 v0, 0x1

    .line 273
    .local v0, "shouldAnimate":Z
    :goto_12
    invoke-virtual {p0, p1, v0}, setSelectionInt(IZ)V

    .line 274
    return-void

    .line 271
    .end local v0    # "shouldAnimate":Z
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method setSelectionInt(IZ)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 292
    iget v1, p0, mOldSelectedPosition:I

    if-eq p1, v1, :cond_14

    .line 293
    const/4 v1, 0x1

    iput-boolean v1, p0, mBlockLayoutRequests:Z

    .line 294
    iget v1, p0, mSelectedPosition:I

    sub-int v0, p1, v1

    .line 295
    .local v0, "delta":I
    invoke-virtual {p0, p1}, setNextSelectedPositionInt(I)V

    .line 296
    invoke-virtual {p0, v0, p2}, layout(IZ)V

    .line 297
    const/4 v1, 0x0

    iput-boolean v1, p0, mBlockLayoutRequests:Z

    .line 299
    .end local v0    # "delta":I
    :cond_14
    return-void
.end method
