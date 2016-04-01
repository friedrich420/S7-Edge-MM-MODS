.class public abstract Landroid/widget/AdapterViewAnimator;
.super Landroid/widget/AdapterView;
.source "AdapterViewAnimator.java"

# interfaces
.implements Landroid/widget/Advanceable;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterViewAnimator$SavedState;,
        Landroid/widget/AdapterViewAnimator$CheckForTap;,
        Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Landroid/widget/Advanceable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "RemoteViewAnimator"

.field static final TOUCH_MODE_DOWN_IN_CURRENT_VIEW:I = 0x1

.field static final TOUCH_MODE_HANDLED:I = 0x2

.field static final TOUCH_MODE_NONE:I


# instance fields
.field mActiveOffset:I

.field mAdapter:Landroid/widget/Adapter;

.field mAnimateFirstTime:Z

.field mCurrentWindowEnd:I

.field mCurrentWindowStart:I

.field mCurrentWindowStartUnbounded:I

.field mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/Adapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field mDeferNotifyDataSetChanged:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/animation/ObjectAnimator;

.field mLoopViews:Z

.field mMaxNumActiveViews:I

.field mOutAnimation:Landroid/animation/ObjectAnimator;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field mPreviousViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReferenceChildHeight:I

.field mReferenceChildWidth:I

.field mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

.field private mRestoreWhichChild:I

.field private mTouchMode:I

.field mViewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/AdapterViewAnimator$ViewAndMetaData;",
            ">;"
        }
    .end annotation
.end field

.field mWhichChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    iput v4, p0, mWhichChild:I

    .line 60
    iput v6, p0, mRestoreWhichChild:I

    .line 65
    iput-boolean v5, p0, mAnimateFirstTime:Z

    .line 71
    iput v4, p0, mActiveOffset:I

    .line 77
    iput v5, p0, mMaxNumActiveViews:I

    .line 82
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, mViewsMap:Ljava/util/HashMap;

    .line 92
    iput v4, p0, mCurrentWindowStart:I

    .line 97
    iput v6, p0, mCurrentWindowEnd:I

    .line 103
    iput v4, p0, mCurrentWindowStartUnbounded:I

    .line 123
    iput-boolean v4, p0, mDeferNotifyDataSetChanged:Z

    .line 128
    iput-boolean v5, p0, mFirstTime:Z

    .line 134
    iput-boolean v5, p0, mLoopViews:Z

    .line 140
    iput v6, p0, mReferenceChildWidth:I

    .line 141
    iput v6, p0, mReferenceChildHeight:I

    .line 152
    iput v4, p0, mTouchMode:I

    .line 181
    sget-object v3, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 183
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 185
    .local v2, "resource":I
    if-lez v2, :cond_57

    .line 186
    invoke-virtual {p0, p1, v2}, setInAnimation(Landroid/content/Context;I)V

    .line 191
    :goto_38
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 192
    if-lez v2, :cond_5f

    .line 193
    invoke-virtual {p0, p1, v2}, setOutAnimation(Landroid/content/Context;I)V

    .line 198
    :goto_41
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 200
    .local v1, "flag":Z
    invoke-virtual {p0, v1}, setAnimateFirstView(Z)V

    .line 202
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, mLoopViews:Z

    .line 205
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    invoke-direct {p0}, initViewAnimator()V

    .line 208
    return-void

    .line 188
    .end local v1    # "flag":Z
    :cond_57
    invoke-virtual {p0}, getDefaultInAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v3}, setInAnimation(Landroid/animation/ObjectAnimator;)V

    goto :goto_38

    .line 195
    :cond_5f
    invoke-virtual {p0}, getDefaultOutAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v3}, setOutAnimation(Landroid/animation/ObjectAnimator;)V

    goto :goto_41
.end method

