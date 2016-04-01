.class public Lcom/android/internal/app/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;,
        Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;,
        Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;,
        Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$SShareItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$TargetInfo;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivity$ActionTitle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DOCUMENTS_UI_POLICY:Ljava/lang/String; = "DocumentsUIPolicy"

.field public static final DOCUMENTS_UI_POLICY_SEC:I = 0x1

.field private static final GUIDE_ACTIVITY:Ljava/lang/String; = "ResolverGuideActivity"

.field private static final INTERNAL_PACKAGE:Ljava/lang/String; = "com.android.internal.app"

.field private static final MAX_FONT_SCALE:F = 1.2f

.field private static final MAX_PAGE_LINE_NUM:I = 0x2

.field public static final MIME_TYPE_MEMO:Ljava/lang/String; = "application/vnd.samsung.android.memo"

.field private static final PAGER_KEY:Ljava/lang/String; = "pagerkey_%1$d_%2$d"

.field private static final SHAREVIA_RECENT_ITEM:Ljava/lang/String; = "sharevia_recent"

.field private static final SPLIT_STRING:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"

.field public static final THEME_CHOOSER:Ljava/lang/String; = "theme"

.field public static final THEME_DEVICE_DEFAULT:I = 0x1

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x2

.field public static final THEME_NONE:I


# instance fields
.field private defaultTextSize:F

.field private final isElasticEnabled:Z

.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAdapterView:Landroid/widget/AbsListView;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private final mAnimDuration:I

.field private mBottomPanel:Landroid/view/ViewGroup;

.field private mCurrentPageIdx:I

.field private mDropComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mDropsDocumentsUI:Z

.field private mExitAnimator:Landroid/animation/Animator;

.field protected mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mGridRecentHistory:Landroid/widget/HorizontalListView;

.field private mGridResolveAdapterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mIconDpi:I

.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDeviceDefault:Z

.field private mIsManagedProfile:Z

.field private mLastSelected:I

.field private mLaunchedFromPackage:Ljava/lang/String;

.field private mLaunchedFromUid:I

.field private mMaxColumns:I

.field private mMoreActions:Lcom/samsung/android/share/SShareMoreActions;

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPageItemNum:I

.field private mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

.field private mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field private mPkgNamesArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgNamesFromDB:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProfileSwitchMessageId:I

.field private mProfileView:Landroid/view/View;

.field private mRecentPkgList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentPkgNames:Ljava/lang/String;

.field private mRegistered:Z

.field private mResolverComparator:Lcom/android/internal/app/ResolverComparator;

.field protected mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private mResolverListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResolvingHome:Z

.field private mSShareCommon:Lcom/samsung/android/share/SShareCommon;

.field private mSShareLogging:Lcom/samsung/android/share/SShareLogging;

.field private mSafeForwardingMode:Z

.field private mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

.field private mSquicleUX:Z

.field private mSupportGridResolver:Z

.field private mSupportLogging:Z

.field private mSupportMoreActions:Z

.field private mSupportPageMode:Z

.field private mSupportSetAlwaysUse:Z

.field private mSupportSimpleSharing:Z

.field private mTitlePanelAFW:Landroid/view/View;

.field private mTitlePanelDefault:Landroid/view/View;

.field private mTopPanel:Landroid/view/View;

.field private mTotalCount:I

.field private mViewPager:Lcom/android/internal/widget/ViewPager;

.field private mViewPagerBottomSpacing:Landroid/widget/LinearLayout;

.field private mViewPagerNavi:Landroid/widget/LinearLayout;

.field private mViewPagerNaviPrevPage:I

