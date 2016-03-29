.class public Lcom/android/systemui/qs/QSEditPanel;
.super Landroid/widget/FrameLayout;
.source "QSEditPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;,
        Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;,
        Lcom/android/systemui/qs/QSEditPanel$MessageObject;,
        Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QSEditPanel"

.field private static final TAG_ACTIVE:I = 0x0

.field private static final TAG_AVAILABLE:I = 0x1

.field protected static final TILES_EDIT_SETTING:Ljava/lang/String; = "sysui_qs_tiles"

.field private static mDiagnosticLogs:Z


# instance fields
.field private final FIRST_AVAILABLE_BUTTON_ID:I

.field private final MAX_ACTIVE_BUTTONS_TABLET:I

.field private final MAX_ACTIVE_BUTTONS_ZERO:I

.field private final MSG_HANDLE_ACTION_DROP:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_ACTIVE_TO_AVAILABLE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_AVAILABLE_TO_ACTIVE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_ACTIVE_TO_AVAILABLE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_AVAILABLE_TO_ACTIVE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_SAME_AREA:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_LEFT:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_RIGHT:I

.field private final MSG_HANDLE_ANIMATE_MAX_ACTIVE_TO_AVAILABLE:I

.field private final MSG_HANDLE_ANIMATE_MAX_AVAILABLE_TO_ACTIVE:I

.field private final MSG_HANDLE_POST_ONCONFIGURATIONCHANGED:I

.field private final MSG_HANDLE_POST_REFRESH_VIEW:I

.field private final MSG_HANDLE_UPDATE_VIEW_STATE:I

.field private final QS_EDIT_CROSS_ICON_BASE_ID:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field protected SCROLLVIEW_ANIMATION_DURATION:I

.field private mActiveAppsMaxNum:I

.field private mActiveButtonContainer:Landroid/widget/FrameLayout;

.field private mActiveContainerParent:Landroid/widget/LinearLayout;

.field private mActivePanelHeight:I

.field private mActivePanelLines:I

.field private mActiveTileCount:I

.field private mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

.field private mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

.field private mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

.field private mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

.field private mAvailableButtonContainer:Landroid/widget/FrameLayout;

.field private mAvailableContainerParent:Landroid/widget/LinearLayout;

.field private mAvailablePanelHeight:I

.field private mAvailablePanelLines:I

.field private mAvailableTileCount:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCrossIconNum:I

.field private mCrossIconWidth:I

.field private mCurrentOrientation:I

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDoneButton:Landroid/widget/TextView;

.field private mDragStart:Z

.field private mEditHeader:Landroid/widget/LinearLayout;

.field private mEditPanelBottomHeight:I

.field private mEditPanelHeight:I

.field private mEditSummary:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalGap:I

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIconMarginTop:I

.field private mIconWidth:I

.field private mIdxGap:I

.field private mIsActiveAdded:Z

.field private mIsDroppedOnView:Z

.field private mIsQConnectSupported:Z

.field private mLocale:Ljava/util/Locale;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedBg:Landroid/view/View;

.field private mLongClickedIdx:I

.field private mLongClickedView:Landroid/widget/FrameLayout;

.field private mMaxActiveToAvailableEnabled:Z

.field private mNumColumns:I

.field private mPrvLongClickedBg:Landroid/view/View;

.field private mQconnectCheckBox:Landroid/widget/CompoundButton;

.field private mQconnectGroup:Landroid/widget/LinearLayout;

.field private mQuickConnectLayoutParent:Landroid/widget/LinearLayout;

.field private mRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/QSEditPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollContainer:Landroid/widget/ScrollView;

.field private mSfinderCheckBox:Landroid/widget/CompoundButton;

.field private mSfinderGroup:Landroid/widget/LinearLayout;

.field private mStartLongClickedIdx:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mToast:Landroid/widget/Toast;

.field private mTouchedIdx:I

.field private mVerticalGap:I

.field mfakePanelDragListener:Landroid/view/View$OnDragListener;

