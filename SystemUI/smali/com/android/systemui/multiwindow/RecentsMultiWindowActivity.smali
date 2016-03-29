.class public Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RecentsMultiWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;,
        Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;,
        Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;
    }
.end annotation


# instance fields
.field private DELAY_SHOW_HELP_DIALOG:I

.field private mAppListViewPager:Landroid/support/v4/view/ViewPager;

.field private mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mCenterShadowLineLand:Landroid/widget/LinearLayout;

.field private mCenterShadowLinePort:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mEmptyTextShadowDistance:F

.field private mEmptyTextShadowOpacity:F

.field private mEmptyTextShadowSize:F

.field private mEmptyTextStrokeOpacity:F

.field private mFinishRequested:Z

.field mGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private mGuideText:Landroid/widget/TextView;

.field private mGuideTextMarginLand:I

.field private mGuideTextMarginPort:I

.field private mGuideView:Landroid/widget/FrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHelpDialog:Landroid/app/AlertDialog;

.field private mHelpShowRunnable:Ljava/lang/Runnable;

.field public mIsStartedFromRecentKeyLongPress:Z

.field private mLastOrientation:I

.field private mLayoutDirection:I

.field mLocalReceiver:Landroid/content/BroadcastReceiver;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

.field mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field mNeedDarkFont:Z

.field private mNeedMoveAppListPage:Z

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mSelectedAppInfo:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShadowLineLand:Landroid/widget/LinearLayout;

.field private mShadowLinePort:Landroid/widget/LinearLayout;

.field mStartLoggingFeature:Ljava/lang/String;

.field private mStartTouchX:F

.field private mViewPagerCount:I

.field private mViewPagerMark:Landroid/widget/LinearLayout;

.field private mViewPagerMarkerMarginLeft:I

.field private mViewPagerMarkerSize:I

.field mViewPagerOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mViewPagerScrollIdlePage:I

.field private mViewPagerSelectedPage:I

.field mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    .line 129
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedDarkFont:Z

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    .line 150
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->DELAY_SHOW_HELP_DIALOG:I

    .line 154
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartLoggingFeature:Ljava/lang/String;

    .line 159
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mIsStartedFromRecentKeyLongPress:Z

    .line 343
    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$4;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    .line 371
    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$5;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    .line 388
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F

    .line 389
    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 740
    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 898
    new-instance v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$10;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpShowRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->initViewPageMark()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLayoutDirection:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # F

    .prologue
    .line 95
    iput p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .param p1, "x1"    # Landroid/util/Pair;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    return-object p1
.end method

.method private initViewPageMark()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 705
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 706
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    if-ge v0, v3, :cond_2

    .line 707
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 708
    .local v1, "iv":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 711
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_1

    .line 715
    const v3, 0x7f020661

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 721
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedDarkFont:Z

    if-eqz v3, :cond_0

    .line 722
    const v3, -0xbbbbbc

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 724
    :cond_0
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 725
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 726
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 727
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 730
    new-instance v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$7;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    :cond_1
    const v3, 0x7f020660

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 719
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerMarginLeft:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    .line 738
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method private isKnoxLauncherMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 885
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 886
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 889
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 890
    .local v0, "HomeReceiver":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 891
    const/4 v3, 0x1

    .line 893
    :cond_0
    return v3
.end method