.field private mVisibleArea:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 165
    iput v0, p0, mLastSelected:I

    .line 166
    iput-boolean v1, p0, mResolvingHome:Z

    .line 167
    iput v0, p0, mProfileSwitchMessageId:I

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mIntents:Ljava/util/ArrayList;

    .line 184
    iput-boolean v2, p0, mIsDeviceDefault:Z

    .line 185
    iput-boolean v1, p0, mDropsDocumentsUI:Z

    .line 186
    iput-boolean v1, p0, mSquicleUX:Z

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mExtraIntentList:Ljava/util/List;

    .line 206
    iput-boolean v2, p0, isElasticEnabled:Z

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mResolverListMap:Ljava/util/Map;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mGridResolveAdapterList:Ljava/util/List;

    .line 222
    iput v1, p0, mCurrentPageIdx:I

    .line 223
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, mRecentPkgList:Ljava/util/LinkedList;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPkgNamesArray:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDropComponents:Ljava/util/ArrayList;

    .line 233
    const/16 v0, 0x12c

    iput v0, p0, mAnimDuration:I

    .line 241
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 3047
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-object v0, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-object v0, p0, mProfileView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-object v0, p0, mDropComponents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    invoke-direct {p0}, isForKnoxNFC()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-boolean v0, p0, mIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ResolverActivity;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget v0, p0, defaultTextSize:F

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/app/ResolverActivity;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # F

    .prologue
    .line 149
    iput p1, p0, defaultTextSize:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/app/ResolverActivity;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    invoke-direct {p0}, getFontScale()F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-boolean v0, p0, mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/app/ResolverActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget v0, p0, mLastSelected:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/app/ResolverActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 149
    iput p1, p0, mLastSelected:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-boolean v0, p0, mSupportSetAlwaysUse:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/app/ResolverActivity;ZIZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, setAlwaysButtonEnabled(ZIZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-object v0, p0, mOnceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/app/ResolverActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 149
    iput p1, p0, mProfileSwitchMessageId:I

    return p1
.end method

.method static synthetic access$2102(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .prologue
    .line 149
    iput-object p1, p0, mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareSimpleSharing;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-object v0, p0, mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/app/ResolverActivity;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, convertPageModePosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-object v0, p0, mGridResolveAdapterList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/app/ResolverActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget v0, p0, mTotalCount:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/internal/app/ResolverActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 149
    iput p1, p0, mCurrentPageIdx:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/app/ResolverActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget v0, p0, mViewPagerNaviPrevPage:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/internal/app/ResolverActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 149
    iput p1, p0, mViewPagerNaviPrevPage:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-object v0, p0, mViewPagerNavi:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-object v0, p0, mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-boolean v0, p0, mSupportSimpleSharing:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    invoke-direct {p0}, isLandscapeMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/widget/ViewPager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-object v0, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareMoreActions;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-object v0, p0, mMoreActions:Lcom/samsung/android/share/SShareMoreActions;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-object v0, p0, mIntents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-object v0, p0, mVisibleArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/internal/app/ResolverActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 149
    iput-object p1, p0, mExitAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareCommon;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-object v0, p0, mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-boolean v0, p0, mSupportGridResolver:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-object v0, p0, mAdapterView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget v0, p0, mMaxColumns:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-object v0, p0, mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 149
    iget-boolean v0, p0, mDropsDocumentsUI:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/app/ResolverActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, mDropsDocumentsUI:Z

    return p1
.end method

.method private addMoreActionsView()V
    .registers 8

    .prologue
    .line 3038
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions;

    invoke-virtual {p0}, getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-direct {p0}, getReferrerPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/share/SShareMoreActions;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/view/Window;Ljava/lang/String;)V

    iput-object v0, p0, mMoreActions:Lcom/samsung/android/share/SShareMoreActions;

    .line 3039
    const v0, 0x10204cb

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, mBottomPanel:Landroid/view/ViewGroup;

    .line 3041
    iget-object v0, p0, mBottomPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_31

    .line 3042
    new-instance v6, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;

    invoke-direct {v6, p0}, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .line 3043
    .local v6, "listener":Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;
    iget-object v0, p0, mMoreActions:Lcom/samsung/android/share/SShareMoreActions;

    iget-object v1, p0, mBottomPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/share/SShareMoreActions;->setMoreActionsView(Landroid/view/ViewGroup;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3045
    .end local v6    # "listener":Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;
    :cond_31
    return-void
.end method

.method private addRecentHistoryGridView(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2600
    const v1, 0x10204ca

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalListView;

    iput-object v1, p0, mGridRecentHistory:Landroid/widget/HorizontalListView;

    .line 2602
    new-instance v0, Lcom/android/internal/app/ResolverActivity$SShareItemClickListener;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$SShareItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .line 2603
    .local v0, "listener":Lcom/android/internal/app/ResolverActivity$SShareItemClickListener;
    iget-object v1, p0, mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    iget-object v2, p0, mGridRecentHistory:Landroid/widget/HorizontalListView;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/share/SShareSimpleSharing;->setSimpleSharingView(Landroid/widget/HorizontalListView;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2604
    return-void
.end method

.method private applyRemoteShareResolver(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2590
    iget-object v0, p0, mGridRecentHistory:Landroid/widget/HorizontalListView;

    if-nez v0, :cond_7

    .line 2591
    invoke-direct {p0, p1}, addRecentHistoryGridView(Landroid/content/Intent;)V

    .line 2594
    :cond_7
    iget-object v0, p0, mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    if-eqz v0, :cond_10

    .line 2595
    iget-object v0, p0, mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareSimpleSharing;->buildUpSimpleSharingData()V

    .line 2597
    :cond_10
    return-void
.end method

.method private clearPagerAdapter()V
    .registers 2

    .prologue
    .line 2648
    iget-object v0, p0, mGridResolveAdapterList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 2649
    iget-object v0, p0, mGridResolveAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2651
    :cond_9
    iget-object v0, p0, mResolverListMap:Ljava/util/Map;

    if-eqz v0, :cond_12

    .line 2652
    iget-object v0, p0, mResolverListMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2654
    :cond_12
    return-void
.end method

.method private convertPageModePosition(I)I
    .registers 7
    .param p1, "pos"    # I

    .prologue
    .line 2745
    iget-object v1, p0, mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    if-eqz v1, :cond_36

    iget-object v1, p0, mGridResolveAdapterList:Ljava/util/List;

    if-eqz v1, :cond_36

    .line 2746
    const-string/jumbo v1, "pagerkey_%1$d_%2$d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, mCurrentPageIdx:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2748
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, mResolverListMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 2749
    iget-object v1, p0, mResolverListMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2754
    .end local v0    # "key":Ljava/lang/String;
    :cond_36
    return p1
.end method

.method private createExitAnimation(Landroid/view/View;)Landroid/animation/Animator;
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 3119
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3120
    .local v3, "height":I
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3121
    .local v2, "animator":Landroid/animation/AnimatorSet;
    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3122
    .local v1, "aniY":Landroid/animation/Animator;
    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_3e

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3123
    .local v0, "aniAlpha":Landroid/animation/Animator;
    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v1, v4, v8

    aput-object v0, v4, v9

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3124
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3125
    return-object v2

    .line 3122
    nop

    :array_3e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "edmUri"    # Ljava/lang/String;
    .param p3, "projectionArgs"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 3097
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3098
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3099
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_35

    .line 3101
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3102
    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_31
    .catchall {:try_start_13 .. :try_end_24} :catchall_37

    move-result v0

    if-eqz v0, :cond_2c

    .line 3109
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 3113
    :goto_2b
    return v0

    .line 3105
    :cond_2c
    const/4 v0, 0x0

    .line 3109
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2b

    .line 3107
    :catch_31
    move-exception v0

    .line 3109
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_35
    move v0, v7

    .line 3113
    goto :goto_2b

    .line 3109
    :catchall_37
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getFontScale()F
    .registers 3

    .prologue
    .line 3031
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 3032
    .local v0, "fontScale":F
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_14

    .line 3033
    const v0, 0x3f99999a    # 1.2f

    .line 3035
    :cond_14
    return v0
.end method

.method private getReferrerPackageName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 655
    invoke-virtual {p0}, getReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 656
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_17

    const-string v1, "android-app"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 657
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 659
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private hasManagedProfile()Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 927
    const-string/jumbo v6, "user"

    invoke-virtual {p0, v6}, getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 928
    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_d

    .line 942
    :cond_c
    :goto_c
    return v5

    .line 933
    :cond_d
    :try_start_d
    invoke-virtual {p0}, getUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 934
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 935
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_30} :catch_35

    move-result v6

    if-nez v6, :cond_19

    .line 936
    const/4 v5, 0x1

    goto :goto_c

    .line 939
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_35
    move-exception v0

    .line 940
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_c
.end method

.method private initViewPagerNavi()V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v8, -0x2

    .line 2985
    iget-object v6, p0, mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    if-eqz v6, :cond_e

    iget-object v6, p0, mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->getCount()I

    move-result v6

    if-nez v6, :cond_f

    .line 3027
    :cond_e
    return-void

    .line 2989
    :cond_f
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    if-ne v6, v1, :cond_7f

    .line 2990
    .local v1, "isRtlLayout":Z
    :goto_1d
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050208

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2991
    .local v4, "naviSize":I
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050209

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 2993
    .local v5, "naviStart":I
    iget-object v6, p0, mViewPagerNavi:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2994
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    iget-object v6, p0, mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_e

    .line 2995
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2996
    .local v2, "iv":Landroid/widget/ImageView;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2997
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 2999
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v6}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v6

    if-ne v0, v6, :cond_81

    .line 3000
    const v6, 0x10809c8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3005
    :goto_62
    if-lez v0, :cond_68

    .line 3006
    if-eqz v1, :cond_88

    .line 3007
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3013
    :cond_68
    :goto_68
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3014
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 3015
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3017
    iget-object v6, p0, mViewPagerNavi:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3019
    new-instance v6, Lcom/android/internal/app/ResolverActivity$6;

    invoke-direct {v6, p0}, Lcom/android/internal/app/ResolverActivity$6;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2994
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 2989
    .end local v0    # "i":I
    .end local v1    # "isRtlLayout":Z
    .end local v2    # "iv":Landroid/widget/ImageView;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "naviSize":I
    .end local v5    # "naviStart":I
    :cond_7f
    const/4 v1, 0x0

    goto :goto_1d

    .line 3002
    .restart local v0    # "i":I
    .restart local v1    # "isRtlLayout":Z
    .restart local v2    # "iv":Landroid/widget/ImageView;
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "naviSize":I
    .restart local v5    # "naviStart":I
    :cond_81
    const v6, 0x10809c9

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62

    .line 3009
    :cond_88
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_68
.end method

.method private isForKnoxNFC()Z
    .registers 4

    .prologue
    .line 3085
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v0

    .line 3086
    .local v0, "isKnox24Supported":Z
    if-eqz v0, :cond_10

    iget v1, p0, mLaunchedFromUid:I

    const/16 v2, 0x403

    if-ne v1, v2, :cond_10

    .line 3087
    const/4 v1, 0x1

    .line 3090
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private isLandscapeMode()Z
    .registers 3

    .prologue
    .line 2980
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static final isSpecificUriMatch(I)Z
    .registers 2
    .param p0, "match"    # I

    .prologue
    .line 2520
    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

    .line 2521
    const/high16 v0, 0x300000

    if-lt p0, v0, :cond_d

    const/high16 v0, 0x500000

    if-gt p0, v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 301
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 302
    return-object v0
.end method

.method private replaceTargetForKNOXContainer(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .registers 13
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 977
    const-string v8, "ResolverActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enter : replaceTargetForKNOXContainer()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const-string/jumbo v8, "persona"

    invoke-virtual {p0, v8}, getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 980
    .local v3, "mPersona":Landroid/os/PersonaManager;
    const/4 v1, 0x0

    .line 981
    .local v1, "knox1_userid":I
    const/4 v2, 0x0

    .line 983
    .local v2, "knox2_userid":I
    if-eqz v3, :cond_73

    .line 984
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v4

    .line 985
    .local v4, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v4, :cond_75

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_75

    .line 986
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3a
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    .line 988
    .local v5, "pi":Landroid/content/pm/PersonaInfo;
    const-string/jumbo v8, "user"

    invoke-virtual {p0, v8}, getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 989
    .local v7, "um":Landroid/os/UserManager;
    iget v8, v5, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 990
    .local v6, "ui":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_64

    const-string v8, "KNOX"

    iget-object v9, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 991
    iget v1, v5, Landroid/content/pm/PersonaInfo;->id:I

    goto :goto_3a

    .line 992
    :cond_64
    if-eqz v6, :cond_3a

    const-string v8, "KNOX II"

    iget-object v9, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 993
    iget v2, v5, Landroid/content/pm/PersonaInfo;->id:I

    goto :goto_3a

    .line 1000
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v5    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v6    # "ui":Landroid/content/pm/UserInfo;
    .end local v7    # "um":Landroid/os/UserManager;
    :cond_73
    const/4 v8, 0x0

    .line 1005
    :goto_74
    return-object v8

    .line 1002
    .restart local v4    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_75
    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v9, "SwitchB2bActivityII"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_88

    .line 1003
    iget-object v8, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v8, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getKnoxWorkspace(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v8

    goto :goto_74

    .line 1005
    :cond_88
    iget-object v8, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v8, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getKnoxWorkspace(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v8

    goto :goto_74
.end method

.method static resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .registers 6
    .param p0, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p1, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1413
    if-nez p0, :cond_9

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_9
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_13

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_6

    :cond_13
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_2f
    move v0, v1

    goto :goto_6
.end method

.method private safelyStartActivtyAfterAnimation(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .registers 5
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 3129
    const v1, 0x1020364

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3130
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_d

    .line 3131
    invoke-virtual {p0, p1}, safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 3154
    :goto_c
    return-void

    .line 3135
    :cond_d
    invoke-direct {p0, v0}, createExitAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, mExitAnimator:Landroid/animation/Animator;

    .line 3136
    iget-object v1, p0, mExitAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/ResolverActivity$7;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3153
    iget-object v1, p0, mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_c
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .registers 8
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .prologue
    .line 957
    const/4 v0, 0x0

    .line 958
    .local v0, "enabled":Z
    if-eqz p1, :cond_f

    .line 959
    iget-object v2, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 960
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_f

    .line 961
    const/4 v0, 0x1

    .line 964
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_f
    iget-object v2, p0, mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 965
    return-void
.end method

.method private setProfileSwitchMessageId(I)V
    .registers 10
    .param p1, "contentUserHint"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 694
    const/4 v7, -0x2

    if-eq p1, v7, :cond_45

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eq p1, v7, :cond_45

    .line 696
    const-string/jumbo v7, "user"

    invoke-virtual {p0, v7}, getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 697
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 698
    .local v1, "originUserInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUserHandle()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 700
    .local v3, "targetUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_46

    move v0, v5

    .line 703
    .local v0, "originIsManaged":Z
    :goto_2f
    invoke-virtual {v4}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_4a

    move v2, v5

    .line 705
    .local v2, "targetIsManaged":Z
    :goto_3c
    if-eqz v0, :cond_4c

    if-nez v2, :cond_4c

    .line 706
    const v5, 0x104043d

    iput v5, p0, mProfileSwitchMessageId:I

    .line 711
    .end local v0    # "originIsManaged":Z
    .end local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "targetIsManaged":Z
    .end local v3    # "targetUserInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "userManager":Landroid/os/UserManager;
    :cond_45
    :goto_45
    return-void

    .restart local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "targetUserInfo":Landroid/content/pm/UserInfo;
    .restart local v4    # "userManager":Landroid/os/UserManager;
    :cond_46
    move v0, v6

    .line 700
    goto :goto_2f

    :cond_48
    move v0, v6

    goto :goto_2f

    .restart local v0    # "originIsManaged":Z
    :cond_4a
    move v2, v6

    .line 703
    goto :goto_3c

    .line 707
    .restart local v2    # "targetIsManaged":Z
    :cond_4c
    if-nez v0, :cond_45

    if-eqz v2, :cond_45

    .line 708
    const v5, 0x104043e

    iput v5, p0, mProfileSwitchMessageId:I

    goto :goto_45
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .registers 8
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x0

    .line 947
    :try_start_1
    invoke-virtual {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 949
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_16

    const/16 v4, 0x15

    if-lt v3, v4, :cond_15

    const/4 v2, 0x1

    .line 951
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_15
    :goto_15
    return v2

    .line 950
    :catch_16
    move-exception v1

    .line 951
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_15
.end method


# virtual methods
.method bindProfileView()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 675
    iget-object v3, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    .line 676
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v0, :cond_5b

    .line 677
    iget-object v3, p0, mProfileView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v3, p0, mProfileView:Landroid/view/View;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 679
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, mProfileView:Landroid/view/View;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 680
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v3

    if-nez v3, :cond_34

    .line 681
    new-instance v3, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 683
    :cond_34
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 685
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050273

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, defaultTextSize:F

    .line 686
    iget v3, p0, defaultTextSize:F

    invoke-direct {p0}, getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 687
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "text":Landroid/widget/TextView;
    :goto_5a
    return-void

    .line 689
    :cond_5b
    iget-object v3, p0, mProfileView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5a
.end method

.method buildUpPagerAdapter()V
    .registers 12

    .prologue
    .line 2714
    iget-object v7, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 2716
    .local v0, "dataCnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 2717
    iget v7, p0, mPageItemNum:I

    div-int v5, v1, v7

    .line 2718
    .local v5, "pageIndex":I
    iget v7, p0, mPageItemNum:I

    rem-int v2, v1, v7

    .line 2720
    .local v2, "itemIndex":I
    iget-object v7, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v7, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v7

    if-nez v7, :cond_1a

    .line 2742
    .end local v2    # "itemIndex":I
    .end local v5    # "pageIndex":I
    :cond_19
    return-void

    .line 2725
    .restart local v2    # "itemIndex":I
    .restart local v5    # "pageIndex":I
    :cond_1a
    if-nez v2, :cond_2a

    .line 2726
    iget-object v7, p0, mGridResolveAdapterList:Ljava/util/List;

    new-instance v8, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    invoke-virtual {p0}, getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2730
    :cond_2a
    const-string/jumbo v7, "pagerkey_%1$d_%2$d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2732
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v7, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v6

    .line 2734
    .local v6, "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    iget-object v7, p0, mGridResolveAdapterList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    .line 2735
    .local v4, "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    if-eqz v4, :cond_5c

    .line 2736
    iget-object v7, v4, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2737
    iget-object v7, v4, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mKey:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2740
    :cond_5c
    iget-object v7, p0, mResolverListMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2716
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method checkSquicleUXRequired()Z
    .registers 3

    .prologue
    .line 3157
    const-string v0, "2016A"

    const-string/jumbo v1, "ro.build.scafe.version"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)Z
    .registers 19
    .param p2, "initialIntents"    # [Landroid/content/Intent;
    .param p4, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 1306
    .local p1, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget v6, p0, mLaunchedFromUid:I

    if-eqz p4, :cond_103

    invoke-virtual {p0}, isVoiceInteraction()Z

    move-result v1

    if-nez v1, :cond_103

    const/4 v7, 0x1

    :goto_b
    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v7}, createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v1

    iput-object v1, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 1310
    new-instance v1, Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {p0}, getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iget-boolean v4, p0, mIsDeviceDefault:Z

    iget-object v5, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v6

    iget v7, p0, mLaunchedFromUid:I

    iget-object v8, p0, mExtraIntentList:Ljava/util/List;

    iget-object v5, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v9

    move/from16 v5, p4

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/share/SShareCommon;-><init>(Landroid/content/Context;Landroid/content/Intent;ZZZILjava/util/List;I)V

    iput-object v1, p0, mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    .line 1311
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mMaxColumns:I

    .line 1312
    iget v1, p0, mMaxColumns:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, mPageItemNum:I

    .line 1314
    iget-object v1, p0, mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getSupportSimpleSharing()Z

    move-result v1

    iput-boolean v1, p0, mSupportSimpleSharing:Z

    .line 1315
    iget-object v1, p0, mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v1

    iput-boolean v1, p0, mSupportLogging:Z

    .line 1316
    iget-object v1, p0, mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getSupportMoreActions()Z

    move-result v1

    iput-boolean v1, p0, mSupportMoreActions:Z

    .line 1317
    iget-object v1, p0, mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getSupportGridResolver()Z

    move-result v1

    iput-boolean v1, p0, mSupportGridResolver:Z

    .line 1318
    iget-object v1, p0, mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getSupportPageMode()Z

    move-result v1

    iput-boolean v1, p0, mSupportPageMode:Z

    .line 1319
    iget-object v1, p0, mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getSupportSetAlwaysUse()Z

    move-result v1

    iput-boolean v1, p0, mSupportSetAlwaysUse:Z

    .line 1321
    iget-boolean v1, p0, mSupportSimpleSharing:Z

    if-eqz v1, :cond_9e

    .line 1322
    new-instance v1, Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-virtual {p0}, getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    iget v6, p0, mLaunchedFromUid:I

    iget-object v7, p0, mExtraIntentList:Ljava/util/List;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/share/SShareSimpleSharing;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/content/Intent;ILjava/util/List;)V

    iput-object v1, p0, mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    .line 1324
    :cond_9e
    iget-boolean v1, p0, mSupportLogging:Z

    if-eqz v1, :cond_bf

    .line 1325
    new-instance v2, Lcom/samsung/android/share/SShareLogging;

    invoke-virtual {p0}, getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v2, p0, mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    .line 1326
    iget-object v1, p0, mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    iget-object v2, p0, mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    const-string v2, "STRT"

    iget-object v3, p0, mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    :cond_bf
    iget-boolean v1, p0, mSupportGridResolver:Z

    if-nez v1, :cond_106

    iget-object v1, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v1

    if-eqz v1, :cond_106

    .line 1331
    const v12, 0x10900e0

    .line 1332
    .local v12, "layoutId":I
    const/16 p4, 0x0

    .line 1336
    :goto_d0
    move/from16 v0, p4

    iput-boolean v0, p0, mAlwaysUseOption:Z

    .line 1338
    iget-object v1, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v10

    .line 1339
    .local v10, "count":I
    const/4 v1, 0x1

    if-ne v10, v1, :cond_10b

    iget-object v1, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v1

    if-nez v1, :cond_10b

    .line 1341
    iget-object v1, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v13

    .line 1342
    .local v13, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual {p0, v13}, shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 1343
    invoke-virtual {p0, v13}, safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1344
    iget-object v1, p0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1345
    const/4 v1, 0x0

    iput-boolean v1, p0, mRegistered:Z

    .line 1346
    invoke-virtual {p0}, finish()V

    .line 1347
    const/4 v1, 0x1

    .line 1370
    .end local v13    # "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :goto_102
    return v1

    .line 1306
    .end local v10    # "count":I
    .end local v12    # "layoutId":I
    :cond_103
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 1334
    :cond_106
    invoke-virtual {p0}, getLayoutResource()I

    move-result v12

    .restart local v12    # "layoutId":I
    goto :goto_d0

    .line 1350
    .restart local v10    # "count":I
    :cond_10b
    if-gtz v10, :cond_117

    invoke-virtual {p0}, shouldShowSimpleSharing()Z

    move-result v1

    if-nez v1, :cond_117

    iget-boolean v1, p0, mSupportMoreActions:Z

    if-eqz v1, :cond_130

    .line 1353
    :cond_117
    invoke-virtual {p0, v12}, setContentView(I)V

    .line 1355
    const v1, 0x1020387

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    iput-object v1, p0, mAdapterView:Landroid/widget/AbsListView;

    .line 1356
    iget-object v1, p0, mAdapterView:Landroid/widget/AbsListView;

    iget-object v2, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move/from16 v0, p4

    invoke-virtual {p0, v1, v2, v0}, onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V

    .line 1370
    :goto_12e
    const/4 v1, 0x0

    goto :goto_102

    .line 1358
    :cond_130
    iget-boolean v1, p0, mIsDeviceDefault:Z

    if-eqz v1, :cond_15a

    .line 1359
    const v1, 0x1090146

    invoke-virtual {p0, v1}, setContentView(I)V

    .line 1364
    :goto_13a
    const v1, 0x1020004

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1365
    .local v11, "empty":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1367
    const v1, 0x1020387

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    iput-object v1, p0, mAdapterView:Landroid/widget/AbsListView;

    .line 1368
    iget-object v1, p0, mAdapterView:Landroid/widget/AbsListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setVisibility(I)V

    goto :goto_12e

    .line 1361
    .end local v11    # "empty":Landroid/widget/TextView;
    :cond_15a
    const v1, 0x10900df

    invoke-virtual {p0, v1}, setContentView(I)V

    goto :goto_13a
.end method

.method createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .param p6, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    .prologue
    .line 1292
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v7, p0, mLaunchedFromPackage:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ILjava/lang/String;Z)V

    return-object v0
.end method

.method dismiss()V
    .registers 2

    .prologue
    .line 743
    invoke-virtual {p0}, isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 744
    invoke-virtual {p0}, finish()V

    .line 746
    :cond_9
    return-void
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 883
    iget-object v0, p0, mExitAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    .line 889
    :goto_4
    return-void

    .line 887
    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 888
    const v0, 0x10a005c

    const v1, 0x10a005d

    invoke-virtual {p0, v0, v1}, overridePendingTransition(II)V

    goto :goto_4
.end method

.method protected getGuideActivity()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 3076
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "com.android.internal.app.ResolverGuideActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 751
    :try_start_0
    iget v2, p0, mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 756
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_6
    return-object v1

    .line 752
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_7
    move-exception v0

    .line 753
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_6
.end method

.method getLayoutResource()I
    .registers 2

    .prologue
    .line 663
    iget-boolean v0, p0, mIsDeviceDefault:Z

    if-eqz v0, :cond_10

    .line 664
    iget-boolean v0, p0, mSupportPageMode:Z

    if-eqz v0, :cond_c

    .line 665
    const v0, 0x1090147

    .line 670
    :goto_b
    return v0

    .line 667
    :cond_c
    const v0, 0x1090146

    goto :goto_b

    .line 670
    :cond_10
    const v0, 0x10900df

    goto :goto_b
.end method

.method getPageItemNum()I
    .registers 2

    .prologue
    .line 2669
    iget v0, p0, mPageItemNum:I

    return v0
.end method

.method getPageResolverList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2661
    iget-object v0, p0, mGridResolveAdapterList:Ljava/util/List;

    return-object v0
.end method

.method public getPagerAdapter()Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;
    .registers 2

    .prologue
    .line 2632
    iget-object v0, p0, mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    return-object v0
.end method

.method getPagerKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2665
    const-string/jumbo v0, "pagerkey_%1$d_%2$d"

    return-object v0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 1049
    return-object p2
.end method

.method getResolverListMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2657
    iget-object v0, p0, mResolverListMap:Ljava/util/Map;

    return-object v0
.end method

.method public getSShareCommon()Lcom/samsung/android/share/SShareCommon;
    .registers 2

    .prologue
    .line 2573
    iget-object v0, p0, mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    return-object v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 651
    iget-object v0, p0, mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_9
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 730
    iget-boolean v3, p0, mResolvingHome:Z

    if-eqz v3, :cond_18

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 731
    .local v1, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :goto_8
    iget-boolean v3, p0, mSupportGridResolver:Z

    if-ne v3, v4, :cond_1d

    move v0, v2

    .line 733
    .local v0, "named":Z
    :goto_d
    sget-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v1, v3, :cond_24

    if-eqz p2, :cond_24

    .line 734
    invoke-virtual {p0, p2}, getString(I)Ljava/lang/String;

    move-result-object v2

    .line 736
    :goto_17
    return-object v2

    .line 730
    .end local v0    # "named":Z
    .end local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_18
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v1

    goto :goto_8

    .line 731
    .restart local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_1d
    iget-object v3, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    goto :goto_d

    .line 736
    .restart local v0    # "named":Z
    :cond_24
    if-eqz v0, :cond_3b

    iget v3, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_3b
    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_17
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 762
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 763
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    iget-object v6, p0, mPm:Landroid/content/pm/PackageManager;

    iget v5, v0, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v5, :cond_11

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_a
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 764
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_14

    .line 809
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_10
    :goto_10
    return-object v1

    .line 763
    .restart local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_11
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_a

    .line 768
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_14
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v5, :cond_3c

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v5, :cond_3c

    .line 770
    invoke-direct {p0}, isForKnoxNFC()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 771
    iget-object v5, p0, mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v5, v6}, getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 776
    :goto_3a
    if-nez v1, :cond_10

    .line 780
    :cond_3c
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v3

    .line 781
    .local v3, "iconRes":I
    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "current_sec_active_themepackage"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 782
    .local v4, "themePackageName":Ljava/lang/String;
    if-eqz v3, :cond_6c

    .line 784
    invoke-direct {p0}, isForKnoxNFC()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 785
    iget-object v5, p0, mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_69} :catch_c1

    move-result-object v1

    .line 802
    :cond_6a
    :goto_6a
    if-nez v1, :cond_10

    .line 809
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconRes":I
    .end local v4    # "themePackageName":Ljava/lang/String;
    :cond_6c
    :goto_6c
    iget-object v5, p0, mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_10

    .line 774
    .restart local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_73
    :try_start_73
    iget-object v5, p0, mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v5, v6}, getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3a

    .line 787
    .restart local v3    # "iconRes":I
    .restart local v4    # "themePackageName":Ljava/lang/String;
    :cond_82
    if-eqz v4, :cond_8d

    .line 788
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_6a

    .line 790
    :cond_8d
    iget-object v5, p0, mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 793
    iget-boolean v5, p0, mSquicleUX:Z

    if-eqz v5, :cond_6a

    iget-object v5, p0, mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->shouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 794
    iget-boolean v5, p0, mIsManagedProfile:Z

    if-eqz v5, :cond_b7

    iget v5, p1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-static {v5}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 797
    :cond_b7
    iget-object v5, p0, mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    :try_end_bf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_73 .. :try_end_bf} :catch_c1

    move-result-object v1

    goto :goto_6a

    .line 806
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconRes":I
    .end local v4    # "themePackageName":Ljava/lang/String;
    :catch_c1
    move-exception v2

    .line 807
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ResolverActivity"

    const-string v6, "Couldn\'t find resources for package"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6c
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 893
    const-string v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResult: requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3a

    .line 895
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3a

    .line 896
    iget-object v1, p0, mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    if-eqz v1, :cond_3a

    .line 898
    :try_start_2d
    iget-object v1, p0, mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentHistoryIntent(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, startActivity(Landroid/content/Intent;)V
    :try_end_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2d .. :try_end_37} :catch_3e

    .line 903
    :goto_37
    invoke-virtual {p0}, finish()V

    .line 907
    :cond_3a
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 908
    return-void

    .line 899
    :catch_3e
    move-exception v0

    .line 900
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v1, "ResolverActivity"

    const-string/jumbo v2, "onActivityResult : startActivity failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .registers 2
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 1272
    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 968
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 969
    .local v0, "id":I
    iget-boolean v1, p0, mAlwaysUseOption:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v1

    move v2, v1

    :goto_f
    const v1, 0x1020461

    if-ne v0, v1, :cond_23

    const/4 v1, 0x1

    :goto_15
    iget-boolean v3, p0, mAlwaysUseOption:Z

    invoke-virtual {p0, v2, v1, v3}, startSelected(IZZ)V

    .line 973
    return-void

    .line 969
    :cond_1b
    iget-object v1, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v1

    move v2, v1

    goto :goto_f

    :cond_23
    const/4 v1, 0x0

    goto :goto_15
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 308
    invoke-direct {p0}, makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 309
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 310
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz v8, :cond_28

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_28

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 315
    iput-boolean v7, p0, mResolvingHome:Z

    .line 318
    :cond_28
    invoke-virtual {p0, v7}, setSafeForwardingMode(Z)V

    .line 320
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 321
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .registers 34
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v23, 0x1030489

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, setTheme(I)V

    .line 337
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, setProfileSwitchMessageId(I)V

    .line 343
    const-string/jumbo v23, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    .line 344
    .local v22, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v22 .. v22}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsManagedProfile:Z

    .line 348
    invoke-virtual/range {p0 .. p0}, getWindow()Landroid/view/Window;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 349
    .local v15, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v23, v0

    move/from16 v0, v23

    or-int/lit16 v0, v0, 0x100

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 350
    invoke-virtual/range {p0 .. p0}, getWindow()Landroid/view/Window;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 355
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "true"

    aput-object v24, v18, v23

    .line 356
    .local v18, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, getBaseContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v25, "isShareListAllowed"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    .line 357
    .local v13, "isShareListAllowed":Z
    const-string v23, "ResolverActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onCreate(): isShareListAllowed("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    if-nez v13, :cond_a2

    .line 359
    const-string v23, "ResolverActivity"

    const-string/jumbo v24, "onCreate(): ShareList is not allowed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual/range {p0 .. p0}, finish()V

    .line 611
    :cond_a1
    :goto_a1
    return-void

    .line 366
    :cond_a2
    :try_start_a2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, getActivityToken()Landroid/os/IBinder;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mLaunchedFromUid:I
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_b4} :catch_cc

    .line 372
    :goto_b4
    move-object/from16 v0, p0

    iget v0, v0, mLaunchedFromUid:I

    move/from16 v23, v0

    if-ltz v23, :cond_c8

    move-object/from16 v0, p0

    iget v0, v0, mLaunchedFromUid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v23

    if-eqz v23, :cond_d6

    .line 374
    :cond_c8
    invoke-virtual/range {p0 .. p0}, finish()V

    goto :goto_a1

    .line 368
    :catch_cc
    move-exception v9

    .line 369
    .local v9, "e":Landroid/os/RemoteException;
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mLaunchedFromUid:I

    goto :goto_b4

    .line 379
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_d6
    invoke-virtual/range {p0 .. p0}, checkSquicleUXRequired()Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSquicleUX:Z

    .line 385
    :try_start_e0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, getActivityToken()Landroid/os/IBinder;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mLaunchedFromPackage:Ljava/lang/String;

    .line 387
    const-string v23, "ResolverActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "mLaunchedFromPackage="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, mLaunchedFromPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_e0 .. :try_end_111} :catch_34a

    .line 395
    :goto_111
    invoke-virtual/range {p0 .. p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mPm:Landroid/content/pm/PackageManager;

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, getMainLooper()Landroid/os/Looper;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 398
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mRegistered:Z

    .line 400
    const-string v23, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 401
    .local v6, "am":Landroid/app/ActivityManager;
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mIconDpi:I

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, mIntents:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Landroid/content/Intent;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual/range {v23 .. v25}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 408
    const/16 v17, 0x0

    .line 410
    .local v17, "referrerPackage":Ljava/lang/String;
    :try_start_166
    invoke-direct/range {p0 .. p0}, getReferrerPackageName()Ljava/lang/String;
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_169} :catch_35d

    move-result-object v17

    .line 415
    :goto_16a
    new-instance v23, Lcom/android/internal/app/ResolverComparator;

    invoke-virtual/range {p0 .. p0}, getTargetIntent()Landroid/content/Intent;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, mIntents:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)Z

    move-result v23

    if-nez v23, :cond_a1

    .line 425
    const v23, 0x1020364

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 426
    .local v16, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v16, :cond_1cb

    .line 427
    new-instance v23, Lcom/android/internal/app/ResolverActivity$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, isVoiceInteraction()Z

    move-result v23

    if-eqz v23, :cond_1c5

    .line 434
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    .line 436
    :cond_1c5
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 440
    :cond_1cb
    const v23, 0x10a005c

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, overridePendingTransition(II)V

    .line 442
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSupportMoreActions:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1e4

    .line 443
    invoke-direct/range {p0 .. p0}, addMoreActionsView()V

    .line 446
    :cond_1e4
    const v23, 0x10204c0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mVisibleArea:Landroid/view/View;

    .line 447
    const v23, 0x10204c3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mTitlePanelAFW:Landroid/view/View;

    .line 448
    const v23, 0x10204c1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mTitlePanelDefault:Landroid/view/View;

    .line 450
    if-nez p3, :cond_227

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 453
    :cond_227
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_2d5

    .line 454
    const v23, 0x10204c2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 455
    .local v21, "titleTextDefault":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050218

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, defaultTextSize:F

    .line 456
    if-eqz v21, :cond_270

    .line 457
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, defaultTextSize:F

    move/from16 v24, v0

    invoke-direct/range {p0 .. p0}, getFontScale()F

    move-result v25

    mul-float v24, v24, v25

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 458
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :cond_270
    const v23, 0x10204c4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 461
    .local v20, "titleTextAFW":Landroid/widget/TextView;
    if-eqz v20, :cond_289

    .line 462
    const v23, 0x10408cf

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 464
    :cond_289
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, setTitle(Ljava/lang/CharSequence;)V

    .line 467
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDeviceDefault:Z

    move/from16 v23, v0

    if-nez v23, :cond_2d5

    .line 469
    const v23, 0x1020385

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 470
    .local v19, "titleIcon":Landroid/widget/ImageView;
    if-eqz v19, :cond_2d5

    .line 471
    const/4 v5, 0x0

    .line 473
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_2a8
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_2c0

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2bf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a8 .. :try_end_2bf} :catch_37a

    move-result-object v5

    .line 480
    :cond_2c0
    :goto_2c0
    if-eqz v5, :cond_2d5

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "titleIcon":Landroid/widget/ImageView;
    .end local v20    # "titleTextAFW":Landroid/widget/TextView;
    .end local v21    # "titleTextDefault":Landroid/widget/TextView;
    :cond_2d5
    invoke-virtual/range {p0 .. p0}, shouldShowSimpleSharing()Z

    move-result v23

    if-eqz v23, :cond_399

    .line 488
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, applyRemoteShareResolver(Landroid/content/Intent;)V

    .line 489
    const v23, 0x1020386

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mProfileView:Landroid/view/View;

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, mProfileView:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a1

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, mProfileView:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/internal/app/ResolverActivity$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    invoke-virtual/range {p0 .. p0}, bindProfileView()V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, mTitlePanelDefault:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_323

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, mTitlePanelDefault:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 511
    :cond_323
    move-object/from16 v0, p0

    iget-object v0, v0, mTitlePanelAFW:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a1

    move-object/from16 v0, p0

    iget-object v0, v0, mProfileView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a1

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, mTitlePanelAFW:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a1

    .line 388
    .end local v6    # "am":Landroid/app/ActivityManager;
    .end local v16    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    .end local v17    # "referrerPackage":Ljava/lang/String;
    :catch_34a
    move-exception v9

    .line 389
    .restart local v9    # "e":Landroid/os/RemoteException;
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mLaunchedFromPackage:Ljava/lang/String;

    .line 390
    const-string v23, "ResolverActivity"

    const-string/jumbo v24, "mLaunchedFromPackage=null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_111

    .line 411
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v6    # "am":Landroid/app/ActivityManager;
    .restart local v17    # "referrerPackage":Ljava/lang/String;
    :catch_35d
    move-exception v9

    .line 412
    .local v9, "e":Ljava/lang/Exception;
    const-string v23, "ResolverActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getReferrerPackageName error!!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16a

    .line 476
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    .restart local v19    # "titleIcon":Landroid/widget/ImageView;
    .restart local v20    # "titleTextAFW":Landroid/widget/TextView;
    .restart local v21    # "titleTextDefault":Landroid/widget/TextView;
    :catch_37a
    move-exception v9

    .line 477
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v23, "ResolverActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Could not find referrer package "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c0

    .line 517
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19    # "titleIcon":Landroid/widget/ImageView;
    .end local v20    # "titleTextAFW":Landroid/widget/TextView;
    .end local v21    # "titleTextDefault":Landroid/widget/TextView;
    :cond_399
    const v23, 0x102035d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mTopPanel:Landroid/view/View;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, mTopPanel:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3bd

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, mTopPanel:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 522
    :cond_3bd
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSupportPageMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3e4

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, mTitlePanelAFW:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_590

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v23

    if-nez v23, :cond_590

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, mTitlePanelAFW:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 532
    :cond_3e4
    :goto_3e4
    const v23, 0x1020006

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 533
    .local v12, "iconView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v11

    .line 534
    .local v11, "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v12, :cond_413

    if-eqz v11, :cond_413

    .line 535
    new-instance v23, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v12}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 538
    :cond_413
    if-nez p7, :cond_421

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v23

    if-eqz v23, :cond_461

    :cond_421
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSupportSetAlwaysUse:Z

    move/from16 v23, v0

    if-nez v23, :cond_461

    .line 539
    const v23, 0x1020452

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 540
    .local v7, "buttonLayout":Landroid/view/ViewGroup;
    if-eqz v7, :cond_5b1

    .line 541
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 542
    const v23, 0x1020461

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mAlwaysButton:Landroid/widget/Button;

    .line 543
    const v23, 0x1020460

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mOnceButton:Landroid/widget/Button;

    .line 549
    .end local v7    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_461
    :goto_461
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v23

    if-eqz v23, :cond_499

    move-object/from16 v0, p0

    iget-boolean v0, v0, mSupportSetAlwaysUse:Z

    move/from16 v23, v0

    if-nez v23, :cond_499

    .line 550
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, setAlwaysButtonEnabled(ZIZ)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, mOnceButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setEnabled(Z)V

    .line 554
    :cond_499
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSupportGridResolver:Z

    move/from16 v23, v0

    if-eqz v23, :cond_543

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapterView:Landroid/widget/AbsListView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/GridView;

    move/from16 v23, v0

    if-eqz v23, :cond_4d0

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v14

    .line 557
    .local v14, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapterView:Landroid/widget/AbsListView;

    move-object/from16 v23, v0

    check-cast v23, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget v0, v0, mMaxColumns:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 560
    .end local v14    # "itemCount":I
    :cond_4d0
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v23

    if-eqz v23, :cond_543

    move-object/from16 v0, p0

    iget-boolean v0, v0, mSupportSetAlwaysUse:Z

    move/from16 v23, v0

    if-nez v23, :cond_543

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapterView:Landroid/widget/AbsListView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v24

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapterView:Landroid/widget/AbsListView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v8

    .line 564
    .local v8, "checkedPos":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v8, v0, :cond_5bb

    const/4 v10, 0x1

    .line 565
    .local v10, "hasValidSelection":Z
    :goto_50a
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAlwaysUseOption:Z

    move/from16 v23, v0

    if-eqz v23, :cond_543

    if-eqz v10, :cond_51e

    move-object/from16 v0, p0

    iget v0, v0, mLastSelected:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v0, v8, :cond_543

    .line 566
    :cond_51e
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v10, v8, v1}, setAlwaysButtonEnabled(ZIZ)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, mOnceButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 568
    if-eqz v10, :cond_53f

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapterView:Landroid/widget/AbsListView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 571
    :cond_53f
    move-object/from16 v0, p0

    iput v8, v0, mLastSelected:I

    .line 576
    .end local v8    # "checkedPos":I
    .end local v10    # "hasValidSelection":Z
    :cond_543
    const v23, 0x1020386

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mProfileView:Landroid/view/View;

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, mProfileView:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_571

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, mProfileView:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/internal/app/ResolverActivity$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    invoke-virtual/range {p0 .. p0}, bindProfileView()V

    .line 596
    :cond_571
    invoke-virtual/range {p0 .. p0}, isVoiceInteraction()Z

    move-result v23

    if-eqz v23, :cond_57a

    .line 597
    invoke-virtual/range {p0 .. p0}, onSetupVoiceInteraction()V

    .line 600
    :cond_57a
    invoke-virtual/range {p0 .. p0}, getWindow()Landroid/view/Window;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v23

    new-instance v24, Lcom/android/internal/app/ResolverActivity$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$5;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/16 :goto_a1

    .line 525
    .end local v11    # "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v12    # "iconView":Landroid/widget/ImageView;
    :cond_590
    move-object/from16 v0, p0

    iget-object v0, v0, mTitlePanelDefault:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3e4

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v23

    if-eqz v23, :cond_3e4

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, mTitlePanelDefault:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3e4

    .line 545
    .restart local v7    # "buttonLayout":Landroid/view/ViewGroup;
    .restart local v11    # "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .restart local v12    # "iconView":Landroid/widget/ImageView;
    :cond_5b1
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAlwaysUseOption:Z

    goto/16 :goto_461

    .line 564
    .end local v7    # "buttonLayout":Landroid/view/ViewGroup;
    .restart local v8    # "checkedPos":I
    :cond_5bb
    const/4 v10, 0x0

    goto/16 :goto_50a
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 331
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 858
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 859
    invoke-virtual {p0}, isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_12

    .line 860
    iget-object v0, p0, mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    .line 862
    :cond_12
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 875
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 876
    iget-object v0, p0, mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    if-eqz v0, :cond_c

    .line 877
    iget-object v0, p0, mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareSimpleSharing;->unregisterRecentContactsReceiver()V

    .line 879
    :cond_c
    return-void
