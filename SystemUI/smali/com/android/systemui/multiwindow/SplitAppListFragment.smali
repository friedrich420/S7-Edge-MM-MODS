.class public Lcom/android/systemui/multiwindow/SplitAppListFragment;
.super Landroid/support/v4/app/Fragment;
.source "SplitAppListFragment.java"

# interfaces
.implements Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;,
        Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;,
        Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;
    }
.end annotation


# instance fields
.field private final SAVE_STATE_PAGE:Ljava/lang/String;

.field private mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

.field private mAppListItemScaleAnimationRatio:I

.field private mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

.field private mDensity:I

.field private mDisplayWidth:I

.field private mGridView:Landroid/widget/GridView;

.field private mGridViewAdapter:Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mItemTextOuterGlowOpacity:F

.field private mItemTextOuterGlowOpacityDark:F

.field private mItemTextOuterGlowSize:F

.field private mItemTextShadowDistance:F

.field private mItemTextShadowOpacity:F

.field mLastTouchX:F

.field private mMainLayout:Landroid/view/View;

.field private mMultiWindowItemNum:I

.field private mMultiWindowUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

.field private mNeedDarkFont:Z

.field private mPageNum:I

.field private mScrollTouchSlop:I

.field private mSelectedAppPackage:Ljava/lang/String;

.field mViewPagerIconClickListener:Landroid/view/View$OnClickListener;

.field mViewPagerIconKeyListener:Landroid/view/View$OnKeyListener;