.method static synthetic access$000(Landroid/widget/AdapterViewAnimator;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AdapterViewAnimator;

    .prologue
    .line 46
    iget v0, p0, mTouchMode:I

    return v0
.end method

.method private addChild(Landroid/view/View;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 579
    invoke-virtual {p0, p1}, createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 584
    iget v1, p0, mReferenceChildWidth:I

    if-eq v1, v2, :cond_11

    iget v1, p0, mReferenceChildHeight:I

    if-ne v1, v2, :cond_24

    .line 585
    :cond_11
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 586
    .local v0, "measureSpec":I
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, mReferenceChildWidth:I

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, mReferenceChildHeight:I

    .line 590
    .end local v0    # "measureSpec":I
    :cond_24
    return-void
.end method

.method private getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 395
    iget-object v2, p0, mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 396
    .local v1, "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    if-ne v2, p1, :cond_a

    .line 400
    .end local v1    # "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :goto_1a
    return-object v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private initViewAnimator()V
    .registers 2

    .prologue
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPreviousViews:Ljava/util/ArrayList;

    .line 215
    return-void
.end method

.method private measureChildren()V
    .registers 9

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 682
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    .line 683
    .local v3, "count":I
    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v5

    iget v6, p0, mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, mPaddingRight:I

    sub-int v2, v5, v6

    .line 684
    .local v2, "childWidth":I
    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v5

    iget v6, p0, mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, mPaddingBottom:I

    sub-int v1, v5, v6

    .line 686
    .local v1, "childHeight":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    if-ge v4, v3, :cond_31

    .line 687
    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 688
    .local v0, "child":Landroid/view/View;
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 686
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 691
    .end local v0    # "child":Landroid/view/View;
    :cond_31
    return-void
.end method

.method private setDisplayedChild(IZ)V
    .registers 6
    .param p1, "whichChild"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v1, p0, mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_26

    .line 301
    iput p1, p0, mWhichChild:I

    .line 302
    invoke-virtual {p0}, getWindowSize()I

    move-result v1

    if-lt p1, v1, :cond_2e

    .line 303
    iget-boolean v1, p0, mLoopViews:Z

    if-eqz v1, :cond_27

    move v1, v2

    :goto_12
    iput v1, p0, mWhichChild:I

    .line 308
    :cond_14
    :goto_14
    invoke-virtual {p0}, getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3f

    const/4 v0, 0x1

    .line 310
    .local v0, "hasFocus":Z
    :goto_1b
    iget v1, p0, mWhichChild:I

    invoke-virtual {p0, v1, p2}, showOnly(IZ)V

    .line 311
    if-eqz v0, :cond_26

    .line 313
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, requestFocus(I)Z

    .line 316
    .end local v0    # "hasFocus":Z
    :cond_26
    return-void

    .line 303
    :cond_27
    invoke-virtual {p0}, getWindowSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 304
    :cond_2e
    if-gez p1, :cond_14

    .line 305
    iget-boolean v1, p0, mLoopViews:Z

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, getWindowSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3a
    iput v1, p0, mWhichChild:I

    goto :goto_14

    :cond_3d
    move v1, v2

    goto :goto_3a

    :cond_3f
    move v0, v2

    .line 308
    goto :goto_1b
.end method


# virtual methods
.method public advance()V
    .registers 1

    .prologue
    .line 1073
    invoke-virtual {p0}, showNext()V

    .line 1074
    return-void
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeIndex"    # I

    .prologue
    .line 326
    return-void
.end method

.method cancelHandleClick()V
    .registers 3

    .prologue
    .line 601
    invoke-virtual {p0}, getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 602
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_9

    .line 603
    invoke-virtual {p0, v0}, hideTapFeedback(Landroid/view/View;)V

    .line 605
    :cond_9
    const/4 v1, 0x0

    iput v1, p0, mTouchMode:I

    .line 606
    return-void
.end method

.method checkForAndHandleDataChanged()V
    .registers 3

    .prologue
    .line 738
    iget-boolean v0, p0, mDataChanged:Z

    .line 739
    .local v0, "dataChanged":Z
    if-eqz v0, :cond_c

    .line 740
    new-instance v1, Landroid/widget/AdapterViewAnimator$2;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewAnimator$2;-><init>(Landroid/widget/AdapterViewAnimator;)V

    invoke-virtual {p0, v1}, post(Ljava/lang/Runnable;)Z

    .line 757
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, mDataChanged:Z

    .line 758
    return-void
.end method

.method configureViewAnimator(II)V
    .registers 4
    .param p1, "numVisibleViews"    # I
    .param p2, "activeOffset"    # I

    .prologue
    .line 245
    add-int/lit8 v0, p1, -0x1

    if-le p2, v0, :cond_4

    .line 248
    :cond_4
    iput p1, p0, mMaxNumActiveViews:I

    .line 249
    iput p2, p0, mActiveOffset:I

    .line 250
    iget-object v0, p0, mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v0, p0, mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 252
    invoke-virtual {p0}, removeAllViewsInLayout()V

    .line 253
    const/4 v0, 0x0

    iput v0, p0, mCurrentWindowStart:I

    .line 254
    const/4 v0, -0x1

    iput v0, p0, mCurrentWindowEnd:I

    .line 255
    return-void
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 405
    .local v0, "currentLp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_b

    .line 406
    move-object v1, v0

    .line 409
    :goto_a
    return-object v1

    :cond_b
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_a
.end method

.method public deferNotifyDataSetChanged()V
    .registers 2

    .prologue
    .line 1029
    const/4 v0, 0x1

    iput-boolean v0, p0, mDeferNotifyDataSetChanged:Z

    .line 1030
    return-void
.end method

.method public fyiWillBeAdvancedByHostKThx()V
    .registers 1

    .prologue
    .line 1083
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1087
    const-class v0, Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 950
    iget-object v0, p0, mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 945
    invoke-virtual {p0}, getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0}, Landroid/widget/AdapterView;->getBaseline()I

    move-result v0

    goto :goto_e
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 855
    iget v0, p0, mActiveOffset:I

    invoke-virtual {p0, v0}, getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getDefaultInAnimation()Landroid/animation/ObjectAnimator;
    .registers 5

    .prologue
    .line 278
    const/4 v1, 0x0

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_14

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 279
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 280
    return-object v0

    .line 278
    nop

    :array_14
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getDefaultOutAnimation()Landroid/animation/ObjectAnimator;
    .registers 5

    .prologue
    .line 284
    const/4 v1, 0x0

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_14

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 285
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 286
    return-object v0

    .line 284
    nop

    :array_14
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getDisplayedChild()I
    .registers 2

    .prologue
    .line 332
    iget v0, p0, mWhichChild:I

    return v0
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .registers 3

    .prologue
    .line 445
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getInAnimation()Landroid/animation/ObjectAnimator;
    .registers 2

    .prologue
    .line 867
    iget-object v0, p0, mInAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method getNumActiveViews()I
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_11

    .line 375
    invoke-virtual {p0}, getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, mMaxNumActiveViews:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 377
    :goto_10
    return v0

    :cond_11
    iget v0, p0, mMaxNumActiveViews:I

    goto :goto_10
.end method

.method public getOutAnimation()Landroid/animation/ObjectAnimator;
    .registers 2

    .prologue
    .line 891
    iget-object v0, p0, mOutAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1021
    iget v0, p0, mActiveOffset:I

    invoke-virtual {p0, v0}, getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewAtRelativeIndex(I)Landroid/view/View;
    .registers 5
    .param p1, "relativeIndex"    # I

    .prologue
    .line 364
    if-ltz p1, :cond_34

    invoke-virtual {p0}, getNumActiveViews()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_34

    iget-object v1, p0, mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_34

    .line 365
    iget v1, p0, mCurrentWindowStartUnbounded:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, getWindowSize()I

    move-result v2

    invoke-virtual {p0, v1, v2}, modulo(II)I

    move-result v0

    .line 366
    .local v0, "i":I
    iget-object v1, p0, mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 367
    iget-object v1, p0, mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 370
    .end local v0    # "i":I
    :goto_33
    return-object v1

    :cond_34
    const/4 v1, 0x0

    goto :goto_33
.end method

.method getWindowSize()I
    .registers 3

    .prologue
    .line 382
    iget-object v1, p0, mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_16

    .line 383
    invoke-virtual {p0}, getCount()I

    move-result v0

    .line 384
    .local v0, "adapterCount":I
    invoke-virtual {p0}, getNumActiveViews()I

    move-result v1

    if-gt v0, v1, :cond_15

    iget-boolean v1, p0, mLoopViews:Z

    if-eqz v1, :cond_15

    .line 385
    iget v1, p0, mMaxNumActiveViews:I

    mul-int/2addr v0, v1

    .line 390
    .end local v0    # "adapterCount":I
    :cond_15
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 597
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 598
    return-void
.end method

.method modulo(II)I
    .registers 4
    .param p1, "pos"    # I
    .param p2, "size"    # I

    .prologue
    .line 350
    if-lez p2, :cond_7

    .line 351
    rem-int v0, p1, p2

    add-int/2addr v0, p2

    rem-int/2addr v0, p2

    .line 353
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 762
    invoke-virtual {p0}, checkForAndHandleDataChanged()V

    .line 764
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    .line 765
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v2, :cond_28

    .line 766
    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 768
    .local v0, "child":Landroid/view/View;
    iget v5, p0, mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v3, v5, v6

    .line 769
    .local v3, "childRight":I
    iget v5, p0, mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v1, v5, v6

    .line 771
    .local v1, "childBottom":I
    iget v5, p0, mPaddingLeft:I

    iget v6, p0, mPaddingTop:I

    invoke-virtual {v0, v5, v6, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 765
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 773
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v3    # "childRight":I
    :cond_28
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x1000000

    const/4 v9, -0x1

    const/high16 v10, -0x80000000

    const/4 v7, 0x0

    .line 695
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 696
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 697
    .local v3, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 698
    .local v5, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 700
    .local v2, "heightSpecMode":I
    iget v8, p0, mReferenceChildWidth:I

    if-eq v8, v9, :cond_40

    iget v8, p0, mReferenceChildHeight:I

    if-eq v8, v9, :cond_40

    const/4 v0, 0x1

    .line 705
    .local v0, "haveChildRefSize":Z
    :goto_1f
    if-nez v2, :cond_44

    .line 706
    if-eqz v0, :cond_42

    iget v8, p0, mReferenceChildHeight:I

    iget v9, p0, mPaddingTop:I

    add-int/2addr v8, v9

    iget v9, p0, mPaddingBottom:I

    add-int v3, v8, v9

    .line 719
    :cond_2c
    :goto_2c
    if-nez v5, :cond_59

    .line 720
    if-eqz v0, :cond_57

    iget v7, p0, mReferenceChildWidth:I

    iget v8, p0, mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, mPaddingRight:I

    add-int v6, v7, v8

    .line 733
    :cond_39
    :goto_39
    invoke-virtual {p0, v6, v3}, setMeasuredDimension(II)V

    .line 734
    invoke-direct {p0}, measureChildren()V

    .line 735
    return-void

    .end local v0    # "haveChildRefSize":Z
    :cond_40
    move v0, v7

    .line 700
    goto :goto_1f

    .restart local v0    # "haveChildRefSize":Z
    :cond_42
    move v3, v7

    .line 706
    goto :goto_2c

    .line 708
    :cond_44
    if-ne v2, v10, :cond_2c

    .line 709
    if-eqz v0, :cond_2c

    .line 710
    iget v8, p0, mReferenceChildHeight:I

    iget v9, p0, mPaddingTop:I

    add-int/2addr v8, v9

    iget v9, p0, mPaddingBottom:I

    add-int v1, v8, v9

    .line 711
    .local v1, "height":I
    if-le v1, v3, :cond_55

    .line 712
    or-int/2addr v3, v11

    goto :goto_2c

    .line 714
    :cond_55
    move v3, v1

    goto :goto_2c

    .end local v1    # "height":I
    :cond_57
    move v6, v7

    .line 720
    goto :goto_39

    .line 722
    :cond_59
    if-ne v2, v10, :cond_39

    .line 723
    if-eqz v0, :cond_39

    .line 724
    iget v7, p0, mReferenceChildWidth:I

    iget v8, p0, mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, mPaddingRight:I

    add-int v4, v7, v8

    .line 725
    .local v4, "width":I
    if-le v4, v6, :cond_6a

    .line 726
    or-int/2addr v6, v11

    goto :goto_39

    .line 728
    :cond_6a
    move v6, v4

    goto :goto_39
.end method

.method public onRemoteAdapterConnected()Z
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 1036
    iget-object v1, p0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, mAdapter:Landroid/widget/Adapter;

    if-eq v1, v2, :cond_24

    .line 1037
    iget-object v1, p0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, setAdapter(Landroid/widget/Adapter;)V

    .line 1039
    iget-boolean v1, p0, mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_18

    .line 1040
    iget-object v1, p0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 1041
    iput-boolean v0, p0, mDeferNotifyDataSetChanged:Z

    .line 1045
    :cond_18
    iget v1, p0, mRestoreWhichChild:I

    if-le v1, v3, :cond_23

    .line 1046
    iget v1, p0, mRestoreWhichChild:I

    invoke-direct {p0, v1, v0}, setDisplayedChild(IZ)V

    .line 1047
    iput v3, p0, mRestoreWhichChild:I

    .line 1054
    :cond_23
    :goto_23
    return v0

    .line 1050
    :cond_24
    iget-object v1, p0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_23

    .line 1051
    iget-object v0, p0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 1052
    const/4 v0, 0x1

    goto :goto_23
.end method

.method public onRemoteAdapterDisconnected()V
    .registers 1

    .prologue
    .line 1066
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 828
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterViewAnimator$SavedState;

    .line 829
    .local v0, "ss":Landroid/widget/AdapterViewAnimator$SavedState;
    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 834
    iget v1, v0, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    iput v1, p0, mWhichChild:I

    .line 840
    iget-object v1, p0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_1b

    iget-object v1, p0, mAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_1b

    .line 841
    iget v1, p0, mWhichChild:I

    iput v1, p0, mRestoreWhichChild:I

    .line 845
    :goto_1a
    return-void

    .line 843
    :cond_1b
    iget v1, p0, mWhichChild:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, setDisplayedChild(IZ)V

    goto :goto_1a
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 819
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 820
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_d

    .line 821
    iget-object v1, p0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 823
    :cond_d
    new-instance v1, Landroid/widget/AdapterViewAnimator$SavedState;

    iget v2, p0, mWhichChild:I

    invoke-direct {v1, v0, v2}, Landroid/widget/AdapterViewAnimator$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 620
    .local v0, "action":I
    const/4 v1, 0x0

    .line 621
    .local v1, "handled":Z
    packed-switch v0, :pswitch_data_80

    .line 678
    :cond_b
    :goto_b
    :pswitch_b
    return v1

    .line 623
    :pswitch_c
    invoke-virtual {p0}, getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 624
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_b

    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v3, v9}, isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 626
    iget-object v5, p0, mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v5, :cond_2b

    .line 627
    new-instance v5, Landroid/widget/AdapterViewAnimator$CheckForTap;

    invoke-direct {v5, p0}, Landroid/widget/AdapterViewAnimator$CheckForTap;-><init>(Landroid/widget/AdapterViewAnimator;)V

    iput-object v5, p0, mPendingCheckForTap:Ljava/lang/Runnable;

    .line 629
    :cond_2b
    iput v7, p0, mTouchMode:I

    .line 630
    iget-object v5, p0, mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 638
    .end local v3    # "v":Landroid/view/View;
    :pswitch_38
    iget v5, p0, mTouchMode:I

    if-ne v5, v7, :cond_70

    .line 639
    invoke-virtual {p0}, getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 640
    .restart local v3    # "v":Landroid/view/View;
    invoke-direct {p0, v3}, getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-result-object v4

    .line 641
    .local v4, "viewData":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v3, :cond_70

    .line 642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v3, v9}, isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 643
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 644
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_5f

    .line 645
    iget-object v5, p0, mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 647
    :cond_5f
    invoke-virtual {p0, v3}, showTapFeedback(Landroid/view/View;)V

    .line 648
    new-instance v5, Landroid/widget/AdapterViewAnimator$1;

    invoke-direct {v5, p0, v3, v4}, Landroid/widget/AdapterViewAnimator$1;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, postDelayed(Ljava/lang/Runnable;J)Z

    .line 663
    const/4 v1, 0x1

    .line 667
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "viewData":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_70
    iput v8, p0, mTouchMode:I

    goto :goto_b

    .line 671
    :pswitch_73
    invoke-virtual {p0}, getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 672
    .restart local v3    # "v":Landroid/view/View;
    if-eqz v3, :cond_7c

    .line 673
    invoke-virtual {p0, v3}, hideTapFeedback(Landroid/view/View;)V

    .line 675
    :cond_7c
    iput v8, p0, mTouchMode:I

    goto :goto_b

    .line 621
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_c
        :pswitch_38
        :pswitch_b
        :pswitch_73
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method refreshChildren()V
    .registers 9

    .prologue
    .line 413
    iget-object v5, p0, mAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_5

    .line 435
    :cond_4
    return-void

    .line 414
    :cond_5
    iget v2, p0, mCurrentWindowStart:I

    .local v2, "i":I
    :goto_7
    iget v5, p0, mCurrentWindowEnd:I

    if-gt v2, v5, :cond_4

    .line 415
    invoke-virtual {p0}, getWindowSize()I

    move-result v5

    invoke-virtual {p0, v2, v5}, modulo(II)I

    move-result v3

    .line 417
    .local v3, "index":I
    invoke-virtual {p0}, getCount()I

    move-result v0

    .line 419
    .local v0, "adapterCount":I
    iget-object v5, p0, mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0, v2, v0}, modulo(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 421
    .local v4, "updatedChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_2c

    .line 422
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 425
    :cond_2c
    iget-object v5, p0, mViewsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 426
    iget-object v5, p0, mViewsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 428
    .local v1, "fl":Landroid/widget/FrameLayout;
    if-eqz v4, :cond_50

    .line 430
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 431
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 414
    .end local v1    # "fl":Landroid/widget/FrameLayout;
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    const/4 v2, 0x0

    .line 955
    iget-object v0, p0, mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_10

    iget-object v0, p0, mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    if-eqz v0, :cond_10

    .line 956
    iget-object v0, p0, mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 959
    :cond_10
    iput-object p1, p0, mAdapter:Landroid/widget/Adapter;

    .line 960
    invoke-virtual {p0}, checkFocus()V

    .line 962
    iget-object v0, p0, mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_2f

    .line 963
    new-instance v0, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v0, p0, mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    .line 964
    iget-object v0, p0, mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 965
    iget-object v0, p0, mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iput v0, p0, mItemCount:I

    .line 967
    :cond_2f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setFocusable(Z)V

    .line 968
    iput v2, p0, mWhichChild:I

    .line 969
    iget v0, p0, mWhichChild:I

    invoke-virtual {p0, v0, v2}, showOnly(IZ)V

    .line 970
    return-void
.end method

.method public setAnimateFirstView(Z)V
    .registers 2
    .param p1, "animate"    # Z

    .prologue
    .line 940
    iput-boolean p1, p0, mAnimateFirstTime:Z

    .line 941
    return-void
.end method

.method public setDisplayedChild(I)V
    .registers 3
    .param p1, "whichChild"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 296
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, setDisplayedChild(IZ)V

    .line 297
    return-void
.end method

.method public setInAnimation(Landroid/animation/ObjectAnimator;)V
    .registers 2
    .param p1, "inAnimation"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 879
    iput-object p1, p0, mInAnimation:Landroid/animation/ObjectAnimator;

    .line 880
    return-void
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 916
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, setInAnimation(Landroid/animation/ObjectAnimator;)V

    .line 917
    return-void
.end method

.method public setOutAnimation(Landroid/animation/ObjectAnimator;)V
    .registers 2
    .param p1, "outAnimation"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 903
    iput-object p1, p0, mOutAnimation:Landroid/animation/ObjectAnimator;

    .line 904
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 929
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, setOutAnimation(Landroid/animation/ObjectAnimator;)V

    .line 930
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 983
    iget-object v2, p0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1b

    .line 984
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 985
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 987
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 997
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_1a
    :goto_1a
    return-void

    .line 991
    :cond_1b
    const/4 v2, 0x0

    iput-boolean v2, p0, mDeferNotifyDataSetChanged:Z

    .line 993
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 994
    iget-object v2, p0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 995
    iget-object v2, p0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, setAdapter(Landroid/widget/Adapter;)V

    goto :goto_1a
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1009
    iget-object v0, p0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_9

    .line 1010
    iget-object v0, p0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1012
    :cond_9
    return-void
.end method

.method public setSelection(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 1016
    invoke-virtual {p0, p1}, setDisplayedChild(I)V

    .line 1017
    return-void
.end method

.method public showNext()V
    .registers 2

    .prologue
    .line 339
    iget v0, p0, mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, setDisplayedChild(I)V

    .line 340
    return-void
.end method

.method showOnly(IZ)V
    .registers 37
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget-object v5, v0, mAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_7

    .line 576
    :cond_6
    :goto_6
    return-void

    .line 460
    :cond_7
    invoke-virtual/range {p0 .. p0}, getCount()I

    move-result v4

    .line 461
    .local v4, "adapterCount":I
    if-eqz v4, :cond_6

    .line 463
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v14, v5, :cond_5f

    .line 464
    move-object/from16 v0, p0

    iget-object v5, v0, mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v30, v0

    .line 465
    .local v30, "viewToRemove":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->clearAnimation()V

    .line 467
    move-object/from16 v0, v30

    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4d

    move-object/from16 v28, v30

    .line 468
    check-cast v28, Landroid/view/ViewGroup;

    .line 469
    .local v28, "vg":Landroid/view/ViewGroup;
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 473
    .end local v28    # "vg":Landroid/view/ViewGroup;
    :cond_4d
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v5}, applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, removeViewInLayout(Landroid/view/View;)V

    .line 463
    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    .line 477
    .end local v30    # "viewToRemove":Landroid/view/View;
    :cond_5f
    move-object/from16 v0, p0

    iget-object v5, v0, mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 478
    move-object/from16 v0, p0

    iget v5, v0, mActiveOffset:I

    sub-int v22, p1, v5

    .line 479
    .local v22, "newWindowStartUnbounded":I
    invoke-virtual/range {p0 .. p0}, getNumActiveViews()I

    move-result v5

    add-int v5, v5, v22

    add-int/lit8 v20, v5, -0x1

    .line 480
    .local v20, "newWindowEndUnbounded":I
    const/4 v5, 0x0

    move/from16 v0, v22

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 481
    .local v21, "newWindowStart":I
    add-int/lit8 v5, v4, -0x1

    move/from16 v0, v20

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 483
    .local v19, "newWindowEnd":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, mLoopViews:Z

    if-eqz v5, :cond_8d

    .line 484
    move/from16 v21, v22

    .line 485
    move/from16 v19, v20

    .line 487
    :cond_8d
    invoke-virtual/range {p0 .. p0}, getWindowSize()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, modulo(II)I

    move-result v26

    .line 488
    .local v26, "rangeStart":I
    invoke-virtual/range {p0 .. p0}, getWindowSize()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, modulo(II)I

    move-result v25

    .line 490
    .local v25, "rangeEnd":I
    const/16 v31, 0x0

    .line 491
    .local v31, "wrap":Z
    move/from16 v0, v26

    move/from16 v1, v25

    if-le v0, v1, :cond_af

    .line 492
    const/16 v31, 0x1

    .line 499
    :cond_af
    move-object/from16 v0, p0

    iget-object v5, v0, mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_bb
    :goto_bb
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 500
    .local v17, "index":Ljava/lang/Integer;
    const/16 v27, 0x0

    .line 501
    .local v27, "remove":Z
    if-nez v31, :cond_115

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v26

    if-lt v5, v0, :cond_db

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v25

    if-le v5, v0, :cond_115

    .line 502
    :cond_db
    const/16 v27, 0x1

    .line 507
    :cond_dd
    :goto_dd
    if-eqz v27, :cond_bb

    .line 508
    move-object/from16 v0, p0

    iget-object v5, v0, mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v24, v0

    .line 509
    .local v24, "previousView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v23, v0

    .line 511
    .local v23, "oldRelativeIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, mPreviousViews:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, p2

    invoke-virtual {v0, v1, v5, v2, v3}, transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_bb

    .line 503
    .end local v23    # "oldRelativeIndex":I
    .end local v24    # "previousView":Landroid/view/View;
    :cond_115
    if-eqz v31, :cond_dd

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v25

    if-le v5, v0, :cond_dd

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v26

    if-ge v5, v0, :cond_dd

    .line 504
    const/16 v27, 0x1

    goto :goto_dd

    .line 517
    .end local v17    # "index":Ljava/lang/Integer;
    .end local v27    # "remove":Z
    :cond_12a
    move-object/from16 v0, p0

    iget v5, v0, mCurrentWindowStart:I

    move/from16 v0, v21

    if-ne v0, v5, :cond_142

    move-object/from16 v0, p0

    iget v5, v0, mCurrentWindowEnd:I

    move/from16 v0, v19

    if-ne v0, v5, :cond_142

    move-object/from16 v0, p0

    iget v5, v0, mCurrentWindowStartUnbounded:I

    move/from16 v0, v22

    if-eq v0, v5, :cond_267

    .line 520
    :cond_142
    move/from16 v14, v21

    :goto_144
    move/from16 v0, v19

    if-gt v14, v0, :cond_234

    .line 522
    invoke-virtual/range {p0 .. p0}, getWindowSize()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, modulo(II)I

    move-result v17

    .line 524
    .local v17, "index":I
    move-object/from16 v0, p0

    iget-object v5, v0, mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1df

    .line 525
    move-object/from16 v0, p0

    iget-object v5, v0, mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v23, v0

    .line 529
    .restart local v23    # "oldRelativeIndex":I
    :goto_172
    sub-int v8, v14, v22

    .line 534
    .local v8, "newRelativeIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e2

    move-object/from16 v0, p0

    iget-object v5, v0, mPreviousViews:Ljava/util/ArrayList;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e2

    const/16 v16, 0x1

    .line 536
    .local v16, "inOldRange":Z
    :goto_192
    if-eqz v16, :cond_1e5

    .line 537
    move-object/from16 v0, p0

    iget-object v5, v0, mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v29, v0

    .line 538
    .local v29, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iput v8, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 539
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v8}, applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 540
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v29

    move/from16 v3, p2

    invoke-virtual {v0, v1, v8, v2, v3}, transformViewForTransition(IILandroid/view/View;Z)V

    .line 563
    .end local v29    # "view":Landroid/view/View;
    :goto_1c8
    move-object/from16 v0, p0

    iget-object v5, v0, mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v5, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    .line 520
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_144

    .line 527
    .end local v8    # "newRelativeIndex":I
    .end local v16    # "inOldRange":Z
    .end local v23    # "oldRelativeIndex":I
    :cond_1df
    const/16 v23, -0x1

    .restart local v23    # "oldRelativeIndex":I
    goto :goto_172

    .line 534
    .restart local v8    # "newRelativeIndex":I
    :cond_1e2
    const/16 v16, 0x0

    goto :goto_192

    .line 545
    .restart local v16    # "inOldRange":Z
    :cond_1e5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, modulo(II)I

    move-result v9

    .line 546
    .local v9, "adapterPosition":I
    move-object/from16 v0, p0

    iget-object v5, v0, mAdapter:Landroid/widget/Adapter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-interface {v5, v9, v6, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 547
    .local v18, "newView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, mAdapter:Landroid/widget/Adapter;

    invoke-interface {v5, v9}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v10

    .line 551
    .local v10, "itemId":J
    invoke-virtual/range {p0 .. p0}, getFrameForChild()Landroid/widget/FrameLayout;

    move-result-object v7

    .line 554
    .local v7, "fl":Landroid/widget/FrameLayout;
    if-eqz v18, :cond_209

    .line 555
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 557
    :cond_209
    move-object/from16 v0, p0

    iget-object v0, v0, mViewsMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    new-instance v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, addChild(Landroid/view/View;)V

    .line 560
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 561
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v5, v8, v7, v1}, transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_1c8

    .line 565
    .end local v7    # "fl":Landroid/widget/FrameLayout;
    .end local v8    # "newRelativeIndex":I
    .end local v9    # "adapterPosition":I
    .end local v10    # "itemId":J
    .end local v16    # "inOldRange":Z
    .end local v17    # "index":I
    .end local v18    # "newView":Landroid/view/View;
    .end local v23    # "oldRelativeIndex":I
    :cond_234
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mCurrentWindowStart:I

    .line 566
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mCurrentWindowEnd:I

    .line 567
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mCurrentWindowStartUnbounded:I

    .line 568
    move-object/from16 v0, p0

    iget-object v5, v0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v5, :cond_267

    .line 569
    move-object/from16 v0, p0

    iget v5, v0, mCurrentWindowStart:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, modulo(II)I

    move-result v13

    .line 570
    .local v13, "adapterStart":I
    move-object/from16 v0, p0

    iget v5, v0, mCurrentWindowEnd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, modulo(II)I

    move-result v12

    .line 571
    .local v12, "adapterEnd":I
    move-object/from16 v0, p0

    iget-object v5, v0, mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v5, v13, v12}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 574
    .end local v12    # "adapterEnd":I
    .end local v13    # "adapterStart":I
    :cond_267
    invoke-virtual/range {p0 .. p0}, requestLayout()V

    .line 575
    invoke-virtual/range {p0 .. p0}, invalidate()V

    goto/16 :goto_6
.end method

.method public showPrevious()V
    .registers 2

    .prologue
    .line 346
    iget v0, p0, mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, setDisplayedChild(I)V

    .line 347
    return-void
.end method

.method showTapFeedback(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 593
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 594
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animate"    # Z

    .prologue
    const/4 v0, -0x1

    .line 268
    if-ne p1, v0, :cond_e

    .line 269
    iget-object v0, p0, mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 275
    :cond_d
    :goto_d
    return-void

    .line 271
    :cond_e
    if-ne p2, v0, :cond_d

    .line 272
    iget-object v0, p0, mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_d
.end method