.end method

.method onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V
    .registers 10
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .param p3, "alwaysUseOption"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1377
    iget-boolean v3, p0, mSupportPageMode:Z

    if-eqz v3, :cond_10

    .line 1378
    invoke-virtual {p0}, buildUpPagerAdapter()V

    .line 1379
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0, v3}, preparePageView(I)V

    .line 1407
    :cond_f
    :goto_f
    return-void

    .line 1383
    :cond_10
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    .line 1384
    .local v2, "useHeader":Z
    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_3a

    move-object v3, p1

    check-cast v3, Landroid/widget/ListView;

    move-object v0, v3

    .line 1386
    .local v0, "listView":Landroid/widget/ListView;
    :goto_1c
    iget-object v3, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1388
    new-instance v1, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .line 1389
    .local v1, "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1390
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1392
    iget-boolean v3, p0, mSupportGridResolver:Z

    if-eqz v3, :cond_3c

    .line 1393
    if-eqz p3, :cond_f

    iget-boolean v3, p0, mSupportSetAlwaysUse:Z

    if-nez v3, :cond_f

    .line 1394
    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_f

    .line 1384
    .end local v0    # "listView":Landroid/widget/ListView;
    .end local v1    # "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    :cond_3a
    const/4 v0, 0x0

    goto :goto_1c

    .line 1397
    .restart local v0    # "listView":Landroid/widget/ListView;
    .restart local v1    # "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    :cond_3c
    if-eqz p3, :cond_41

    .line 1398
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1401
    :cond_41
    if-eqz v2, :cond_f

    if-eqz v0, :cond_f

    .line 1402
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900de

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_f
.end method