.field private quickConnectSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1310
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSEditPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 348
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x65

    const/16 v2, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 351
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    iput v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    .line 104
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    .line 116
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    .line 122
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 128
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    .line 130
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    .line 132
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    .line 134
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    .line 136
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_UPDATE_VIEW_STATE:I

    .line 138
    iput v5, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_LEFT:I

    .line 140
    const/16 v1, 0x66

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_RIGHT:I

    .line 142
    const/16 v1, 0x67

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_ACTIVE_TO_AVAILABLE:I

    .line 144
    const/16 v1, 0x68

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_AVAILABLE_TO_ACTIVE:I

    .line 146
    const/16 v1, 0x69

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_SAME_AREA:I

    .line 148
    const/16 v1, 0x6a

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_ACTIVE_TO_AVAILABLE:I

    .line 150
    const/16 v1, 0x6b

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_AVAILABLE_TO_ACTIVE:I

    .line 152
    const/16 v1, 0x6c

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_MAX_AVAILABLE_TO_ACTIVE:I

    .line 154
    const/16 v1, 0x6d

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_MAX_ACTIVE_TO_AVAILABLE:I

    .line 156
    const/16 v1, 0x6e

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ACTION_DROP:I

    .line 158
    const/16 v1, 0x6f

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_POST_REFRESH_VIEW:I

    .line 160
    const/16 v1, 0x70

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_POST_ONCONFIGURATIONCHANGED:I

    .line 163
    iput v2, p0, Lcom/android/systemui/qs/QSEditPanel;->MAX_ACTIVE_BUTTONS_ZERO:I

    .line 165
    const/16 v1, 0xe

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MAX_ACTIVE_BUTTONS_TABLET:I

    .line 167
    iput v5, p0, Lcom/android/systemui/qs/QSEditPanel;->FIRST_AVAILABLE_BUTTON_ID:I

    .line 169
    const/16 v1, 0x1b58

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->QS_EDIT_CROSS_ICON_BASE_ID:I

    .line 188
    const/16 v1, 0x258

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->SCROLLVIEW_ANIMATION_DURATION:I

    .line 191
    const/16 v1, 0x118

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 296
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSEditPanel$1;-><init>(Lcom/android/systemui/qs/QSEditPanel;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    .line 1090
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$4;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1147
    iput-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    .line 1149
    iput-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    .line 1167
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z

    .line 1169
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$5;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    .line 1336
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    .line 1911
    iput-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mLocale:Ljava/util/Locale;

    .line 352
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    .line 353
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 354
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 355
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 356
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mDefaultDisplay:Landroid/view/Display;

    .line 359
    const v1, 0x7f0f0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    .line 360
    const v1, 0x7f0c0210

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    .line 361
    const v1, 0x7f0c0211

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    .line 362
    const v1, 0x7f0c010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    .line 363
    const v1, 0x7f0c021e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCrossIconWidth:I

    .line 364
    const v1, 0x7f0c0112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIconMarginTop:I

    .line 367
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    .line 368
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    .line 370
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    .line 373
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->isQuickConnectSupported(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsQConnectSupported:Z

    .line 374
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateLeft(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateRight(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->handleDelayedOnConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->quickConnectSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->prepareViewsToAnimate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/qs/QSEditPanel;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/QSEditPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/qs/QSEditPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/QSEditPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/QSEditPanel;)Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/QSEditPanel;)Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/QSEditPanel;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/QSEditPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/systemui/qs/QSEditPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/qs/QSEditPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/qs/QSEditPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/qs/QSEditPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/systemui/qs/QSEditPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/qs/QSEditPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showToastPopup()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/qs/QSEditPanel;Ljava/util/ArrayList;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->animateViews()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->scrollPanleViews()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->animateEmptyPanelViews()V

    return-void
.end method

.method static synthetic access$3802(Lcom/android/systemui/qs/QSEditPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mStartLongClickedIdx:I

    return p1
.end method

.method static synthetic access$3902(Lcom/android/systemui/qs/QSEditPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateEmptySameArea(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateEmptyActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateEmptyAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateMaxAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateMaxActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->handleActionDropView()V

    return-void
.end method

.method private addBackgroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V
    .locals 20
    .param p1, "mode"    # I
    .param p2, "totalPanelLines"    # I
    .param p5, "container"    # Landroid/widget/FrameLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/FrameLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 904
    .local p3, "overlayedLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .local p4, "panelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v17, "QSEditPanel"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addBackgroundButtonViews() mode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mNumColumns="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", totalPanelLines="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 907
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 908
    .local v2, "columnNumber":I
    const/4 v15, 0x0

    .line 909
    .local v15, "rowNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    mul-int v16, v17, p2

    .line 910
    .local v16, "totalPanelNum":I
    if-nez p1, :cond_3

    const/4 v5, 0x0

    .line 911
    .local v5, "gap":I
    :goto_0
    const/4 v6, 0x0

    .line 912
    .local v6, "idx":I
    const v13, 0x7f040052

    .line 913
    .local v13, "panelFakeViewLayouId":I
    const v14, 0x7f040060

    .line 914
    .local v14, "panelOverlayedViewLayouId":I
    const/4 v6, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v6, v0, :cond_8

    .line 915
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v7, v13, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 916
    .local v4, "fakePanel":Landroid/widget/FrameLayout;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v7, v14, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .line 917
    .local v12, "overLayedView":Landroid/widget/FrameLayout;
    const v17, 0x7f0e01c1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 918
    .local v8, "longClickedRoundBg":Landroid/widget/ImageView;
    const v17, 0x7f0e01c2

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 920
    .local v3, "crossIcon":Landroid/view/View;
    add-int v17, v6, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 921
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCrossIconNum:I

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x1b58

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    .line 924
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 925
    .local v10, "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    div-int v17, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    mul-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 926
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 927
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 929
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    rem-int v17, v2, v17

    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 930
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 931
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 944
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 947
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 948
    .local v9, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 949
    invoke-virtual {v12, v8, v9}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 952
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 953
    .local v11, "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCrossIconWidth:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 955
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    rem-int v17, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    mul-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 956
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    div-int v17, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    mul-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 958
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    div-int v17, v2, v17

    add-int/lit8 v18, p2, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v17, v0

    :goto_3
    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 960
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_1

    .line 961
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0220

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 963
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_2

    .line 964
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0221

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 967
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 971
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 973
    add-int/lit8 v2, v2, 0x1

    .line 974
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCrossIconNum:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/qs/QSEditPanel;->mCrossIconNum:I

    .line 914
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 910
    .end local v3    # "crossIcon":Landroid/view/View;
    .end local v4    # "fakePanel":Landroid/widget/FrameLayout;
    .end local v5    # "gap":I
    .end local v6    # "idx":I
    .end local v8    # "longClickedRoundBg":Landroid/widget/ImageView;
    .end local v9    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    .end local v12    # "overLayedView":Landroid/widget/FrameLayout;
    .end local v13    # "panelFakeViewLayouId":I
    .end local v14    # "panelOverlayedViewLayouId":I
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    goto/16 :goto_0

    .line 934
    .restart local v3    # "crossIcon":Landroid/view/View;
    .restart local v4    # "fakePanel":Landroid/widget/FrameLayout;
    .restart local v5    # "gap":I
    .restart local v6    # "idx":I
    .restart local v8    # "longClickedRoundBg":Landroid/widget/ImageView;
    .restart local v10    # "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v12    # "overLayedView":Landroid/widget/FrameLayout;
    .restart local v13    # "panelFakeViewLayouId":I
    .restart local v14    # "panelOverlayedViewLayouId":I
    :cond_4
    add-int/lit8 v17, v15, 0x1

    rem-int v17, v17, p2

    if-eqz v17, :cond_5

    if-nez p1, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    .line 935
    :cond_5
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 938
    :cond_6
    add-int/lit8 v17, v2, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v18, v0

    rem-int v17, v17, v18

    if-nez v17, :cond_0

    if-eqz v2, :cond_0

    .line 939
    add-int/lit8 v15, v15, 0x1

    .line 940
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 958
    .restart local v9    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    goto/16 :goto_3

    .line 977
    .end local v3    # "crossIcon":Landroid/view/View;
    .end local v4    # "fakePanel":Landroid/widget/FrameLayout;
    .end local v8    # "longClickedRoundBg":Landroid/widget/ImageView;
    .end local v9    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    .end local v12    # "overLayedView":Landroid/widget/FrameLayout;
    :cond_8
    return-void
.end method

.method private addForegroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V
    .locals 33
    .param p1, "mode"    # I
    .param p2, "totalPanelLines"    # I
    .param p5, "container"    # Landroid/widget/FrameLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/FrameLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 778
    .local p3, "panelLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .local p4, "panelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v29, "QSEditPanel"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "addForegroundButtonViews() mode="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", mNumColumns="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", totalPanelLines="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "layout_inflater"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 781
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    .line 782
    .local v6, "columnNumber":I
    const/16 v25, 0x0

    .line 783
    .local v25, "rowNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v29, v0

    mul-int v28, v29, p2

    .line 784
    .local v28, "totalPanelNum":I
    if-nez p1, :cond_1

    const/4 v10, 0x0

    .line 785
    .local v10, "gap":I
    :goto_0
    const/4 v12, 0x0

    .line 787
    .local v12, "idx":I
    if-nez p1, :cond_2

    const v7, 0x7f0d0461

    .line 788
    .local v7, "contentDescriptionId":I
    :goto_1
    const v21, 0x7f040055

    .line 789
    .local v21, "panelViewLayouId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 790
    .local v23, "res":Landroid/content/res/Resources;
    const/4 v12, 0x0

    :goto_2
    move/from16 v0, v28

    if-ge v12, v0, :cond_9

    .line 791
    const/16 v29, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout;

    .line 792
    .local v19, "panelView":Landroid/widget/FrameLayout;
    const v29, 0x7f0e01a8

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    .line 793
    .local v20, "panelViewFocus":Landroid/widget/FrameLayout;
    const v29, 0x7f0e01a9

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 794
    .local v16, "panel":Landroid/widget/LinearLayout;
    const v29, 0x7f0e01aa

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 796
    .local v17, "panelImageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/systemui/statusbar/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 797
    const v29, 0x7f020634

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 803
    :cond_0
    const v29, 0x7f0e01ab

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 805
    .local v18, "panelTextView":Landroid/widget/TextView;
    add-int v29, v12, v10

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 807
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v12}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 808
    const/16 v29, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 809
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 872
    :goto_3
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v29, -0x2

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v15, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 873
    .local v15, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 875
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v29, v0

    rem-int v29, v6, v29

    iget v0, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v31, v0

    add-int v30, v30, v31

    mul-int v29, v29, v30

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 876
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v29, v0

    div-int v29, v6, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v31, v0

    add-int v30, v30, v31

    mul-int v29, v29, v30

    move/from16 v0, v29

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 877
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 879
    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    add-int/lit8 v6, v6, 0x1

    .line 790
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 784
    .end local v7    # "contentDescriptionId":I
    .end local v10    # "gap":I
    .end local v12    # "idx":I
    .end local v15    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "panel":Landroid/widget/LinearLayout;
    .end local v17    # "panelImageView":Landroid/widget/ImageView;
    .end local v18    # "panelTextView":Landroid/widget/TextView;
    .end local v19    # "panelView":Landroid/widget/FrameLayout;
    .end local v20    # "panelViewFocus":Landroid/widget/FrameLayout;
    .end local v21    # "panelViewLayouId":I
    .end local v23    # "res":Landroid/content/res/Resources;
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    goto/16 :goto_0

    .line 787
    .restart local v10    # "gap":I
    .restart local v12    # "idx":I
    :cond_2
    const v7, 0x7f0d0462

    goto/16 :goto_1

    .line 811
    .restart local v7    # "contentDescriptionId":I
    .restart local v16    # "panel":Landroid/widget/LinearLayout;
    .restart local v17    # "panelImageView":Landroid/widget/ImageView;
    .restart local v18    # "panelTextView":Landroid/widget/TextView;
    .restart local v19    # "panelView":Landroid/widget/FrameLayout;
    .restart local v20    # "panelViewFocus":Landroid/widget/FrameLayout;
    .restart local v21    # "panelViewLayouId":I
    .restart local v23    # "res":Landroid/content/res/Resources;
    :cond_3
    const/16 v26, 0x0

    .line 813
    .local v26, "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    if-nez p1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v29, v0

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v12, v0, :cond_4

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v30, v0

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static/range {v30 .. v30}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    check-cast v26, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 816
    .restart local v26    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_4
    const/16 v29, 0x1

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v29, v0

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v12, v0, :cond_5

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v30, v0

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static/range {v30 .. v30}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    check-cast v26, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 819
    .restart local v26    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_5
    if-eqz v26, :cond_6

    .line 820
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->viewContainer:Landroid/widget/FrameLayout;

    .line 822
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/QSEditPanel;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V

    .line 823
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/QSTileView;->handleLabelStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/widget/TextView;I)V

    .line 824
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->label:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    const v29, 0x7f0c010c

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 826
    .local v11, "height":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 831
    const/4 v13, -0x1

    .line 832
    .local v13, "indexOfNewLine":I
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->label:Ljava/lang/String;

    .line 833
    .local v5, "Label":Ljava/lang/String;
    new-instance v24, Ljava/lang/String;

    invoke-direct/range {v24 .. v24}, Ljava/lang/String;-><init>()V

    .line 834
    .local v24, "revisedStr":Ljava/lang/String;
    const-string v29, "\n"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 835
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v13, v0, :cond_8

    .line 836
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 837
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 838
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    add-int/lit8 v30, v13, 0x1

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 842
    :goto_4
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f0d03a6

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 857
    .end local v5    # "Label":Ljava/lang/String;
    .end local v11    # "height":I
    .end local v13    # "indexOfNewLine":I
    .end local v24    # "revisedStr":Ljava/lang/String;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSEditPanel;->getTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    .line 858
    .local v27, "tileBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    move/from16 v29, v0

    if-eqz v29, :cond_7

    .line 859
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v29, v0

    div-int/lit8 v8, v29, 0x2

    .line 860
    .local v8, "cx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconMarginTop:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x2

    add-int v9, v29, v30

    .line 861
    .local v9, "cy":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3eeb851f    # 0.46f

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v22, v0

    .line 862
    .local v22, "rad":I
    sub-int v29, v8, v22

    sub-int v30, v9, v22

    add-int v31, v8, v22

    add-int v32, v9, v22

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 863
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 866
    .end local v8    # "cx":I
    .end local v9    # "cy":I
    .end local v22    # "rad":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 868
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v12, v2}, Lcom/android/systemui/qs/QSEditPanel;->setForegroundButtonViewId(Landroid/widget/FrameLayout;II)V

    goto/16 :goto_3

    .line 840
    .end local v27    # "tileBackground":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "Label":Ljava/lang/String;
    .restart local v11    # "height":I
    .restart local v13    # "indexOfNewLine":I
    .restart local v24    # "revisedStr":Ljava/lang/String;
    :cond_8
    move-object/from16 v24, v5

    goto/16 :goto_4

    .line 884
    .end local v5    # "Label":Ljava/lang/String;
    .end local v11    # "height":I
    .end local v13    # "indexOfNewLine":I
    .end local v16    # "panel":Landroid/widget/LinearLayout;
    .end local v17    # "panelImageView":Landroid/widget/ImageView;
    .end local v18    # "panelTextView":Landroid/widget/TextView;
    .end local v19    # "panelView":Landroid/widget/FrameLayout;
    .end local v20    # "panelViewFocus":Landroid/widget/FrameLayout;
    .end local v24    # "revisedStr":Ljava/lang/String;
    .end local v26    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_9
    return-void
.end method

.method private addTile(Lcom/android/systemui/qs/QSTile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    new-instance v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSEditPanel$TileRecord;-><init>(Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 559
    .local v0, "r":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    iput-object p1, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    .line 561
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    .line 563
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->contentDesc:Ljava/lang/String;

    .line 564
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->label:Ljava/lang/String;

    .line 565
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 606
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->addTileRecord(Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V

    .line 608
    return-void
.end method

.method private addTileRecord(Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .prologue
    .line 611
    iget-object v1, p1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tile"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "tileName":Ljava/lang/String;
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    if-ge v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    if-nez v1, :cond_2

    .line 613
    iput-object v0, p1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    .line 614
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    .line 620
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    if-eqz v1, :cond_1

    .line 621
    iput-object v0, p1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    .line 622
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    .line 626
    :cond_1
    return-void

    .line 617
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    if-nez v1, :cond_0

    .line 618
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    goto :goto_0
.end method

.method private animateEmptyPanelViews()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x6b

    const/16 v9, 0x6a

    const/16 v8, 0x69

    .line 1477
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1478
    .local v1, "longClickedIdx":I
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v1, v7, :cond_1

    .line 1479
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v1, v7

    .line 1480
    const/4 v0, 0x1

    .line 1485
    .local v0, "fromArea":I
    :goto_0
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1486
    .local v6, "touchedIdx":I
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v6, v7, :cond_2

    .line 1487
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v6, v7

    .line 1488
    const/4 v5, 0x1

    .line 1493
    .local v5, "toArea":I
    :goto_1
    if-ne v6, v1, :cond_3

    if-ne v5, v0, :cond_3

    .line 1529
    :cond_0
    :goto_2
    return-void

    .line 1482
    .end local v0    # "fromArea":I
    .end local v5    # "toArea":I
    .end local v6    # "touchedIdx":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "fromArea":I
    goto :goto_0

    .line 1490
    .restart local v6    # "touchedIdx":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "toArea":I
    goto :goto_1

    .line 1496
    :cond_3
    if-nez v5, :cond_8

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1497
    .local v4, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ne v5, v0, :cond_4

    invoke-direct {p0, v4, v6}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1501
    :cond_4
    if-ne v5, v0, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v1, v7, :cond_0

    .line 1505
    :cond_5
    new-instance v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v7}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1506
    .local v3, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v0, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1507
    iput v1, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1508
    iput v6, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1509
    const/4 v2, 0x0

    .line 1510
    .local v2, "msg":Landroid/os/Message;
    if-ne v0, v5, :cond_9

    .line 1511
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1512
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1514
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1528
    :cond_7
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1496
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .end local v4    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_3

    .line 1516
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .restart local v4    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    if-nez v0, :cond_b

    if-ne v5, v11, :cond_b

    .line 1517
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1518
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1520
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_4

    .line 1521
    :cond_b
    if-ne v0, v11, :cond_7

    if-nez v5, :cond_7

    .line 1522
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1523
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1525
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_4
.end method

.method private animateScrollViews(II)V
    .locals 7
    .param p1, "currentPositionY"    # I
    .param p2, "destinationY"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1464
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1465
    .local v0, "anim":Landroid/animation/AnimatorSet;
    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    const-string v3, "scrollY"

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput p1, v4, v5

    aput p2, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1466
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->SCROLLVIEW_ANIMATION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1467
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1468
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v1, v5, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1469
    return-void
.end method

.method private animateViews()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/16 v12, 0x68

    const/16 v11, 0x67

    const/16 v10, 0x66

    const/16 v9, 0x65

    .line 1536
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1537
    .local v1, "longClickedIdx":I
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v1, v8, :cond_0

    .line 1538
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v1, v8

    .line 1539
    const/4 v0, 0x1

    .line 1544
    .local v0, "fromArea":I
    :goto_0
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1545
    .local v7, "touchedIdx":I
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v7, v8, :cond_1

    .line 1546
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v7, v8

    .line 1547
    const/4 v6, 0x1

    .line 1551
    .local v6, "toArea":I
    :goto_1
    if-ne v7, v1, :cond_2

    if-ne v6, v0, :cond_2

    .line 1589
    :goto_2
    return-void

    .line 1541
    .end local v0    # "fromArea":I
    .end local v6    # "toArea":I
    .end local v7    # "touchedIdx":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "fromArea":I
    goto :goto_0

    .line 1549
    .restart local v7    # "touchedIdx":I
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "toArea":I
    goto :goto_1

    .line 1554
    :cond_2
    if-nez v6, :cond_5

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1555
    .local v5, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-nez v6, :cond_6

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1556
    .local v4, "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_4
    invoke-direct {p0, v7, v5, v4}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1557
    new-instance v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    const/4 v8, 0x0

    invoke-direct {v3, p0, v8}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1558
    .local v3, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v0, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1559
    iput v1, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1560
    iput v7, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1561
    const/4 v2, 0x0

    .line 1563
    .local v2, "msg":Landroid/os/Message;
    if-ne v0, v6, :cond_9

    .line 1564
    if-ge v7, v1, :cond_7

    .line 1565
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1566
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1568
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1588
    :cond_4
    :goto_5
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1554
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .end local v4    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v5    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_3

    .line 1555
    .restart local v5    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_4

    .line 1570
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .restart local v4    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1571
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1573
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_5

    .line 1576
    :cond_9
    if-nez v0, :cond_b

    if-ne v6, v13, :cond_b

    .line 1577
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1578
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1580
    :cond_a
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_5

    .line 1581
    :cond_b
    if-ne v0, v13, :cond_4

    if-nez v6, :cond_4

    .line 1582
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1583
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1585
    :cond_c
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_5
.end method

.method private clean()V
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1142
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1143
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1145
    return-void
.end method

.method private getTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1067
    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x101045c

    aput v3, v0, v4

    .line 1070
    .local v0, "attrs":[I
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1071
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1072
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1074
    return-object v1
.end method

.method private handleActionDropView()V
    .locals 3

    .prologue
    .line 1249
    const-string v1, "QSEditPanel"

    const-string v2, "handleActionDropView()"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    const-string v1, "QSEditPanel"

    const-string v2, "handleActionDropView() invisible, so return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :goto_0
    return-void

    .line 1255
    :cond_0
    const/4 v0, 0x0

    .line 1256
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d045f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1257
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1258
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->saveButtonLists()V

    .line 1259
    sget-boolean v1, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    if-eqz v1, :cond_1

    .line 1260
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->sendDiagnosticLogs()V

    .line 1262
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    goto :goto_0

    .line 1256
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0460

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private handleAnimateActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 17
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1682
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1683
    .local v7, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1684
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1686
    .local v9, "touchedIndex":I
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleAnimateActiveToAvailable() mode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", longClickedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", touchedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1689
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1690
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1691
    .local v5, "longClickedString":Ljava/lang/String;
    move v3, v4

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_0

    .line 1692
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1693
    .local v8, "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1694
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1691
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1696
    .end local v8    # "nextView":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    :goto_1
    if-le v3, v9, :cond_1

    .line 1697
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1698
    .restart local v8    # "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1699
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1696
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 1701
    .end local v8    # "nextView":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1702
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1703
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1704
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1706
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1707
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1708
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v10, v9

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1709
    return-void
.end method

.method private handleAnimateAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 17
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1715
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1716
    .local v7, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1717
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1719
    .local v9, "touchedIndex":I
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleAnimateAvailableToActive() mode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", longClickedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", touchedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1722
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1723
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1724
    .local v5, "longClickedString":Ljava/lang/String;
    move v3, v4

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_0

    .line 1725
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1726
    .local v8, "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1727
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1724
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1729
    .end local v8    # "nextView":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    :goto_1
    if-le v3, v9, :cond_1

    .line 1730
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1731
    .restart local v8    # "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1732
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1729
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 1734
    .end local v8    # "nextView":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1735
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1736
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1737
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1738
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1739
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1740
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1741
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1742
    return-void
.end method

.method private handleAnimateEmptyActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 14
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1623
    iget v3, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1624
    .local v3, "mode":I
    iget v2, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1625
    .local v2, "longClickedIndex":I
    iget v5, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1627
    .local v5, "touchedIndex":I
    const-string v6, "QSEditPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleAnimateEmptyActiveToAvailable() mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", longClickedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", touchedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1630
    .local v0, "anim":Landroid/animation/AnimatorSet;
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 1631
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1632
    .local v4, "nextView":Landroid/view/View;
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "x"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1633
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "y"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1630
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1635
    .end local v4    # "nextView":Landroid/view/View;
    :cond_0
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1636
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1637
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v2, v6, :cond_1

    .line 1638
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 1640
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1641
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1642
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1643
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1644
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1645
    return-void
.end method

.method private handleAnimateEmptyAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 14
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1595
    iget v3, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1596
    .local v3, "mode":I
    iget v2, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1597
    .local v2, "longClickedIndex":I
    iget v5, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1599
    .local v5, "touchedIndex":I
    const-string v6, "QSEditPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleAnimateEmptyAvailableToActive() mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", longClickedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", touchedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1602
    .local v0, "anim":Landroid/animation/AnimatorSet;
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 1603
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1604
    .local v4, "nextView":Landroid/view/View;
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "x"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1605
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "y"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1602
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1607
    .end local v4    # "nextView":Landroid/view/View;
    :cond_0
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1608
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1609
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v2, v6, :cond_1

    .line 1610
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 1612
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1613
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1616
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1617
    return-void
.end method

.method private handleAnimateEmptySameArea(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 18
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1651
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1652
    .local v7, "mode":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1653
    .local v6, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1655
    .local v11, "touchedIndex":I
    const-string v12, "QSEditPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleAnimateEmptySameArea() mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", longClickedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", touchedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1658
    .local v5, "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_0
    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1659
    .local v10, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1660
    .local v3, "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :goto_2
    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1661
    .local v9, "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1662
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move v4, v6

    .local v4, "i":I
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v4, v12, :cond_4

    .line 1663
    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1664
    .local v8, "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v8, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1665
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v8, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1662
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1657
    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    .end local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v4    # "i":I
    .end local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v8    # "nextView":Landroid/view/View;
    .end local v9    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v10    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_0

    .line 1658
    .restart local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    goto/16 :goto_1

    .line 1659
    .restart local v10    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_2

    .line 1660
    .restart local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v9

    goto/16 :goto_3

    .line 1667
    .restart local v2    # "anim":Landroid/animation/AnimatorSet;
    .restart local v4    # "i":I
    .restart local v9    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1668
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1669
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-le v6, v12, :cond_5

    .line 1670
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 1672
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1673
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v9}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1675
    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    :goto_5
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1676
    return-void

    .line 1675
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v13

    goto :goto_5
.end method

.method private handleAnimateLeft(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1748
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1749
    .local v9, "mode":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1750
    .local v6, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1752
    .local v12, "touchedIndex":I
    const-string v13, "QSEditPanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleAnimateLeft() mode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", longClickedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", touchedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1755
    .local v5, "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_0
    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1756
    .local v11, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1757
    .local v3, "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :goto_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1758
    .local v2, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 1759
    .local v8, "longClickedView":Landroid/widget/FrameLayout;
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1760
    .local v7, "longClickedString":Ljava/lang/String;
    move v4, v6

    .local v4, "i":I
    :goto_3
    if-ge v4, v12, :cond_3

    .line 1761
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1762
    .local v10, "nextView":Landroid/view/View;
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "x"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1763
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "y"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1760
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1754
    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    .end local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v4    # "i":I
    .end local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v7    # "longClickedString":Ljava/lang/String;
    .end local v8    # "longClickedView":Landroid/widget/FrameLayout;
    .end local v10    # "nextView":Landroid/view/View;
    .end local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_0

    .line 1755
    .restart local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    goto/16 :goto_1

    .line 1756
    .restart local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_2

    .line 1765
    .restart local v2    # "anim":Landroid/animation/AnimatorSet;
    .restart local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .restart local v4    # "i":I
    .restart local v7    # "longClickedString":Ljava/lang/String;
    .restart local v8    # "longClickedView":Landroid/widget/FrameLayout;
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v14, v13

    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1766
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1767
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1768
    invoke-virtual {v5, v12, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1769
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1770
    invoke-virtual {v11, v12, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1771
    if-nez v9, :cond_4

    .end local v12    # "touchedIndex":I
    :goto_4
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1772
    return-void

    .line 1771
    .restart local v12    # "touchedIndex":I
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v13

    goto :goto_4
.end method

.method private handleAnimateMaxActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1864
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1865
    .local v8, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1866
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1867
    .local v11, "touchedIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v11, v12, :cond_0

    .line 1868
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v11, v12, -0x1

    .line 1870
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v4, v12, :cond_1

    .line 1871
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .line 1873
    :cond_1
    const-string v12, "QSEditPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleAnimateMaxActiveToAvailable() mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", longClickedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", touchedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1876
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1877
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1878
    .local v5, "longClickedString":Ljava/lang/String;
    move v3, v4

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v3, v12, :cond_2

    .line 1879
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1880
    .local v9, "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1881
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1878
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1883
    .end local v9    # "nextView":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v11, :cond_3

    .line 1884
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1885
    .restart local v9    # "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1886
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1883
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1888
    .end local v9    # "nextView":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1889
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    .line 1890
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1891
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->end()V

    .line 1893
    :cond_4
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1894
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 1895
    .local v10, "targetView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1896
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1897
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1898
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1899
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1901
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1902
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1903
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1904
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1905
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1906
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1907
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1908
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1909
    return-void
.end method

.method private handleAnimateMaxAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1809
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1810
    .local v8, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1811
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1812
    .local v11, "touchedIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v11, v12, :cond_0

    .line 1813
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v11, v12, -0x1

    .line 1815
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v4, v12, :cond_1

    .line 1816
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .line 1818
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1820
    .local v2, "anim":Landroid/animation/AnimatorSet;
    const-string v12, "QSEditPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleAnimateMaxAvailableToActive() mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", longClickedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", touchedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1823
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1824
    .local v5, "longClickedString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_2

    .line 1825
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .local v3, "i":I
    :goto_0
    if-le v3, v11, :cond_2

    .line 1826
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1827
    .local v9, "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1828
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1825
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 1831
    .end local v3    # "i":I
    .end local v9    # "nextView":Landroid/view/View;
    :cond_2
    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    if-lez v3, :cond_3

    .line 1832
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1833
    .restart local v9    # "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1834
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1831
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 1836
    .end local v9    # "nextView":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 1837
    .local v10, "targetView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1838
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1839
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1840
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1841
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1842
    const/4 v12, 0x1

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    const-string v14, "x"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v10, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1843
    const/4 v12, 0x1

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    const-string v14, "y"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v10, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1844
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1845
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    .line 1846
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1847
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->end()V

    .line 1849
    :cond_4
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1850
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1851
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1852
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1853
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1854
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1856
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1857
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1858
    return-void
.end method

.method private handleAnimateRight(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1778
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1779
    .local v9, "mode":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1780
    .local v6, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1782
    .local v12, "touchedIndex":I
    const-string v13, "QSEditPanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleAnimateRight() mode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", longClickedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", touchedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1785
    .local v5, "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_0
    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1786
    .local v11, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1787
    .local v3, "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :goto_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1789
    .local v2, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 1790
    .local v8, "longClickedView":Landroid/widget/FrameLayout;
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1791
    .local v7, "longClickedString":Ljava/lang/String;
    move v4, v6

    .local v4, "i":I
    :goto_3
    if-le v4, v12, :cond_3

    .line 1792
    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1793
    .local v10, "nextView":Landroid/view/View;
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "x"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1794
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "y"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1791
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 1784
    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    .end local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v4    # "i":I
    .end local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v7    # "longClickedString":Ljava/lang/String;
    .end local v8    # "longClickedView":Landroid/widget/FrameLayout;
    .end local v10    # "nextView":Landroid/view/View;
    .end local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_0

    .line 1785
    .restart local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    goto/16 :goto_1

    .line 1786
    .restart local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_2

    .line 1796
    .restart local v2    # "anim":Landroid/animation/AnimatorSet;
    .restart local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .restart local v4    # "i":I
    .restart local v7    # "longClickedString":Ljava/lang/String;
    .restart local v8    # "longClickedView":Landroid/widget/FrameLayout;
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v14, v13

    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1797
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1798
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1799
    invoke-virtual {v5, v12, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1800
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1801
    invoke-virtual {v11, v12, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1802
    if-nez v9, :cond_4

    .end local v12    # "touchedIndex":I
    :goto_4
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1803
    return-void

    .line 1802
    .restart local v12    # "touchedIndex":I
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v13

    goto :goto_4
.end method

.method private handleDelayedOnConfigurationChanged()V
    .locals 2

    .prologue
    .line 1942
    const-string v0, "QSEditPanel"

    const-string v1, "handleDelayedOnConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->updateLayoutParams()V

    .line 1944
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    .line 1945
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshFooter()V

    .line 1946
    return-void
.end method

.method private isEmptyPanel(Ljava/util/ArrayList;I)Z
    .locals 2
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1083
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1084
    .local v0, "value":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    .line 1085
    const/4 v0, 0x1

    .line 1087
    :cond_0
    return v0
.end method

.method private prepareViewsToAnimate()V
    .locals 5

    .prologue
    .line 1115
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->clean()V

    .line 1116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1117
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1118
    .local v2, "panelView":Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1119
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1120
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1121
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1123
    .end local v2    # "panelView":Landroid/view/View;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1124
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1125
    .restart local v2    # "panelView":Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1126
    .restart local v3    # "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1127
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1128
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1130
    .end local v2    # "panelView":Landroid/view/View;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1131
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1132
    .local v1, "original":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1134
    .end local v1    # "original":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1135
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1136
    .restart local v1    # "original":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1138
    .end local v1    # "original":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private refreshBackgroundViews()V
    .locals 6

    .prologue
    .line 749
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mActivePanelLines:I

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSEditPanel;->addBackgroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 759
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailablePanelLines:I

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSEditPanel;->addBackgroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 760
    return-void
.end method

.method private refreshFooter()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 386
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 387
    .local v2, "isKioskEnabled":Z
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 388
    .local v0, "currentUserId":I
    const/4 v1, 0x0

    .line 390
    .local v1, "isEmergencyMode":Z
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emergency_mode"

    invoke-static {v5, v6, v4, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v1, v3

    .line 391
    :goto_0
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsQConnectSupported:Z

    if-nez v5, :cond_2

    .line 395
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mQuickConnectLayoutParent:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 404
    :goto_1
    return-void

    :cond_1
    move v1, v4

    .line 390
    goto :goto_0

    .line 397
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mQuickConnectLayoutParent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 398
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "qconnectchecked"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 399
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->quickConnectSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 401
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->quickConnectSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method private refreshForegroundViews()V
    .locals 6

    .prologue
    .line 709
    const-string v0, "QSEditPanel"

    const-string v1, "refreshForegroundViews()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mActivePanelLines:I

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSEditPanel;->addForegroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 732
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailablePanelLines:I

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSEditPanel;->addForegroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 733
    return-void
.end method

.method private refreshViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 653
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 654
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 655
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 656
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 657
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 658
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 659
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 660
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 661
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 664
    const v6, 0x7f020344

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 665
    .local v0, "activeAreaBg":Landroid/graphics/drawable/Drawable;
    const/16 v6, 0x19

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 666
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 668
    const v6, 0x7f0f0013

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    .line 669
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 670
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const v6, 0x7f0c0101

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 671
    .local v1, "displayWidth":I
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 672
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 673
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 675
    :cond_0
    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v6, v1, v6

    iget v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v5, v6, v7

    .line 677
    .local v5, "width":I
    const v6, 0x7f0c0227

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 678
    .local v3, "qsEditPanelButtonContainerMargin":I
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    mul-int/2addr v6, v7

    sub-int v6, v5, v6

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    .line 679
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0x7f0c0213

    :goto_0
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    .line 682
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    if-gez v6, :cond_1

    .line 683
    iput v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    .line 686
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshForegroundViews()V

    .line 687
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshBackgroundViews()V

    .line 688
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/QSEditPanel;->setFocus(I)V

    .line 689
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/QSEditPanel;->setFocus(I)V

    .line 691
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->clean()V

    .line 692
    return-void

    .line 679
    :cond_2
    const v6, 0x7f0c0212

    goto :goto_0
.end method

.method private saveButtonLists()V
    .locals 3

    .prologue
    .line 1266
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1267
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1269
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1270
    .local v1, "original":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1272
    .end local v1    # "original":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1273
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1274
    .restart local v1    # "original":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1276
    .end local v1    # "original":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private scrollPanleViews()V
    .locals 13

    .prologue
    .line 1406
    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1409
    .local v3, "res":Landroid/content/res/Resources;
    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mStartLongClickedIdx:I

    .line 1410
    .local v2, "longClickedIdx":I
    iget v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v2, v10, :cond_1

    .line 1411
    const/4 v1, 0x1

    .line 1416
    .local v1, "fromArea":I
    :goto_0
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1417
    .local v8, "touchedIdx":I
    iget v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v8, v10, :cond_2

    .line 1418
    const/4 v7, 0x1

    .line 1423
    .local v7, "toArea":I
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v10}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1424
    .local v4, "scrollViewheight":I
    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v10}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 1425
    .local v5, "scrollY":I
    const v10, 0x7f0c0211

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1426
    .local v0, "buttonHeight":I
    const v10, 0x7f0c022c

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0c021b

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int v6, v10, v11

    .line 1428
    .local v6, "summaryTextHeight":I
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scrollPanleViews() longClickedIdx : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " touchedIdx : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " scrollY : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scrollPanleViews() fromArea : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " toArea : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    div-int/lit8 v10, v0, 0x3

    sub-int v9, v0, v10

    .line 1432
    .local v9, "twoThirdsOfHeight":I
    if-ne v1, v7, :cond_6

    .line 1433
    if-nez v1, :cond_4

    if-nez v1, :cond_4

    .line 1434
    if-ltz v8, :cond_3

    const/4 v10, 0x4

    if-gt v8, v10, :cond_3

    .line 1435
    const/4 v10, 0x0

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    .line 1461
    :cond_0
    :goto_2
    return-void

    .line 1413
    .end local v0    # "buttonHeight":I
    .end local v1    # "fromArea":I
    .end local v4    # "scrollViewheight":I
    .end local v5    # "scrollY":I
    .end local v6    # "summaryTextHeight":I
    .end local v7    # "toArea":I
    .end local v8    # "touchedIdx":I
    .end local v9    # "twoThirdsOfHeight":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "fromArea":I
    goto/16 :goto_0

    .line 1420
    .restart local v8    # "touchedIdx":I
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "toArea":I
    goto/16 :goto_1

    .line 1436
    .restart local v0    # "buttonHeight":I
    .restart local v4    # "scrollViewheight":I
    .restart local v5    # "scrollY":I
    .restart local v6    # "summaryTextHeight":I
    .restart local v9    # "twoThirdsOfHeight":I
    :cond_3
    const/4 v10, 0x5

    if-lt v8, v10, :cond_0

    const/16 v10, 0x9

    if-gt v8, v10, :cond_0

    if-le v5, v9, :cond_0

    .line 1437
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1439
    :cond_4
    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    .line 1440
    const/16 v10, 0xf

    if-lt v8, v10, :cond_5

    const/16 v10, 0x13

    if-gt v8, v10, :cond_5

    if-eqz v5, :cond_5

    .line 1441
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1442
    :cond_5
    const/16 v10, 0x13

    if-le v8, v10, :cond_0

    .line 1443
    add-int v10, v0, v6

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1447
    :cond_6
    if-nez v1, :cond_8

    const/4 v10, 0x1

    if-ne v7, v10, :cond_8

    .line 1448
    const/16 v10, 0xf

    if-lt v8, v10, :cond_7

    const/16 v10, 0x13

    if-gt v8, v10, :cond_7

    if-nez v5, :cond_7

    .line 1449
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1450
    :cond_7
    const/16 v10, 0x13

    if-le v8, v10, :cond_0

    .line 1451
    add-int v10, v0, v6

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1453
    :cond_8
    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    if-nez v7, :cond_0

    .line 1454
    if-ltz v8, :cond_9

    const/4 v10, 0x4

    if-gt v8, v10, :cond_9

    if-eqz v5, :cond_9

    .line 1455
    const/4 v10, 0x0

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1456
    :cond_9
    const/4 v10, 0x5

    if-lt v8, v10, :cond_0

    const/16 v10, 0x9

    if-gt v8, v10, :cond_0

    if-eqz v5, :cond_0

    .line 1457
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2
.end method

.method private sendDiagnosticLogs()V
    .locals 6

    .prologue
    .line 1280
    const/4 v0, 0x0

    .line 1281
    .local v0, "buttonName":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1282
    .local v2, "dropIdx":I
    iget v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v2, v4, :cond_3

    .line 1283
    iget v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v2, v4

    .line 1284
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1287
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 1288
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1291
    :cond_2
    const/4 v3, 0x1

    .line 1292
    .local v3, "toArea":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buttonName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1305
    .restart local v0    # "buttonName":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "MOVETOACTIVE"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "MOVETOAVAILABLE"

    aput-object v5, v1, v4

    .line 1306
    .local v1, "diagnosticMessage":[Ljava/lang/String;
    aget-object v4, v1, v3

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/qs/QSEditPanel;->sendLogs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1294
    .end local v1    # "diagnosticMessage":[Ljava/lang/String;
    .end local v3    # "toArea":I
    :cond_3
    const/4 v3, 0x0

    .line 1295
    .restart local v3    # "toArea":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1298
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_4

    .line 1299
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1302
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buttonName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "buttonName":Ljava/lang/String;
    goto :goto_1
.end method

.method private sendLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 1313
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1314
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.systemui.statusbar.policy.quicksetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v2, "MOVETOACTIVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1316
    const-string v2, "feature"

    const-string v3, "QS01"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    :cond_0
    :goto_0
    const-string v2, "extra"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1327
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1328
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1329
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1330
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1331
    return-void

    .line 1317
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    const-string v2, "MOVETOAVAILABLE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1318
    const-string v2, "feature"

    const-string v3, "QS02"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1319
    :cond_2
    const-string v2, "QCONNECT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1320
    const-string v2, "feature"

    const-string v3, "QS08"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1321
    :cond_3
    const-string v2, "SFINDER"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1322
    const-string v2, "feature"

    const-string v3, "QS07"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFocus(I)V
    .locals 10
    .param p1, "mode"    # I

    .prologue
    const/16 v9, 0x65

    const v8, 0x7f0e019b

    .line 980
    const/4 v0, 0x0

    .line 981
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 985
    .local v1, "diff":I
    if-nez p1, :cond_3

    .line 986
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 987
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    .line 988
    .local v4, "parent":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    .line 1001
    :cond_0
    :goto_0
    const-string v5, "QSEditPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setFocus() childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsQConnectSupported:Z

    if-eqz v5, :cond_1

    .line 1004
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->quickConnectSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setNextFocusDownId(I)V

    .line 1006
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1008
    add-int v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 1010
    .local v3, "mFocusableChild":Landroid/widget/FrameLayout;
    if-nez v3, :cond_4

    .line 1055
    .end local v3    # "mFocusableChild":Landroid/widget/FrameLayout;
    :cond_2
    return-void

    .line 990
    .end local v2    # "i":I
    .end local v4    # "parent":Landroid/widget/FrameLayout;
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 991
    const/16 v1, 0x65

    .line 992
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    .line 994
    .restart local v4    # "parent":Landroid/widget/FrameLayout;
    if-nez v0, :cond_0

    .line 995
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mQuickConnectLayoutParent:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 996
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->quickConnectSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setNextFocusUpId(I)V

    .line 997
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->quickConnectSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setNextFocusDownId(I)V

    goto :goto_0

    .line 1014
    .restart local v2    # "i":I
    .restart local v3    # "mFocusableChild":Landroid/widget/FrameLayout;
    :cond_4
    const/4 v5, 0x1

    if-lt v2, v5, :cond_5

    .line 1015
    add-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusLeftId(I)V

    .line 1024
    :goto_2
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v0, :cond_7

    .line 1025
    add-int v5, v2, v1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusRightId(I)V

    .line 1033
    :goto_3
    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    add-int/2addr v5, v2

    if-ge v5, v0, :cond_9

    .line 1034
    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    .line 1046
    :goto_4
    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    sub-int v5, v2, v5

    if-ltz v5, :cond_c

    .line 1047
    add-int v5, v2, v1

    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusUpId(I)V

    .line 1006
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1017
    :cond_5
    if-nez p1, :cond_6

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 1018
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x65

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusLeftId(I)V

    goto :goto_2

    .line 1020
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusLeftId(I)V

    goto :goto_2

    .line 1027
    :cond_7
    if-nez p1, :cond_8

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 1028
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setNextFocusRightId(I)V

    goto :goto_3

    .line 1030
    :cond_8
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusRightId(I)V

    goto :goto_3

    .line 1036
    :cond_9
    if-nez p1, :cond_a

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 1037
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    goto :goto_4

    .line 1039
    :cond_a
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsQConnectSupported:Z

    if-eqz v5, :cond_b

    .line 1040
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->quickConnectSwitch:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    goto :goto_4

    .line 1042
    :cond_b
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    goto :goto_4

    .line 1049
    :cond_c
    if-nez p1, :cond_d

    .line 1050
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setNextFocusUpId(I)V

    goto :goto_5

    .line 1052
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusUpId(I)V

    goto/16 :goto_5
.end method

.method private setForegroundButtonViewId(Landroid/widget/FrameLayout;II)V
    .locals 1
    .param p1, "panelViewFocus"    # Landroid/widget/FrameLayout;
    .param p2, "idx"    # I
    .param p3, "mode"    # I

    .prologue
    .line 1059
    if-nez p3, :cond_0

    .line 1060
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1064
    :goto_0
    return-void

    .line 1062
    :cond_0
    add-int/lit8 v0, p2, 0x65

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    goto :goto_0
.end method

.method private setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V
    .locals 7
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const v6, 0x7f0a0063

    const/high16 v5, 0x437f0000    # 255.0f

    .line 2113
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2114
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v1, :cond_0

    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v3, :cond_0

    .line 2115
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 2118
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2119
    .local v0, "alpha":F
    instance-of v3, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 2120
    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    .line 2121
    .local v2, "lastFrame":I
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2123
    .end local v2    # "lastFrame":I
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    ushr-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    div-float v0, v3, v5

    .line 2124
    if-eqz v1, :cond_2

    .line 2125
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2126
    mul-float v3, v0, v5

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2128
    :cond_2
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2129
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2130
    return-void

    .line 2113
    .end local v0    # "alpha":F
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showToastPopup()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x6d

    const/16 v10, 0x6c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1343
    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1344
    .local v2, "longClickedIdx":I
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v2, v8, :cond_2

    .line 1345
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v2, v8

    .line 1346
    const/4 v1, 0x1

    .line 1351
    .local v1, "fromArea":I
    :goto_0
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1352
    .local v0, "dropIdx":I
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v0, v8, :cond_3

    .line 1353
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v0, v8

    .line 1354
    const/4 v5, 0x1

    .line 1359
    .local v5, "toArea":I
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    if-nez v8, :cond_0

    .line 1360
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const-string v9, ""

    invoke-static {v8, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    .line 1374
    :cond_0
    if-ne v1, v7, :cond_4

    if-nez v5, :cond_4

    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v8, v9, :cond_4

    .line 1375
    new-instance v4, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    invoke-direct {v4, p0, v12}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1376
    .local v4, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v1, v4, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1377
    iput v2, v4, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1378
    iput v0, v4, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1379
    const/4 v3, 0x0

    .line 1380
    .local v3, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1381
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1383
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1384
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1385
    iput-boolean v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    .line 1401
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    :goto_2
    return v6

    .line 1348
    .end local v0    # "dropIdx":I
    .end local v1    # "fromArea":I
    .end local v5    # "toArea":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "fromArea":I
    goto :goto_0

    .line 1356
    .restart local v0    # "dropIdx":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "toArea":I
    goto :goto_1

    .line 1387
    :cond_4
    if-nez v1, :cond_6

    if-ne v5, v7, :cond_6

    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v8, v9, :cond_6

    .line 1388
    new-instance v4, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    invoke-direct {v4, p0, v12}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1389
    .restart local v4    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v1, v4, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1390
    iput v2, v4, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1391
    iput v0, v4, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1392
    const/4 v3, 0x0

    .line 1393
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1394
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1396
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1397
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1398
    iput-boolean v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    goto :goto_2

    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    :cond_6
    move v6, v7

    .line 1401
    goto :goto_2
.end method

.method private showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1153
    .local p2, "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "overLayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    if-eqz p2, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1156
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0e01c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    .line 1158
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1162
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1163
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    .line 1165
    :cond_2
    return-void
.end method

.method private updateHelpTextPosition(ZZ)V
    .locals 3
    .param p1, "oneLine"    # Z
    .param p2, "twoLines"    # Z

    .prologue
    .line 695
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 696
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 697
    .local v0, "lpmAvailableParent":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f0c021b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 698
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 699
    :cond_0
    const v2, 0x7f0c021d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 702
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    return-void
.end method

.method private updateLayoutParams()V
    .locals 21

    .prologue
    .line 2003
    const-string v17, "QSEditPanel"

    const-string v18, "updateLayoutParams() "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 2007
    .local v16, "res":Landroid/content/res/Resources;
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSEditPanel;->updateResources()V

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mDefaultDisplay:Landroid/view/Display;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2010
    const-string v17, "QSEditPanel"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateLayoutParams()mEditPanelHeight =  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mEditPanelHeight:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    const v17, 0x7f0e0199

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 2012
    .local v4, "editContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2013
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const v17, 0x7f0c0101

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2014
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mEditPanelHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2015
    const v17, 0x7f0f0057

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2016
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mEditHeader:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 2020
    .local v9, "lpeditHeader":Landroid/widget/LinearLayout$LayoutParams;
    const v17, 0x7f0c020d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mEditHeader:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 2025
    .local v10, "lpmActiveParent":Landroid/widget/LinearLayout$LayoutParams;
    const v17, 0x7f0c022b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2026
    const v17, 0x7f0c022b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_0

    const v17, 0x7f0c0217

    :goto_0
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 2029
    .local v12, "mActiviePanelBottompadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2033
    const v17, 0x7f0c0112

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/qs/QSEditPanel;->mIconMarginTop:I

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 2036
    .local v11, "lpmAvailableParent":Landroid/widget/LinearLayout$LayoutParams;
    const v17, 0x7f0c022b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2037
    const v17, 0x7f0c022b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1

    const v17, 0x7f0c0218

    :goto_1
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 2041
    .local v13, "mAvailablePanelToppadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2046
    .local v7, "lpavailableButtonContainer":Landroid/view/ViewGroup$MarginLayoutParams;
    const v17, 0x7f0c0227

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2047
    const v17, 0x7f0c0227

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2051
    const v17, 0x7f0e01a2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 2052
    .local v14, "mEditSummaryGroup":Landroid/view/ViewGroup;
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2053
    .local v6, "lpEditSummaryGroup":Landroid/view/ViewGroup$MarginLayoutParams;
    const v17, 0x7f0c022f

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 2055
    invoke-virtual {v14, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2056
    const v17, 0x7f0c0228

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 2057
    .local v15, "padding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mEditSummary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v15, v1, v15, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mDoneButton:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 2065
    .local v8, "lpdoneButton":Landroid/widget/LinearLayout$LayoutParams;
    const v17, 0x7f0c0223

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 2066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mDoneButton:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2068
    return-void

    .line 2027
    .end local v6    # "lpEditSummaryGroup":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "lpavailableButtonContainer":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "lpdoneButton":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "lpmAvailableParent":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "mActiviePanelBottompadding":I
    .end local v13    # "mAvailablePanelToppadding":I
    .end local v14    # "mEditSummaryGroup":Landroid/view/ViewGroup;
    .end local v15    # "padding":I
    :cond_0
    const v17, 0x7f0c0215

    goto/16 :goto_0

    .line 2038
    .restart local v11    # "lpmAvailableParent":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v12    # "mActiviePanelBottompadding":I
    :cond_1
    const v17, 0x7f0c0216

    goto/16 :goto_1
.end method

.method private updateResources()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2133
    const-string v4, "QSEditPanel"

    const-string v5, "updateResources() "

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2137
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0c0213

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    .line 2139
    const v4, 0x7f0c0211

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    .line 2140
    const v4, 0x7f0f0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    .line 2143
    iput v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mActivePanelLines:I

    .line 2144
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    if-eqz v4, :cond_0

    .line 2145
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v4, v5

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v4, v5

    :goto_1
    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mActivePanelLines:I

    .line 2147
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f0c0217

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2149
    .local v0, "mActiviePanelBottompadding":I
    iget v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mActivePanelLines:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mActivePanelLines:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mActivePanelHeight:I

    .line 2152
    iget v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mActivePanelLines:I

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    .line 2155
    iput v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailablePanelLines:I

    .line 2156
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    if-eqz v4, :cond_1

    .line 2157
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v4, v5

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v4, v5

    :goto_3
    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailablePanelLines:I

    .line 2160
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x7f0c0218

    :goto_4
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2162
    .local v1, "mAvailablePanelToppadding":I
    iget v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailablePanelLines:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailablePanelLines:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailablePanelLines:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int v1, v4, v5

    .end local v1    # "mAvailablePanelToppadding":I
    :cond_2
    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailablePanelHeight:I

    .line 2165
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->isQuickConnectSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0c0239

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2166
    .local v2, "quickConnectHeight":I
    :cond_3
    const v4, 0x7f0c022f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditPanelBottomHeight:I

    .line 2171
    const v4, 0x7f0c020d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mActivePanelHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailablePanelHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditPanelBottomHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditPanelHeight:I

    .line 2172
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2173
    iget v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditPanelHeight:I

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v4, v5, :cond_9

    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_5
    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditPanelHeight:I

    .line 2174
    return-void

    .line 2137
    .end local v0    # "mActiviePanelBottompadding":I
    .end local v2    # "quickConnectHeight":I
    :cond_4
    const v4, 0x7f0c0212

    goto/16 :goto_0

    .line 2145
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2147
    :cond_6
    const v4, 0x7f0c0215

    goto/16 :goto_2

    .line 2157
    .restart local v0    # "mActiviePanelBottompadding":I
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 2160
    :cond_8
    const v4, 0x7f0c0216

    goto/16 :goto_4

    .line 2173
    .restart local v2    # "quickConnectHeight":I
    :cond_9
    iget v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditPanelHeight:I

    goto :goto_5
.end method

.method private updateTextResources()V
    .locals 8

    .prologue
    const v7, 0x3f8ccccd    # 1.1f

    const v6, 0x3f4ccccd    # 0.8f

    .line 1956
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1957
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mDoneButton:Landroid/widget/TextView;

    const v4, 0x7f0c0225

    const v5, 0x3f99999a    # 1.2f

    invoke-static {v3, v4, v6, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 1958
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditSummary:Landroid/widget/TextView;

    const v4, 0x7f0c0226

    invoke-static {v3, v4, v6, v7}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 1959
    const v3, 0x7f0e019c

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0c0237

    invoke-static {v3, v4, v6, v7}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 1960
    const v3, 0x7f0e01a6

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0c0238

    invoke-static {v3, v4, v6, v7}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 1962
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d045a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d03a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1965
    .local v0, "Donebutton":Ljava/lang/String;
    const v3, 0x7f0e019b

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1966
    .local v1, "done":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1967
    return-void
.end method


# virtual methods
.method public animateQsEditPanelOpen(F)V
    .locals 10
    .param p1, "value"    # F

    .prologue
    .line 1971
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1974
    .local v6, "res":Landroid/content/res/Resources;
    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditPanelBottomHeight:I

    .line 1975
    .local v2, "fraction":I
    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditPanelHeight:I

    .line 1977
    .local v5, "panelHeight":I
    const/4 v7, 0x0

    cmpl-float v7, p1, v7

    if-lez v7, :cond_0

    .line 1978
    const v7, 0x7f0e0199

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1979
    .local v1, "editContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1980
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sub-int v7, v5, v2

    float-to-int v8, p1

    add-int/2addr v7, v8

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1981
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1982
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->invalidate()V

    .line 1985
    .end local v1    # "editContainer":Landroid/widget/LinearLayout;
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mCrossIconNum:I

    if-ge v3, v7, :cond_2

    .line 1986
    add-int/lit16 v7, v3, 0x1b58

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1987
    .local v0, "Icon":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1988
    int-to-float v7, v2

    div-float v7, p1, v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1989
    int-to-float v7, v2

    div-float v7, p1, v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1985
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1992
    .end local v0    # "Icon":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditSummary:Landroid/widget/TextView;

    const v8, 0x3e99999a    # 0.3f

    int-to-float v9, v2

    div-float v9, p1, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1993
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mQuickConnectLayoutParent:Landroid/widget/LinearLayout;

    int-to-float v8, v2

    div-float v8, p1, v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1994
    int-to-float v7, v2

    div-float v7, p1, v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/QSEditPanel;->setAlpha(F)V

    .line 1996
    return-void
.end method

.method public getQsEditPanelBottomAreaHeight()I
    .locals 1

    .prologue
    .line 1999
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditPanelBottomHeight:I

    return v0
.end method

.method protected handleUpdateViewChangeState(Lcom/android/systemui/qs/QSEditPanel$MessageObject;)V
    .locals 6
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObject;

    .prologue
    .line 632
    const/4 v2, 0x0

    .line 634
    .local v2, "viewToUpdate":Landroid/view/View;
    const-string v3, "QSEditPanel"

    const-string v4, "handleUpdateViewChangeState()"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 637
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v2, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->viewContainer:Landroid/widget/FrameLayout;

    .line 638
    :cond_0
    if-eqz v2, :cond_1

    .line 639
    const v3, 0x7f0e01aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 640
    .local v0, "panelImageView":Landroid/widget/ImageView;
    const v3, 0x7f0e01ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 642
    .local v1, "panelTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iput-object v4, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 643
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->label:Ljava/lang/String;

    .line 644
    iget-object v3, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/qs/QSEditPanel;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V

    .line 645
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/systemui/qs/QSTileView;->handleLabelStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/widget/TextView;I)V

    .line 646
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->contentDesc:Ljava/lang/String;

    .line 647
    iget-object v3, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v3, v3, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 650
    .end local v0    # "panelImageView":Landroid/widget/ImageView;
    .end local v1    # "panelTextView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 408
    const-string v0, "QSEditPanel"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 410
    const v0, 0x7f0e01a1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    .line 411
    const v0, 0x7f0e019f

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    .line 412
    const v0, 0x7f0e019e

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    .line 413
    const v0, 0x7f0e01a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    .line 414
    const v0, 0x7f0e01a5

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mQuickConnectLayoutParent:Landroid/widget/LinearLayout;

    .line 415
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mQuickConnectLayoutParent:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$2;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    const v0, 0x7f0e019a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditHeader:Landroid/widget/LinearLayout;

    .line 423
    const v0, 0x7f0e019b

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mDoneButton:Landroid/widget/TextView;

    .line 426
    const v0, 0x7f0e019d

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    .line 428
    const v0, 0x7f0e01a3

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditSummary:Landroid/widget/TextView;

    .line 429
    const v0, 0x7f0e01a7

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->quickConnectSwitch:Landroid/widget/Switch;

    .line 430
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->quickConnectSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$3;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    .line 446
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLocale:Ljava/util/Locale;

    .line 447
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->updateTextResources()V

    .line 448
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1915
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1916
    const-string v0, "QSEditPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - newConfig.orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->updateTextResources()V

    .line 1921
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 1922
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    .line 1928
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1929
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->handleDelayedOnConfigurationChanged()V

    .line 1939
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1079
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1080
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 382
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 383
    return-void
.end method

.method public resetPanel()V
    .locals 8

    .prologue
    const/16 v7, 0x66

    const/16 v6, 0x65

    const v5, 0x7f0e019b

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 476
    const-string v1, "QSEditPanel"

    const-string v2, "resetPanel()"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->setTiles(Ljava/util/Collection;)V

    .line 483
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    .line 484
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshFooter()V

    .line 486
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 489
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    const v2, 0x7f0a00eb

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 490
    const v1, 0x7f0e0199

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a00eb

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 491
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a00e6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 492
    const v1, 0x7f0e01a3

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a00e6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 493
    const v1, 0x7f0e019c

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a00ee

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 494
    const v1, 0x7f0e01a6

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a00ee

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 495
    const v1, 0x7f0e01a4

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f020346

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 499
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 500
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 502
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 503
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 506
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 509
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 512
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 515
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 518
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 521
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 524
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 527
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    :cond_b
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSupportMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 532
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 536
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_button_background"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 537
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f020627

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_d
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f020028

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public saveAppslist()V
    .locals 7

    .prologue
    .line 2072
    const-string v0, ""

    .line 2076
    .local v0, "activeApps":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 2077
    const-string v4, "QSEditPanel"

    const-string v5, "invalid mArrayActiveList.  do not saveAppslist()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :goto_0
    return-void

    .line 2081
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2082
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2083
    .local v2, "convertPanelString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2084
    .local v1, "activeContent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2081
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2086
    .end local v1    # "activeContent":Ljava/lang/String;
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_1
    const-string v4, "QSEditPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  activeApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2088
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2089
    .restart local v2    # "convertPanelString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2090
    .restart local v1    # "activeContent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2087
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2092
    .end local v1    # "activeContent":Ljava/lang/String;
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_2
    const-string v4, "QSEditPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  totalButtons: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "sysui_qs_tiles"

    const/4 v6, -0x2

    invoke-static {v4, v5, v0, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 378
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 2109
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 2110
    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    const/4 v3, 0x0

    .line 544
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 545
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    .line 546
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    .line 547
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    .line 548
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 549
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 550
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile;

    .line 551
    .local v1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->addTile(Lcom/android/systemui/qs/QSTile;)V

    goto :goto_0

    .line 554
    .end local v1    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->updateLayoutParams()V

    .line 555
    return-void
.end method

.method public updateViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x64

    .line 451
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 452
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 453
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 455
    .local v4, "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    new-instance v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;

    invoke-direct {v2, p0, v8}, Lcom/android/systemui/qs/QSEditPanel$MessageObject;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 456
    .local v2, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    .line 457
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 458
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 459
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    .end local v4    # "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 464
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 465
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 466
    .restart local v4    # "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    new-instance v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;

    invoke-direct {v2, p0, v8}, Lcom/android/systemui/qs/QSEditPanel$MessageObject;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 467
    .restart local v2    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    .line 468
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 469
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 470
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 472
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    .end local v4    # "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_1
    return-void
.end method