.method private makeHelpDialog()V
    .locals 7

    .prologue
    .line 941
    const-string v4, "Recents_RecentsMultiWindowActivity"

    const-string v5, "makeHelpDialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 944
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04006a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 946
    .local v2, "mRecentPanelLayout":Landroid/view/View;
    const v4, 0x7f0e01e8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 947
    .local v3, "okButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$11;

    invoke-direct {v4, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$11;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 958
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f100018

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpDialog:Landroid/app/AlertDialog;

    .line 962
    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 964
    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 965
    .local v1, "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 966
    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 970
    :goto_0
    return-void

    .line 968
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "dismissHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 935
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public finishActivity()V
    .locals 4

    .prologue
    .line 802
    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "finishActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    .line 804
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$9;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 810
    return-void
.end method

.method public getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    return-object v0
.end method

.method public getSelectedAppPackageInfo()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    if-nez v0, :cond_0

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getTopRunningPackage(Z)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    return-object v0
.end method

.method public getTopRunningPackage(Z)Landroid/util/Pair;
    .locals 9
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 763
    iget-object v6, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/16 v7, 0xa

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v4

    .line 766
    .local v4, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v2, Landroid/util/Pair;

    const-string v6, ""

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 768
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    .line 769
    .local v5, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_2

    .line 770
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 771
    .local v3, "rInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v6, "Recents_RecentsMultiWindowActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTopRunningPackage - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | isSplit : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "| zone : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :try_start_0
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 778
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 786
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "rInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    return-object v2

    .line 781
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "rInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Recents_RecentsMultiWindowActivity"

    const-string v7, "getTopRunningPackage - baseActivity is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public moveViewPage(IZ)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "anim"    # Z

    .prologue
    .line 496
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    if-lt p1, v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerSelectedPage:I

    if-eq v0, p1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 697
    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "onBackPressed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->finish()V

    .line 699
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    const v0, 0x10a0049

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->overridePendingTransition(II)V

    .line 702
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 547
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 548
    const-string v1, "Recents_RecentsMultiWindowActivity"

    const-string v2, "onConfigurationChanged is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    .line 550
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    .line 551
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->updateMainLayout()V

    .line 552
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->notifyDataSetChanged()V

    .line 553
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 554
    .local v0, "tmp":I
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 555
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 557
    .end local v0    # "tmp":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    const-string v2, "Recents_RecentsMultiWindowActivity"

    const-string v3, "onCreate is getting called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    .line 174
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 177
    const v2, 0x7f04006b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->setContentView(I)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLayoutDirection:I

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerSize:I

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMarkerMarginLeft:I

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0281

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginPort:I

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginLand:I

    .line 186
    const-string v2, "multiwindow_facade"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->initialize(Landroid/content/Context;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    .line 188
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getInstance()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    .line 190
    const v2, 0x7f0e01e9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMainView:Landroid/widget/LinearLayout;

    .line 191
    const v2, 0x7f0e01ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    .line 192
    const v2, 0x7f0e01ed

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;

    .line 193
    const v2, 0x7f0e01ee

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideView:Landroid/widget/FrameLayout;

    .line 194
    const v2, 0x7f0e01ef

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    .line 196
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 197
    .local v9, "appListShadowDistance":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02d0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v9, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 198
    invoke-virtual {v9}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowDistance:F

    .line 200
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 201
    .local v10, "appListShadowOpacity":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02d1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v10, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 202
    invoke-virtual {v10}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowOpacity:F

    .line 204
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 205
    .local v11, "appListShadowSize":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02d2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v11, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 206
    invoke-virtual {v11}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowSize:F

    .line 208
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 209
    .local v12, "appListStrokeOpacity":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02cf

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v12, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 210
    invoke-virtual {v12}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextStrokeOpacity:F

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_font"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedDarkFont:Z

    .line 214
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedDarkFont:Z

    if-eqz v2, :cond_3

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowDistance:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowSize:F

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowOpacity:F

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    .line 225
    :goto_1
    const v2, 0x7f0e01f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLinePort:Landroid/widget/LinearLayout;

    .line 226
    const v2, 0x7f0e01f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLineLand:Landroid/widget/LinearLayout;

    .line 227
    const v2, 0x7f0e01eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLinePort:Landroid/widget/LinearLayout;

    .line 228
    const v2, 0x7f0e01ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLineLand:Landroid/widget/LinearLayout;

    .line 231
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v15

    .line 232
    .local v15, "display":Landroid/view/Display;
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    .line 233
    .local v14, "centerbarPoint":Landroid/graphics/Point;
    if-eqz v15, :cond_0

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v15, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 236
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v14, Landroid/graphics/Point;->x:I

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v14, Landroid/graphics/Point;->y:I

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v14}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$1;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    new-instance v13, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    .line 251
    .local v13, "appListloadTask":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v13, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v17

    .line 254
    .local v17, "fm":Landroid/support/v4/app/FragmentManager;
    new-instance v2, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Landroid/support/v4/app/FragmentManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$2;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 278
    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    new-instance v3, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;-><init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v22

    .line 300
    .local v22, "win":Landroid/view/Window;
    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v20

    .line 301
    .local v20, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v20

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    move-object/from16 v0, v20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 302
    move-object/from16 v0, v20

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 303
    move-object/from16 v0, v20

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v2, v2, 0x40

    move-object/from16 v0, v20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 304
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 306
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    .line 308
    .local v8, "am":Landroid/app/IActivityManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v8, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_2
    :try_start_1
    new-instance v19, Landroid/content/IntentFilter;

    invoke-direct/range {v19 .. v19}, Landroid/content/IntentFilter;-><init>()V

    .line 315
    .local v19, "localIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.systemui.recents.CLOSE_RECENTS_MULTIWINDOW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v2, "com.samsung.systemui.recents.REFRESH_RECENTS_MULTIWINDOW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 321
    .end local v19    # "localIntentFilter":Landroid/content/IntentFilter;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "recentUI.multiwindow.package"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->showHelpDialog()V

    .line 324
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mIsStartedFromRecentKeyLongPress:Z

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 327
    const-string v2, "LPHM"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartLoggingFeature:Ljava/lang/String;

    .line 340
    :cond_1
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 341
    return-void

    .line 212
    .end local v8    # "am":Landroid/app/IActivityManager;
    .end local v13    # "appListloadTask":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;
    .end local v14    # "centerbarPoint":Landroid/graphics/Point;
    .end local v15    # "display":Landroid/view/Display;
    .end local v17    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v20    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v22    # "win":Landroid/view/Window;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 220
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x1000000

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowDistance:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowSize:F

    const/high16 v6, -0x1000000

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mEmptyTextShadowOpacity:F

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    goto/16 :goto_1

    .line 309
    .restart local v8    # "am":Landroid/app/IActivityManager;
    .restart local v13    # "appListloadTask":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;
    .restart local v14    # "centerbarPoint":Landroid/graphics/Point;
    .restart local v15    # "display":Landroid/view/Display;
    .restart local v17    # "fm":Landroid/support/v4/app/FragmentManager;
    .restart local v20    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v22    # "win":Landroid/view/Window;
    :catch_0
    move-exception v16

    .line 310
    .local v16, "e":Landroid/os/RemoteException;
    const-string v2, "Recents_RecentsMultiWindowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to registerProcessObserver, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 329
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/16 v3, 0xa

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v21

    .line 332
    .local v21, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fromNormal"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 334
    .local v18, "fromNormal":Z
    if-eqz v18, :cond_5

    const-string v2, "LPNA"

    :goto_5
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartLoggingFeature:Ljava/lang/String;

    goto :goto_4

    :cond_5
    const-string v2, "LPSP"

    goto :goto_5

    .line 318
    .end local v18    # "fromNormal":Z
    .end local v21    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_1
    move-exception v2

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 644
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 645
    const-string v2, "Recents_RecentsMultiWindowActivity"

    const-string v3, "onDestroy is getting called "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 649
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    :try_start_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 660
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    .line 661
    return-void

    .line 650
    :catch_0
    move-exception v1

    .line 651
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Recents_RecentsMultiWindowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unregisterProcessObserver, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 656
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 657
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Recents_RecentsMultiWindowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unregisterBroadcastReceiver, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 665
    sparse-switch p1, :sswitch_data_0

    .line 691
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :sswitch_0
    return v0

    .line 665
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x3d -> :sswitch_0
        0x43 -> :sswitch_0
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 561
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 562
    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "onNewIntent is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->setIntent(Landroid/content/Intent;)V

    .line 564
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 574
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 575
    const-string v1, "Recents_RecentsMultiWindowActivity"

    const-string v2, "onResume is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->isKnoxLauncherMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 579
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x100000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 580
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMainView:Landroid/widget/LinearLayout;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 584
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mVisible:Z

    .line 586
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->updateMainLayout()V

    .line 587
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 589
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.OUTSIDE_TOUCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 596
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableViewPagerAboveAll:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "recentUI.multiwindow.package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 616
    :goto_0
    return-void

    .line 602
    :cond_3
    iget v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    if-nez v1, :cond_4

    .line 603
    iput-boolean v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z

    .line 613
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "RecentsMultiWindow"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v1

    goto :goto_0

    .line 605
    :cond_4
    iget v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLayoutDirection:I

    if-ne v1, v4, :cond_5

    .line 606
    iget v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->moveViewPage(IZ)V

    goto :goto_1

    .line 608
    :cond_5
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->moveViewPage(IZ)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 568
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 569
    const-string v0, "Recents_RecentsMultiWindowActivity"

    const-string v1, "onStart is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 620
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 621
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->dismissHelpDialog()V

    .line 623
    iget-boolean v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartLoggingFeature:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 625
    const-string v1, ""

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSelectedAppPackageInfo()Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 626
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartLoggingFeature:Ljava/lang/String;

    const-string v2, "LPSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 627
    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;->RETURN_TO_SPLIT:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;->name()Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "extra":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartLoggingFeature:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .end local v0    # "extra":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->finish()V

    .line 639
    const-string v1, "Recents_RecentsMultiWindowActivity"

    const-string v2, "onStop is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void

    .line 629
    :cond_1
    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;->NORMAL_APP_LAUNCH:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;->name()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 632
    .end local v0    # "extra":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;->RETURN_TO_HOME:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;->name()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0
.end method

.method public registerCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;

    .prologue
    .line 790
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 791
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    monitor-exit v1

    .line 793
    return-void

    .line 792
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showHelpDialog()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 910
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;

    const-string v2, "preference_recents"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 915
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "recents_longpress_dialog_do_not_show"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 919
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->makeHelpDialog()V

    .line 920
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 921
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpShowRunnable:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->DELAY_SHOW_HELP_DIALOG:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public unregisterCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;

    .prologue
    .line 796
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 798
    monitor-exit v1

    .line 799
    return-void

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateMainLayout()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 434
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 435
    .local v1, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 436
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 437
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 438
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    if-ne v3, v4, :cond_2

    .line 440
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 441
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 442
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 443
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 444
    const/16 v3, 0x50

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 445
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLinePort:Landroid/widget/LinearLayout;

    const v4, 0x7f020475

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 450
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateMultiWindowItemNum(I)V

    .line 482
    return-void

    .line 446
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 447
    const/16 v3, 0x30

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 448
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLinePort:Landroid/widget/LinearLayout;

    const v4, 0x7f020474

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 452
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 453
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 454
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 455
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 456
    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 457
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLineLand:Landroid/widget/LinearLayout;

    const v4, 0x7f020473

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 462
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 458
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 459
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mShadowLineLand:Landroid/widget/LinearLayout;

    const v4, 0x7f020472

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 460
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    .line 465
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 466
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 467
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLastOrientation:I

    if-ne v3, v4, :cond_6

    .line 468
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 469
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginPort:I

    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginPort:I

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 470
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 478
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 473
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 474
    iget v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginLand:I

    iget v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mGuideTextMarginLand:I

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 475
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLinePort:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 476
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCenterShadowLineLand:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method public updateSelectedPackageName(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    .line 866
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getTopRunningPackage(Z)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    .line 867
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 868
    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 869
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 870
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    .local v0, "cb":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;

    invoke-interface {v0, v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;->updateSelectedPackageName(Landroid/util/Pair;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 869
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 873
    :catch_0
    move-exception v1

    .line 874
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Recents_RecentsMultiWindowActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 878
    .end local v0    # "cb":Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 880
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
