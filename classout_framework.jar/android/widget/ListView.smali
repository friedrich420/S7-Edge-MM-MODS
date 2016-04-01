.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mIsDeviceDefaultTheme:Z

.field mIsFolderTypeFeature:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 163
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 171
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 124
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, mHeaderViewInfos:Ljava/util/ArrayList;

    .line 125
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, mFooterViewInfos:Ljava/util/ArrayList;

    .line 139
    iput-boolean v9, p0, mAreAllItemsSelectable:Z

    .line 141
    iput-boolean v8, p0, mItemsCanFocus:Z

    .line 143
    iput-boolean v8, p0, mIsDeviceDefaultTheme:Z

    .line 146
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, mTempRect:Landroid/graphics/Rect;

    .line 149
    iput-boolean v8, p0, mIsFolderTypeFeature:Z

    .line 153
    new-instance v6, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v6, p0, mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 173
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 176
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 177
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_40

    .line 178
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    :cond_40
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 182
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_49

    .line 185
    invoke-virtual {p0, v1}, setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :cond_49
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 189
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_53

    .line 190
    invoke-virtual {p0, v5}, setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_53
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 194
    .local v4, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_5d

    .line 195
    invoke-virtual {p0, v4}, setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :cond_5d
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 200
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 202
    .local v2, "dividerHeight":I
    if-eqz v2, :cond_6c

    .line 203
    invoke-virtual {p0, v2}, setDividerHeight(I)V

    .line 207
    .end local v2    # "dividerHeight":I
    :cond_6c
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, mHeaderDividersEnabled:Z

    .line 208
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, mFooterDividersEnabled:Z

    .line 210
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    invoke-static {p1}, Landroid/util/GeneralUtil;->isDeviceDefault(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, mIsDeviceDefaultTheme:Z

    .line 213
    return-void
.end method

.method static synthetic access$200(Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/ListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, logActivity(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 3241
    add-int/lit8 v2, p2, -0x1

    .line 3242
    .local v2, "abovePosition":I
    iget-object v0, p0, mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3243
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, mDividerHeight:I

    sub-int v3, v0, v5

    .line 3244
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, setupChild(Landroid/view/View;IIZIZZ)V

    .line 3246
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 3250
    add-int/lit8 v2, p2, 0x1

    .line 3251
    .local v2, "belowPosition":I
    iget-object v0, p0, mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3252
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, mDividerHeight:I

    add-int v3, v0, v4

    .line 3253
    .local v3, "edgeOfNewChild":I
    const/4 v4, 0x1

    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, setupChild(Landroid/view/View;IIZIZZ)V

    .line 3255
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .registers 7

    .prologue
    .line 228
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 231
    .local v1, "childCount":I
    if-lez v1, :cond_29

    .line 234
    iget-boolean v3, p0, mStackFromBottom:Z

    if-nez v3, :cond_2a

    .line 237
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 238
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 239
    .local v2, "delta":I
    iget v3, p0, mFirstPosition:I

    if-eqz v3, :cond_20

    .line 242
    iget v3, p0, mDividerHeight:I

    sub-int/2addr v2, v3

    .line 244
    :cond_20
    if-gez v2, :cond_23

    .line 246
    const/4 v2, 0x0

    .line 264
    :cond_23
    :goto_23
    if-eqz v2, :cond_29

    .line 265
    neg-int v3, v2

    invoke-virtual {p0, v3}, offsetChildrenTopAndBottom(I)V

    .line 268
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_29
    return-void

    .line 250
    :cond_2a
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 251
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, getHeight()I

    move-result v4

    iget-object v5, p0, mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 253
    .restart local v2    # "delta":I
    iget v3, p0, mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, mItemCount:I

    if-ge v3, v4, :cond_49

    .line 256
    iget v3, p0, mDividerHeight:I

    add-int/2addr v2, v3

    .line 259
    :cond_49
    if-lez v2, :cond_23

    .line 260
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private amountToScroll(II)I
    .registers 15
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .prologue
    .line 2850
    invoke-virtual {p0}, getHeight()I

    move-result v10

    iget-object v11, p0, mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2851
    .local v4, "listBottom":I
    iget-object v10, p0, mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2853
    .local v5, "listTop":I
    invoke-virtual {p0}, getChildCount()I

    move-result v7

    .line 2855
    .local v7, "numChildren":I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_85

    .line 2856
    add-int/lit8 v3, v7, -0x1

    .line 2857
    .local v3, "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_1f

    .line 2858
    iget v10, p0, mFirstPosition:I

    sub-int v3, p2, v10

    .line 2860
    :cond_1f
    :goto_1f
    if-gt v7, v3, :cond_32

    .line 2862
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 2863
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 2865
    :cond_32
    iget v10, p0, mFirstPosition:I

    add-int v8, v10, v3

    .line 2866
    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2868
    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    .line 2869
    .local v1, "goalBottom":I
    iget v10, p0, mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_46

    .line 2870
    invoke-direct {p0}, getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2873
    :cond_46
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_4e

    .line 2875
    const/4 v10, 0x0

    .line 2927
    .end local v1    # "goalBottom":I
    :goto_4d
    return v10

    .line 2878
    .restart local v1    # "goalBottom":I
    :cond_4e
    const/4 v10, -0x1

    if-eq p2, v10, :cond_5f

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_5f

    .line 2881
    const/4 v10, 0x0

    goto :goto_4d

    .line 2884
    :cond_5f
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2886
    .local v0, "amountToScroll":I
    iget v10, p0, mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, mItemCount:I

    if-ne v10, v11, :cond_7c

    .line 2888
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2889
    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2892
    .end local v6    # "max":I
    :cond_7c
    invoke-virtual {p0}, getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_4d

    .line 2894
    .end local v0    # "amountToScroll":I
    .end local v1    # "goalBottom":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_85
    const/4 v3, 0x0

    .line 2895
    .restart local v3    # "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_8d

    .line 2896
    iget v10, p0, mFirstPosition:I

    sub-int v3, p2, v10

    .line 2898
    :cond_8d
    :goto_8d
    if-gez v3, :cond_a4

    .line 2900
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, mFirstPosition:I

    invoke-direct {p0, v10, v11}, addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 2901
    iget v10, p0, mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, mFirstPosition:I

    .line 2902
    iget v10, p0, mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_8d

    .line 2904
    :cond_a4
    iget v10, p0, mFirstPosition:I

    add-int v8, v10, v3

    .line 2905
    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2906
    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    .line 2907
    .local v2, "goalTop":I
    if-lez v8, :cond_b4

    .line 2908
    invoke-direct {p0}, getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2910
    :cond_b4
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_bc

    .line 2912
    const/4 v10, 0x0

    goto :goto_4d

    .line 2915
    :cond_bc
    const/4 v10, -0x1

    if-eq p2, v10, :cond_cc

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_cc

    .line 2918
    const/4 v10, 0x0

    goto :goto_4d

    .line 2921
    :cond_cc
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2922
    .restart local v0    # "amountToScroll":I
    iget v10, p0, mFirstPosition:I

    if-nez v10, :cond_e5

    .line 2924
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2925
    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2927
    .end local v6    # "max":I
    :cond_e5
    invoke-virtual {p0}, getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_4d
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .registers 8
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .prologue
    .line 3119
    const/4 v0, 0x0

    .line 3120
    .local v0, "amountToScroll":I
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3121
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3122
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2b

    .line 3123
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2a

    .line 3124
    iget-object v2, p0, mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 3125
    if-lez p3, :cond_2a

    .line 3126
    invoke-direct {p0}, getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3138
    :cond_2a
    :goto_2a
    return v0

    .line 3130
    :cond_2b
    invoke-virtual {p0}, getHeight()I

    move-result v2

    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3131
    .local v1, "listBottom":I
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_2a

    .line 3132
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3133
    iget v2, p0, mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_2a

    .line 3134
    invoke-direct {p0}, getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2a
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .registers 19
    .param p1, "direction"    # I

    .prologue
    .line 3017
    invoke-virtual/range {p0 .. p0}, getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 3019
    .local v11, "selectedView":Landroid/view/View;
    if-eqz v11, :cond_4a

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_4a

    .line 3020
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 3021
    .local v8, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 3046
    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_1c
    if-eqz v7, :cond_113

    .line 3047
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 3051
    .local v9, "positionOfNewFocus":I
    move-object/from16 v0, p0

    iget v14, v0, mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_d9

    move-object/from16 v0, p0

    iget v14, v0, mSelectedPosition:I

    if-eq v9, v14, :cond_d9

    .line 3052
    invoke-direct/range {p0 .. p1}, lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 3053
    .local v10, "selectablePosition":I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_d9

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_40

    if-lt v10, v9, :cond_48

    :cond_40
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_d9

    if-le v10, v9, :cond_d9

    .line 3056
    :cond_48
    const/4 v14, 0x0

    .line 3078
    .end local v9    # "positionOfNewFocus":I
    .end local v10    # "selectablePosition":I
    :goto_49
    return-object v14

    .line 3023
    .end local v7    # "newFocus":Landroid/view/View;
    :cond_4a
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_94

    .line 3024
    move-object/from16 v0, p0

    iget v14, v0, mFirstPosition:I

    if-lez v14, :cond_8e

    const/4 v12, 0x1

    .line 3025
    .local v12, "topFadingEdgeShowing":Z
    :goto_57
    move-object/from16 v0, p0

    iget-object v14, v0, mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_90

    invoke-direct/range {p0 .. p0}, getArrowScrollPreviewLength()I

    move-result v14

    :goto_63
    add-int v5, v15, v14

    .line 3027
    .local v5, "listTop":I
    if-eqz v11, :cond_92

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_92

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 3031
    .local v13, "ySearchPoint":I
    :goto_71
    move-object/from16 v0, p0

    iget-object v14, v0, mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 3043
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    :goto_7d
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "newFocus":Landroid/view/View;
    goto :goto_1c

    .line 3024
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "ySearchPoint":I
    :cond_8e
    const/4 v12, 0x0

    goto :goto_57

    .line 3025
    .restart local v12    # "topFadingEdgeShowing":Z
    :cond_90
    const/4 v14, 0x0

    goto :goto_63

    .restart local v5    # "listTop":I
    :cond_92
    move v13, v5

    .line 3027
    goto :goto_71

    .line 3033
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    :cond_94
    move-object/from16 v0, p0

    iget v14, v0, mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, mItemCount:I

    if-ge v14, v15, :cond_d3

    const/4 v2, 0x1

    .line 3035
    .local v2, "bottomFadingEdgeShowing":Z
    :goto_a6
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_d5

    invoke-direct/range {p0 .. p0}, getArrowScrollPreviewLength()I

    move-result v14

    :goto_b8
    sub-int v4, v15, v14

    .line 3037
    .local v4, "listBottom":I
    if-eqz v11, :cond_d7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_d7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 3041
    .restart local v13    # "ySearchPoint":I
    :goto_c6
    move-object/from16 v0, p0

    iget-object v14, v0, mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7d

    .line 3033
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v13    # "ySearchPoint":I
    :cond_d3
    const/4 v2, 0x0

    goto :goto_a6

    .line 3035
    .restart local v2    # "bottomFadingEdgeShowing":Z
    :cond_d5
    const/4 v14, 0x0

    goto :goto_b8

    .restart local v4    # "listBottom":I
    :cond_d7
    move v13, v4

    .line 3037
    goto :goto_c6

    .line 3060
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .restart local v7    # "newFocus":Landroid/view/View;
    .restart local v9    # "positionOfNewFocus":I
    :cond_d9
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 3062
    .local v3, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, getMaxScrollAmount()I

    move-result v6

    .line 3063
    .local v6, "maxScrollAmount":I
    if-ge v3, v6, :cond_f9

    .line 3065
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3066
    move-object/from16 v0, p0

    iget-object v14, v0, mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3067
    move-object/from16 v0, p0

    iget-object v14, v0, mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_49

    .line 3068
    :cond_f9
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_113

    .line 3073
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3074
    move-object/from16 v0, p0

    iget-object v14, v0, mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3075
    move-object/from16 v0, p0

    iget-object v14, v0, mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_49

    .line 3078
    .end local v3    # "focusScroll":I
    .end local v6    # "maxScrollAmount":I
    .end local v9    # "positionOfNewFocus":I
    :cond_113
    const/4 v14, 0x0

    goto/16 :goto_49
.end method

.method private arrowScrollImpl(I)Z
    .registers 13
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2626
    invoke-virtual {p0}, getChildCount()I

    move-result v7

    if-gtz v7, :cond_a

    .line 2707
    :cond_9
    :goto_9
    return v9

    .line 2630
    :cond_a
    invoke-virtual {p0}, getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2631
    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, mSelectedPosition:I

    .line 2633
    .local v5, "selectedPos":I
    invoke-direct {p0, v6, v5, p1}, nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v4

    .line 2634
    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, amountToScroll(II)I

    move-result v0

    .line 2637
    .local v0, "amountToScroll":I
    iget-boolean v7, p0, mItemsCanFocus:Z

    if-eqz v7, :cond_ba

    invoke-direct {p0, p1}, arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2638
    .local v1, "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_20
    if-eqz v1, :cond_2a

    .line 2639
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2640
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2643
    :cond_2a
    if-eqz v1, :cond_bd

    move v3, v8

    .line 2644
    .local v3, "needToRedraw":Z
    :goto_2d
    if-eq v4, v10, :cond_53

    .line 2645
    if-eqz v1, :cond_c0

    move v7, v8

    :goto_32
    invoke-direct {p0, v6, p1, v4, v7}, handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2646
    invoke-virtual {p0, v4}, setSelectedPositionInt(I)V

    .line 2647
    invoke-virtual {p0, v4}, setNextSelectedPositionInt(I)V

    .line 2648
    invoke-virtual {p0}, getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2649
    move v5, v4

    .line 2650
    iget-boolean v7, p0, mItemsCanFocus:Z

    if-eqz v7, :cond_4f

    if-nez v1, :cond_4f

    .line 2653
    invoke-virtual {p0}, getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2654
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_4f

    .line 2655
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2658
    .end local v2    # "focused":Landroid/view/View;
    :cond_4f
    const/4 v3, 0x1

    .line 2659
    invoke-virtual {p0}, checkSelectionChanged()V

    .line 2662
    :cond_53
    if-lez v0, :cond_66

    .line 2664
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 2665
    invoke-direct {p0}, logActivity()V

    .line 2667
    :cond_5e
    const/16 v7, 0x21

    if-ne p1, v7, :cond_c3

    .end local v0    # "amountToScroll":I
    :goto_62
    invoke-direct {p0, v0}, scrollListItemsBy(I)V

    .line 2668
    const/4 v3, 0x1

    .line 2673
    :cond_66
    iget-boolean v7, p0, mItemsCanFocus:Z

    if-eqz v7, :cond_89

    if-nez v1, :cond_89

    if-eqz v6, :cond_89

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_89

    .line 2675
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2676
    .restart local v2    # "focused":Landroid/view/View;
    if-eqz v2, :cond_89

    .line 2677
    invoke-direct {p0, v2, p0}, isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_86

    invoke-direct {p0, v2}, distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_89

    .line 2678
    :cond_86
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2684
    .end local v2    # "focused":Landroid/view/View;
    :cond_89
    if-ne v4, v10, :cond_9e

    if-eqz v6, :cond_9e

    invoke-direct {p0, v6, p0}, isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_9e

    .line 2686
    const/4 v6, 0x0

    .line 2687
    iget-object v7, p0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 2688
    invoke-virtual {p0}, hideSelector()V

    .line 2692
    iput v10, p0, mResurrectToPosition:I

    .line 2695
    :cond_9e
    if-eqz v3, :cond_9

    .line 2696
    if-eqz v6, :cond_ab

    .line 2697
    invoke-virtual {p0, v5, v6}, positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 2698
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, mSelectedTop:I

    .line 2700
    :cond_ab
    invoke-virtual {p0}, awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_b4

    .line 2701
    invoke-virtual {p0}, invalidate()V

    .line 2703
    :cond_b4
    invoke-virtual {p0}, invokeOnItemScrollListener()V

    move v9, v8

    .line 2704
    goto/16 :goto_9

    .line 2637
    .end local v1    # "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    :cond_ba
    const/4 v1, 0x0

    goto/16 :goto_20

    .restart local v1    # "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_bd
    move v3, v9

    .line 2643
    goto/16 :goto_2d

    .restart local v3    # "needToRedraw":Z
    :cond_c0
    move v7, v9

    .line 2645
    goto/16 :goto_32

    .line 2667
    :cond_c3
    neg-int v0, v0

    goto :goto_62
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1f

    .line 556
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 558
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1f

    .line 559
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 560
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 561
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_1c

    .line 562
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 558
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 566
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_1f
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 13
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x82

    const/16 v6, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2250
    iget-object v5, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_11

    invoke-virtual {p0}, isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_13

    :cond_11
    move v4, v3

    .line 2403
    :cond_12
    :goto_12
    return v4

    .line 2254
    :cond_13
    iget-boolean v5, p0, mDataChanged:Z

    if-eqz v5, :cond_1a

    .line 2255
    invoke-virtual {p0}, layoutChildren()V

    .line 2258
    :cond_1a
    const/4 v2, 0x0

    .line 2259
    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2261
    .local v0, "action":I
    if-eq v0, v4, :cond_24

    .line 2262
    sparse-switch p1, :sswitch_data_1d6

    .line 2384
    :cond_24
    :goto_24
    if-nez v2, :cond_12

    .line 2388
    invoke-virtual {p0, p1, p2, p3}, sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 2392
    packed-switch v0, :pswitch_data_204

    move v4, v3

    .line 2403
    goto :goto_12

    .line 2264
    :sswitch_31
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_3d

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 2265
    :cond_3d
    iget v5, p0, mSelectedPosition:I

    iput v5, p0, mTwCurrentFocusPosition:I

    .line 2266
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2267
    if-nez v2, :cond_24

    move v1, p2

    .line 2268
    .end local p2    # "count":I
    .local v1, "count":I
    :goto_48
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_24

    .line 2269
    invoke-virtual {p0, v6}, arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2270
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_48

    .line 2276
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_55
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2277
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_67

    invoke-virtual {p0, v6}, fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_69

    :cond_67
    move v2, v4

    :goto_68
    goto :goto_24

    :cond_69
    move v2, v3

    goto :goto_68

    .line 2282
    :sswitch_6b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_77

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 2283
    :cond_77
    iget v5, p0, mSelectedPosition:I

    iput v5, p0, mTwCurrentFocusPosition:I

    .line 2284
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2285
    if-nez v2, :cond_24

    move v1, p2

    .line 2286
    .end local p2    # "count":I
    .restart local v1    # "count":I
    :goto_82
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_24

    .line 2287
    invoke-virtual {p0, v7}, arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2288
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_82

    .line 2294
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_8f
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2295
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_a1

    invoke-virtual {p0, v7}, fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_a3

    :cond_a1
    move v2, v4

    :goto_a2
    goto :goto_24

    :cond_a3
    move v2, v3

    goto :goto_a2

    .line 2300
    :sswitch_a5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_b1

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2301
    :cond_b1
    iget v5, p0, mSelectedPosition:I

    iput v5, p0, mTwCurrentFocusPosition:I

    .line 2302
    const/16 v5, 0x11

    invoke-direct {p0, v5}, handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    .line 2303
    if-nez v2, :cond_24

    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v2

    goto/16 :goto_24

    .line 2308
    :sswitch_c3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_cf

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2309
    :cond_cf
    iget v5, p0, mSelectedPosition:I

    iput v5, p0, mTwCurrentFocusPosition:I

    .line 2310
    const/16 v5, 0x42

    invoke-direct {p0, v5}, handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    .line 2311
    if-nez v2, :cond_24

    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v2

    goto/16 :goto_24

    .line 2317
    :sswitch_e1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2318
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2319
    if-nez v2, :cond_24

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_24

    invoke-virtual {p0}, getChildCount()I

    move-result v5

    if-lez v5, :cond_24

    .line 2321
    invoke-virtual {p0}, keyPressed()V

    .line 2322
    const/4 v2, 0x1

    goto/16 :goto_24

    .line 2328
    :sswitch_ff
    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_10b

    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_24

    .line 2329
    :cond_10b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_123

    .line 2330
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_11d

    invoke-virtual {p0, v7}, pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_121

    :cond_11d
    move v2, v4

    .line 2334
    :cond_11e
    :goto_11e
    const/4 v2, 0x1

    goto/16 :goto_24

    :cond_121
    move v2, v3

    .line 2330
    goto :goto_11e

    .line 2331
    :cond_123
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 2332
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_135

    invoke-virtual {p0, v6}, pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_137

    :cond_135
    move v2, v4

    :goto_136
    goto :goto_11e

    :cond_137
    move v2, v3

    goto :goto_136

    .line 2339
    :sswitch_139
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_150

    .line 2340
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_14b

    invoke-virtual {p0, v6}, pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_14e

    :cond_14b
    move v2, v4

    :goto_14c
    goto/16 :goto_24

    :cond_14e
    move v2, v3

    goto :goto_14c

    .line 2341
    :cond_150
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2342
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_162

    invoke-virtual {p0, v6}, fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_165

    :cond_162
    move v2, v4

    :goto_163
    goto/16 :goto_24

    :cond_165
    move v2, v3

    goto :goto_163

    .line 2347
    :sswitch_167
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_17e

    .line 2348
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_179

    invoke-virtual {p0, v7}, pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_17c

    :cond_179
    move v2, v4

    :goto_17a
    goto/16 :goto_24

    :cond_17c
    move v2, v3

    goto :goto_17a

    .line 2349
    :cond_17e
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2350
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_190

    invoke-virtual {p0, v7}, fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_193

    :cond_190
    move v2, v4

    :goto_191
    goto/16 :goto_24

    :cond_193
    move v2, v3

    goto :goto_191

    .line 2355
    :sswitch_195
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2356
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1a7

    invoke-virtual {p0, v6}, fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1aa

    :cond_1a7
    move v2, v4

    :goto_1a8
    goto/16 :goto_24

    :cond_1aa
    move v2, v3

    goto :goto_1a8

    .line 2361
    :sswitch_1ac
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2362
    invoke-virtual {p0}, resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1be

    invoke-virtual {p0, v7}, fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1c1

    :cond_1be
    move v2, v4

    :goto_1bf
    goto/16 :goto_24

    :cond_1c1
    move v2, v3

    goto :goto_1bf

    .line 2394
    :pswitch_1c3
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_12

    .line 2397
    :pswitch_1c9
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_12

    .line 2400
    :pswitch_1cf
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_12

    .line 2262
    nop

    :sswitch_data_1d6
    .sparse-switch
        0x13 -> :sswitch_31
        0x14 -> :sswitch_6b
        0x15 -> :sswitch_a5
        0x16 -> :sswitch_c3
        0x17 -> :sswitch_e1
        0x3e -> :sswitch_ff
        0x42 -> :sswitch_e1
        0x5c -> :sswitch_139
        0x5d -> :sswitch_167
        0x7a -> :sswitch_195
        0x7b -> :sswitch_1ac
    .end sparse-switch

    .line 2392
    :pswitch_data_204
    .packed-switch 0x0
        :pswitch_1c3
        :pswitch_1c9
        :pswitch_1cf
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .registers 12
    .param p1, "childCount"    # I

    .prologue
    .line 1426
    iget v7, p0, mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1427
    .local v6, "lastPosition":I
    iget v7, p0, mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_5e

    if-lez p1, :cond_5e

    .line 1430
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1433
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1436
    .local v4, "lastBottom":I
    iget v7, p0, mBottom:I

    iget v8, p0, mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1440
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 1441
    .local v0, "bottomOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1442
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1446
    .local v3, "firstTop":I
    if-lez v0, :cond_5e

    iget v7, p0, mFirstPosition:I

    if-gtz v7, :cond_39

    iget-object v7, p0, mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_5e

    .line 1447
    :cond_39
    iget v7, p0, mFirstPosition:I

    if-nez v7, :cond_46

    .line 1449
    iget-object v7, p0, mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1452
    :cond_46
    invoke-virtual {p0, v0}, offsetChildrenTopAndBottom(I)V

    .line 1453
    iget v7, p0, mFirstPosition:I

    if-lez v7, :cond_5e

    .line 1456
    iget v7, p0, mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, fillUp(II)Landroid/view/View;

    .line 1458
    invoke-direct {p0}, adjustViewsUpOrDown()V

    .line 1463
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_5e
    return-void
.end method

.method private correctTooLow(I)V
    .registers 13
    .param p1, "childCount"    # I

    .prologue
    .line 1475
    iget v8, p0, mFirstPosition:I

    if-nez v8, :cond_5e

    if-lez p1, :cond_5e

    .line 1478
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1481
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1484
    .local v2, "firstTop":I
    iget-object v8, p0, mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1487
    .local v6, "start":I
    iget v8, p0, mBottom:I

    iget v9, p0, mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1491
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 1492
    .local v7, "topOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1493
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1494
    .local v3, "lastBottom":I
    iget v8, p0, mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1498
    .local v5, "lastPosition":I
    if-lez v7, :cond_5e

    .line 1499
    iget v8, p0, mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_39

    if-le v3, v0, :cond_5f

    .line 1500
    :cond_39
    iget v8, p0, mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_45

    .line 1502
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1505
    :cond_45
    neg-int v8, v7

    invoke-virtual {p0, v8}, offsetChildrenTopAndBottom(I)V

    .line 1506
    iget v8, p0, mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_5e

    .line 1509
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, fillDown(II)Landroid/view/View;

    .line 1511
    invoke-direct {p0}, adjustViewsUpOrDown()V

    .line 1518
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_5e
    :goto_5e
    return-void

    .line 1513
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstTop":I
    .restart local v3    # "lastBottom":I
    .restart local v4    # "lastChild":Landroid/view/View;
    .restart local v5    # "lastPosition":I
    .restart local v6    # "start":I
    .restart local v7    # "topOffset":I
    :cond_5f
    iget v8, p0, mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_5e

    .line 1514
    invoke-direct {p0}, adjustViewsUpOrDown()V

    goto :goto_5e
.end method

.method private distanceToView(Landroid/view/View;)I
    .registers 6
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 3149
    const/4 v0, 0x0

    .line 3150
    .local v0, "distance":I
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3151
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3152
    iget v2, p0, mBottom:I

    iget v3, p0, mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3153
    .local v1, "listBottom":I
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2b

    .line 3154
    iget-object v2, p0, mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 3158
    :cond_2a
    :goto_2a
    return v0

    .line 3155
    :cond_2b
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_2a

    .line 3156
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_2a
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .registers 6
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 832
    iget v0, p0, mDividerHeight:I

    .line 833
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, mStackFromBottom:Z

    if-nez v1, :cond_1e

    .line 834
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, fillUp(II)Landroid/view/View;

    .line 835
    invoke-direct {p0}, adjustViewsUpOrDown()V

    .line 836
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, fillDown(II)Landroid/view/View;

    .line 842
    :goto_1d
    return-void

    .line 838
    :cond_1e
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, fillDown(II)Landroid/view/View;

    .line 839
    invoke-direct {p0}, adjustViewsUpOrDown()V

    .line 840
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, fillUp(II)Landroid/view/View;

    goto :goto_1d
.end method

.method private fillDown(II)Landroid/view/View;
    .registers 12
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    const/4 v3, 0x1

    .line 709
    const/4 v8, 0x0

    .line 711
    .local v8, "selectedView":Landroid/view/View;
    iget v0, p0, mBottom:I

    iget v1, p0, mTop:I

    sub-int v7, v0, v1

    .line 712
    .local v7, "end":I
    iget v0, p0, mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_15

    .line 713
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 716
    :cond_15
    :goto_15
    if-ge p2, v7, :cond_3d

    iget v0, p0, mItemCount:I

    if-ge p1, v0, :cond_3d

    .line 718
    iget v0, p0, mSelectedPosition:I

    if-ne p1, v0, :cond_3b

    move v5, v3

    .line 719
    .local v5, "selected":Z
    :goto_20
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 721
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_38

    .line 722
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, mDividerHeight:I

    add-int p2, v0, v1

    .line 723
    if-eqz v5, :cond_38

    .line 724
    move-object v8, v6

    .line 727
    :cond_38
    add-int/lit8 p1, p1, 0x1

    .line 728
    goto :goto_15

    .line 718
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_3b
    const/4 v5, 0x0

    goto :goto_20

    .line 730
    :cond_3d
    iget v0, p0, mFirstPosition:I

    iget v1, p0, mFirstPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, setVisibleRangeHint(II)V

    .line 731
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .registers 12
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    const/4 v3, 0x1

    .line 800
    sub-int v6, p2, p1

    .line 802
    .local v6, "height":I
    invoke-virtual {p0}, reconcileSelectedPosition()I

    move-result v1

    .line 804
    .local v1, "position":I
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 806
    .local v7, "sel":Landroid/view/View;
    iput v1, p0, mFirstPosition:I

    .line 808
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 809
    .local v8, "selHeight":I
    if-gt v8, v6, :cond_21

    .line 810
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 813
    :cond_21
    invoke-direct {p0, v7, v1}, fillAboveAndBelow(Landroid/view/View;I)V

    .line 815
    iget-boolean v0, p0, mStackFromBottom:Z

    if-nez v0, :cond_30

    .line 816
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, correctTooHigh(I)V

    .line 821
    :goto_2f
    return-object v7

    .line 818
    :cond_30
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, correctTooLow(I)V

    goto :goto_2f
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 18
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 856
    invoke-virtual {p0}, getVerticalFadingEdgeLength()I

    move-result v8

    .line 857
    .local v8, "fadingEdgeLength":I
    iget v2, p0, mSelectedPosition:I

    .line 861
    .local v2, "selectedPosition":I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, getTopSelectionPixel(III)I

    move-result v13

    .line 863
    .local v13, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, getBottomSelectionPixel(III)I

    move-result v7

    .line 866
    .local v7, "bottomSelectionPixel":I
    const/4 v4, 0x1

    iget-object v1, p0, mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 870
    .local v10, "sel":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_47

    .line 873
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 877
    .local v11, "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 878
    .local v12, "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 881
    .local v9, "offset":I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 897
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_38
    :goto_38
    invoke-direct {p0, v10, v2}, fillAboveAndBelow(Landroid/view/View;I)V

    .line 899
    iget-boolean v1, p0, mStackFromBottom:Z

    if-nez v1, :cond_61

    .line 900
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, correctTooHigh(I)V

    .line 905
    :goto_46
    return-object v10

    .line 882
    :cond_47
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_38

    .line 885
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 889
    .restart local v11    # "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 890
    .restart local v12    # "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 893
    .restart local v9    # "offset":I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_38

    .line 902
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_61
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, correctTooLow(I)V

    goto :goto_46
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 4
    .param p1, "nextTop"    # I

    .prologue
    .line 780
    iget v0, p0, mFirstPosition:I

    iget v1, p0, mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, mFirstPosition:I

    .line 781
    iget v0, p0, mFirstPosition:I

    iget v1, p0, mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, mFirstPosition:I

    .line 782
    iget v0, p0, mFirstPosition:I

    if-gez v0, :cond_1d

    .line 783
    const/4 v0, 0x0

    iput v0, p0, mFirstPosition:I

    .line 785
    :cond_1d
    iget v0, p0, mFirstPosition:I

    invoke-direct {p0, v0, p1}, fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    const/4 v3, 0x1

    .line 1378
    iget v0, p0, mSelectedPosition:I

    if-ne p1, v0, :cond_3e

    move v5, v3

    .line 1379
    .local v5, "tempIsSelected":Z
    :goto_6
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1381
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, mFirstPosition:I

    .line 1386
    iget v9, p0, mDividerHeight:I

    .line 1387
    .local v9, "dividerHeight":I
    iget-boolean v0, p0, mStackFromBottom:Z

    if-nez v0, :cond_40

    .line 1388
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1390
    .local v6, "above":Landroid/view/View;
    invoke-direct {p0}, adjustViewsUpOrDown()V

    .line 1391
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1392
    .local v7, "below":Landroid/view/View;
    invoke-virtual {p0}, getChildCount()I

    move-result v8

    .line 1393
    .local v8, "childCount":I
    if-lez v8, :cond_3b

    .line 1394
    invoke-direct {p0, v8}, correctTooHigh(I)V

    .line 1407
    :cond_3b
    :goto_3b
    if-eqz v5, :cond_63

    .line 1412
    .end local v10    # "temp":Landroid/view/View;
    :goto_3d
    return-object v10

    .line 1378
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "above":Landroid/view/View;
    .end local v7    # "below":Landroid/view/View;
    .end local v8    # "childCount":I
    .end local v9    # "dividerHeight":I
    :cond_3e
    const/4 v5, 0x0

    goto :goto_6

    .line 1397
    .restart local v5    # "tempIsSelected":Z
    .restart local v9    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_40
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1399
    .restart local v7    # "below":Landroid/view/View;
    invoke-direct {p0}, adjustViewsUpOrDown()V

    .line 1400
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1401
    .restart local v6    # "above":Landroid/view/View;
    invoke-virtual {p0}, getChildCount()I

    move-result v8

    .line 1402
    .restart local v8    # "childCount":I
    if-lez v8, :cond_3b

    .line 1403
    invoke-direct {p0, v8}, correctTooLow(I)V

    goto :goto_3b

    .line 1409
    :cond_63
    if-eqz v6, :cond_67

    move-object v10, v6

    .line 1410
    goto :goto_3d

    :cond_67
    move-object v10, v7

    .line 1412
    goto :goto_3d
.end method

.method private fillUp(II)Landroid/view/View;
    .registers 12
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 745
    const/4 v8, 0x0

    .line 747
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .line 748
    .local v7, "end":I
    iget v0, p0, mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_f

    .line 749
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 752
    :cond_f
    :goto_f
    if-le p2, v7, :cond_35

    if-ltz p1, :cond_35

    .line 754
    iget v0, p0, mSelectedPosition:I

    if-ne p1, v0, :cond_33

    const/4 v5, 0x1

    .line 755
    .local v5, "selected":Z
    :goto_18
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 757
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_30

    .line 758
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, mDividerHeight:I

    sub-int p2, v0, v1

    .line 759
    if-eqz v5, :cond_30

    .line 760
    move-object v8, v6

    .line 763
    :cond_30
    add-int/lit8 p1, p1, -0x1

    .line 764
    goto :goto_f

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_33
    move v5, v3

    .line 754
    goto :goto_18

    .line 766
    :cond_35
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, mFirstPosition:I

    .line 767
    iget v0, p0, mFirstPosition:I

    iget v1, p0, mFirstPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, setVisibleRangeHint(II)V

    .line 768
    return-object v8
.end method

.method private getArrowScrollPreviewLength()I
    .registers 3

    .prologue
    .line 2834
    const/4 v0, 0x2

    invoke-virtual {p0}, getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .registers 6
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 918
    move v0, p1

    .line 919
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_8

    .line 920
    sub-int/2addr v0, p2

    .line 922
    :cond_8
    return v0
.end method

.method private getSubHeaderCnt(Landroid/widget/ListAdapter;I)I
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "itemCount"    # I

    .prologue
    .line 3348
    iget-boolean v0, p0, mIsDeviceDefaultTheme:Z

    if-eqz v0, :cond_f

    instance-of v0, p1, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v0, :cond_f

    .line 3349
    check-cast p1, Landroid/preference/PreferenceGroupAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p1}, Landroid/preference/PreferenceGroupAdapter;->getPreferenceCategoryCnt()I

    move-result v0

    .line 3351
    :goto_e
    return v0

    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private getTopSelectionPixel(III)I
    .registers 5
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 935
    move v0, p1

    .line 936
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_4

    .line 937
    add-int/2addr v0, p2

    .line 939
    :cond_4
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .registers 10
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x0

    .line 2508
    const/16 v5, 0x11

    if-eq p1, v5, :cond_11

    const/16 v5, 0x42

    if-eq p1, v5, :cond_11

    .line 2509
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2513
    :cond_11
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    .line 2514
    .local v3, "numChildren":I
    iget-boolean v5, p0, mItemsCanFocus:Z

    if-eqz v5, :cond_80

    if-lez v3, :cond_80

    iget v5, p0, mSelectedPosition:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_80

    .line 2515
    invoke-virtual {p0}, getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2516
    .local v4, "selectedView":Landroid/view/View;
    if-eqz v4, :cond_80

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_80

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_80

    .line 2519
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2520
    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "selectedView":Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2522
    .local v2, "nextFocus":Landroid/view/View;
    if-eqz v2, :cond_6b

    .line 2525
    if-eqz v0, :cond_51

    .line 2526
    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2527
    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2528
    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2531
    :cond_51
    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 2532
    if-eq v0, v2, :cond_62

    iget-boolean v5, p0, mIsFolderTypeFeature:Z

    if-eqz v5, :cond_62

    .line 2533
    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 2535
    :cond_62
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, playSoundEffect(I)V

    .line 2536
    const/4 v5, 0x1

    .line 2550
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :goto_6a
    return v5

    .line 2543
    .restart local v0    # "currentFocus":Landroid/view/View;
    .restart local v2    # "nextFocus":Landroid/view/View;
    :cond_6b
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {p0}, getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v7, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2545
    .local v1, "globalNextFocus":Landroid/view/View;
    if-eqz v1, :cond_80

    .line 2546
    invoke-direct {p0, v1, p0}, isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_6a

    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v1    # "globalNextFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_80
    move v5, v6

    .line 2550
    goto :goto_6a
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .registers 15
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .prologue
    .line 2725
    const/4 v8, -0x1

    if-ne p3, v8, :cond_c

    .line 2726
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2736
    :cond_c
    const/4 v5, 0x0

    .line 2737
    .local v5, "topSelected":Z
    iget v8, p0, mSelectedPosition:I

    iget v9, p0, mFirstPosition:I

    sub-int v4, v8, v9

    .line 2738
    .local v4, "selectedIndex":I
    iget v8, p0, mFirstPosition:I

    sub-int v2, p3, v8

    .line 2739
    .local v2, "nextSelectedIndex":I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_42

    .line 2740
    move v7, v2

    .line 2741
    .local v7, "topViewIndex":I
    move v1, v4

    .line 2742
    .local v1, "bottomViewIndex":I
    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2743
    .local v6, "topView":Landroid/view/View;
    move-object v0, p1

    .line 2744
    .local v0, "bottomView":Landroid/view/View;
    const/4 v5, 0x1

    .line 2752
    :goto_23
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    .line 2755
    .local v3, "numChildren":I
    if-eqz v6, :cond_34

    .line 2756
    if-nez p4, :cond_4a

    if-eqz v5, :cond_4a

    const/4 v8, 0x1

    :goto_2e
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2757
    invoke-direct {p0, v6, v7, v3}, measureAndAdjustDown(Landroid/view/View;II)V

    .line 2761
    :cond_34
    if-eqz v0, :cond_41

    .line 2762
    if-nez p4, :cond_4c

    if-nez v5, :cond_4c

    const/4 v8, 0x1

    :goto_3b
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2763
    invoke-direct {p0, v0, v1, v3}, measureAndAdjustDown(Landroid/view/View;II)V

    .line 2765
    :cond_41
    return-void

    .line 2746
    .end local v0    # "bottomView":Landroid/view/View;
    .end local v1    # "bottomViewIndex":I
    .end local v3    # "numChildren":I
    .end local v6    # "topView":Landroid/view/View;
    .end local v7    # "topViewIndex":I
    :cond_42
    move v7, v4

    .line 2747
    .restart local v7    # "topViewIndex":I
    move v1, v2

    .line 2748
    .restart local v1    # "bottomViewIndex":I
    move-object v6, p1

    .line 2749
    .restart local v6    # "topView":Landroid/view/View;
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "bottomView":Landroid/view/View;
    goto :goto_23

    .line 2756
    .restart local v3    # "numChildren":I
    :cond_4a
    const/4 v8, 0x0

    goto :goto_2e

    .line 2762
    :cond_4c
    const/4 v8, 0x0

    goto :goto_3b
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .registers 9
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 1895
    iget-object v1, p0, mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1896
    .local v1, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1897
    .local v4, "numHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v4, :cond_19

    .line 1898
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_16

    move v5, v6

    .line 1911
    :goto_15
    return v5

    .line 1897
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1903
    :cond_19
    iget-object v0, p0, mFooterViewInfos:Ljava/util/ArrayList;

    .line 1904
    .local v0, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1905
    .local v3, "numFooters":I
    const/4 v2, 0x0

    :goto_20
    if-ge v2, v3, :cond_31

    .line 1906
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2e

    move v5, v6

    .line 1907
    goto :goto_15

    .line 1905
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1911
    :cond_31
    const/4 v5, 0x0

    goto :goto_15
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 3101
    if-ne p1, p2, :cond_4

    .line 3106
    :cond_3
    :goto_3
    return v1

    .line 3105
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3106
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private logActivity()V
    .registers 2

    .prologue
    .line 4134
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, logActivity(Landroid/view/View;Landroid/view/View;)V

    .line 4135
    return-void
.end method

.method private logActivity(Landroid/view/View;Landroid/view/View;)V
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/View;

    .prologue
    .line 4069
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 4131
    :cond_6
    :goto_6
    return-void

    .line 4075
    :cond_7
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1f

    move-object v2, p1

    .line 4076
    check-cast v2, Landroid/view/ViewGroup;

    .line 4077
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4078
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1f

    .line 4079
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, logActivity(Landroid/view/View;Landroid/view/View;)V

    .line 4078
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 4083
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_1f
    instance-of v3, p1, Landroid/widget/CheckBox;

    if-eqz v3, :cond_5d

    .line 4085
    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_e1

    const-string v3, "CHECKED"

    :goto_4c
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4089
    :cond_5d
    instance-of v3, p1, Landroid/widget/RadioButton;

    if-eqz v3, :cond_9b

    .line 4091
    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_e5

    const-string v3, "CHECKED"

    :goto_8a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    :cond_9b
    if-eqz p2, :cond_cf

    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_cf

    move-object v3, p1

    .line 4097
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_cf

    .line 4098
    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>MENUTEXT:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    :cond_cf
    instance-of v3, p1, Landroid/widget/AbsListView;

    if-eqz v3, :cond_6

    .line 4104
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Landroid/widget/ListView$1;

    invoke-direct {v4, p0, p1}, Landroid/widget/ListView$1;-><init>(Landroid/widget/ListView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_6

    .line 4085
    :cond_e1
    const-string v3, "UNCHECKED"

    goto/16 :goto_4c

    .line 4091
    :cond_e5
    const-string v3, "UNCHECKED"

    goto :goto_8a
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .registers 10
    .param p1, "direction"    # I

    .prologue
    const/4 v6, -0x1

    .line 2964
    iget v1, p0, mFirstPosition:I

    .line 2965
    .local v1, "firstPosition":I
    const/16 v7, 0x82

    if-ne p1, v7, :cond_3e

    .line 2966
    iget v7, p0, mSelectedPosition:I

    if-eq v7, v6, :cond_19

    iget v7, p0, mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2969
    .local v5, "startPos":I
    :goto_f
    iget-object v7, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_1b

    move v4, v6

    .line 3004
    :cond_18
    :goto_18
    return v4

    .end local v5    # "startPos":I
    :cond_19
    move v5, v1

    .line 2966
    goto :goto_f

    .line 2972
    .restart local v5    # "startPos":I
    :cond_1b
    if-ge v5, v1, :cond_1e

    .line 2973
    move v5, v1

    .line 2976
    :cond_1e
    invoke-virtual {p0}, getLastVisiblePosition()I

    move-result v3

    .line 2977
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2978
    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, "pos":I
    :goto_27
    if-gt v4, v3, :cond_80

    .line 2979
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3b

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_18

    .line 2978
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 2985
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "pos":I
    .end local v5    # "startPos":I
    :cond_3e
    invoke-virtual {p0}, getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 2986
    .local v2, "last":I
    iget v7, p0, mSelectedPosition:I

    if-eq v7, v6, :cond_59

    iget v7, p0, mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 2989
    .restart local v5    # "startPos":I
    :goto_4d
    if-ltz v5, :cond_57

    iget-object v7, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_61

    :cond_57
    move v4, v6

    .line 2990
    goto :goto_18

    .line 2986
    .end local v5    # "startPos":I
    :cond_59
    invoke-virtual {p0}, getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_4d

    .line 2992
    .restart local v5    # "startPos":I
    :cond_61
    if-le v5, v2, :cond_64

    .line 2993
    move v5, v2

    .line 2996
    :cond_64
    invoke-virtual {p0}, getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2997
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4    # "pos":I
    :goto_69
    if-lt v4, v1, :cond_80

    .line 2998
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_7d

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_18

    .line 2997
    :cond_7d
    add-int/lit8 v4, v4, -0x1

    goto :goto_69

    .end local v2    # "last":I
    :cond_80
    move v4, v6

    .line 3004
    goto :goto_18
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z

    .prologue
    .line 1932
    iget-boolean v0, p0, mDataChanged:Z

    if-nez v0, :cond_18

    .line 1934
    iget-object v0, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1935
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_18

    .line 1938
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1952
    .end local v1    # "child":Landroid/view/View;
    .local v8, "child":Landroid/view/View;
    :goto_17
    return-object v8

    .line 1945
    .end local v8    # "child":Landroid/view/View;
    :cond_18
    iget-object v0, p0, mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1949
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_2e

    .line 1950
    iget-object v0, p0, mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, setupChild(Landroid/view/View;IIZIZZ)V

    :cond_2e
    move-object v8, v1

    .line 1952
    .end local v1    # "child":Landroid/view/View;
    .restart local v8    # "child":Landroid/view/View;
    goto :goto_17
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .prologue
    .line 2775
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2776
    .local v2, "oldHeight":I
    invoke-direct {p0, p1}, measureItem(Landroid/view/View;)V

    .line 2777
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_24

    .line 2779
    invoke-direct {p0, p1}, relayoutMeasuredItem(Landroid/view/View;)V

    .line 2782
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2783
    .local v0, "heightDelta":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_18
    if-ge v1, p3, :cond_24

    .line 2784
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2783
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 2787
    .end local v0    # "heightDelta":I
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2795
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2796
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_d

    .line 2797
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2802
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    iget v4, p0, mWidthMeasureSpec:I

    iget-object v5, p0, mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2804
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2806
    .local v2, "lpHeight":I
    if-lez v2, :cond_2c

    .line 2807
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2812
    .local v0, "childHeightSpec":I
    :goto_28
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2813
    return-void

    .line 2809
    .end local v0    # "childHeightSpec":I
    :cond_2c
    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_28
.end method

.method private measureScrapChild(Landroid/view/View;III)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightHint"    # I

    .prologue
    .line 1221
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1222
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_11

    .line 1223
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1224
    .restart local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1226
    :cond_11
    iget-object v4, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1227
    iget-object v4, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1228
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1230
    iget-object v4, p0, mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1232
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1234
    .local v2, "lpHeight":I
    if-lez v2, :cond_44

    .line 1235
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1239
    .local v0, "childHeightSpec":I
    :goto_3d
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1243
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 1244
    return-void

    .line 1237
    .end local v0    # "childHeightSpec":I
    :cond_44
    const/4 v4, 0x0

    invoke-static {p4, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_3d
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .registers 25
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenTop"    # I
    .param p5, "childrenBottom"    # I

    .prologue
    .line 981
    invoke-virtual/range {p0 .. p0}, getVerticalFadingEdgeLength()I

    move-result v10

    .line 982
    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v15, v0, mSelectedPosition:I

    .line 986
    .local v15, "selectedPosition":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, getTopSelectionPixel(III)I

    move-result v18

    .line 988
    .local v18, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, getBottomSelectionPixel(III)I

    move-result v8

    .line 991
    .local v8, "bottomSelectionPixel":I
    if-lez p3, :cond_bd

    .line 1013
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1016
    move-object/from16 v0, p0

    iget v9, v0, mDividerHeight:I

    .line 1019
    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1023
    .local v14, "sel":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_6f

    .line 1026
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 1029
    .local v16, "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 1032
    .local v17, "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1033
    .local v11, "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1034
    .local v13, "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1037
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1039
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1043
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_6f
    move-object/from16 v0, p0

    iget-boolean v2, v0, mStackFromBottom:Z

    if-nez v2, :cond_99

    .line 1044
    move-object/from16 v0, p0

    iget v2, v0, mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, fillUp(II)Landroid/view/View;

    .line 1045
    invoke-direct/range {p0 .. p0}, adjustViewsUpOrDown()V

    .line 1046
    move-object/from16 v0, p0

    iget v2, v0, mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, fillDown(II)Landroid/view/View;

    .line 1127
    .end local v9    # "dividerHeight":I
    :goto_98
    return-object v14

    .line 1048
    .restart local v9    # "dividerHeight":I
    :cond_99
    move-object/from16 v0, p0

    iget v2, v0, mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, fillDown(II)Landroid/view/View;

    .line 1049
    invoke-direct/range {p0 .. p0}, adjustViewsUpOrDown()V

    .line 1050
    move-object/from16 v0, p0

    iget v2, v0, mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, fillUp(II)Landroid/view/View;

    goto :goto_98

    .line 1052
    .end local v9    # "dividerHeight":I
    .end local v14    # "sel":Landroid/view/View;
    :cond_bd
    if-gez p3, :cond_111

    .line 1073
    if-eqz p2, :cond_fd

    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1085
    .restart local v14    # "sel":Landroid/view/View;
    :goto_d4
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_f7

    .line 1087
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1090
    .restart local v16    # "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1093
    .restart local v17    # "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1094
    .restart local v11    # "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1095
    .restart local v13    # "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1098
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1102
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_f7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_98

    .line 1080
    .end local v14    # "sel":Landroid/view/View;
    :cond_fd
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14    # "sel":Landroid/view/View;
    goto :goto_d4

    .line 1105
    .end local v14    # "sel":Landroid/view/View;
    :cond_111
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1110
    .local v4, "oldTop":I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1113
    .restart local v14    # "sel":Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_139

    .line 1116
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1117
    .local v12, "newBottom":I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_139

    .line 1119
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1124
    .end local v12    # "newBottom":I
    :cond_139
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_98
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .registers 12
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .prologue
    const/16 v7, 0x82

    const/4 v4, -0x1

    .line 2591
    if-ne p3, v7, :cond_2d

    .line 2592
    invoke-virtual {p0}, getHeight()I

    move-result v5

    iget-object v6, p0, mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v6

    .line 2593
    .local v1, "listBottom":I
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-gt v5, v1, :cond_29

    .line 2594
    if-eq p2, v4, :cond_2a

    iget v5, p0, mFirstPosition:I

    if-lt p2, v5, :cond_2a

    add-int/lit8 v3, p2, 0x1

    .line 2612
    .end local v1    # "listBottom":I
    .local v3, "nextSelected":I
    :goto_1f
    if-ltz v3, :cond_29

    iget-object v5, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v3, v5, :cond_4b

    .line 2615
    .end local v3    # "nextSelected":I
    :cond_29
    :goto_29
    return v4

    .line 2594
    .restart local v1    # "listBottom":I
    :cond_2a
    iget v3, p0, mFirstPosition:I

    goto :goto_1f

    .line 2601
    .end local v1    # "listBottom":I
    :cond_2d
    iget-object v5, p0, mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->top:I

    .line 2602
    .local v2, "listTop":I
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v5, v2, :cond_29

    .line 2603
    iget v5, p0, mFirstPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    .line 2604
    .local v0, "lastPos":I
    if-eq p2, v4, :cond_49

    if-gt p2, v0, :cond_49

    add-int/lit8 v3, p2, -0x1

    .line 2607
    .restart local v3    # "nextSelected":I
    :goto_48
    goto :goto_1f

    .end local v3    # "nextSelected":I
    :cond_49
    move v3, v0

    .line 2604
    goto :goto_48

    .line 2615
    .end local v0    # "lastPos":I
    .end local v2    # "listTop":I
    .restart local v3    # "nextSelected":I
    :cond_4b
    if-ne p3, v7, :cond_53

    const/4 v4, 0x1

    :goto_4e
    invoke-virtual {p0, v3, v4}, lookForSelectablePosition(IZ)I

    move-result v4

    goto :goto_29

    :cond_53
    const/4 v4, 0x0

    goto :goto_4e
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .registers 7
    .param p1, "newFocus"    # Landroid/view/View;

    .prologue
    .line 3086
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    .line 3087
    .local v2, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v2, :cond_18

    .line 3088
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3089
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3090
    iget v3, p0, mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3087
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3093
    .end local v0    # "child":Landroid/view/View;
    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2821
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2822
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2823
    .local v4, "h":I
    iget-object v6, p0, mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2824
    .local v1, "childLeft":I
    add-int v2, v1, v5

    .line 2825
    .local v2, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2826
    .local v3, "childTop":I
    add-int v0, v3, v4

    .line 2827
    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2828
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 355
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_14

    .line 356
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 357
    .local v1, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_15

    .line 358
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 362
    .end local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_14
    return-void

    .line 355
    .restart local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private scrollListItemsBy(I)V
    .registers 14
    .param p1, "amount"    # I

    .prologue
    const/4 v11, 0x0

    .line 3169
    invoke-virtual {p0, p1}, offsetChildrenTopAndBottom(I)V

    .line 3171
    invoke-virtual {p0}, getHeight()I

    move-result v9

    iget-object v10, p0, mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 3172
    .local v5, "listBottom":I
    iget-object v9, p0, mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 3173
    .local v6, "listTop":I
    iget-object v8, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 3175
    .local v8, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_72

    .line 3179
    invoke-virtual {p0}, getChildCount()I

    move-result v7

    .line 3180
    .local v7, "numChildren":I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3181
    .local v1, "last":Landroid/view/View;
    :goto_20
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_38

    .line 3182
    iget v9, p0, mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3183
    .local v3, "lastVisiblePosition":I
    iget v9, p0, mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_38

    .line 3184
    invoke-direct {p0, v1, v3}, addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3185
    add-int/lit8 v7, v7, 0x1

    .line 3189
    goto :goto_20

    .line 3194
    .end local v3    # "lastVisiblePosition":I
    :cond_38
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_47

    .line 3195
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, offsetChildrenTopAndBottom(I)V

    .line 3199
    :cond_47
    invoke-virtual {p0, v11}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3200
    .local v0, "first":Landroid/view/View;
    :goto_4b
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_ca

    .line 3201
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3202
    .local v4, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 3203
    iget v9, p0, mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3205
    :cond_64
    invoke-virtual {p0, v0}, detachViewFromParent(Landroid/view/View;)V

    .line 3206
    invoke-virtual {p0, v11}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3207
    iget v9, p0, mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, mFirstPosition:I

    goto :goto_4b

    .line 3211
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_72
    invoke-virtual {p0, v11}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3214
    .restart local v0    # "first":Landroid/view/View;
    :goto_76
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_8d

    iget v9, p0, mFirstPosition:I

    if-lez v9, :cond_8d

    .line 3215
    iget v9, p0, mFirstPosition:I

    invoke-direct {p0, v0, v9}, addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3216
    iget v9, p0, mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, mFirstPosition:I

    goto :goto_76

    .line 3221
    :cond_8d
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_9c

    .line 3222
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, offsetChildrenTopAndBottom(I)V

    .line 3225
    :cond_9c
    invoke-virtual {p0}, getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3226
    .local v2, "lastIndex":I
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3229
    .restart local v1    # "last":Landroid/view/View;
    :goto_a6
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_ca

    .line 3230
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3231
    .restart local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_c0

    .line 3232
    iget v9, p0, mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3234
    :cond_c0
    invoke-virtual {p0, v1}, detachViewFromParent(Landroid/view/View;)V

    .line 3235
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3236
    goto :goto_a6

    .line 3238
    .end local v2    # "lastIndex":I
    .end local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    :cond_ca
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .registers 30
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z

    .prologue
    .line 1971
    const-wide/16 v20, 0x8

    const-string/jumbo v19, "setupListItem"

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1973
    if-eqz p6, :cond_17e

    invoke-virtual/range {p0 .. p0}, shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_17e

    const/4 v11, 0x1

    .line 1974
    .local v11, "isSelected":Z
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_181

    const/16 v17, 0x1

    .line 1975
    .local v17, "updateChildSelected":Z
    :goto_1f
    move-object/from16 v0, p0

    iget v13, v0, mTouchMode:I

    .line 1976
    .local v13, "mode":I
    if-lez v13, :cond_185

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_185

    move-object/from16 v0, p0

    iget v0, v0, mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_185

    const/4 v10, 0x1

    .line 1978
    .local v10, "isPressed":Z
    :goto_38
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_188

    const/16 v16, 0x1

    .line 1979
    .local v16, "updateChildPressed":Z
    :goto_42
    if-eqz p7, :cond_4c

    if-nez v17, :cond_4c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_18c

    :cond_4c
    const/4 v14, 0x1

    .line 1983
    .local v14, "needToMeasure":Z
    :goto_4d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 1984
    .local v15, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_5b

    .line 1985
    invoke-virtual/range {p0 .. p0}, generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .end local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 1987
    .restart local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1988
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1990
    if-eqz p7, :cond_87

    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_99

    :cond_87
    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_193

    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_193

    .line 1992
    :cond_99
    if-eqz p4, :cond_18f

    const/16 v19, -0x1

    :goto_9d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2001
    :goto_a6
    if-eqz v17, :cond_ba

    .line 2002
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 2003
    if-eqz v11, :cond_ba

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFolderTypeFeature:Z

    move/from16 v19, v0

    if-eqz v19, :cond_ba

    .line 2004
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestFocus()Z

    .line 2007
    :cond_ba
    if-eqz v16, :cond_c1

    .line 2008
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 2011
    :cond_c1
    move-object/from16 v0, p0

    iget v0, v0, mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_ee

    move-object/from16 v0, p0

    iget-object v0, v0, mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_ee

    .line 2012
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_1c1

    move-object/from16 v19, p1

    .line 2013
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2020
    :cond_ee
    :goto_ee
    if-eqz v14, :cond_1fa

    .line 2021
    move-object/from16 v0, p0

    iget v0, v0, mWidthMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 2023
    .local v8, "childWidthSpec":I
    iget v12, v15, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 2025
    .local v12, "lpHeight":I
    if-lez v12, :cond_1ee

    .line 2026
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2031
    .local v5, "childHeightSpec":I
    :goto_124
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 2036
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :goto_129
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 2037
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 2038
    .local v9, "h":I
    if-eqz p4, :cond_1ff

    move/from16 v7, p3

    .line 2040
    .local v7, "childTop":I
    :goto_135
    if-eqz v14, :cond_203

    .line 2041
    add-int v6, p5, v18

    .line 2042
    .local v6, "childRight":I
    add-int v4, v7, v9

    .line 2043
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 2049
    .end local v4    # "childBottom":I
    .end local v6    # "childRight":I
    :goto_142
    move-object/from16 v0, p0

    iget-boolean v0, v0, mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_159

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_159

    .line 2050
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2054
    :cond_159
    if-eqz p7, :cond_16d

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_175

    :cond_16d
    move-object/from16 v0, p0

    iget-boolean v0, v0, mJumpAtFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_178

    .line 2056
    :cond_175
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2059
    :cond_178
    const-wide/16 v20, 0x8

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 2060
    return-void

    .line 1973
    .end local v7    # "childTop":I
    .end local v9    # "h":I
    .end local v10    # "isPressed":Z
    .end local v11    # "isSelected":Z
    .end local v13    # "mode":I
    .end local v14    # "needToMeasure":Z
    .end local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v16    # "updateChildPressed":Z
    .end local v17    # "updateChildSelected":Z
    .end local v18    # "w":I
    :cond_17e
    const/4 v11, 0x0

    goto/16 :goto_15

    .line 1974
    .restart local v11    # "isSelected":Z
    :cond_181
    const/16 v17, 0x0

    goto/16 :goto_1f

    .line 1976
    .restart local v13    # "mode":I
    .restart local v17    # "updateChildSelected":Z
    :cond_185
    const/4 v10, 0x0

    goto/16 :goto_38

    .line 1978
    .restart local v10    # "isPressed":Z
    :cond_188
    const/16 v16, 0x0

    goto/16 :goto_42

    .line 1979
    .restart local v16    # "updateChildPressed":Z
    :cond_18c
    const/4 v14, 0x0

    goto/16 :goto_4d

    .line 1992
    .restart local v14    # "needToMeasure":Z
    .restart local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_18f
    const/16 v19, 0x0

    goto/16 :goto_9d

    .line 1994
    :cond_193
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1995
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1ab

    .line 1996
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1998
    :cond_1ab
    if-eqz p4, :cond_1be

    const/16 v19, -0x1

    :goto_1af
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_a6

    :cond_1be
    const/16 v19, 0x0

    goto :goto_1af

    .line 2014
    :cond_1c1
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_ee

    .line 2016
    move-object/from16 v0, p0

    iget-object v0, v0, mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_ee

    .line 2028
    .restart local v8    # "childWidthSpec":I
    .restart local v12    # "lpHeight":I
    :cond_1ee
    invoke-virtual/range {p0 .. p0}, getMeasuredHeight()I

    move-result v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v5

    .restart local v5    # "childHeightSpec":I
    goto/16 :goto_124

    .line 2033
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :cond_1fa
    invoke-virtual/range {p0 .. p1}, cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_129

    .line 2038
    .restart local v9    # "h":I
    .restart local v18    # "w":I
    :cond_1ff
    sub-int v7, p3, v9

    goto/16 :goto_135

    .line 2045
    .restart local v7    # "childTop":I
    :cond_203
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2046
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v7, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_142
.end method

.method private shouldAdjustHeightForDivider(I)Z
    .registers 25
    .param p1, "itemIndex"    # I

    .prologue
    .line 3963
    move-object/from16 v0, p0

    iget v3, v0, mDividerHeight:I

    .line 3964
    .local v3, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    .line 3965
    .local v19, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    .line 3966
    .local v18, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_a6

    const/4 v6, 0x1

    .line 3967
    .local v6, "drawOverscrollHeader":Z
    :goto_13
    if-eqz v18, :cond_a9

    const/4 v5, 0x1

    .line 3968
    .local v5, "drawOverscrollFooter":Z
    :goto_16
    if-lez v3, :cond_ac

    move-object/from16 v0, p0

    iget-object v0, v0, mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_ac

    const/4 v4, 0x1

    .line 3970
    .local v4, "drawDividers":Z
    :goto_21
    if-eqz v4, :cond_fa

    .line 3971
    invoke-virtual/range {p0 .. p0}, isOpaque()Z

    move-result v22

    if-eqz v22, :cond_af

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v22

    if-nez v22, :cond_af

    const/4 v7, 0x1

    .line 3972
    .local v7, "fillForMissingDividers":Z
    :goto_30
    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v16, v0

    .line 3973
    .local v16, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3974
    .local v10, "headerCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v9, v16, v22

    .line 3975
    .local v9, "footerLimit":I
    move/from16 v0, p1

    if-ge v0, v10, :cond_b1

    const/4 v14, 0x1

    .line 3976
    .local v14, "isHeader":Z
    :goto_51
    move/from16 v0, p1

    if-lt v0, v9, :cond_b3

    const/4 v13, 0x1

    .line 3977
    .local v13, "isFooter":Z
    :goto_56
    move-object/from16 v0, p0

    iget-boolean v11, v0, mHeaderDividersEnabled:Z

    .line 3978
    .local v11, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v8, v0, mFooterDividersEnabled:Z

    .line 3979
    .local v8, "footerDividers":Z
    if-nez v11, :cond_62

    if-nez v14, :cond_fa

    :cond_62
    if-nez v8, :cond_66

    if-nez v13, :cond_fa

    .line 3980
    :cond_66
    move-object/from16 v0, p0

    iget-object v2, v0, mAdapter:Landroid/widget/ListAdapter;

    .line 3981
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, mStackFromBottom:Z

    move/from16 v22, v0

    if-nez v22, :cond_bc

    .line 3982
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_b5

    const/4 v15, 0x1

    .line 3983
    .local v15, "isLastItem":Z
    :goto_7b
    if-eqz v5, :cond_7f

    if-nez v15, :cond_fa

    .line 3984
    :cond_7f
    add-int/lit8 v17, p1, 0x1

    .line 3988
    .local v17, "nextIndex":I
    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_b7

    if-nez v11, :cond_91

    if-nez v14, :cond_b7

    move/from16 v0, v17

    if-lt v0, v10, :cond_b7

    :cond_91
    if-nez v15, :cond_a3

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_b7

    if-nez v8, :cond_a3

    if-nez v13, :cond_b7

    move/from16 v0, v17

    if-ge v0, v9, :cond_b7

    .line 3992
    :cond_a3
    const/16 v22, 0x1

    .line 4018
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v7    # "fillForMissingDividers":Z
    .end local v8    # "footerDividers":Z
    .end local v9    # "footerLimit":I
    .end local v10    # "headerCount":I
    .end local v11    # "headerDividers":Z
    .end local v13    # "isFooter":Z
    .end local v14    # "isHeader":Z
    .end local v15    # "isLastItem":Z
    .end local v16    # "itemCount":I
    .end local v17    # "nextIndex":I
    :goto_a5
    return v22

    .line 3966
    .end local v4    # "drawDividers":Z
    .end local v5    # "drawOverscrollFooter":Z
    .end local v6    # "drawOverscrollHeader":Z
    :cond_a6
    const/4 v6, 0x0

    goto/16 :goto_13

    .line 3967
    .restart local v6    # "drawOverscrollHeader":Z
    :cond_a9
    const/4 v5, 0x0

    goto/16 :goto_16

    .line 3968
    .restart local v5    # "drawOverscrollFooter":Z
    :cond_ac
    const/4 v4, 0x0

    goto/16 :goto_21

    .line 3971
    .restart local v4    # "drawDividers":Z
    :cond_af
    const/4 v7, 0x0

    goto :goto_30

    .line 3975
    .restart local v7    # "fillForMissingDividers":Z
    .restart local v9    # "footerLimit":I
    .restart local v10    # "headerCount":I
    .restart local v16    # "itemCount":I
    :cond_b1
    const/4 v14, 0x0

    goto :goto_51

    .line 3976
    .restart local v14    # "isHeader":Z
    :cond_b3
    const/4 v13, 0x0

    goto :goto_56

    .line 3982
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    .restart local v8    # "footerDividers":Z
    .restart local v11    # "headerDividers":Z
    .restart local v13    # "isFooter":Z
    :cond_b5
    const/4 v15, 0x0

    goto :goto_7b

    .line 3993
    .restart local v15    # "isLastItem":Z
    .restart local v17    # "nextIndex":I
    :cond_b7
    if-eqz v7, :cond_fa

    .line 3994
    const/16 v22, 0x1

    goto :goto_a5

    .line 3998
    .end local v15    # "isLastItem":Z
    .end local v17    # "nextIndex":I
    :cond_bc
    if-eqz v6, :cond_f0

    const/16 v21, 0x1

    .line 3999
    .local v21, "start":I
    :goto_c0
    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_f3

    const/4 v12, 0x1

    .line 4000
    .local v12, "isFirstItem":Z
    :goto_c7
    if-nez v12, :cond_fa

    .line 4001
    add-int/lit8 v20, p1, -0x1

    .line 4005
    .local v20, "previousIndex":I
    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_f5

    if-nez v11, :cond_db

    if-nez v14, :cond_f5

    move/from16 v0, v20

    if-lt v0, v10, :cond_f5

    :cond_db
    if-nez v12, :cond_ed

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_f5

    if-nez v8, :cond_ed

    if-nez v13, :cond_f5

    move/from16 v0, v20

    if-ge v0, v9, :cond_f5

    .line 4009
    :cond_ed
    const/16 v22, 0x1

    goto :goto_a5

    .line 3998
    .end local v12    # "isFirstItem":Z
    .end local v20    # "previousIndex":I
    .end local v21    # "start":I
    :cond_f0
    const/16 v21, 0x0

    goto :goto_c0

    .line 3999
    .restart local v21    # "start":I
    :cond_f3
    const/4 v12, 0x0

    goto :goto_c7

    .line 4010
    .restart local v12    # "isFirstItem":Z
    .restart local v20    # "previousIndex":I
    :cond_f5
    if-eqz v7, :cond_fa

    .line 4011
    const/16 v22, 0x1

    goto :goto_a5

    .line 4018
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v7    # "fillForMissingDividers":Z
    .end local v8    # "footerDividers":Z
    .end local v9    # "footerLimit":I
    .end local v10    # "headerCount":I
    .end local v11    # "headerDividers":Z
    .end local v12    # "isFirstItem":Z
    .end local v13    # "isFooter":Z
    .end local v14    # "isHeader":Z
    .end local v16    # "itemCount":I
    .end local v20    # "previousIndex":I
    .end local v21    # "start":I
    :cond_fa
    const/16 v22, 0x0

    goto :goto_a5
.end method

.method private showingBottomFadingEdge()Z
    .registers 7

    .prologue
    .line 580
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 581
    .local v1, "childCount":I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 582
    .local v0, "bottomOfBottomChild":I
    iget v4, p0, mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 584
    .local v2, "lastVisiblePosition":I
    iget v4, p0, mScrollY:I

    invoke-virtual {p0}, getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 586
    .local v3, "listBottom":I
    iget v4, p0, mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_28

    if-ge v0, v3, :cond_2a

    :cond_28
    const/4 v4, 0x1

    :goto_29
    return v4

    :cond_2a
    const/4 v4, 0x0

    goto :goto_29
.end method

.method private showingTopFadingEdge()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 572
    iget v2, p0, mScrollY:I

    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 573
    .local v0, "listTop":I
    iget v2, p0, mFirstPosition:I

    if-gtz v2, :cond_17

    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 417
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 418
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 381
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 382
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 383
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 384
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 385
    iget-object v1, p0, mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-boolean v1, p0, mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, mAreAllItemsSelectable:Z

    .line 389
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_35

    .line 390
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_2c

    .line 391
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 396
    :cond_2c
    iget-object v1, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_35

    .line 397
    iget-object v1, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 400
    :cond_35
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 323
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 324
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 287
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 288
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 289
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 290
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 291
    iget-object v1, p0, mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-boolean v1, p0, mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, mAreAllItemsSelectable:Z

    .line 295
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_35

    .line 296
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_2c

    .line 297
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 302
    :cond_2c
    iget-object v1, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_35

    .line 303
    iget-object v1, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 306
    :cond_35
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .registers 2

    .prologue
    .line 3656
    iget-boolean v0, p0, mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .registers 2

    .prologue
    .line 3633
    iget-boolean v0, p0, mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .registers 5
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 2562
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2563
    invoke-direct {p0}, logActivity()V

    .line 2566
    :cond_a
    const/4 v1, 0x1

    :try_start_b
    iput-boolean v1, p0, mInLayout:Z

    .line 2567
    invoke-direct {p0, p1}, arrowScrollImpl(I)Z

    move-result v0

    .line 2568
    .local v0, "handled":Z
    if-eqz v0, :cond_1a

    .line 2569
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, playSoundEffect(I)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1d

    .line 2573
    :cond_1a
    iput-boolean v2, p0, mInLayout:Z

    return v0

    .end local v0    # "handled":Z
    :catchall_1d
    move-exception v1

    iput-boolean v2, p0, mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 2064
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, mItemCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 44
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3356
    move-object/from16 v0, p0

    iget-boolean v0, v0, mCachingStarted:Z

    move/from16 v40, v0

    if-eqz v40, :cond_10

    .line 3357
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, mCachingActive:Z

    .line 3361
    :cond_10
    move-object/from16 v0, p0

    iget v10, v0, mDividerHeight:I

    .line 3362
    .local v10, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v34, v0

    .line 3363
    .local v34, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .line 3364
    .local v33, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v34, :cond_1d6

    const/4 v13, 0x1

    .line 3365
    .local v13, "drawOverscrollHeader":Z
    :goto_23
    if-eqz v33, :cond_1d9

    const/4 v12, 0x1

    .line 3366
    .local v12, "drawOverscrollFooter":Z
    :goto_26
    if-lez v10, :cond_1dc

    move-object/from16 v0, p0

    iget-object v0, v0, mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1dc

    const/4 v11, 0x1

    .line 3368
    .local v11, "drawDividers":Z
    :goto_31
    if-nez v11, :cond_37

    if-nez v13, :cond_37

    if-eqz v12, :cond_285

    .line 3370
    :cond_37
    move-object/from16 v0, p0

    iget-object v7, v0, mTempRect:Landroid/graphics/Rect;

    .line 3371
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, mPaddingLeft:I

    move/from16 v40, v0

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3372
    move-object/from16 v0, p0

    iget v0, v0, mRight:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, mLeft:I

    move/from16 v41, v0

    sub-int v40, v40, v41

    move-object/from16 v0, p0

    iget v0, v0, mPaddingRight:I

    move/from16 v41, v0

    sub-int v40, v40, v41

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3374
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v9

    .line 3375
    .local v9, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 3376
    .local v20, "headerCount":I
    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v27, v0

    .line 3377
    .local v27, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    sub-int v19, v27, v40

    .line 3378
    .local v19, "footerLimit":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHeaderDividersEnabled:Z

    move/from16 v21, v0

    .line 3379
    .local v21, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, mFooterDividersEnabled:Z

    move/from16 v18, v0

    .line 3380
    .local v18, "footerDividers":Z
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v17, v0

    .line 3381
    .local v17, "first":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, mAreAllItemsSelectable:Z

    .line 3382
    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, mAdapter:Landroid/widget/ListAdapter;

    .line 3387
    .local v4, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, isOpaque()Z

    move-result v40

    if-eqz v40, :cond_1df

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v40

    if-nez v40, :cond_1df

    const/16 v16, 0x1

    .line 3388
    .local v16, "fillForMissingDividers":Z
    :goto_a7
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v4, v1}, getSubHeaderCnt(Landroid/widget/ListAdapter;I)I

    move-result v30

    .line 3390
    .local v30, "mCntSubHeader":I
    if-eqz v16, :cond_d9

    move-object/from16 v0, p0

    iget-object v0, v0, mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v40, v0

    if-nez v40, :cond_d9

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsCacheColorOpaque:Z

    move/from16 v40, v0

    if-eqz v40, :cond_d9

    .line 3391
    new-instance v40, Landroid/graphics/Paint;

    invoke-direct/range {v40 .. v40}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, mDividerPaint:Landroid/graphics/Paint;

    .line 3392
    move-object/from16 v0, p0

    iget-object v0, v0, mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, getCacheColorHint()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Landroid/graphics/Paint;->setColor(I)V

    .line 3394
    :cond_d9
    move-object/from16 v0, p0

    iget-object v0, v0, mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    .line 3396
    .local v35, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x0

    .line 3397
    .local v15, "effectivePaddingTop":I
    const/4 v14, 0x0

    .line 3398
    .local v14, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v40, v0

    and-int/lit8 v40, v40, 0x22

    const/16 v41, 0x22

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_105

    .line 3399
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 3400
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    .line 3403
    :cond_105
    move-object/from16 v0, p0

    iget v0, v0, mBottom:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, mTop:I

    move/from16 v41, v0

    sub-int v40, v40, v41

    sub-int v40, v40, v14

    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v41, v0

    add-int v29, v40, v41

    .line 3404
    .local v29, "listBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mStackFromBottom:Z

    move/from16 v40, v0

    if-nez v40, :cond_289

    .line 3405
    const/4 v6, 0x0

    .line 3408
    .local v6, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v37, v0

    .line 3409
    .local v37, "scrollY":I
    if-lez v9, :cond_145

    if-gez v37, :cond_145

    .line 3410
    if-eqz v13, :cond_1e3

    .line 3411
    const/16 v40, 0x0

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3412
    move/from16 v0, v37

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3413
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2, v7}, drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3421
    :cond_145
    :goto_145
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_147
    move/from16 v0, v22

    if-ge v0, v9, :cond_25a

    .line 3422
    add-int v28, v17, v22

    .line 3423
    .local v28, "itemIndex":I
    move/from16 v0, v28

    move/from16 v1, v20

    if-ge v0, v1, :cond_1ff

    const/16 v25, 0x1

    .line 3424
    .local v25, "isHeader":Z
    :goto_155
    move/from16 v0, v28

    move/from16 v1, v19

    if-lt v0, v1, :cond_203

    const/16 v24, 0x1

    .line 3425
    .local v24, "isFooter":Z
    :goto_15d
    if-nez v21, :cond_161

    if-nez v25, :cond_1d2

    :cond_161
    if-nez v18, :cond_165

    if-nez v24, :cond_1d2

    .line 3426
    :cond_165
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3427
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3428
    add-int/lit8 v40, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v40

    if-ne v0, v1, :cond_207

    const/16 v26, 0x1

    .line 3430
    .local v26, "isLastItem":Z
    :goto_17b
    if-eqz v11, :cond_1d2

    move/from16 v0, v29

    if-ge v6, v0, :cond_1d2

    if-eqz v12, :cond_185

    if-nez v26, :cond_1d2

    .line 3432
    :cond_185
    add-int/lit8 v31, v28, 0x1

    .line 3436
    .local v31, "nextIndex":I
    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v40

    if-eqz v40, :cond_215

    if-nez v21, :cond_199

    if-nez v25, :cond_215

    move/from16 v0, v31

    move/from16 v1, v20

    if-lt v0, v1, :cond_215

    :cond_199
    if-nez v26, :cond_1ad

    move/from16 v0, v31

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v40

    if-eqz v40, :cond_215

    if-nez v18, :cond_1ad

    if-nez v24, :cond_215

    move/from16 v0, v31

    move/from16 v1, v19

    if-ge v0, v1, :cond_215

    .line 3440
    :cond_1ad
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3441
    add-int v40, v6, v10

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3443
    sget-boolean v40, TW_SCAFE_MOCHA:Z

    if-nez v40, :cond_1bd

    sget-boolean v40, TW_SCAFE_AMERICANO:Z

    if-eqz v40, :cond_20b

    :cond_1bd
    if-eqz v30, :cond_20b

    .line 3444
    const/16 v40, 0x1

    move/from16 v0, v30

    move/from16 v1, v40

    if-ne v0, v1, :cond_1d2

    if-eqz v26, :cond_1d2

    .line 3445
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3421
    .end local v8    # "child":Landroid/view/View;
    .end local v26    # "isLastItem":Z
    .end local v31    # "nextIndex":I
    :cond_1d2
    :goto_1d2
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_147

    .line 3364
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "count":I
    .end local v11    # "drawDividers":Z
    .end local v12    # "drawOverscrollFooter":Z
    .end local v13    # "drawOverscrollHeader":Z
    .end local v14    # "effectivePaddingBottom":I
    .end local v15    # "effectivePaddingTop":I
    .end local v16    # "fillForMissingDividers":Z
    .end local v17    # "first":I
    .end local v18    # "footerDividers":Z
    .end local v19    # "footerLimit":I
    .end local v20    # "headerCount":I
    .end local v21    # "headerDividers":Z
    .end local v22    # "i":I
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v27    # "itemCount":I
    .end local v28    # "itemIndex":I
    .end local v29    # "listBottom":I
    .end local v30    # "mCntSubHeader":I
    .end local v35    # "paint":Landroid/graphics/Paint;
    .end local v37    # "scrollY":I
    :cond_1d6
    const/4 v13, 0x0

    goto/16 :goto_23

    .line 3365
    .restart local v13    # "drawOverscrollHeader":Z
    :cond_1d9
    const/4 v12, 0x0

    goto/16 :goto_26

    .line 3366
    .restart local v12    # "drawOverscrollFooter":Z
    :cond_1dc
    const/4 v11, 0x0

    goto/16 :goto_31

    .line 3387
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "count":I
    .restart local v11    # "drawDividers":Z
    .restart local v17    # "first":I
    .restart local v18    # "footerDividers":Z
    .restart local v19    # "footerLimit":I
    .restart local v20    # "headerCount":I
    .restart local v21    # "headerDividers":Z
    .restart local v27    # "itemCount":I
    :cond_1df
    const/16 v16, 0x0

    goto/16 :goto_a7

    .line 3414
    .restart local v6    # "bottom":I
    .restart local v14    # "effectivePaddingBottom":I
    .restart local v15    # "effectivePaddingTop":I
    .restart local v16    # "fillForMissingDividers":Z
    .restart local v29    # "listBottom":I
    .restart local v30    # "mCntSubHeader":I
    .restart local v35    # "paint":Landroid/graphics/Paint;
    .restart local v37    # "scrollY":I
    :cond_1e3
    if-eqz v11, :cond_145

    .line 3415
    const/16 v40, 0x0

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3416
    neg-int v0, v10

    move/from16 v40, v0

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3417
    const/16 v40, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v7, v2}, drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_145

    .line 3423
    .restart local v22    # "i":I
    .restart local v28    # "itemIndex":I
    :cond_1ff
    const/16 v25, 0x0

    goto/16 :goto_155

    .line 3424
    .restart local v25    # "isHeader":Z
    :cond_203
    const/16 v24, 0x0

    goto/16 :goto_15d

    .line 3428
    .restart local v8    # "child":Landroid/view/View;
    .restart local v24    # "isFooter":Z
    :cond_207
    const/16 v26, 0x0

    goto/16 :goto_17b

    .line 3448
    .restart local v26    # "isLastItem":Z
    .restart local v31    # "nextIndex":I
    :cond_20b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1d2

    .line 3450
    :cond_215
    if-eqz v30, :cond_247

    if-nez v26, :cond_247

    instance-of v0, v4, Landroid/preference/PreferenceGroupAdapter;

    move/from16 v40, v0

    if-eqz v40, :cond_247

    move-object/from16 v40, v4

    check-cast v40, Landroid/preference/PreferenceGroupAdapter;

    move-object/from16 v0, v40

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroupAdapter;->isPreferenceCategory(I)Z

    move-result v40

    if-eqz v40, :cond_247

    .line 3451
    sget-boolean v40, Landroid/view/View;->TW_SCAFE_AMERICANO:Z

    if-nez v40, :cond_235

    sget-boolean v40, Landroid/view/View;->TW_SCAFE_MOCHA:Z

    if-eqz v40, :cond_1d2

    .line 3452
    :cond_235
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3453
    add-int v40, v6, v10

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3454
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1d2

    .line 3456
    :cond_247
    if-eqz v16, :cond_1d2

    .line 3457
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3458
    add-int v40, v6, v10

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3459
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1d2

    .line 3465
    .end local v8    # "child":Landroid/view/View;
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v26    # "isLastItem":Z
    .end local v28    # "itemIndex":I
    .end local v31    # "nextIndex":I
    :cond_25a
    move-object/from16 v0, p0

    iget v0, v0, mBottom:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v41, v0

    add-int v32, v40, v41

    .line 3466
    .local v32, "overFooterBottom":I
    if-eqz v12, :cond_285

    add-int v40, v17, v9

    move/from16 v0, v40

    move/from16 v1, v27

    if-ne v0, v1, :cond_285

    move/from16 v0, v32

    if-le v0, v6, :cond_285

    .line 3468
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3469
    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3470
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v7}, drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3533
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "count":I
    .end local v14    # "effectivePaddingBottom":I
    .end local v15    # "effectivePaddingTop":I
    .end local v16    # "fillForMissingDividers":Z
    .end local v17    # "first":I
    .end local v18    # "footerDividers":Z
    .end local v19    # "footerLimit":I
    .end local v20    # "headerCount":I
    .end local v21    # "headerDividers":Z
    .end local v22    # "i":I
    .end local v27    # "itemCount":I
    .end local v29    # "listBottom":I
    .end local v30    # "mCntSubHeader":I
    .end local v32    # "overFooterBottom":I
    .end local v35    # "paint":Landroid/graphics/Paint;
    .end local v37    # "scrollY":I
    :cond_285
    :goto_285
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3534
    return-void

    .line 3475
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "count":I
    .restart local v14    # "effectivePaddingBottom":I
    .restart local v15    # "effectivePaddingTop":I
    .restart local v16    # "fillForMissingDividers":Z
    .restart local v17    # "first":I
    .restart local v18    # "footerDividers":Z
    .restart local v19    # "footerLimit":I
    .restart local v20    # "headerCount":I
    .restart local v21    # "headerDividers":Z
    .restart local v27    # "itemCount":I
    .restart local v29    # "listBottom":I
    .restart local v30    # "mCntSubHeader":I
    .restart local v35    # "paint":Landroid/graphics/Paint;
    :cond_289
    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v37, v0

    .line 3477
    .restart local v37    # "scrollY":I
    if-lez v9, :cond_2b2

    if-eqz v13, :cond_2b2

    .line 3478
    move/from16 v0, v37

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3479
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getTop()I

    move-result v40

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3480
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2, v7}, drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3483
    :cond_2b2
    if-eqz v13, :cond_330

    const/16 v38, 0x1

    .line 3484
    .local v38, "start":I
    :goto_2b6
    move/from16 v22, v38

    .restart local v22    # "i":I
    :goto_2b8
    move/from16 v0, v22

    if-ge v0, v9, :cond_350

    .line 3485
    add-int v28, v17, v22

    .line 3486
    .restart local v28    # "itemIndex":I
    move/from16 v0, v28

    move/from16 v1, v20

    if-ge v0, v1, :cond_333

    const/16 v25, 0x1

    .line 3487
    .restart local v25    # "isHeader":Z
    :goto_2c6
    move/from16 v0, v28

    move/from16 v1, v19

    if-lt v0, v1, :cond_336

    const/16 v24, 0x1

    .line 3488
    .restart local v24    # "isFooter":Z
    :goto_2ce
    if-nez v21, :cond_2d2

    if-nez v25, :cond_32d

    :cond_2d2
    if-nez v18, :cond_2d6

    if-nez v24, :cond_32d

    .line 3489
    :cond_2d6
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3490
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v39

    .line 3491
    .local v39, "top":I
    if-eqz v11, :cond_32d

    move/from16 v0, v39

    if-le v0, v15, :cond_32d

    .line 3492
    move/from16 v0, v22

    move/from16 v1, v38

    if-ne v0, v1, :cond_339

    const/16 v23, 0x1

    .line 3493
    .local v23, "isFirstItem":Z
    :goto_2f0
    add-int/lit8 v36, v28, -0x1

    .line 3497
    .local v36, "previousIndex":I
    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v40

    if-eqz v40, :cond_33c

    if-nez v21, :cond_304

    if-nez v25, :cond_33c

    move/from16 v0, v36

    move/from16 v1, v20

    if-lt v0, v1, :cond_33c

    :cond_304
    if-nez v23, :cond_318

    move/from16 v0, v36

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v40

    if-eqz v40, :cond_33c

    if-nez v18, :cond_318

    if-nez v24, :cond_33c

    move/from16 v0, v36

    move/from16 v1, v19

    if-ge v0, v1, :cond_33c

    .line 3501
    :cond_318
    sub-int v40, v39, v10

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3502
    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3507
    add-int/lit8 v40, v22, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v7, v2}, drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3484
    .end local v8    # "child":Landroid/view/View;
    .end local v23    # "isFirstItem":Z
    .end local v36    # "previousIndex":I
    .end local v39    # "top":I
    :cond_32d
    :goto_32d
    add-int/lit8 v22, v22, 0x1

    goto :goto_2b8

    .line 3483
    .end local v22    # "i":I
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v28    # "itemIndex":I
    .end local v38    # "start":I
    :cond_330
    const/16 v38, 0x0

    goto :goto_2b6

    .line 3486
    .restart local v22    # "i":I
    .restart local v28    # "itemIndex":I
    .restart local v38    # "start":I
    :cond_333
    const/16 v25, 0x0

    goto :goto_2c6

    .line 3487
    .restart local v25    # "isHeader":Z
    :cond_336
    const/16 v24, 0x0

    goto :goto_2ce

    .line 3492
    .restart local v8    # "child":Landroid/view/View;
    .restart local v24    # "isFooter":Z
    .restart local v39    # "top":I
    :cond_339
    const/16 v23, 0x0

    goto :goto_2f0

    .line 3508
    .restart local v23    # "isFirstItem":Z
    .restart local v36    # "previousIndex":I
    :cond_33c
    if-eqz v16, :cond_32d

    .line 3509
    sub-int v40, v39, v10

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3510
    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3511
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_32d

    .line 3517
    .end local v8    # "child":Landroid/view/View;
    .end local v23    # "isFirstItem":Z
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v28    # "itemIndex":I
    .end local v36    # "previousIndex":I
    .end local v39    # "top":I
    :cond_350
    if-lez v9, :cond_285

    if-lez v37, :cond_285

    .line 3518
    if-eqz v12, :cond_36d

    .line 3519
    move-object/from16 v0, p0

    iget v3, v0, mBottom:I

    .line 3520
    .local v3, "absListBottom":I
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 3521
    add-int v40, v3, v37

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3522
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v7}, drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_285

    .line 3523
    .end local v3    # "absListBottom":I
    :cond_36d
    if-eqz v11, :cond_285

    .line 3524
    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3525
    add-int v40, v29, v10

    move/from16 v0, v40

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3526
    const/16 v40, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v7, v2}, drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_285
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2221
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2222
    .local v1, "handled":Z
    if-nez v1, :cond_1a

    .line 2224
    invoke-virtual {p0}, getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2225
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1a

    .line 2228
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2231
    .end local v0    # "focused":Landroid/view/View;
    :cond_1a
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 3538
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3539
    .local v0, "more":Z
    iget-boolean v1, p0, mCachingActive:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_f

    .line 3540
    const/4 v1, 0x0

    iput-boolean v1, p0, mCachingActive:Z

    .line 3542
    :cond_f
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 3556
    iget-object v0, p0, mDivider:Landroid/graphics/drawable/Drawable;

    .line 3558
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3559
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3560
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3331
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3333
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3334
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3336
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3337
    .local v1, "span":I
    if-ge v1, v0, :cond_17

    .line 3338
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3341
    :cond_17
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3342
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3344
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3345
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3314
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3316
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3317
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3319
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3320
    .local v1, "span":I
    if-ge v1, v0, :cond_17

    .line 3321
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3324
    :cond_17
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3325
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3327
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3328
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 4165
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 4167
    const-string/jumbo v0, "recycleOnMeasure"

    invoke-virtual {p0}, recycleOnMeasure()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 4168
    return-void