.method protected onRestart()V
    .registers 4

    .prologue
    .line 814
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 815
    iget-boolean v0, p0, mRegistered:Z

    if-nez v0, :cond_14

    .line 816
    iget-object v0, p0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 817
    const/4 v0, 0x1

    iput-boolean v0, p0, mRegistered:Z

    .line 819
    :cond_14
    iget-object v0, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 820
    iget-object v0, p0, mProfileView:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 821
    invoke-virtual {p0}, bindProfileView()V

    .line 823
    :cond_20
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 913
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 914
    iget-boolean v3, p0, mAlwaysUseOption:Z

    if-eqz v3, :cond_27

    iget-boolean v3, p0, mSupportSetAlwaysUse:Z

    if-nez v3, :cond_27

    .line 915
    iget-object v3, p0, mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    .line 916
    .local v0, "checkedPos":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_28

    move v1, v2

    .line 917
    .local v1, "hasValidSelection":Z
    :goto_16
    iput v0, p0, mLastSelected:I

    .line 918
    invoke-direct {p0, v1, v0, v2}, setAlwaysButtonEnabled(ZIZ)V

    .line 919
    iget-object v2, p0, mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 920
    if-eqz v1, :cond_27

    .line 921
    iget-object v2, p0, mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 924
    .end local v0    # "checkedPos":I
    .end local v1    # "hasValidSelection":Z
    :cond_27
    return-void

    .line 916
    .restart local v0    # "checkedPos":I
    :cond_28
    const/4 v1, 0x0

    goto :goto_16
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 867
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 868
    iget-object v0, p0, mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    if-eqz v0, :cond_c

    .line 869
    iget-object v0, p0, mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareSimpleSharing;->registerRecentContactsReceiver()V

    .line 871
    :cond_c
    return-void