.field mViewPagerIconTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mSelectedAppPackage:Ljava/lang/String;

    .line 64
    const-string v0, "page"

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->SAVE_STATE_PAGE:Ljava/lang/String;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mHandler:Landroid/os/Handler;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mNeedDarkFont:Z

    .line 73
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mDensity:I

    .line 296
    new-instance v0, Lcom/android/systemui/multiwindow/SplitAppListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment$1;-><init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mViewPagerIconClickListener:Landroid/view/View$OnClickListener;

    .line 305
    new-instance v0, Lcom/android/systemui/multiwindow/SplitAppListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment$2;-><init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mViewPagerIconTouchListener:Landroid/view/View$OnTouchListener;

    .line 317
    new-instance v0, Lcom/android/systemui/multiwindow/SplitAppListFragment$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment$3;-><init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mViewPagerIconKeyListener:Landroid/view/View$OnKeyListener;

    .line 432
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mLastTouchX:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/SplitAppListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridViewAdapter:Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/SplitAppListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/SplitAppListFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowItemNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/SplitAppListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/multiwindow/SplitAppListFragment;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/SplitAppListFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->applyTextEffect(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/SplitAppListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mSelectedAppPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/SplitAppListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/SplitAppListFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/multiwindow/SplitAppListFragment;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/SplitAppListFragment;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->applyShadePressEffect(Landroid/view/MotionEvent;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/SplitAppListFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mDensity:I

    return v0
.end method

.method private applyShadePressEffect(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 259
    .local v3, "launchItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;

    .line 260
    .local v1, "holder":Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;
    iget v4, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->position:I

    iget v5, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    iget v6, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowItemNum:I

    mul-int/2addr v5, v6

    add-int v2, v4, v5

    .line 261
    .local v2, "iconIndex":I
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v4}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListItem(I)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-result-object v3

    .line 263
    if-eqz v3, :cond_2

    .line 264
    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 270
    :cond_0
    iget-object v4, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 271
    iget-object v4, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 277
    :cond_1
    :goto_0
    iget-object v4, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->invalidate()V

    .line 278
    :cond_2
    return-void

    .line 273
    :cond_3
    iget-object v4, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 274
    iget-object v4, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    const v5, 0x3f07ae14    # 0.53f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method private applyTextEffect(Landroid/widget/TextView;)V
    .locals 6
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    const/high16 v4, -0x1000000

    .line 281
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mNeedDarkFont:Z

    if-eqz v0, :cond_0

    .line 282
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mItemTextOuterGlowSize:F

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mItemTextOuterGlowOpacityDark:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->addOuterGlowTextEffect(FIF)I

    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00e4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mItemTextOuterGlowSize:F

    iget v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mItemTextOuterGlowOpacity:F

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/TextView;->addOuterGlowTextEffect(FIF)I

    .line 286
    const/high16 v1, 0x42b40000    # 90.0f

    iget v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mItemTextShadowDistance:F

    const/high16 v3, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mItemTextShadowOpacity:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    goto :goto_0
.end method

.method private insertLogPair(Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/content/Intent;)V
    .locals 6
    .param p1, "windowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    .line 392
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    .line 393
    new-array v1, v5, [Ljava/lang/String;

    .line 394
    .local v1, "features":[Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    .line 395
    .local v0, "extras":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 397
    .local v2, "index":I
    const-string v3, "PAIR"

    aput-object v3, v1, v2

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mSelectedAppPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 400
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    iget-object v3, v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartLoggingFeature:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 401
    add-int/lit8 v2, v2, 0x1

    .line 402
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    iget-object v3, v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartLoggingFeature:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 403
    sget-object v3, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;->SPLIT_LAUNCH:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 406
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    iget-boolean v3, v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mIsStartedFromRecentKeyLongPress:Z

    if-nez v3, :cond_1

    .line 407
    add-int/lit8 v2, v2, 0x1

    .line 408
    const-string v3, "RCVP"

    aput-object v3, v1, v2

    .line 409
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 412
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const/4 v4, 0x0

    invoke-static {v3, v1, v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertMultipleStatusLog(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 414
    .end local v0    # "extras":[Ljava/lang/String;
    .end local v1    # "features":[Ljava/lang/String;
    .end local v2    # "index":I
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    iput-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .line 80
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 81
    new-instance v1, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-direct {v1, v4}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f004f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListItemScaleAnimationRatio:I

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c02c4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mItemTextShadowDistance:F

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c02c5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mItemTextShadowOpacity:F

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c02c1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mItemTextOuterGlowSize:F

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c02c2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mItemTextOuterGlowOpacity:F

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c02c3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mItemTextOuterGlowOpacityDark:F

    .line 91
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "need_dark_font"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mNeedDarkFont:Z

    .line 93
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mDensity:I

    .line 94
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mDisplayWidth:I

    .line 96
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 97
    .local v0, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mScrollTouchSlop:I

    .line 98
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 100
    const-string v1, "page"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getMultiWindowItemNum()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowItemNum:I

    .line 104
    new-instance v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;

    iget v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;-><init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;I)V

    iput-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridViewAdapter:Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;

    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    return-void

    .end local v0    # "viewConfig":Landroid/view/ViewConfiguration;
    :cond_1
    move v1, v3

    .line 91
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 111
    const-string v1, "Recents_SplitAppListFragment"

    const-string v2, "onCreateView()"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSelectedAppPackageInfo()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mSelectedAppPackage:Ljava/lang/String;

    .line 113
    const v1, 0x7f040001

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    .line 115
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    const v2, 0x7f0e0076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;

    .line 116
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mViewPagerIconKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 118
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->registerCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V

    .line 120
    new-instance v0, Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;-><init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;)V

    .line 121
    .local v0, "loadTask":Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    aput-object v3, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/SplitAppListFragment$LoadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->unregisterCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V

    .line 129
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 130
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 134
    const-string v0, "page"

    iget v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    return-void
.end method

.method public scrollAnimation(FF)V
    .locals 20
    .param p1, "startTouchX"    # F
    .param p2, "curTouchX"    # F

    .prologue
    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 435
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p2, v3

    if-nez v3, :cond_2

    .line 436
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 439
    .local v2, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 440
    new-instance v3, Lcom/android/systemui/multiwindow/SplitAppListFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/multiwindow/SplitAppListFragment$5;-><init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 470
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mLastTouchX:F

    .line 508
    .end local v2    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 510
    :cond_1
    return-void

    .line 472
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mLastTouchX:F

    sub-float v3, v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mScrollTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 474
    cmpg-float v3, p2, p1

    if-gez v3, :cond_4

    .line 475
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListItemScaleAnimationRatio:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v6, p2, p1

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float v18, v3, v4

    .line 479
    .local v18, "scale":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleX(F)V

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMainLayout:Landroid/view/View;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleY(F)V

    .line 482
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mDensity:I

    const/16 v4, 0x1e0

    if-ge v3, v4, :cond_7

    .line 483
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12}, Landroid/graphics/Canvas;-><init>()V

    .line 484
    .local v12, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    add-int/lit8 v16, v3, -0x1

    .local v16, "i":I
    :goto_2
    if-ltz v16, :cond_6

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 486
    .local v15, "gridChild":Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v17, v3, -0x1

    .local v17, "j":I
    :goto_3
    if-ltz v17, :cond_5

    .line 487
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 488
    .local v14, "convertView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mLastTouchX:F

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 489
    const v3, 0x7f0e007b

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 490
    .local v19, "tv":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->clearAllTextEffect()V

    .line 491
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 492
    .local v11, "bg":Landroid/graphics/Bitmap;
    invoke-virtual {v12, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 494
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 495
    const/4 v3, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    const v3, 0x7f0e007a

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 498
    .local v13, "capture":Landroid/widget/ImageView;
    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 499
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    .end local v11    # "bg":Landroid/graphics/Bitmap;
    .end local v13    # "capture":Landroid/widget/ImageView;
    .end local v19    # "tv":Landroid/widget/TextView;
    :cond_3
    add-int/lit8 v17, v17, -0x1

    goto :goto_3

    .line 477
    .end local v12    # "canvas":Landroid/graphics/Canvas;
    .end local v14    # "convertView":Landroid/view/View;
    .end local v15    # "gridChild":Landroid/view/ViewGroup;
    .end local v16    # "i":I
    .end local v17    # "j":I
    .end local v18    # "scale":F
    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListItemScaleAnimationRatio:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    sub-float v5, p2, p1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mDisplayWidth:I

    int-to-float v6, v6

    sub-float v6, v6, p1

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float v18, v3, v4

    .restart local v18    # "scale":F
    goto/16 :goto_1

    .line 484
    .restart local v12    # "canvas":Landroid/graphics/Canvas;
    .restart local v15    # "gridChild":Landroid/view/ViewGroup;
    .restart local v16    # "i":I
    .restart local v17    # "j":I
    :cond_5
    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    .line 503
    .end local v15    # "gridChild":Landroid/view/ViewGroup;
    .end local v17    # "j":I
    :cond_6
    invoke-virtual {v12}, Landroid/graphics/Canvas;->release()V

    .line 505
    .end local v12    # "canvas":Landroid/graphics/Canvas;
    .end local v16    # "i":I
    :cond_7
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mLastTouchX:F

    goto/16 :goto_0
.end method

.method public setPageNum(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mPageNum:I

    .line 140
    return-void
.end method

.method public startActivitySafe(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Recents_SplitAppListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in startActivityAsUserSafe() mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startActivityViewPagerAppList(ILjava/lang/String;)V
    .locals 12
    .param p1, "index"    # I
    .param p2, "selectedAppPackage"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 341
    iget-object v7, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v7}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getFlashBarIntent(I)Ljava/util/List;

    move-result-object v3

    .line 343
    .local v3, "multiWindowAppIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v1, 0x0

    .line 344
    .local v1, "finishActivity":Z
    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    .line 345
    .local v6, "windowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v7, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v7}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 346
    const/4 v1, 0x1

    .line 348
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v7}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    if-ne v7, v8, :cond_3

    .line 349
    invoke-virtual {v6, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 354
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 355
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 356
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 357
    invoke-virtual {p0, v2}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->startActivitySafe(Landroid/content/Intent;)V

    .line 359
    invoke-direct {p0, v6, v2}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->insertLogPair(Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/content/Intent;)V

    .line 361
    iget-object v7, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const v8, 0x10a0049

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->overridePendingTransition(II)V

    .line 362
    const/4 v4, 0x0

    .line 363
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v7}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->findResolveInfoByPackage(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 364
    .local v5, "selectedAppResolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v7}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListItem(I)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 365
    if-eqz v5, :cond_1

    .line 366
    iget-object v7, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    invoke-virtual {v7, v4}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->storeAppUsageCount(Landroid/content/pm/ResolveInfo;)V

    .line 367
    iget-object v7, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowUsageStatus:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    invoke-virtual {v7, v5}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->storeAppUsageCount(Landroid/content/pm/ResolveInfo;)V

    .line 370
    :cond_1
    if-eqz v1, :cond_4

    .line 372
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v7}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->finishActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "selectedAppResolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    :goto_1
    return-void

    .line 351
    :cond_3
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_0

    .line 373
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "selectedAppResolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Recents_SplitAppListFragment"

    const-string v8, "Activity is null"

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/multiwindow/SplitAppListFragment$4;-><init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;)V

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public updateSelectedPackageName(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "selectedPackageInfoPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "Recents_SplitAppListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSelectedPackageName"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mSelectedAppPackage:Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridViewAdapter:Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->notifyDataSetChanged()V

    .line 430
    return-void
.end method