.end method

.method fillGap(Z)V
    .registers 8
    .param p1, "down"    # Z

    .prologue
    const/16 v5, 0x22

    .line 675
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 676
    .local v0, "count":I
    if-eqz p1, :cond_33

    .line 677
    const/4 v2, 0x0

    .line 678
    .local v2, "paddingTop":I
    iget v4, p0, mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_13

    .line 679
    invoke-virtual {p0}, getListPaddingTop()I

    move-result v2

    .line 681
    :cond_13
    if-lez v0, :cond_31

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, mDividerHeight:I

    add-int v3, v4, v5

    .line 683
    .local v3, "startOffset":I
    :goto_23
    iget v4, p0, mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, fillDown(II)Landroid/view/View;

    .line 684
    invoke-virtual {p0}, getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, correctTooHigh(I)V

    .line 695
    .end local v2    # "paddingTop":I
    :goto_30
    return-void

    .end local v3    # "startOffset":I
    .restart local v2    # "paddingTop":I
    :cond_31
    move v3, v2

    .line 681
    goto :goto_23

    .line 686
    .end local v2    # "paddingTop":I
    :cond_33
    const/4 v1, 0x0

    .line 687
    .local v1, "paddingBottom":I
    iget v4, p0, mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_3e

    .line 688
    invoke-virtual {p0}, getListPaddingBottom()I

    move-result v1

    .line 690
    :cond_3e
    if-lez v0, :cond_5c

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, mDividerHeight:I

    sub-int v3, v4, v5

    .line 692
    .restart local v3    # "startOffset":I
    :goto_4d
    iget v4, p0, mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, fillUp(II)Landroid/view/View;

    .line 693
    invoke-virtual {p0}, getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, correctTooLow(I)V

    goto :goto_30

    .line 690
    .end local v3    # "startOffset":I
    :cond_5c
    invoke-virtual {p0}, getHeight()I

    move-result v4

    sub-int v3, v4, v1

    goto :goto_4d