.end method

.method onSetupVoiceInteraction()V
    .registers 1

    .prologue
    .line 618
    invoke-virtual {p0}, sendVoiceChoicesIfNeeded()V

    .line 619
    return-void
.end method

.method protected onStop()V
    .registers 5

    .prologue
    .line 827
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 828
    iget-boolean v2, p0, mRegistered:Z

    if-eqz v2, :cond_f

    .line 829
    iget-object v2, p0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 830
    const/4 v2, 0x0

    iput-boolean v2, p0, mRegistered:Z

    .line 832
    :cond_f
    invoke-virtual {p0}, getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_4a

    invoke-virtual {p0}, isVoiceInteraction()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 840
    invoke-virtual {p0}, isChangingConfigurations()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 842
    invoke-virtual {p0}, getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 843
    .local v0, "context":Landroid/content/Context;
    iget v2, p0, mLaunchedFromUid:I

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_4b

    .line 844
    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 845
    .local v1, "km":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 846
    const-string v2, "ResolverActivity"

    const-string/jumbo v3, "we don\'t finish resolver for this exceptional case"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "km":Landroid/app/KeyguardManager;
    :cond_4a
    :goto_4a
    return-void

    .line 851
    .restart local v0    # "context":Landroid/content/Context;
    :cond_4b
    invoke-virtual {p0}, finish()V

    goto :goto_4a
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .registers 47
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .prologue
    .line 1053
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v40

    .line 1054
    .local v40, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_50

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v10

    .line 1056
    .local v10, "intent":Landroid/content/Intent;
    :goto_a
    if-eqz v10, :cond_1ed

    move-object/from16 v0, p0

    iget-boolean v3, v0, mAlwaysUseOption:Z

    if-nez v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_1ed

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v3, :cond_1ed

    .line 1059
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1060
    .local v4, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    .line 1062
    .local v19, "action":Ljava/lang/String;
    if-eqz v19, :cond_34

    .line 1063
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1065
    :cond_34
    invoke-virtual {v10}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v21

    .line 1066
    .local v21, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v21, :cond_52

    .line 1067
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :goto_3e
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1068
    .local v20, "cat":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_3e

    .line 1054
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v19    # "action":Ljava/lang/String;
    .end local v20    # "cat":Ljava/lang/String;
    .end local v21    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v28    # "i$":Ljava/util/Iterator;
    :cond_50
    const/4 v10, 0x0

    goto :goto_a

    .line 1071
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v19    # "action":Ljava/lang/String;
    .restart local v21    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_52
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1073
    move-object/from16 v0, v40

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v7, 0xfff0000

    and-int v20, v3, v7

    .line 1074
    .local v20, "cat":I
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    .line 1075
    .local v23, "data":Landroid/net/Uri;
    const/high16 v3, 0x600000

    move/from16 v0, v20

    if-ne v0, v3, :cond_76

    .line 1076
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v31

    .line 1077
    .local v31, "mimeType":Ljava/lang/String;
    if-eqz v31, :cond_76

    .line 1079
    :try_start_71
    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_76
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_71 .. :try_end_76} :catch_182

    .line 1086
    .end local v31    # "mimeType":Ljava/lang/String;
    :cond_76
    :goto_76
    if-eqz v23, :cond_136

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_136

    .line 1090
    const/high16 v3, 0x600000

    move/from16 v0, v20

    if-ne v0, v3, :cond_9c

    const-string v3, "file"

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_136

    const-string v3, "content"

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_136

    .line 1093
    :cond_9c
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1097
    move-object/from16 v0, v40

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v33

    .line 1098
    .local v33, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v33, :cond_d4

    .line 1099
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v41

    .line 1100
    .local v41, "ssp":Ljava/lang/String;
    :cond_b1
    if-eqz v41, :cond_d4

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 1101
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/PatternMatcher;

    .line 1102
    .local v32, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 1103
    invoke-virtual/range {v32 .. v32}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v32 .. v32}, Landroid/os/PatternMatcher;->getType()I

    move-result v7

    invoke-virtual {v4, v3, v7}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 1108
    .end local v32    # "p":Landroid/os/PatternMatcher;
    .end local v41    # "ssp":Ljava/lang/String;
    :cond_d4
    move-object/from16 v0, v40

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v18

    .line 1109
    .local v18, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v18, :cond_105

    .line 1110
    :cond_de
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_105

    .line 1111
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1112
    .local v17, "a":Landroid/content/IntentFilter$AuthorityEntry;
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v3

    if-ltz v3, :cond_de

    .line 1113
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v37

    .line 1114
    .local v37, "port":I
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v7

    if-ltz v37, :cond_18d

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_102
    invoke-virtual {v4, v7, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    .end local v17    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v37    # "port":I
    :cond_105
    move-object/from16 v0, v40

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v33

    .line 1121
    if-eqz v33, :cond_136

    .line 1122
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v35

    .line 1123
    .local v35, "path":Ljava/lang/String;
    :cond_113
    if-eqz v35, :cond_136

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_136

    .line 1124
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/PatternMatcher;

    .line 1125
    .restart local v32    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 1126
    invoke-virtual/range {v32 .. v32}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v32 .. v32}, Landroid/os/PatternMatcher;->getType()I

    move-result v7

    invoke-virtual {v4, v3, v7}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 1134
    .end local v18    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v32    # "p":Landroid/os/PatternMatcher;
    .end local v33    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v35    # "path":Ljava/lang/String;
    :cond_136
    if-eqz v4, :cond_1ed

    .line 1135
    move-object/from16 v0, p0

    iget-object v3, v0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v16

    .line 1136
    .local v16, "N":I
    move/from16 v0, v16

    new-array v6, v0, [Landroid/content/ComponentName;

    .line 1137
    .local v6, "set":[Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 1138
    .local v5, "bestMatch":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_149
    move/from16 v0, v27

    move/from16 v1, v16

    if-ge v0, v1, :cond_190

    .line 1139
    move-object/from16 v0, p0

    iget-object v3, v0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move/from16 v0, v27

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v38

    .line 1140
    .local v38, "r":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, v38

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v6, v27

    .line 1142
    move-object/from16 v0, v38

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v3, v5, :cond_17f

    move-object/from16 v0, v38

    iget v5, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 1138
    :cond_17f
    add-int/lit8 v27, v27, 0x1

    goto :goto_149

    .line 1080
    .end local v5    # "bestMatch":I
    .end local v6    # "set":[Landroid/content/ComponentName;
    .end local v16    # "N":I
    .end local v27    # "i":I
    .end local v38    # "r":Landroid/content/pm/ResolveInfo;
    .restart local v31    # "mimeType":Ljava/lang/String;
    :catch_182
    move-exception v25

    .line 1081
    .local v25, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v3, "ResolverActivity"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1082
    const/4 v4, 0x0

    goto/16 :goto_76

    .line 1114
    .end local v25    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v31    # "mimeType":Ljava/lang/String;
    .restart local v17    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v18    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v33    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v37    # "port":I
    :cond_18d
    const/4 v3, 0x0

    goto/16 :goto_102

    .line 1145
    .end local v17    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v18    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v33    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v37    # "port":I
    .restart local v5    # "bestMatch":I
    .restart local v6    # "set":[Landroid/content/ComponentName;
    .restart local v16    # "N":I
    .restart local v27    # "i":I
    :cond_190
    move-object/from16 v0, v40

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1148
    .local v8, "riuserId":I
    if-eqz p2, :cond_30a

    .line 1149
    invoke-virtual/range {p0 .. p0}, getUserId()I

    move-result v42

    .line 1150
    .local v42, "userId":I
    invoke-virtual/range {p0 .. p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    .line 1153
    .local v36, "pm":Landroid/content/pm/PackageManager;
    invoke-static/range {v42 .. v42}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-eqz v3, :cond_266

    .line 1154
    const-string v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KEA App is selected for user : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " Doesn\'t add as a preferredActivity"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :goto_1cc
    move-object/from16 v0, v40

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v3, :cond_2aa

    .line 1171
    move-object/from16 v0, v36

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v34

    .line 1172
    .local v34, "packageName":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ed

    .line 1173
    move-object/from16 v0, v40

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v36

    move/from16 v1, v42

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    .line 1216
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "bestMatch":I
    .end local v6    # "set":[Landroid/content/ComponentName;
    .end local v8    # "riuserId":I
    .end local v16    # "N":I
    .end local v19    # "action":Ljava/lang/String;
    .end local v20    # "cat":I
    .end local v21    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "data":Landroid/net/Uri;
    .end local v27    # "i":I
    .end local v34    # "packageName":Ljava/lang/String;
    .end local v36    # "pm":Landroid/content/pm/PackageManager;
    .end local v42    # "userId":I
    :cond_1ed
    :goto_1ed
    if-eqz p1, :cond_395

    .line 1218
    if-eqz p2, :cond_200

    if-eqz v10, :cond_200

    .line 1219
    move-object/from16 v0, p0

    iget-object v3, v0, mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    move-object/from16 v0, p0

    iget-boolean v7, v0, mSafeForwardingMode:Z

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v10, v7}, Lcom/samsung/android/share/SShareCommon;->setResolverGuideIntent(Landroid/app/Activity;Landroid/content/Intent;Z)V

    .line 1222
    :cond_200
    move-object/from16 v0, p0

    iget-boolean v3, v0, mSupportLogging:Z

    if-eqz v3, :cond_21f

    move-object/from16 v0, p0

    iget-object v3, v0, mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    if-eqz v3, :cond_21f

    .line 1223
    move-object/from16 v0, p0

    iget-object v3, v0, mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    move-object/from16 v0, p0

    iget-object v7, v0, mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    const-string v7, "APPP"

    move-object/from16 v0, v40

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v9}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    :cond_21f
    invoke-direct/range {p0 .. p0}, isForKnoxNFC()Z

    move-result v3

    if-eqz v3, :cond_392

    .line 1228
    move-object/from16 v0, v40

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v42

    .line 1229
    .restart local v42    # "userId":I
    const-string v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Launch NFC app "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " for container "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const/4 v3, 0x0

    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, v42

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v3, v7}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z

    .line 1231
    const/4 v3, 0x1

    .line 1236
    .end local v42    # "userId":I
    :goto_265
    return v3

    .line 1156
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v5    # "bestMatch":I
    .restart local v6    # "set":[Landroid/content/ComponentName;
    .restart local v8    # "riuserId":I
    .restart local v16    # "N":I
    .restart local v19    # "action":Ljava/lang/String;
    .restart local v20    # "cat":I
    .restart local v21    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v23    # "data":Landroid/net/Uri;
    .restart local v27    # "i":I
    .restart local v36    # "pm":Landroid/content/pm/PackageManager;
    .restart local v42    # "userId":I
    :cond_266
    invoke-direct/range {p0 .. p0}, isForKnoxNFC()Z

    move-result v3

    if-eqz v3, :cond_29f

    .line 1158
    const-string v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add NFC default pref "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "for user "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual/range {p0 .. p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    goto/16 :goto_1cc

    .line 1165
    :cond_29f
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto/16 :goto_1cc

    .line 1177
    :cond_2aa
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    .line 1178
    .local v22, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v34

    .line 1179
    .restart local v34    # "packageName":Ljava/lang/String;
    if-eqz v23, :cond_2fe

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    .line 1181
    .local v24, "dataScheme":Ljava/lang/String;
    :goto_2b8
    if-eqz v24, :cond_301

    const-string v3, "http"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2ce

    const-string v3, "https"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_301

    :cond_2ce
    const/16 v29, 0x1

    .line 1185
    .local v29, "isHttpOrHttps":Z
    :goto_2d0
    if-eqz v19, :cond_304

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_304

    const/16 v30, 0x1

    .line 1186
    .local v30, "isViewAction":Z
    :goto_2de
    if-eqz v21, :cond_307

    const-string v3, "android.intent.category.BROWSABLE"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_307

    const/16 v26, 0x1

    .line 1189
    .local v26, "hasCategoryBrowsable":Z
    :goto_2ec
    if-eqz v29, :cond_1ed

    if-eqz v30, :cond_1ed

    if-eqz v26, :cond_1ed

    .line 1190
    const/4 v3, 0x2

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    move/from16 v2, v42

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    goto/16 :goto_1ed

    .line 1179
    .end local v24    # "dataScheme":Ljava/lang/String;
    .end local v26    # "hasCategoryBrowsable":Z
    .end local v29    # "isHttpOrHttps":Z
    .end local v30    # "isViewAction":Z
    :cond_2fe
    const/16 v24, 0x0

    goto :goto_2b8

    .line 1181
    .restart local v24    # "dataScheme":Ljava/lang/String;
    :cond_301
    const/16 v29, 0x0

    goto :goto_2d0

    .line 1185
    .restart local v29    # "isHttpOrHttps":Z
    :cond_304
    const/16 v30, 0x0

    goto :goto_2de

    .line 1186
    .restart local v30    # "isViewAction":Z
    :cond_307
    const/16 v26, 0x0

    goto :goto_2ec

    .line 1198
    .end local v22    # "cn":Landroid/content/ComponentName;
    .end local v24    # "dataScheme":Ljava/lang/String;
    .end local v29    # "isHttpOrHttps":Z
    .end local v30    # "isViewAction":Z
    .end local v34    # "packageName":Ljava/lang/String;
    .end local v36    # "pm":Landroid/content/pm/PackageManager;
    .end local v42    # "userId":I
    :cond_30a
    :try_start_30a
    const-string v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set last activity pref for user "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-direct/range {p0 .. p0}, isForKnoxNFC()Z

    move-result v3

    if-eqz v3, :cond_35c

    .line 1200
    const-string v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attach user list with only one element "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    new-instance v43, Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1202
    .local v43, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "com.samsung.sec.knox.EXTRA_KNOX_ARRAY"

    move-object/from16 v0, v43

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1205
    .end local v43    # "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_35c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    const/high16 v12, 0x10000

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    move-object v13, v4

    move v14, v5

    invoke-interface/range {v9 .. v15}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_373
    .catch Landroid/os/RemoteException; {:try_start_30a .. :try_end_373} :catch_375

    goto/16 :goto_1ed

    .line 1209
    :catch_375
    move-exception v39

    .line 1210
    .local v39, "re":Landroid/os/RemoteException;
    const-string v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error calling setLastChosenActivity\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ed

    .line 1234
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "bestMatch":I
    .end local v6    # "set":[Landroid/content/ComponentName;
    .end local v8    # "riuserId":I
    .end local v16    # "N":I
    .end local v19    # "action":Ljava/lang/String;
    .end local v20    # "cat":I
    .end local v21    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "data":Landroid/net/Uri;
    .end local v27    # "i":I
    .end local v39    # "re":Landroid/os/RemoteException;
    :cond_392
    invoke-direct/range {p0 .. p1}, safelyStartActivtyAfterAnimation(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1236
    :cond_395
    const/4 v3, 0x1

    goto/16 :goto_265
.end method

.method optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .registers 5
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "index"    # I

    .prologue
    .line 639
    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method preparePageView(I)V
    .registers 9
    .param p1, "count"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2673
    iput p1, p0, mTotalCount:I

    .line 2674
    const v2, 0x10204c5

    invoke-virtual {p0, v2}, findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager;

    iput-object v2, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    .line 2675
    iget-object v2, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    if-nez v2, :cond_15

    .line 2711
    :goto_14
    return-void

    .line 2680
    :cond_15
    const v2, 0x1020364

    invoke-virtual {p0, v2}, findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 2681
    .local v1, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->forceDisallowInterceptTouchEvent(Z)V

    .line 2683
    iget-object v2, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v2}, Lcom/android/internal/widget/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2684
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, mMaxColumns:I

    if-le p1, v2, :cond_9d

    .line 2685
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105020a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2686
    iget-boolean v2, p0, mSupportSimpleSharing:Z

    if-eqz v2, :cond_41

    iget-boolean v2, p0, mAlwaysUseOption:Z

    if-eqz v2, :cond_4e

    .line 2687
    :cond_41
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105020c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2692
    :cond_4e
    :goto_4e
    iget-object v2, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2694
    iget-object v2, p0, mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    if-nez v2, :cond_74

    .line 2695
    new-instance v2, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    invoke-virtual {p0}, getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V

    iput-object v2, p0, mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    .line 2696
    iget-object v2, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    iget-object v3, p0, mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    .line 2697
    iget-object v2, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    .line 2700
    :cond_74
    const v2, 0x10204c6

    invoke-virtual {p0, v2}, findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, mViewPagerNavi:Landroid/widget/LinearLayout;

    .line 2701
    const v2, 0x10204c7

    invoke-virtual {p0, v2}, findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, mViewPagerBottomSpacing:Landroid/widget/LinearLayout;

    .line 2703
    iget v2, p0, mPageItemNum:I

    if-le p1, v2, :cond_ab

    .line 2704
    invoke-direct {p0}, initViewPagerNavi()V

    .line 2705
    iget-object v2, p0, mViewPagerNavi:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2706
    iget-object v2, p0, mViewPagerBottomSpacing:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_14

    .line 2690
    :cond_9d
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105020b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4e

    .line 2708
    :cond_ab
    iget-object v2, p0, mViewPagerNavi:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2709
    iget-object v2, p0, mViewPagerBottomSpacing:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_14