.end method

.method findMotionRow(I)I
    .registers 6
    .param p1, "y"    # I

    .prologue
    .line 1345
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 1346
    .local v0, "childCount":I
    if-lez v0, :cond_33

    .line 1347
    iget-boolean v3, p0, mStackFromBottom:Z

    if-nez v3, :cond_1e

    .line 1348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_33

    .line 1349
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1350
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1b

    .line 1351
    iget v3, p0, mFirstPosition:I

    add-int/2addr v3, v1

    .line 1363
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1a
    return v3

    .line 1348
    .restart local v1    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1355
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1e
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_20
    if-ltz v1, :cond_33

    .line 1356
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1357
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_30

    .line 1358
    iget v3, p0, mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1a

    .line 1355
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    .line 1363
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_33
    const/4 v3, -0x1

    goto :goto_1a
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 8
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3889
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_23

    .line 3890
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3893
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_23

    .line 3894
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3896
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_20

    .line 3897
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3899
    if-eqz v2, :cond_20

    .line 3905
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1f
    return-object v2

    .line 3893
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3905
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_23
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 6
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3867
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3868
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3869
    iget-object v2, p0, mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3870
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3879
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_f
    return-object v1

    .line 3874
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_10
    iget-object v2, p0, mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3875
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3876
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3879
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 7
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3794
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 3795
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3798
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_21

    .line 3799
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3801
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3802
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3804
    if-eqz v2, :cond_1e

    .line 3810
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1d
    return-object v2

    .line 3798
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3810
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 3775
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3776
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3777
    iget-object v2, p0, mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3778
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3786
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_f
    return-object v1

    .line 3781
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_10
    iget-object v2, p0, mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3782
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3783
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3786
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3840
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 3841
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3844
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_21

    .line 3845
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3847
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3848
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3850
    if-eqz v2, :cond_1e

    .line 3856
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1d
    return-object v2

    .line 3844
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3856
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 5
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3820
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3821
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3822
    iget-object v2, p0, mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3823
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3832
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_f
    return-object v1

    .line 3827
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_10
    iget-object v2, p0, mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3828
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3829
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3832
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f
.end method