.end method

.method safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .registers 8
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    const/4 v5, 0x0

    .line 1242
    iget v3, p0, mProfileSwitchMessageId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_28

    .line 1243
    if-eqz p1, :cond_1a

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-static {v3}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1244
    :cond_1a
    iget v3, p0, mProfileSwitchMessageId:I

    invoke-virtual {p0, v3}, getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1246
    :cond_28
    iget-boolean v3, p0, mSafeForwardingMode:Z

    if-nez v3, :cond_36

    .line 1247
    invoke-interface {p1, p0, v5}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1248
    invoke-virtual {p0, p1}, onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1268
    :cond_35
    :goto_35
    return-void

    .line 1253
    :cond_36
    const/4 v3, 0x0

    const/16 v4, -0x2710

    :try_start_39
    invoke-interface {p1, p0, v3, v4}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1254
    invoke-virtual {p0, p1}, onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_42} :catch_43

    goto :goto_35

    .line 1256
    :catch_43
    move-exception v0

    .line 1259
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_44
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4f} :catch_83

    move-result-object v2

    .line 1264
    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_50
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch as uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mLaunchedFromUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", while running in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 1261
    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_83
    move-exception v1

    .line 1262
    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_50
.end method

.method sendVoiceChoicesIfNeeded()V
    .registers 7

    .prologue
    .line 622
    invoke-virtual {p0}, isVoiceInteraction()Z

    move-result v3

    if-nez v3, :cond_7

    .line 636
    :goto_6
    return-void

    .line 628
    :cond_7
    iget-object v3, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    new-array v2, v3, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 629
    .local v2, "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, v2

    .local v0, "N":I
    :goto_11
    if-ge v1, v0, :cond_22

    .line 630
    iget-object v3, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v3

    aput-object v3, v2, v1

    .line 629
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 633
    :cond_22
    new-instance v3, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    new-instance v4, Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p0}, getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v3, p0, mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 635
    invoke-virtual {p0}, getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v3

    iget-object v4, p0, mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v3, v4}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    goto :goto_6