.method fullScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2467
    const/4 v1, 0x0

    .line 2468
    .local v1, "moved":Z
    const/16 v3, 0x21

    if-ne p1, v3, :cond_2b

    .line 2469
    iget v3, p0, mSelectedPosition:I

    if-eqz v3, :cond_1c

    .line 2470
    iget v3, p0, mSelectedPosition:I

    invoke-virtual {p0, v3, v4, v5}, lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2471
    .local v2, "position":I
    if-ltz v2, :cond_1b

    .line 2472
    iput v5, p0, mLayoutMode:I

    .line 2473
    invoke-virtual {p0, v2}, setSelectionInt(I)V

    .line 2474
    invoke-virtual {p0}, invokeOnItemScrollListener()V

    .line 2476
    :cond_1b
    const/4 v1, 0x1

    .line 2492
    .end local v2    # "position":I
    :cond_1c
    :goto_1c
    if-eqz v1, :cond_2a

    invoke-virtual {p0}, awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 2493
    invoke-virtual {p0}, awakenScrollBars()Z

    .line 2494
    invoke-virtual {p0}, invalidate()V

    .line 2497
    :cond_2a
    return v1

    .line 2478
    :cond_2b
    const/16 v3, 0x82

    if-ne p1, v3, :cond_1c

    .line 2479
    iget v3, p0, mItemCount:I

    add-int/lit8 v0, v3, -0x1

    .line 2480
    .local v0, "lastItem":I
    iget v3, p0, mSelectedPosition:I

    if-ge v3, v0, :cond_1c

    .line 2481
    iget v3, p0, mSelectedPosition:I

    invoke-virtual {p0, v3, v0, v4}, lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2483
    .restart local v2    # "position":I
    if-ltz v2, :cond_48

    .line 2484
    const/4 v3, 0x3

    iput v3, p0, mLayoutMode:I

    .line 2485
    invoke-virtual {p0, v2}, setSelectionInt(I)V

    .line 2486
    invoke-virtual {p0}, invokeOnItemScrollListener()V

    .line 2488
    :cond_48
    const/4 v1, 0x1

    goto :goto_1c
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 4023
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3920
    iget-object v8, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_12

    iget-object v8, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 3921
    invoke-virtual {p0}, getCheckedItemIds()[J

    move-result-object v5

    .line 3950
    :cond_11
    :goto_11
    return-object v5

    .line 3926
    :cond_12
    iget v8, p0, mChoiceMode:I

    if-eqz v8, :cond_4c

    iget-object v8, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_4c

    iget-object v8, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_4c

    .line 3927
    iget-object v7, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3928
    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3929
    .local v3, "count":I
    new-array v5, v3, [J

    .line 3930
    .local v5, "ids":[J
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 3932
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3933
    .local v1, "checkedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "checkedCount":I
    .local v2, "checkedCount":I
    :goto_2b
    if-ge v4, v3, :cond_43

    .line 3934
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 3935
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3933
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_2b

    .line 3941
    :cond_43
    if-eq v2, v3, :cond_11

    .line 3944
    new-array v6, v2, [J

    .line 3945
    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    move-object v5, v6

    .line 3947
    goto :goto_11

    .line 3950
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "checkedCount":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    .end local v6    # "result":[J
    .end local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4c
    new-array v5, v10, [J

    goto :goto_11

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "checkedCount":I
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "ids":[J
    .restart local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4f
    move v1, v2

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    goto :goto_3f
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3570
    iget-object v0, p0, mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .registers 2

    .prologue
    .line 3598
    iget v0, p0, mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getHeightForPosition(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 3955
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->getHeightForPosition(I)I

    move-result v0

    .line 3956
    .local v0, "height":I
    invoke-direct {p0, p1}, shouldAdjustHeightForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3957
    iget v1, p0, mDividerHeight:I

    add-int/2addr v0, v1

    .line 3959
    .end local v0    # "height":I
    :cond_d
    return v0
.end method

.method public getItemsCanFocus()Z
    .registers 2

    .prologue
    .line 3276
    iget-boolean v0, p0, mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 220
    const v0, 0x3ea8f5c3    # 0.33f

    iget v1, p0, mBottom:I

    iget v2, p0, mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3695
    iget-object v0, p0, mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3676
    iget-object v0, p0, mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 3281
    iget-boolean v5, p0, mCachingActive:Z

    if-eqz v5, :cond_13

    iget-boolean v5, p0, mIsCacheColorOpaque:Z

    if-eqz v5, :cond_13

    iget-boolean v5, p0, mDividerIsOpaque:Z

    if-eqz v5, :cond_13

    invoke-virtual {p0}, hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_19

    :cond_13
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_32

    :cond_19
    const/4 v4, 0x1

    .line 3283
    .local v4, "retValue":Z
    :goto_1a
    if-eqz v4, :cond_31

    .line 3285
    iget-object v5, p0, mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_34

    iget-object v5, p0, mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 3286
    .local v3, "listTop":I
    :goto_24
    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3287
    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_37

    :cond_30
    move v4, v6

    .line 3297
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "listTop":I
    .end local v4    # "retValue":Z
    :cond_31
    :goto_31
    return v4

    :cond_32
    move v4, v6

    .line 3281
    goto :goto_1a

    .line 3285
    .restart local v4    # "retValue":Z
    :cond_34
    iget v3, p0, mPaddingTop:I

    goto :goto_24

    .line 3290
    .restart local v0    # "first":Landroid/view/View;
    .restart local v3    # "listTop":I
    :cond_37
    invoke-virtual {p0}, getHeight()I

    move-result v7

    iget-object v5, p0, mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_59

    iget-object v5, p0, mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    :goto_43
    sub-int v2, v7, v5

    .line 3292
    .local v2, "listBottom":I
    invoke-virtual {p0}, getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3293
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_31

    :cond_57
    move v4, v6

    .line 3294
    goto :goto_31

    .line 3290
    .end local v1    # "last":Landroid/view/View;
    .end local v2    # "listBottom":I
    :cond_59
    iget v5, p0, mPaddingBottom:I

    goto :goto_43
.end method

.method protected layoutChildren()V
    .registers 43

    .prologue
    .line 1522
    move-object/from16 v0, p0

    iget-boolean v13, v0, mBlockLayoutRequests:Z

    .line 1523
    .local v13, "blockLayoutRequests":Z
    if-eqz v13, :cond_7

    .line 1888
    :cond_6
    :goto_6
    return-void

    .line 1527
    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, mBlockLayoutRequests:Z

    .line 1530
    :try_start_c
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1532
    invoke-virtual/range {p0 .. p0}, invalidate()V

    .line 1534
    move-object/from16 v0, p0

    iget-object v4, v0, mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_26

    .line 1535
    invoke-virtual/range {p0 .. p0}, resetList()V

    .line 1536
    invoke-virtual/range {p0 .. p0}, invokeOnItemScrollListener()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_127

    .line 1884
    if-nez v13, :cond_6

    .line 1885
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mBlockLayoutRequests:Z

    goto :goto_6

    .line 1540
    :cond_26
    :try_start_26
    move-object/from16 v0, p0

    iget-object v4, v0, mListPadding:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 1541
    .local v8, "childrenTop":I
    move-object/from16 v0, p0

    iget v4, v0, mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, mTop:I

    move/from16 v39, v0

    sub-int v4, v4, v39

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v39, v0

    sub-int v9, v4, v39

    .line 1542
    .local v9, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v15

    .line 1544
    .local v15, "childCount":I
    const/16 v28, 0x0

    .line 1545
    .local v28, "index":I
    const/4 v7, 0x0

    .line 1548
    .local v7, "delta":I
    const/4 v5, 0x0

    .line 1549
    .local v5, "oldSel":Landroid/view/View;
    const/16 v31, 0x0

    .line 1550
    .local v31, "oldFirst":Landroid/view/View;
    const/4 v6, 0x0

    .line 1553
    .local v6, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, mLayoutMode:I

    packed-switch v4, :pswitch_data_52e

    .line 1568
    move-object/from16 v0, p0

    iget v4, v0, mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v39, v0

    sub-int v28, v4, v39

    .line 1569
    if-ltz v28, :cond_72

    move/from16 v0, v28

    if-ge v0, v15, :cond_72

    .line 1570
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1574
    :cond_72
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 1576
    move-object/from16 v0, p0

    iget v4, v0, mNextSelectedPosition:I

    if-ltz v4, :cond_8b

    .line 1577
    move-object/from16 v0, p0

    iget v4, v0, mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v39, v0

    sub-int v7, v4, v39

    .line 1581
    :cond_8b
    add-int v4, v28, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1585
    :cond_93
    :goto_93
    :pswitch_93
    move-object/from16 v0, p0

    iget-boolean v0, v0, mDataChanged:Z

    move/from16 v16, v0

    .line 1586
    .local v16, "dataChanged":Z
    if-eqz v16, :cond_9e

    .line 1587
    invoke-virtual/range {p0 .. p0}, handleDataChanged()V

    .line 1592
    :cond_9e
    move-object/from16 v0, p0

    iget v4, v0, mItemCount:I

    if-nez v4, :cond_ce

    .line 1593
    invoke-virtual/range {p0 .. p0}, resetList()V

    .line 1594
    invoke-virtual/range {p0 .. p0}, invokeOnItemScrollListener()V
    :try_end_aa
    .catchall {:try_start_26 .. :try_end_aa} :catchall_127

    .line 1884
    if-nez v13, :cond_6

    .line 1885
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mBlockLayoutRequests:Z

    goto/16 :goto_6

    .line 1555
    .end local v16    # "dataChanged":Z
    :pswitch_b3
    :try_start_b3
    move-object/from16 v0, p0

    iget v4, v0, mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v39, v0

    sub-int v28, v4, v39

    .line 1556
    if-ltz v28, :cond_93

    move/from16 v0, v28

    if-ge v0, v15, :cond_93

    .line 1557
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_93

    .line 1596
    .restart local v16    # "dataChanged":Z
    :cond_ce
    move-object/from16 v0, p0

    iget v4, v0, mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Landroid/widget/ListAdapter;->getCount()I

    move-result v39

    move/from16 v0, v39

    if-eq v4, v0, :cond_133

    .line 1597
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p0 .. p0}, getId()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ") with Adapter("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")]"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_127
    .catchall {:try_start_b3 .. :try_end_127} :catchall_127

    .line 1884
    .end local v5    # "oldSel":Landroid/view/View;
    .end local v6    # "newSel":Landroid/view/View;
    .end local v7    # "delta":I
    .end local v8    # "childrenTop":I
    .end local v9    # "childrenBottom":I
    .end local v15    # "childCount":I
    .end local v16    # "dataChanged":Z
    .end local v28    # "index":I
    .end local v31    # "oldFirst":Landroid/view/View;
    :catchall_127
    move-exception v4

    if-nez v13, :cond_132

    .line 1885
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, mBlockLayoutRequests:Z

    :cond_132
    throw v4

    .line 1605
    .restart local v5    # "oldSel":Landroid/view/View;
    .restart local v6    # "newSel":Landroid/view/View;
    .restart local v7    # "delta":I
    .restart local v8    # "childrenTop":I
    .restart local v9    # "childrenBottom":I
    .restart local v15    # "childCount":I
    .restart local v16    # "dataChanged":Z
    .restart local v28    # "index":I
    .restart local v31    # "oldFirst":Landroid/view/View;
    :cond_133
    :try_start_133
    move-object/from16 v0, p0

    iget v4, v0, mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, setSelectedPositionInt(I)V

    .line 1607
    const/4 v10, 0x0

    .line 1608
    .local v10, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v11, 0x0

    .line 1609
    .local v11, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v12, -0x1

    .line 1610
    .local v12, "accessibilityFocusPosition":I
    const/16 v29, 0x0

    .line 1615
    .local v29, "mInsideViewAccFocused":Z
    invoke-virtual/range {p0 .. p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v37

    .line 1616
    .local v37, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v37, :cond_185

    .line 1617
    invoke-virtual/range {v37 .. v37}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v20

    .line 1618
    .local v20, "focusHost":Landroid/view/View;
    if-eqz v20, :cond_185

    .line 1619
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    .line 1620
    .local v18, "focusChild":Landroid/view/View;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_15d

    .line 1621
    const/16 v29, 0x1

    .line 1623
    :cond_15d
    if-eqz v18, :cond_185

    .line 1624
    if-eqz v16, :cond_177

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_177

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-nez v4, :cond_177

    move-object/from16 v0, p0

    iget-boolean v4, v0, mAdapterHasStableIds:Z

    if-eqz v4, :cond_17d

    .line 1628
    :cond_177
    move-object/from16 v11, v20

    .line 1629
    invoke-virtual/range {v37 .. v37}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 1635
    :cond_17d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, getPositionForView(Landroid/view/View;)I

    move-result v12

    .line 1639
    .end local v18    # "focusChild":Landroid/view/View;
    .end local v20    # "focusHost":Landroid/view/View;
    :cond_185
    const/16 v21, 0x0

    .line 1640
    .local v21, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/16 v22, 0x0

    .line 1643
    .local v22, "focusLayoutRestoreView":Landroid/view/View;
    const/16 v19, 0x0

    .line 1649
    .local v19, "focusFirstItemTemporarily":Z
    invoke-virtual/range {p0 .. p0}, getFocusedChild()Landroid/view/View;

    move-result-object v25

    .line 1650
    .local v25, "focusedChild":Landroid/view/View;
    if-eqz v25, :cond_1c5

    .line 1656
    if-eqz v16, :cond_1a9

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1a9

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-nez v4, :cond_1a9

    move-object/from16 v0, p0

    iget-boolean v4, v0, mAdapterHasStableIds:Z

    if-eqz v4, :cond_1bc

    .line 1658
    :cond_1a9
    move-object/from16 v21, v25

    .line 1660
    invoke-virtual/range {p0 .. p0}, findFocus()Landroid/view/View;

    move-result-object v22

    .line 1661
    if-eqz v22, :cond_1bc

    .line 1663
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1666
    move-object/from16 v0, p0

    iget v4, v0, mSelectedPosition:I

    if-nez v4, :cond_1bc

    .line 1667
    const/16 v19, 0x1

    .line 1672
    :cond_1bc
    invoke-virtual/range {p0 .. p0}, hasFocus()Z

    move-result v4

    if-nez v4, :cond_1c5

    invoke-virtual/range {p0 .. p0}, requestFocus()Z

    .line 1677
    :cond_1c5
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v17, v0

    .line 1678
    .local v17, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v34, v0

    .line 1679
    .local v34, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v16, :cond_1ed

    .line 1680
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1d5
    move/from16 v0, v26

    if-ge v0, v15, :cond_1f4

    .line 1681
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v39, v17, v26

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1680
    add-int/lit8 v26, v26, 0x1

    goto :goto_1d5

    .line 1684
    .end local v26    # "i":I
    :cond_1ed
    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1688
    :cond_1f4
    move-object/from16 v0, p0

    iget-boolean v4, v0, mChnagedAdapter:Z

    if-nez v4, :cond_208

    move-object/from16 v0, p0

    iget-boolean v4, v0, mInitAbsListView:Z

    if-nez v4, :cond_208

    move-object/from16 v0, p0

    iget-boolean v4, v0, mWindowFocusChanged:Z

    if-eqz v4, :cond_20d

    if-nez v16, :cond_20d

    .line 1689
    :cond_208
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, mJumpAtFirst:Z

    .line 1691
    :cond_20d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mWindowFocusChanged:Z

    .line 1692
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mChnagedAdapter:Z

    .line 1693
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mInitAbsListView:Z

    .line 1696
    invoke-virtual/range {p0 .. p0}, detachAllViewsFromParent()V

    .line 1697
    invoke-virtual/range {v34 .. v34}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1699
    move-object/from16 v0, p0

    iget v4, v0, mLayoutMode:I

    packed-switch v4, :pswitch_data_53c

    .line 1731
    if-nez v15, :cond_3bf

    .line 1732
    move-object/from16 v0, p0

    iget-boolean v4, v0, mStackFromBottom:Z

    if-nez v4, :cond_39a

    .line 1733
    const/4 v4, 0x0

    const/16 v39, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v4, v1}, lookForSelectablePosition(IZ)I

    move-result v32

    .line 1734
    .local v32, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, setSelectedPositionInt(I)V

    .line 1735
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, fillFromTop(I)Landroid/view/View;

    move-result-object v36

    .line 1756
    .end local v8    # "childrenTop":I
    .end local v32    # "position":I
    .local v36, "sel":Landroid/view/View;
    :goto_249
    invoke-virtual/range {v34 .. v34}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1758
    if-eqz v36, :cond_42d

    .line 1763
    move-object/from16 v0, p0

    iget-boolean v4, v0, mItemsCanFocus:Z

    if-eqz v4, :cond_423

    invoke-virtual/range {p0 .. p0}, hasFocus()Z

    move-result v4

    if-eqz v4, :cond_423

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_262

    if-eqz v19, :cond_423

    .line 1765
    :cond_262
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_270

    if-eqz v22, :cond_270

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_276

    :cond_270
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-eqz v4, :cond_410

    :cond_276
    const/16 v23, 0x1

    .line 1768
    .local v23, "focusWasTaken":Z
    :goto_278
    if-nez v23, :cond_414

    .line 1772
    invoke-virtual/range {p0 .. p0}, getFocusedChild()Landroid/view/View;

    move-result-object v24

    .line 1773
    .local v24, "focused":Landroid/view/View;
    if-eqz v24, :cond_283

    .line 1774
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->clearFocus()V

    .line 1776
    :cond_283
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, positionSelector(ILandroid/view/View;)V

    .line 1784
    .end local v23    # "focusWasTaken":Z
    .end local v24    # "focused":Landroid/view/View;
    :goto_28b
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mSelectedTop:I

    .line 1816
    :cond_293
    :goto_293
    if-eqz v37, :cond_2c0

    .line 1817
    invoke-virtual/range {v37 .. v37}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v30

    .line 1818
    .local v30, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v30, :cond_4e2

    .line 1819
    if-eqz v11, :cond_4ba

    invoke-virtual {v11}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_4ba

    .line 1821
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v33

    .line 1823
    .local v33, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v10, :cond_4b5

    if-eqz v33, :cond_4b5

    .line 1824
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v38

    .line 1826
    .local v38, "virtualViewId":I
    const/16 v4, 0x40

    const/16 v39, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1861
    .end local v30    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v33    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v38    # "virtualViewId":I
    :cond_2c0
    :goto_2c0
    if-eqz v22, :cond_2cb

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_2cb

    .line 1863
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1866
    :cond_2cb
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, mLayoutMode:I

    .line 1867
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mDataChanged:Z

    .line 1868
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mJumpAtFirst:Z

    .line 1869
    move-object/from16 v0, p0

    iget-object v4, v0, mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v4, :cond_2ee

    .line 1870
    move-object/from16 v0, p0

    iget-object v4, v0, mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, post(Ljava/lang/Runnable;)Z

    .line 1871
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1873
    :cond_2ee
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mNeedSync:Z

    .line 1874
    move-object/from16 v0, p0

    iget v4, v0, mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, setNextSelectedPositionInt(I)V

    .line 1876
    invoke-virtual/range {p0 .. p0}, updateScrollIndicators()V

    .line 1878
    move-object/from16 v0, p0

    iget v4, v0, mItemCount:I

    if-lez v4, :cond_308

    .line 1879
    invoke-virtual/range {p0 .. p0}, checkSelectionChanged()V

    .line 1882
    :cond_308
    invoke-virtual/range {p0 .. p0}, invokeOnItemScrollListener()V
    :try_end_30b
    .catchall {:try_start_133 .. :try_end_30b} :catchall_127

    .line 1884
    if-nez v13, :cond_6

    .line 1885
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mBlockLayoutRequests:Z

    goto/16 :goto_6

    .line 1701
    .end local v36    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :pswitch_314
    if-eqz v6, :cond_322

    .line 1702
    :try_start_316
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9}, fillFromSelection(III)Landroid/view/View;

    move-result-object v36

    .restart local v36    # "sel":Landroid/view/View;
    goto/16 :goto_249

    .line 1704
    .end local v36    # "sel":Landroid/view/View;
    :cond_322
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, fillFromMiddle(II)Landroid/view/View;

    move-result-object v36

    .line 1706
    .restart local v36    # "sel":Landroid/view/View;
    goto/16 :goto_249

    .line 1708
    .end local v36    # "sel":Landroid/view/View;
    :pswitch_32a
    move-object/from16 v0, p0

    iget-boolean v4, v0, mTwScrollingByScrollbar:Z

    if-eqz v4, :cond_349

    .line 1709
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, mSpecificTop:I

    .line 1710
    invoke-virtual/range {p0 .. p0}, reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, mSpecificTop:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v4, v1}, fillSpecific(II)Landroid/view/View;

    move-result-object v36

    .restart local v36    # "sel":Landroid/view/View;
    goto/16 :goto_249

    .line 1712
    .end local v36    # "sel":Landroid/view/View;
    :cond_349
    move-object/from16 v0, p0

    iget v4, v0, mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, mSpecificTop:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v4, v1}, fillSpecific(II)Landroid/view/View;

    move-result-object v36

    .line 1714
    .restart local v36    # "sel":Landroid/view/View;
    goto/16 :goto_249

    .line 1716
    .end local v36    # "sel":Landroid/view/View;
    :pswitch_35d
    move-object/from16 v0, p0

    iget v4, v0, mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, fillUp(II)Landroid/view/View;

    move-result-object v36

    .line 1717
    .restart local v36    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, adjustViewsUpOrDown()V

    goto/16 :goto_249

    .line 1720
    .end local v36    # "sel":Landroid/view/View;
    :pswitch_36e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, mFirstPosition:I

    .line 1721
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, fillFromTop(I)Landroid/view/View;

    move-result-object v36

    .line 1722
    .restart local v36    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, adjustViewsUpOrDown()V

    goto/16 :goto_249

    .line 1725
    .end local v36    # "sel":Landroid/view/View;
    :pswitch_37e
    invoke-virtual/range {p0 .. p0}, reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, mSpecificTop:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v4, v1}, fillSpecific(II)Landroid/view/View;

    move-result-object v36

    .line 1726
    .restart local v36    # "sel":Landroid/view/View;
    goto/16 :goto_249

    .end local v36    # "sel":Landroid/view/View;
    :pswitch_392
    move-object/from16 v4, p0

    .line 1728
    invoke-direct/range {v4 .. v9}, moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v36

    .line 1729
    .restart local v36    # "sel":Landroid/view/View;
    goto/16 :goto_249

    .line 1737
    .end local v36    # "sel":Landroid/view/View;
    :cond_39a
    move-object/from16 v0, p0

    iget v4, v0, mItemCount:I

    add-int/lit8 v4, v4, -0x1

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v4, v1}, lookForSelectablePosition(IZ)I

    move-result v32

    .line 1738
    .restart local v32    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, setSelectedPositionInt(I)V

    .line 1739
    move-object/from16 v0, p0

    iget v4, v0, mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, fillUp(II)Landroid/view/View;

    move-result-object v36

    .line 1740
    .restart local v36    # "sel":Landroid/view/View;
    goto/16 :goto_249

    .line 1742
    .end local v32    # "position":I
    .end local v36    # "sel":Landroid/view/View;
    :cond_3bf
    move-object/from16 v0, p0

    iget v4, v0, mSelectedPosition:I

    if-ltz v4, :cond_3e6

    move-object/from16 v0, p0

    iget v4, v0, mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v39, v0

    move/from16 v0, v39

    if-ge v4, v0, :cond_3e6

    .line 1743
    move-object/from16 v0, p0

    iget v4, v0, mSelectedPosition:I

    if-nez v5, :cond_3e1

    .end local v8    # "childrenTop":I
    :goto_3d9
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, fillSpecific(II)Landroid/view/View;

    move-result-object v36

    .restart local v36    # "sel":Landroid/view/View;
    goto/16 :goto_249

    .end local v36    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_3e1
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_3d9

    .line 1745
    :cond_3e6
    move-object/from16 v0, p0

    iget v4, v0, mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v39, v0

    move/from16 v0, v39

    if-ge v4, v0, :cond_407

    .line 1746
    move-object/from16 v0, p0

    iget v4, v0, mFirstPosition:I

    if-nez v31, :cond_402

    .end local v8    # "childrenTop":I
    :goto_3fa
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, fillSpecific(II)Landroid/view/View;

    move-result-object v36

    .restart local v36    # "sel":Landroid/view/View;
    goto/16 :goto_249

    .end local v36    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_402
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_3fa

    .line 1749
    :cond_407
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, fillSpecific(II)Landroid/view/View;

    move-result-object v36

    .restart local v36    # "sel":Landroid/view/View;
    goto/16 :goto_249

    .line 1765
    .end local v8    # "childrenTop":I
    :cond_410
    const/16 v23, 0x0

    goto/16 :goto_278

    .line 1778
    .restart local v23    # "focusWasTaken":Z
    :cond_414
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1779
    move-object/from16 v0, p0

    iget-object v4, v0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_28b

    .line 1782
    .end local v23    # "focusWasTaken":Z
    :cond_423
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, positionSelector(ILandroid/view/View;)V

    goto/16 :goto_28b

    .line 1786
    :cond_42d
    move-object/from16 v0, p0

    iget v4, v0, mTouchMode:I

    const/16 v39, 0x1

    move/from16 v0, v39

    if-eq v4, v0, :cond_441

    move-object/from16 v0, p0

    iget v4, v0, mTouchMode:I

    const/16 v39, 0x2

    move/from16 v0, v39

    if-ne v4, v0, :cond_46f

    :cond_441
    const/16 v27, 0x1

    .line 1788
    .local v27, "inTouchMode":Z
    :goto_443
    if-eqz v27, :cond_472

    .line 1790
    move-object/from16 v0, p0

    iget v4, v0, mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v39, v0

    sub-int v4, v4, v39

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1791
    .local v14, "child":Landroid/view/View;
    if-eqz v14, :cond_462

    .line 1792
    move-object/from16 v0, p0

    iget v4, v0, mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, positionSelector(ILandroid/view/View;)V

    .line 1810
    .end local v14    # "child":Landroid/view/View;
    :cond_462
    :goto_462
    invoke-virtual/range {p0 .. p0}, hasFocus()Z

    move-result v4

    if-eqz v4, :cond_293

    if-eqz v22, :cond_293

    .line 1811
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_293

    .line 1786
    .end local v27    # "inTouchMode":Z
    :cond_46f
    const/16 v27, 0x0

    goto :goto_443

    .line 1794
    .restart local v27    # "inTouchMode":Z
    :cond_472
    move-object/from16 v0, p0

    iget v4, v0, mSelectorPosition:I

    const/16 v39, -0x1

    move/from16 v0, v39

    if-eq v4, v0, :cond_4a8

    move-object/from16 v0, p0

    iget v4, v0, mSelectorPosition:I

    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v39, v0

    move/from16 v0, v39

    if-ge v4, v0, :cond_4a8

    .line 1798
    move-object/from16 v0, p0

    iget v4, v0, mSelectorPosition:I

    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v39, v0

    sub-int v4, v4, v39

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1799
    .restart local v14    # "child":Landroid/view/View;
    if-eqz v14, :cond_462

    .line 1800
    move-object/from16 v0, p0

    iget v4, v0, mSelectorPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, positionSelector(ILandroid/view/View;)V

    goto :goto_462

    .line 1804
    .end local v14    # "child":Landroid/view/View;
    :cond_4a8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, mSelectedTop:I

    .line 1805
    move-object/from16 v0, p0

    iget-object v4, v0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_462

    .line 1829
    .end local v27    # "inTouchMode":Z
    .restart local v30    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v33    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4b5
    invoke-virtual {v11}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_2c0

    .line 1831
    .end local v33    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4ba
    const/4 v4, -0x1

    if-eq v12, v4, :cond_2c0

    .line 1833
    move-object/from16 v0, p0

    iget v4, v0, mFirstPosition:I

    sub-int v4, v12, v4

    const/16 v39, 0x0

    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v40

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v4, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v32

    .line 1836
    .restart local v32    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v35

    .line 1837
    .local v35, "restoreView":Landroid/view/View;
    if-eqz v35, :cond_2c0

    .line 1838
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_2c0

    .line 1841
    .end local v32    # "position":I
    .end local v35    # "restoreView":Landroid/view/View;
    :cond_4e2
    const/4 v4, -0x1

    if-eq v12, v4, :cond_2c0

    .line 1842
    move-object/from16 v0, p0

    iget v4, v0, mFirstPosition:I

    sub-int v4, v12, v4

    const/16 v39, 0x0

    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v40

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v4, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v32

    .line 1845
    .restart local v32    # "position":I
    if-eqz v29, :cond_525

    .line 1846
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getId()I

    move-result v39

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    .line 1850
    .restart local v35    # "restoreView":Landroid/view/View;
    :goto_50f
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_2c0

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_2c0

    .line 1851
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 1852
    if-eqz v35, :cond_2c0

    .line 1853
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_2c0

    .line 1848
    .end local v35    # "restoreView":Landroid/view/View;
    :cond_525
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;
    :try_end_52c
    .catchall {:try_start_316 .. :try_end_52c} :catchall_127

    move-result-object v35

    .restart local v35    # "restoreView":Landroid/view/View;
    goto :goto_50f

    .line 1553
    :pswitch_data_52e
    .packed-switch 0x1
        :pswitch_93
        :pswitch_b3
        :pswitch_93
        :pswitch_93
        :pswitch_93
    .end packed-switch

    .line 1699
    :pswitch_data_53c
    .packed-switch 0x1
        :pswitch_36e
        :pswitch_314
        :pswitch_35d
        :pswitch_37e
        :pswitch_32a
        :pswitch_392
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 9
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 2120
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 2121
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_d

    invoke-virtual {p0}, isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_d
    move v2, v3

    .line 2147
    :cond_e
    :goto_e
    return v2

    .line 2125
    :cond_f
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2126
    .local v1, "count":I
    if-nez p1, :cond_33

    iget v4, p0, mSelectedPosition:I

    if-eqz v4, :cond_1d

    iget v4, p0, mSelectedPosition:I

    if-ne v4, v3, :cond_33

    :cond_1d
    iget-boolean v4, p0, mIsFolderTypeFeature:Z

    if-eqz v4, :cond_33

    if-lez v1, :cond_33

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_e

    .line 2129
    :cond_33
    iget-boolean v4, p0, mAreAllItemsSelectable:Z

    if-nez v4, :cond_59

    .line 2130
    if-eqz p2, :cond_48

    .line 2131
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2132
    :goto_3d
    if-ge p1, v1, :cond_59

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_59

    .line 2133
    add-int/lit8 p1, p1, 0x1

    goto :goto_3d

    .line 2136
    :cond_48
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2137
    :goto_4e
    if-ltz p1, :cond_59

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_59

    .line 2138
    add-int/lit8 p1, p1, -0x1

    goto :goto_4e

    .line 2143
    :cond_59
    if-ltz p1, :cond_5d

    if-lt p1, v1, :cond_5f

    :cond_5d
    move v2, v3

    .line 2144
    goto :goto_e

    :cond_5f
    move v2, p1

    .line 2147
    goto :goto_e
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .registers 10
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .prologue
    const/4 v3, -0x1

    .line 2163
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 2164
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_b
    move v1, v3

    .line 2195
    :cond_c
    :goto_c
    return v1

    .line 2169
    :cond_d
    invoke-virtual {p0, p2, p3}, lookForSelectablePosition(IZ)I

    move-result v1

    .line 2170
    .local v1, "after":I
    if-ne v1, v3, :cond_c

    .line 2175
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2176
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    invoke-static {p1, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2177
    if-eqz p3, :cond_36

    .line 2178
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2179
    :goto_27
    if-le p2, p1, :cond_32

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_32

    .line 2180
    add-int/lit8 p2, p2, -0x1

    goto :goto_27

    .line 2182
    :cond_32
    if-gt p2, p1, :cond_4c

    move v1, v3

    .line 2183
    goto :goto_c

    .line 2186
    :cond_36
    const/4 v4, 0x0

    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2187
    :goto_3d
    if-ge p2, p1, :cond_48

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_48

    .line 2188
    add-int/lit8 p2, p2, 0x1

    goto :goto_3d

    .line 2190
    :cond_48
    if-lt p2, p1, :cond_4c

    move v1, v3

    .line 2191
    goto :goto_c

    :cond_4c
    move v1, p2

    .line 2195
    goto :goto_c
.end method

.method final measureHeightOfChildren(IIIII)I
    .registers 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 1284
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 1285
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_f

    .line 1286
    iget-object v10, p0, mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 1340
    :cond_e
    :goto_e
    return v6

    .line 1290
    :cond_f
    iget-object v10, p0, mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1291
    .local v9, "returnedHeight":I
    iget v10, p0, mDividerHeight:I

    if-lez v10, :cond_70

    iget-object v10, p0, mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_70

    iget v3, p0, mDividerHeight:I

    .line 1294
    .local v3, "dividerHeight":I
    :goto_23
    const/4 v6, 0x0

    .line 1299
    .local v6, "prevHeightWithoutPartialChild":I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2d

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1300
    :cond_2d
    iget-object v7, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1301
    .local v7, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, recycleOnMeasure()Z

    move-result v8

    .line 1302
    .local v8, "recyle":Z
    iget-object v5, p0, mIsScrap:[Z

    .line 1304
    .local v5, "isScrap":[Z
    move v4, p2

    .local v4, "i":I
    :goto_36
    if-gt v4, p3, :cond_7c

    .line 1305
    invoke-virtual {p0, v4, v5}, obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1307
    .local v2, "child":Landroid/view/View;
    move/from16 v0, p4

    invoke-direct {p0, v2, v4, p1, v0}, measureScrapChild(Landroid/view/View;III)V

    .line 1309
    if-lez v4, :cond_44

    .line 1311
    add-int/2addr v9, v3

    .line 1315
    :cond_44
    if-eqz v8, :cond_58

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_58

    .line 1317
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1320
    :cond_58
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1322
    move/from16 v0, p4

    if-lt v9, v0, :cond_72

    .line 1325
    if-ltz p5, :cond_6d

    move/from16 v0, p5

    if-le v4, v0, :cond_6d

    if-lez v6, :cond_6d

    move/from16 v0, p4

    if-ne v9, v0, :cond_e

    :cond_6d
    move/from16 v6, p4

    goto :goto_e

    .line 1291
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dividerHeight":I
    .end local v4    # "i":I
    .end local v5    # "isScrap":[Z
    .end local v6    # "prevHeightWithoutPartialChild":I
    .end local v7    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v8    # "recyle":Z
    :cond_70
    const/4 v3, 0x0

    goto :goto_23

    .line 1333
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "dividerHeight":I
    .restart local v4    # "i":I
    .restart local v5    # "isScrap":[Z
    .restart local v6    # "prevHeightWithoutPartialChild":I
    .restart local v7    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v8    # "recyle":Z
    :cond_72
    if-ltz p5, :cond_79

    move/from16 v0, p5

    if-lt v4, v0, :cond_79

    .line 1334
    move v6, v9

    .line 1304
    :cond_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .end local v2    # "child":Landroid/view/View;
    :cond_7c
    move v6, v9

    .line 1340
    goto :goto_e
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 3757
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3759
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 3760
    .local v0, "count":I
    if-lez v0, :cond_19

    .line 3761
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_16

    .line 3762
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, addHeaderView(Landroid/view/View;)V

    .line 3761
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3764
    :cond_16
    invoke-virtual {p0}, removeAllViews()V

    .line 3766
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 19
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3700
    invoke-super/range {p0 .. p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3702
    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 3703
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 3704
    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    .line 3705
    .local v4, "closestChildTop":I
    if-eqz v2, :cond_5d

    if-eqz p1, :cond_5d

    if-eqz p3, :cond_5d

    .line 3706
    iget v12, p0, mScrollX:I

    iget v13, p0, mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 3710
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, getChildCount()I

    move-result v13

    iget v14, p0, mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_29

    .line 3711
    const/4 v12, 0x0

    iput v12, p0, mLayoutMode:I

    .line 3712
    invoke-virtual {p0}, layoutChildren()V

    .line 3717
    :cond_29
    iget-object v11, p0, mTempRect:Landroid/graphics/Rect;

    .line 3718
    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 3719
    .local v9, "minDistance":I
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    .line 3720
    .local v3, "childCount":I
    iget v7, p0, mFirstPosition:I

    .line 3722
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_35
    if-ge v8, v3, :cond_5d

    .line 3724
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_42

    .line 3722
    :cond_3f
    :goto_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 3728
    :cond_42
    invoke-virtual {p0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3729
    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3730
    invoke-virtual {p0, v10, v11}, offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3731
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 3733
    .local v6, "distance":I
    if-ge v6, v9, :cond_3f

    .line 3734
    move v9, v6

    .line 3735
    move v5, v8

    .line 3736
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_3f

    .line 3741
    .end local v3    # "childCount":I
    .end local v6    # "distance":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    .end local v9    # "minDistance":I
    .end local v10    # "other":Landroid/view/View;
    .end local v11    # "otherRect":Landroid/graphics/Rect;
    :cond_5d
    if-ltz v5, :cond_66

    .line 3742
    iget v12, p0, mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, setSelectionFromTop(II)V

    .line 3746
    :goto_65
    return-void

    .line 3744
    :cond_66
    invoke-virtual {p0}, requestLayout()V

    goto :goto_65
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4152
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4154
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/AbsListView$LayoutParams;

    .line 4155
    .local v7, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v7, :cond_21

    iget v0, v7, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-eq v0, v3, :cond_21

    move v4, v1

    .line 4156
    .local v4, "isHeading":Z
    :goto_13
    invoke-virtual {p0, p2}, isItemChecked(I)Z

    move-result v5

    .local v5, "isSelected":Z
    move v0, p2

    move v3, v1

    .line 4157
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v6

    .line 4159
    .local v6, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 4160
    return-void

    .end local v4    # "isHeading":Z
    .end local v5    # "isSelected":Z
    .end local v6    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_21
    move v4, v2

    .line 4155
    goto :goto_13
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 4029
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4031
    invoke-virtual {p0}, getCount()I

    move-result v1

    .line 4032
    .local v1, "rowsCount":I
    invoke-virtual {p0}, getSelectionModeForAccessibility()I

    move-result v2

    .line 4033
    .local v2, "selectionMode":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 4035
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 4037
    if-lez v1, :cond_1b

    .line 4038
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4040
    :cond_1b
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2236
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
    .line 2241
    invoke-direct {p0, p1, p2, p3}, commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2246
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1166
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1168
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1169
    .local v11, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1170
    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1171
    .local v12, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1173
    .local v4, "heightSize":I
    const/4 v9, 0x0

    .line 1174
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 1175
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1177
    .local v8, "childState":I
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_94

    move v0, v2

    :goto_1d
    iput v0, p0, mItemCount:I

    .line 1178
    iget v0, p0, mItemCount:I

    if-lez v0, :cond_5d

    if-eqz v11, :cond_27

    if-nez v10, :cond_5d

    .line 1180
    :cond_27
    iget-object v0, p0, mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1182
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_5d

    .line 1185
    invoke-direct {p0, v6, v2, p1, v4}, measureScrapChild(Landroid/view/View;III)V

    .line 1187
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1188
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1189
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, combineMeasuredStates(II)I

    move-result v8

    .line 1191
    invoke-virtual {p0}, recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v1, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1193
    iget-object v0, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1198
    .end local v6    # "child":Landroid/view/View;
    :cond_5d
    if-nez v11, :cond_9b

    .line 1199
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, getVerticalScrollbarWidth()I

    move-result v1

    add-int v12, v0, v1

    .line 1205
    :goto_6f
    if-nez v10, :cond_83

    .line 1206
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1210
    :cond_83
    const/high16 v0, -0x80000000

    if-ne v10, v0, :cond_8e

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1212
    invoke-virtual/range {v0 .. v5}, measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1215
    :cond_8e
    invoke-virtual {p0, v12, v4}, setMeasuredDimension(II)V

    .line 1217
    iput p1, p0, mWidthMeasureSpec:I

    .line 1218
    return-void

    .line 1177
    :cond_94
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_1d

    .line 1202
    :cond_9b
    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_6f
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1147
    invoke-virtual {p0}, getChildCount()I

    move-result v5

    if-lez v5, :cond_3e

    .line 1148
    invoke-virtual {p0}, getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1149
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_3e

    .line 1150
    iget v5, p0, mFirstPosition:I

    invoke-virtual {p0, v2}, indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1151
    .local v1, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1152
    .local v0, "childBottom":I
    const/4 v5, 0x0

    iget v6, p0, mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1153
    .local v3, "offset":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1154
    .local v4, "top":I
    iget-object v5, p0, mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_35

    .line 1155
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v5, p0, mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1157
    :cond_35
    iget-object v5, p0, mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setup(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, post(Ljava/lang/Runnable;)Z

    .line 1160
    .end local v0    # "childBottom":I
    .end local v1    # "childPosition":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "offset":I
    .end local v4    # "top":I
    :cond_3e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1161
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 4142
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onWindowFocusChanged(Z)V

    .line 4143
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4144
    invoke-direct {p0}, logActivity()V

    .line 4146
    :cond_c
    return-void
.end method

.method pageScroll(I)Z
    .registers 10
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2415
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2416
    invoke-direct {p0}, logActivity()V

    .line 2421
    :cond_b
    const/16 v5, 0x21

    if-ne p1, v5, :cond_5c

    .line 2422
    iget v5, p0, mSelectedPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2423
    .local v1, "nextPage":I
    const/4 v0, 0x0

    .line 2431
    .local v0, "down":Z
    :goto_1d
    if-ltz v1, :cond_5b

    .line 2432
    iget v5, p0, mSelectedPosition:I

    invoke-virtual {p0, v5, v1, v0}, lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2433
    .local v2, "position":I
    if-ltz v2, :cond_5b

    .line 2434
    const/4 v3, 0x4

    iput v3, p0, mLayoutMode:I

    .line 2435
    iget v3, p0, mPaddingTop:I

    invoke-virtual {p0}, getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, mSpecificTop:I

    .line 2437
    if-eqz v0, :cond_41

    iget v3, p0, mItemCount:I

    invoke-virtual {p0}, getChildCount()I

    move-result v5

    sub-int/2addr v3, v5

    if-le v2, v3, :cond_41

    .line 2438
    const/4 v3, 0x3

    iput v3, p0, mLayoutMode:I

    .line 2441
    :cond_41
    if-nez v0, :cond_4b

    invoke-virtual {p0}, getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 2442
    iput v4, p0, mLayoutMode:I

    .line 2445
    :cond_4b
    invoke-virtual {p0, v2}, setSelectionInt(I)V

    .line 2446
    invoke-virtual {p0}, invokeOnItemScrollListener()V

    .line 2447
    invoke-virtual {p0}, awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 2448
    invoke-virtual {p0}, invalidate()V

    :cond_5a
    move v3, v4

    .line 2455
    .end local v0    # "down":Z
    .end local v1    # "nextPage":I
    .end local v2    # "position":I
    :cond_5b
    return v3

    .line 2424
    :cond_5c
    const/16 v5, 0x82

    if-ne p1, v5, :cond_5b

    .line 2425
    iget v5, p0, mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, mSelectedPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2426
    .restart local v1    # "nextPage":I
    const/4 v0, 0x1

    .restart local v0    # "down":Z
    goto :goto_1d
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 4045
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4062
    :goto_7
    return v2

    .line 4049
    :cond_8
    packed-switch p1, :pswitch_data_24

    .line 4062
    :cond_b
    const/4 v2, 0x0

    goto :goto_7

    .line 4051
    :pswitch_d
    const-string v3, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 4052
    .local v1, "row":I
    invoke-virtual {p0}, getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4053
    .local v0, "position":I
    if-ltz v1, :cond_b

    .line 4056
    invoke-virtual {p0, v0}, smoothScrollToPosition(I)V

    goto :goto_7

    .line 4049
    :pswitch_data_24
    .packed-switch 0x1020037
        :pswitch_d
    .end packed-switch
.end method

.method protected recycleOnMeasure()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1253
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 433
    iget-object v1, p0, mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "result":Z
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 436
    iget-object v1, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 437
    iget-object v1, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 439
    :cond_20
    const/4 v0, 0x1

    .line 441
    :cond_21
    iget-object v1, p0, mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 444
    .end local v0    # "result":Z
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 339
    iget-object v1, p0, mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "result":Z
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 342
    iget-object v1, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 343
    iget-object v1, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 345
    :cond_20
    const/4 v0, 0x1

    .line 347
    :cond_21
    iget-object v1, p0, mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 350
    .end local v0    # "result":Z
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 19
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 594
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 597
    .local v9, "rectTopWithinChild":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 598
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 600
    invoke-virtual {p0}, getHeight()I

    move-result v6

    .line 601
    .local v6, "height":I
    invoke-virtual {p0}, getScrollY()I

    move-result v8

    .line 602
    .local v8, "listUnfadedTop":I
    add-int v7, v8, v6

    .line 603
    .local v7, "listUnfadedBottom":I
    invoke-virtual {p0}, getVerticalFadingEdgeLength()I

    move-result v5

    .line 605
    .local v5, "fadingEdge":I
    invoke-direct {p0}, showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 607
    iget v13, p0, mSelectedPosition:I

    if-gtz v13, :cond_3a

    if-le v9, v5, :cond_3b

    .line 608
    :cond_3a
    add-int/2addr v8, v5

    .line 612
    :cond_3b
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    .line 613
    .local v2, "childCount":I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 615
    .local v1, "bottomOfBottomChild":I
    invoke-direct {p0}, showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_60

    .line 617
    iget v13, p0, mSelectedPosition:I

    iget v14, p0, mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_5f

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_60

    .line 619
    :cond_5f
    sub-int/2addr v7, v5

    .line 623
    :cond_60
    const/4 v11, 0x0

    .line 625
    .local v11, "scrollYDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_9f

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_9f

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_98

    .line 632
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 639
    :goto_79
    sub-int v4, v1, v7

    .line 640
    .local v4, "distanceToBottom":I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 660
    .end local v4    # "distanceToBottom":I
    :cond_7f
    :goto_7f
    if-eqz v11, :cond_d0

    const/4 v10, 0x1

    .line 661
    .local v10, "scroll":Z
    :goto_82
    if-eqz v10, :cond_97

    .line 662
    neg-int v13, v11

    invoke-direct {p0, v13}, scrollListItemsBy(I)V

    .line 663
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, positionSelector(ILandroid/view/View;)V

    .line 664
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, mSelectedTop:I

    .line 665
    invoke-virtual {p0}, invalidate()V

    .line 667
    :cond_97
    return v10

    .line 635
    .end local v10    # "scroll":Z
    :cond_98
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_79

    .line 641
    :cond_9f
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_7f

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_7f

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_c8

    .line 648
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 655
    :goto_b8
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 656
    .local v12, "top":I
    sub-int v3, v12, v8

    .line 657
    .local v3, "deltaToTop":I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_7f

    .line 651
    .end local v3    # "deltaToTop":I
    .end local v12    # "top":I
    :cond_c8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_b8

    .line 660
    :cond_d0
    const/4 v10, 0x0

    goto :goto_82
.end method

.method resetList()V
    .registers 2

    .prologue
    .line 546
    iget-object v0, p0, mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, clearRecycledState(Ljava/util/ArrayList;)V

    .line 547
    iget-object v0, p0, mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, clearRecycledState(Ljava/util/ArrayList;)V

    .line 549
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 551
    const/4 v0, 0x0

    iput v0, p0, mLayoutMode:I

    .line 552
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 89
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

    .line 486
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_11

    iget-object v1, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_11

    .line 487
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 490
    :cond_11
    invoke-virtual {p0}, resetList()V

    .line 491
    iget-object v1, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 493
    iget-object v1, p0, mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_29

    iget-object v1, p0, mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8f

    .line 494
    :cond_29
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 499
    :goto_34
    const/4 v1, -0x1

    iput v1, p0, mOldSelectedPosition:I

    .line 500
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, mOldSelectedRowId:J

    .line 503
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 505
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_97

    .line 506
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, mAreAllItemsSelectable:Z

    .line 507
    iget v1, p0, mItemCount:I

    iput v1, p0, mOldItemCount:I

    .line 508
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, mItemCount:I

    .line 509
    invoke-virtual {p0}, checkFocus()V

    .line 511
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 512
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 514
    iget-object v1, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 517
    iget-boolean v1, p0, mStackFromBottom:Z

    if-eqz v1, :cond_92

    .line 518
    iget v1, p0, mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, lookForSelectablePosition(IZ)I

    move-result v0

    .line 522
    .local v0, "position":I
    :goto_7e
    invoke-virtual {p0, v0}, setSelectedPositionInt(I)V

    .line 523
    invoke-virtual {p0, v0}, setNextSelectedPositionInt(I)V

    .line 525
    iget v1, p0, mItemCount:I

    if-nez v1, :cond_8b

    .line 527
    invoke-virtual {p0}, checkSelectionChanged()V

    .line 536
    .end local v0    # "position":I
    :cond_8b
    :goto_8b
    invoke-virtual {p0}, requestLayout()V

    .line 537
    return-void

    .line 496
    :cond_8f
    iput-object p1, p0, mAdapter:Landroid/widget/ListAdapter;

    goto :goto_34

    .line 520
    :cond_92
    invoke-virtual {p0, v4, v5}, lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_7e

    .line 530
    .end local v0    # "position":I
    :cond_97
    iput-boolean v5, p0, mAreAllItemsSelectable:Z

    .line 531
    invoke-virtual {p0}, checkFocus()V

    .line 533
    invoke-virtual {p0}, checkSelectionChanged()V

    goto :goto_8b
.end method

.method public setCacheColorHint(I)V
    .registers 5
    .param p1, "color"    # I

    .prologue
    .line 3302
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1f

    const/4 v0, 0x1

    .line 3303
    .local v0, "opaque":Z
    :goto_7
    iput-boolean v0, p0, mIsCacheColorOpaque:Z

    .line 3304
    if-eqz v0, :cond_1b

    .line 3305
    iget-object v1, p0, mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_16

    .line 3306
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, mDividerPaint:Landroid/graphics/Paint;

    .line 3308
    :cond_16
    iget-object v1, p0, mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3310
    :cond_1b
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3311
    return-void

    .line 3302
    .end local v0    # "opaque":Z
    :cond_1f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 3583
    if-eqz p1, :cond_1e

    .line 3584
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, mDividerHeight:I

    .line 3588
    :goto_9
    iput-object p1, p0, mDivider:Landroid/graphics/drawable/Drawable;

    .line 3589
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    iput-boolean v0, p0, mDividerIsOpaque:Z

    .line 3590
    invoke-virtual {p0}, requestLayout()V

    .line 3591
    invoke-virtual {p0}, invalidate()V

    .line 3592
    return-void

    .line 3586
    :cond_1e
    iput v0, p0, mDividerHeight:I

    goto :goto_9
.end method

.method public setDividerHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 3608
    iput p1, p0, mDividerHeight:I

    .line 3609
    invoke-virtual {p0}, requestLayout()V

    .line 3610
    invoke-virtual {p0}, invalidate()V

    .line 3611
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .registers 2
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    .line 3646
    iput-boolean p1, p0, mFooterDividersEnabled:Z

    .line 3647
    invoke-virtual {p0}, invalidate()V

    .line 3648
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .registers 2
    .param p1, "headerDividersEnabled"    # Z

    .prologue
    .line 3623
    iput-boolean p1, p0, mHeaderDividersEnabled:Z

    .line 3624
    invoke-virtual {p0}, invalidate()V

    .line 3625
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .registers 3
    .param p1, "itemsCanFocus"    # Z

    .prologue
    .line 3265
    iput-boolean p1, p0, mItemsCanFocus:Z

    .line 3266
    if-nez p1, :cond_9

    .line 3267
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, setDescendantFocusability(I)V

    .line 3269
    :cond_9
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3687
    iput-object p1, p0, mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3688
    invoke-virtual {p0}, invalidate()V

    .line 3689
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3666
    iput-object p1, p0, mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3667
    iget v0, p0, mScrollY:I

    if-gez v0, :cond_9

    .line 3668
    invoke-virtual {p0}, invalidate()V

    .line 3670
    :cond_9
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 468
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 469
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 2076
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, setSelectionFromTop(II)V

    .line 2077
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .registers 3

    .prologue
    .line 2203
    iget-object v1, p0, mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2204
    .local v0, "count":I
    if-lez v0, :cond_c

    .line 2205
    const/4 v1, 0x0

    iput v1, p0, mNextSelectedPosition:I

    .line 2216
    :goto_b
    return-void

    .line 2209
    :cond_c
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_14

    .line 2210
    invoke-virtual {p0, v0}, setSelection(I)V

    goto :goto_b

    .line 2212
    :cond_14
    iput v0, p0, mNextSelectedPosition:I

    .line 2213
    const/4 v1, 0x2

    iput v1, p0, mLayoutMode:I

    goto :goto_b
.end method

.method setSelectionInt(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 2086
    invoke-virtual {p0, p1}, setNextSelectedPositionInt(I)V

    .line 2087
    const/4 v0, 0x0

    .line 2089
    .local v0, "awakeScrollbars":Z
    iget v1, p0, mSelectedPosition:I

    .line 2091
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_d

    .line 2092
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_1f

    .line 2093
    const/4 v0, 0x1

    .line 2099
    :cond_d
    :goto_d
    iget-object v2, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_16

    .line 2100
    iget-object v2, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 2103
    :cond_16
    invoke-virtual {p0}, layoutChildren()V

    .line 2105
    if-eqz v0, :cond_1e

    .line 2106
    invoke-virtual {p0}, awakenScrollBars()Z

    .line 2108
    :cond_1e
    return-void

    .line 2094
    :cond_1f
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_d

    .line 2095
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public smoothScrollByOffset(I)V
    .registers 2
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 959
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 960
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 949
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 950
    return-void
.end method