.end method

.method protected final setAdditionalTargets([Landroid/content/Intent;)V
    .registers 7
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 643
    if-eqz p1, :cond_11

    .line 644
    move-object v0, p1

    .local v0, "arr$":[Landroid/content/Intent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_5
    if-ge v1, v3, :cond_11

    aget-object v2, v0, v1

    .line 645
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, mIntents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 648
    .end local v0    # "arr$":[Landroid/content/Intent;
    .end local v1    # "i$":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "len$":I
    :cond_11
    return-void
.end method

.method public setDropComponent(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 2566
    iget-object v0, p0, mDropComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2567
    return-void
.end method

.method public setSafeForwardingMode(Z)V
    .registers 2
    .param p1, "safeForwarding"    # Z

    .prologue
    .line 726
    iput-boolean p1, p0, mSafeForwardingMode:Z

    .line 727
    return-void
.end method

.method shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .registers 3
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 1279
    const/4 v0, 0x1

    return v0
.end method

.method shouldGetActivityMetadata()Z
    .registers 2

    .prologue
    .line 1275
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowSimpleSharing()Z
    .registers 2

    .prologue
    .line 2580
    iget-boolean v0, p0, mSupportSimpleSharing:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    if-eqz v0, :cond_12

    iget-object v0, p0, mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareSimpleSharing;->isRemoteShareServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2583
    const/4 v0, 0x1

    .line 2586
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .registers 7
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1283
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1286
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, startActivity(Landroid/content/Intent;)V

    .line 1287
    return-void
.end method

.method startSelected(IZZ)V
    .registers 13
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    const/4 v8, 0x1

    .line 1010
    invoke-virtual {p0}, isFinishing()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1043
    :cond_7
    :goto_7
    return-void

    .line 1013
    :cond_8
    iget-object v3, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1014
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-boolean v3, p0, mResolvingHome:Z

    if-eqz v3, :cond_48

    invoke-direct {p0}, hasManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-direct {p0, v1}, supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 1015
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10404c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 1022
    :cond_48
    iget-object v3, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v2

    .line 1024
    .local v2, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    iget-object v3, p0, mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getKnoxWorkspaceSize()I

    move-result v3

    if-lez v3, :cond_81

    .line 1025
    const-string v3, "com.sec.knox.switcher"

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_81

    .line 1027
    invoke-direct {p0, v1}, replaceTargetForKNOXContainer(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    .line 1028
    .local v0, "rePlaceTarget":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    if-nez v0, :cond_6e

    .line 1029
    invoke-virtual {p0}, finish()V

    goto :goto_7

    .line 1032
    :cond_6e
    move-object v2, v0

    .line 1033
    invoke-interface {v2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "crossProfileTargetUserId"

    invoke-interface {v2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1034
    const/4 v3, -0x1

    iput v3, p0, mProfileSwitchMessageId:I

    .line 1040
    .end local v0    # "rePlaceTarget":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_81
    invoke-virtual {p0, v2, p2}, onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1041
    invoke-virtual {p0}, finish()V

    goto/16 :goto_7
.end method

.method public updatePagerAdapter(I)V
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 2639
    iget-boolean v0, p0, mSupportPageMode:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, mViewPager:Lcom/android/internal/widget/ViewPager;

    if-eqz v0, :cond_16

    .line 2640
    invoke-direct {p0}, clearPagerAdapter()V

    .line 2641
    invoke-virtual {p0}, buildUpPagerAdapter()V

    .line 2642
    invoke-virtual {p0, p1}, preparePageView(I)V

    .line 2643
    iget-object v0, p0, mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->notifyDataSetChanged()V

    .line 2645
    :cond_16
    return-void
.end method
