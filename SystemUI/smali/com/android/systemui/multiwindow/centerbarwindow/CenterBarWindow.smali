.class public Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;,
        Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;,
        Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_MIN_TIME:I


# instance fields
.field private final CENTER_BAR_DIRECTION_BL:S

.field private final CENTER_BAR_DIRECTION_BOTTOM:S

.field private final CENTER_BAR_DIRECTION_BR:S

.field private final CENTER_BAR_DIRECTION_LEFT:S

.field private final CENTER_BAR_DIRECTION_RIGHT:S

.field private final CENTER_BAR_DIRECTION_TL:S

.field private final CENTER_BAR_DIRECTION_TOP:S

.field private final CENTER_BAR_DIRECTION_TR:S

.field private final DEBUG:Z

.field private final ESTIMATE_INVALID_VALUE:S

.field private final WINDOW_PORTRAIT_MODE:S

.field private centerBarButtonSoundId:I

.field private mActionCancel:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAnimationPlaying:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAvailableAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mButtonsPopupWindow:Landroid/widget/PopupWindow;

.field private mCenterBar:Landroid/widget/ImageView;

.field private mCenterBarButtonCloseAnimating:Z

.field private mCenterBarButtonOpenAnimating:Z

.field private mCenterBarButtons:Landroid/view/View;

.field private mCenterBarDirection:I

.field private mCenterBarDockingSize:I

.field mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

.field private mCenterBarFlingNonQuadRatio:I

.field private mCenterBarFlingProportion:I

.field private mCenterBarFlingSizeH:I

.field private mCenterBarFlingSizeW:I

.field private mCenterBarFrame:Landroid/widget/FrameLayout;

.field private mCenterBarGestureDetector:Landroid/view/GestureDetector;

.field mCenterBarHoverListener:Landroid/view/View$OnHoverListener;

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private mCenterBarSize:I

.field private mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

.field mCloseButton:Landroid/view/View;

.field mCollapseButton:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentArrangeState:I

.field private mCurrentLanguage:Ljava/lang/String;

.field private mDisplayHeight:I

.field private mDisplayId:I

.field private mDisplayOrientation:I

.field private mDisplayWidth:I

.field private mDoubleTabbed:Z

.field private mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

.field mDragButton:Landroid/view/View;

.field private mFocusZoneInfo:I

.field mFullButton:Landroid/view/View;

.field private mFullSizeDocking:Z

.field private mGuideRect:Landroid/graphics/Rect;

.field private mGuideSize:I

.field private mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

.field private mHelpHubVersion:I

.field private mInputMethodChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mIsCenterBarFixed:Z

.field private mIsCenterBarMoved:Z

.field private mIsCenterBarPressed:Z

.field private mIsCrossRect:Z

.field private mIsDragAndDropStart:Z

.field private mIsDragMode:Z

.field private mIsFirst:Z

.field private mIsInLongPress:Z

.field private mIsNewHelpPopup:Z

.field private mIsShowButton:Z

.field private mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

.field private mLastBackgroundLandscape:I

.field private mLastBackgroundPortait:I

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

.field private mSoundPool:Landroid/media/SoundPool;

.field mSplitMaxWeight:F

.field mSplitMinWeight:F

.field private mStartCenterBarPoint:Landroid/graphics/Point;

.field mSupportQuadView:Z

.field mSwitchButton:Landroid/view/View;

.field mTimerHandler:Landroid/os/Handler;

.field private mToastCheck:Z

.field private mTouchEventX:I

.field private mTouchEventY:I

.field mTouchListener:Landroid/view/View$OnTouchListener;

.field private mTouchStartX:I

.field private mTouchStartY:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mViewForLayout:Landroid/view/View;

.field private mWM:Landroid/view/IWindowManager;

.field private mWindowCenterBar:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;

.field mbExitButton:Z

.field mbSideSyncButton:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    sput v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->DOUBLE_TAP_MIN_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 249
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->DEBUG:Z

    .line 132
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->WINDOW_PORTRAIT_MODE:S

    .line 134
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_TOP:S

    .line 135
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_BOTTOM:S

    .line 136
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_RIGHT:S

    .line 137
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_LEFT:S

    .line 138
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_TL:S

    .line 139
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_TR:S

    .line 140
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_BL:S

    .line 141
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_BR:S

    .line 142
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->ESTIMATE_INVALID_VALUE:S

    .line 147
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mService:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .line 148
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 159
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mStartCenterBarPoint:Landroid/graphics/Point;

    .line 178
    const/16 v2, 0x14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingProportion:I

    .line 179
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideRect:Landroid/graphics/Rect;

    .line 185
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsInLongPress:Z

    .line 186
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mToastCheck:Z

    .line 187
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullSizeDocking:Z

    .line 188
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActionCancel:Z

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    .line 207
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayId:I

    .line 221
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mbExitButton:Z

    .line 222
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mbSideSyncButton:Z

    .line 223
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSupportQuadView:Z

    .line 225
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarFixed:Z

    .line 228
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    .line 233
    const v2, 0x7f020303

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mLastBackgroundLandscape:I

    .line 236
    const v2, 0x7f020303

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mLastBackgroundPortait:I

    .line 239
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mHelpHubVersion:I

    .line 244
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->centerBarButtonSoundId:I

    .line 247
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentLanguage:Ljava/lang/String;

    .line 331
    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$1;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mInputMethodChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 350
    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$2;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

    .line 375
    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$3;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 886
    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$6;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarHoverListener:Landroid/view/View$OnHoverListener;

    .line 1132
    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$8;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 1904
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonCloseAnimating:Z

    .line 1905
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonOpenAnimating:Z

    .line 2754
    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$24;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$24;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    .line 250
    const-string v2, "CenterBarWindow"

    const-string v3, "CenterBarWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    .line 253
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mService:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActivityManager:Landroid/app/ActivityManager;

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SystemVibrator;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v3, "multiwindow_facade"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 261
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    .line 266
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    .line 267
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 268
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    .line 269
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    .line 270
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    .line 271
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 272
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchStartX:I

    .line 273
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchStartY:I

    .line 274
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsFirst:Z

    .line 275
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    .line 276
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragMode:Z

    .line 277
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragAndDropStart:Z

    .line 278
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarMoved:Z

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentArrangeState:I

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c028b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c028f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDockingSize:I

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0291

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideSize:I

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingNonQuadRatio:I

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsNewHelpPopup:Z

    .line 285
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWM:Landroid/view/IWindowManager;

    .line 288
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v18

    .line 289
    .local v18, "pm":Landroid/content/pm/IPackageManager;
    const-string v2, "com.sec.feature.multiwindow.quadview"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSupportQuadView:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 294
    .end local v18    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 295
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "ResponseAxT9Info"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mInputMethodChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 298
    new-instance v9, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v9, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 299
    .local v9, "centerBarArrangeFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 302
    new-instance v13, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v13, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 303
    .local v13, "screenOffFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 307
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.helphub"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 308
    .local v17, "info":Landroid/content/pm/PackageInfo;
    if-eqz v17, :cond_0

    .line 309
    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mHelpHubVersion:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    .end local v17    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportCenterbarClickSound(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v6}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSoundPool:Landroid/media/SoundPool;

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v4, 0x1100022

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->centerBarButtonSoundId:I

    .line 322
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentLanguage:Ljava/lang/String;

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSplitMinWeight()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSplitMinWeight:F

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSplitMaxWeight()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSplitMaxWeight:F

    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeButtonPopupLayout()V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->initVariables()V

    .line 329
    return-void

    .line 311
    :catch_0
    move-exception v16

    .line 312
    .local v16, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mHelpHubVersion:I

    goto :goto_1

    .line 319
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAudioManager:Landroid/media/AudioManager;

    goto :goto_2

    .line 290
    .end local v5    # "intentFilter":Landroid/content/IntentFilter;
    .end local v9    # "centerBarArrangeFilter":Landroid/content/IntentFilter;
    .end local v13    # "screenOffFilter":Landroid/content/IntentFilter;
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsInLongPress:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsInLongPress:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayId:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCrossRect:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCrossRect:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarPressed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarMoved:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarMoved:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchStartX:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchStartX:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchStartY:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchStartY:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentArrangeState:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentArrangeState:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->updateDisplaySize()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawGuideCenterBar(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mStartCenterBarPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActionCancel:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActionCancel:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->forceHideInputMethod()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDoubleTabbed:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDoubleTabbed:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Landroid/graphics/Point;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Landroid/graphics/Point;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getCenterBarEdgeArea(Landroid/graphics/Point;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->centerBarFullSizeDocking(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->findCandidateFocus()I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    return p1
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 116
    sget v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->DOUBLE_TAP_MIN_TIME:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    return p1
.end method

.method static synthetic access$3102(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarPoint()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mToastCheck:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showToastMessage(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showDragAndDropHelpDialog()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->startDragAndDrop()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->startHideButtonTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonOpenAnimating:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->animateCenterBarClose(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonCloseAnimating:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showButtonPopupWindow()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragAndDropStart:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragAndDropStart:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showButtonPopupWindow(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarFixed:Z

    return v0
.end method

.method private animateCenterBarClose(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1970
    iget-boolean v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonCloseAnimating:Z

    if-eqz v8, :cond_1

    .line 1971
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2023
    :cond_0
    return-void

    .line 1976
    :cond_1
    iput-boolean v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonCloseAnimating:Z

    .line 1977
    iput-boolean v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonOpenAnimating:Z

    .line 1979
    const v8, 0x7f0e0092

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1980
    .local v4, "leftBackground":Landroid/view/View;
    const v8, 0x7f0e0094

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1981
    .local v7, "rightBackground":Landroid/view/View;
    const v8, 0x7f0e0093

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1984
    .local v2, "centerBackground":Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_3

    .line 1985
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v9, 0x7f050004

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1989
    .local v1, "centerAnim":Landroid/view/animation/Animation;
    :goto_0
    new-instance v8, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$19;

    invoke-direct {v8, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$19;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v1, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2005
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2006
    invoke-direct {p0, v10, v11}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2007
    invoke-direct {p0, v10, v10}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2009
    const/4 v3, 0x0

    .line 2010
    .local v3, "left":I
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 2012
    .local v6, "right":I
    const/4 v5, 0x0

    .line 2014
    .local v5, "offset":I
    :goto_1
    if-gt v3, v6, :cond_0

    .line 2015
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v9, 0x7f050009

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2016
    .local v0, "a":Landroid/view/animation/Animation;
    mul-int/lit16 v8, v5, 0xc8

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2017
    if-eq v3, v6, :cond_2

    .line 2018
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2020
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2021
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, 0x1

    .line 2022
    goto :goto_1

    .line 1987
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "centerAnim":Landroid/view/animation/Animation;
    .end local v3    # "left":I
    .end local v5    # "offset":I
    .end local v6    # "right":I
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v9, 0x7f050005

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .restart local v1    # "centerAnim":Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method private animateCenterBarOpen(Landroid/view/View;Z)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "autoCloseAnim"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1908
    iget-boolean v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonOpenAnimating:Z

    if-eqz v9, :cond_1

    .line 1909
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1967
    :cond_0
    return-void

    .line 1915
    :cond_1
    iput-boolean v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonCloseAnimating:Z

    .line 1916
    iput-boolean v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtonOpenAnimating:Z

    .line 1917
    const v9, 0x7f0e0092

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1918
    .local v5, "leftBackground":Landroid/view/View;
    const v9, 0x7f0e0094

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1919
    .local v8, "rightBackground":Landroid/view/View;
    const v9, 0x7f0e0093

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1922
    .local v2, "centerBackground":Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v11, :cond_3

    .line 1923
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v10, 0x7f050007

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1927
    .local v1, "centerAnim":Landroid/view/animation/Animation;
    :goto_0
    new-instance v9, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;

    invoke-direct {v9, p0, p2, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$18;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;ZLandroid/view/View;)V

    invoke-virtual {v1, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1949
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1950
    invoke-direct {p0, v11, v11}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1951
    invoke-direct {p0, v11, v12}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1953
    const/4 v4, 0x0

    .line 1954
    .local v4, "left":I
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 1955
    .local v7, "right":I
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    add-int/lit8 v3, v9, -0x1

    .line 1956
    .local v3, "closer":I
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_4

    add-int/lit8 v6, v3, 0x1

    .line 1958
    .local v6, "offset":I
    :goto_1
    if-gt v4, v7, :cond_0

    .line 1959
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v10, 0x7f050008

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1960
    .local v0, "a":Landroid/view/animation/Animation;
    mul-int/lit16 v9, v6, 0xc8

    int-to-long v10, v9

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1961
    if-eq v4, v7, :cond_2

    .line 1962
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1964
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1965
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v6, v6, -0x1

    .line 1966
    goto :goto_1

    .line 1925
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "centerAnim":Landroid/view/animation/Animation;
    .end local v3    # "closer":I
    .end local v4    # "left":I
    .end local v6    # "offset":I
    .end local v7    # "right":I
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v10, 0x7f050006

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .restart local v1    # "centerAnim":Landroid/view/animation/Animation;
    goto :goto_0

    .restart local v3    # "closer":I
    .restart local v4    # "left":I
    .restart local v7    # "right":I
    :cond_4
    move v6, v3

    .line 1956
    goto :goto_1
.end method

.method private centerBarFullSizeDocking(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1018
    const/4 v2, 0x0

    .line 1019
    .local v2, "docking":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v4, v6

    .line 1020
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v5, v6

    .line 1021
    .local v5, "y":I
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v0

    .line 1023
    .local v0, "arrange":I
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getCenterBarEdgeArea(Landroid/graphics/Point;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    move-result-object v1

    .line 1024
    .local v1, "currentEdge":Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getCenterBarEdgeArea(Landroid/graphics/Point;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    move-result-object v3

    .line 1025
    .local v3, "newEdge":Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;
    if-ne v1, v3, :cond_0

    sget-object v6, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;->NONE:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    if-ne v1, v6, :cond_1

    .line 1026
    :cond_0
    const/4 v6, 0x0

    .line 1069
    :goto_0
    return v6

    .line 1029
    :cond_1
    const/4 v6, 0x1

    if-gt v0, v6, :cond_2

    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 1030
    :cond_2
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeW:I

    div-int/lit8 v6, v6, 0x2

    if-gt v4, v6, :cond_3

    .line 1031
    const/4 v2, 0x1

    .line 1032
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    .line 1034
    :cond_3
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    iget v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeW:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-lt v4, v6, :cond_4

    .line 1035
    const/4 v2, 0x1

    .line 1036
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fee666666666666L    # 0.95

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    .line 1040
    :cond_4
    const/4 v6, 0x1

    if-gt v0, v6, :cond_5

    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 1041
    :cond_5
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeH:I

    div-int/lit8 v6, v6, 0x2

    if-gt v5, v6, :cond_6

    .line 1042
    const/4 v2, 0x1

    .line 1043
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 1045
    :cond_6
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    iget v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_7

    .line 1046
    const/4 v2, 0x1

    .line 1047
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fee666666666666L    # 0.95

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 1051
    :cond_7
    if-eqz v2, :cond_a

    .line 1052
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarPoint()V

    .line 1053
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->centerControlBarDocking(Z)Z

    .line 1054
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1055
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 1057
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 1058
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1059
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->isEnableMakePenWindow()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1060
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1063
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->findCandidateFocus()I

    move-result v8

    xor-int/lit8 v8, v8, -0x1

    and-int/lit8 v8, v8, 0xf

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->changeTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1064
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->findCandidateFocus()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->changeTaskToFull(I)V

    .line 1068
    :cond_a
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullSizeDocking:Z

    move v6, v2

    .line 1069
    goto/16 :goto_0
.end method

.method private checkFunctionState(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p2, "disableFunction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2819
    .local p1, "disableFunctionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2820
    const/4 v0, 0x0

    .line 2822
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearButtonAnimation()V
    .locals 4

    .prologue
    .line 2837
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2838
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 2840
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2841
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 2842
    .local v0, "currentAni":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 2843
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2844
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 2847
    .end local v0    # "currentAni":Landroid/view/animation/Animation;
    :cond_1
    return-void
.end method

.method private drawGuideCenterBar(II)V
    .locals 8
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const v7, 0x7f020304

    const/4 v6, 0x1

    .line 697
    const-string v3, "CenterBarWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawGuideCenterBar : positionX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", positionY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->cancelHideButtonTimer()V

    .line 701
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    if-nez v3, :cond_0

    .line 702
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 703
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040014

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 704
    .local v1, "guideView":Landroid/view/View;
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v4, 0x7f100010

    invoke-direct {v0, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 705
    .local v0, "context":Landroid/view/ContextThemeWrapper;
    new-instance v3, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    invoke-direct {v3, v0, v1, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    .line 707
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentArrangeState:I

    if-le v3, v6, :cond_1

    .line 708
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    const v4, 0x7f020305

    invoke-virtual {v3, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->setDrawable(I)V

    .line 718
    .end local v0    # "context":Landroid/view/ContextThemeWrapper;
    .end local v1    # "guideView":Landroid/view/View;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 719
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 720
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideSize:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 721
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideSize:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 723
    const-string v3, "CenterBarWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawGuideCenterBar : guideRect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->show(Landroid/graphics/Rect;)V

    .line 725
    return-void

    .line 710
    .restart local v0    # "context":Landroid/view/ContextThemeWrapper;
    .restart local v1    # "guideView":Landroid/view/View;
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v3, v6, :cond_2

    .line 711
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    invoke-virtual {v3, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->setDrawable(I)V

    goto :goto_0

    .line 713
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    const v4, 0x7f020306

    invoke-virtual {v3, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->setDrawable(I)V

    goto :goto_0
.end method

.method private findCandidateFocus()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/16 v4, 0x8

    .line 1074
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v0

    .line 1076
    .local v0, "arrange":I
    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 1077
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_2

    .line 1078
    if-eq v0, v4, :cond_0

    if-ne v0, v6, :cond_1

    .line 1079
    :cond_0
    const/16 v1, 0x8

    .line 1129
    .local v1, "zone":I
    :goto_0
    return v1

    .line 1081
    .end local v1    # "zone":I
    :cond_1
    const/16 v1, 0xc

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1083
    .end local v1    # "zone":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_5

    .line 1084
    if-eq v0, v4, :cond_3

    if-ne v0, v6, :cond_4

    .line 1085
    :cond_3
    const/4 v1, 0x4

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1087
    .end local v1    # "zone":I
    :cond_4
    const/16 v1, 0xc

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1089
    .end local v1    # "zone":I
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_8

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_8

    .line 1090
    if-eq v0, v4, :cond_6

    if-ne v0, v5, :cond_7

    .line 1091
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1093
    .end local v1    # "zone":I
    :cond_7
    const/4 v1, 0x3

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1096
    .end local v1    # "zone":I
    :cond_8
    if-eq v0, v4, :cond_9

    if-ne v0, v5, :cond_a

    .line 1097
    :cond_9
    const/4 v1, 0x2

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1099
    .end local v1    # "zone":I
    :cond_a
    const/4 v1, 0x3

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1103
    .end local v1    # "zone":I
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_e

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_e

    .line 1104
    if-eq v0, v4, :cond_c

    if-ne v0, v6, :cond_d

    .line 1105
    :cond_c
    const/16 v1, 0x8

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1107
    .end local v1    # "zone":I
    :cond_d
    const/16 v1, 0xc

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1109
    .end local v1    # "zone":I
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_11

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_11

    .line 1110
    if-eq v0, v4, :cond_f

    if-ne v0, v5, :cond_10

    .line 1111
    :cond_f
    const/4 v1, 0x2

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1113
    .end local v1    # "zone":I
    :cond_10
    const/4 v1, 0x3

    .restart local v1    # "zone":I
    goto :goto_0

    .line 1115
    .end local v1    # "zone":I
    :cond_11
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_14

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_14

    .line 1116
    if-eq v0, v4, :cond_12

    if-ne v0, v5, :cond_13

    .line 1117
    :cond_12
    const/4 v1, 0x1

    .restart local v1    # "zone":I
    goto/16 :goto_0

    .line 1119
    .end local v1    # "zone":I
    :cond_13
    const/4 v1, 0x3

    .restart local v1    # "zone":I
    goto/16 :goto_0

    .line 1122
    .end local v1    # "zone":I
    :cond_14
    if-eq v0, v4, :cond_15

    if-ne v0, v6, :cond_16

    .line 1123
    :cond_15
    const/4 v1, 0x4

    .restart local v1    # "zone":I
    goto/16 :goto_0

    .line 1125
    .end local v1    # "zone":I
    :cond_16
    const/16 v1, 0xc

    .restart local v1    # "zone":I
    goto/16 :goto_0
.end method

.method private forceHideInputMethod()V
    .locals 1

    .prologue
    .line 1491
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1492
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1493
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 1495
    :cond_0
    return-void
.end method

.method private getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;
    .locals 12
    .param p1, "open"    # Z
    .param p2, "left"    # Z

    .prologue
    .line 1862
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v2, 0x7f0e0093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1863
    .local v10, "centerImageView":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 1865
    .local v9, "centerImageParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1866
    iget v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v11, v1, 0x2

    .line 1867
    .local v11, "showposition":I
    if-eqz p1, :cond_1

    .line 1868
    if-eqz p2, :cond_0

    .line 1869
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1898
    .local v0, "t":Landroid/view/animation/TranslateAnimation;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1899
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 1900
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1901
    return-object v0

    .line 1871
    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    neg-int v2, v11

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_0

    .line 1874
    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :cond_1
    if-eqz p2, :cond_2

    .line 1875
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1879
    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :goto_1
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    goto :goto_0

    .line 1877
    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :cond_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-int v4, v11

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_1

    .line 1882
    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    .end local v11    # "showposition":I
    :cond_3
    iget v1, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v11, v1, 0x2

    .line 1883
    .restart local v11    # "showposition":I
    if-eqz p1, :cond_5

    .line 1884
    if-eqz p2, :cond_4

    .line 1885
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_0

    .line 1887
    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :cond_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    neg-int v6, v11

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_0

    .line 1890
    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :cond_5
    if-eqz p2, :cond_6

    .line 1891
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v11

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1895
    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :goto_2
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    goto/16 :goto_0

    .line 1893
    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :cond_6
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    neg-int v8, v11

    int-to-float v8, v8

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_2
.end method

.method private getCenterBarEdgeArea(Landroid/graphics/Point;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;
    .locals 1
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 927
    sget-object v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;->NONE:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    return-object v0
.end method

.method private initButtonPopup()V
    .locals 13

    .prologue
    .line 1421
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1422
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1424
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1425
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1427
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    :goto_0
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    const/4 v5, 0x0

    .line 1458
    .local v5, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 1459
    .local v10, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 1460
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1461
    .local v9, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1462
    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-eqz v8, :cond_0

    .line 1463
    iget-object v11, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    const/16 v12, 0x80

    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1464
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    .line 1465
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_3

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1466
    .local v4, "applicationMetaData":Landroid/os/Bundle;
    :goto_1
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1467
    .local v2, "activityMetaData":Landroid/os/Bundle;
    if-eqz v4, :cond_4

    .line 1468
    const-string v11, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1469
    .local v3, "applicationFunction":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1470
    new-instance v6, Ljava/util/ArrayList;

    const-string v11, "\\|"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v5, v6

    .line 1485
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "activityMetaData":Landroid/os/Bundle;
    .end local v3    # "applicationFunction":Ljava/lang/String;
    .end local v4    # "applicationMetaData":Landroid/os/Bundle;
    .end local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v10    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_2
    const-string v11, "exit"

    invoke-direct {p0, v5, v11}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->checkFunctionState(Ljava/util/List;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1486
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1488
    :cond_1
    return-void

    .line 1429
    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v11, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1465
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v9    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v10    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1472
    .restart local v2    # "activityMetaData":Landroid/os/Bundle;
    .restart local v4    # "applicationMetaData":Landroid/os/Bundle;
    :cond_4
    if-eqz v2, :cond_0

    .line 1473
    :try_start_1
    const-string v11, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1474
    .local v0, "activityFunction":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1475
    new-instance v6, Ljava/util/ArrayList;

    const-string v11, "\\|"

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v5, v6

    .end local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .line 1481
    .end local v0    # "activityFunction":Ljava/lang/String;
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "activityMetaData":Landroid/os/Bundle;
    .end local v4    # "applicationMetaData":Landroid/os/Bundle;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v10    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v7

    .line 1482
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private makeButtonPopupLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1497
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v7, 0x103012b

    invoke-direct {v1, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1498
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1499
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04000b

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    .line 1500
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v7, 0x7f0e0095

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    .line 1503
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    .line 1504
    .local v4, "ripple":Landroid/graphics/drawable/RippleDrawable;
    if-eqz v4, :cond_0

    .line 1505
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060196

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1506
    .local v0, "color":I
    const v6, 0xffffff

    and-int/2addr v6, v0

    const/high16 v7, 0x66000000

    or-int v0, v6, v7

    .line 1507
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 1511
    .end local v0    # "color":I
    :cond_0
    new-instance v5, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$9;

    invoke-direct {v5, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$9;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    .line 1561
    .local v5, "touchListener":Landroid/view/View$OnTouchListener;
    new-instance v3, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$10;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    .line 1569
    .local v3, "longClickListener":Landroid/view/View$OnLongClickListener;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v7, 0x7f0e0098

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    .line 1570
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 1571
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1572
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1573
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$11;

    invoke-direct {v7, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$11;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1589
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1592
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v7, 0x7f0e0096

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    .line 1593
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 1594
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1595
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1596
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;

    invoke-direct {v7, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$12;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1621
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1623
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v7, 0x7f0e0097

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    .line 1624
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 1625
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1626
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1627
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$13;

    invoke-direct {v7, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$13;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1642
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1645
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v7, 0x7f0e0099

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    .line 1646
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 1647
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1648
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1649
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$14;

    invoke-direct {v7, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$14;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1660
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1663
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v7, 0x7f0e009a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    .line 1664
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 1665
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1666
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1667
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;

    invoke-direct {v7, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1700
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1702
    :cond_5
    return-void
.end method

.method private makeDragAndDropHelpPopupLayout()V
    .locals 9

    .prologue
    .line 2851
    :try_start_0
    const-string v6, "CenterBarWindow"

    const-string v7, "makeDragAndDropHelpPopLayout()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 2853
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v6, 0x1090075

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2854
    .local v0, "dragAndDropHelpPopupView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2908
    .end local v0    # "dragAndDropHelpPopupView":Landroid/view/View;
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_0
    return-void

    .line 2858
    .restart local v0    # "dragAndDropHelpPopupView":Landroid/view/View;
    .restart local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    const v6, 0x10203cc

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 2859
    .local v3, "okButton":Landroid/widget/Button;
    new-instance v6, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$25;

    invoke-direct {v6, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$25;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2868
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const v8, 0x7f100018

    invoke-direct {v6, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    .line 2872
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2874
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$26;

    invoke-direct {v7, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$26;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2886
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$27;

    invoke-direct {v7, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$27;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2897
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 2898
    .local v5, "w":Landroid/view/Window;
    const/16 v6, 0x300

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 2899
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 2900
    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x7d8

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2901
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2902
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 2903
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2904
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0118

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2905
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2906
    .end local v0    # "dragAndDropHelpPopupView":Landroid/view/View;
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "okButton":Landroid/widget/Button;
    .end local v4    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "w":Landroid/view/Window;
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method private prepareCenterBarAnimation()Z
    .locals 1

    .prologue
    .line 2325
    const/4 v0, 0x1

    return v0
.end method

.method private setCenterBarPoint()V
    .locals 3

    .prologue
    .line 801
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->checkSealedFixedWindow(Z)V

    .line 804
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 805
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 807
    const-string v0, "CenterBarWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCenterBarPoint : mCenterBarPoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return-void
.end method

.method private setHoverMarginOfButtons()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2305
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.cocktailbar"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2306
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2307
    .local v0, "degrees":I
    const/4 v2, 0x0

    .line 2308
    .local v2, "yOffset":I
    if-ne v0, v1, :cond_0

    .line 2309
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c02ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2312
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2313
    .local v1, "isHoverEnabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 2314
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSwitchButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    neg-int v5, v2

    invoke-virtual {v4, v3, v5}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2315
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    neg-int v5, v2

    invoke-virtual {v4, v3, v5}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2316
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    neg-int v5, v2

    invoke-virtual {v4, v3, v5}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2317
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCloseButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    neg-int v5, v2

    invoke-virtual {v4, v3, v5}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2318
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCollapseButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    neg-int v5, v2

    invoke-virtual {v4, v3, v5}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 2321
    .end local v0    # "degrees":I
    .end local v1    # "isHoverEnabled":Z
    .end local v2    # "yOffset":I
    :cond_1
    return-void

    .restart local v0    # "degrees":I
    .restart local v2    # "yOffset":I
    :cond_2
    move v1, v3

    .line 2312
    goto :goto_0
.end method

.method private showButtonPopupWindow()V
    .locals 1

    .prologue
    .line 1734
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showButtonPopupWindow(Z)V

    .line 1735
    return-void
.end method

.method private showButtonPopupWindow(Z)V
    .locals 23
    .param p1, "autoCloseAnim"    # Z

    .prologue
    .line 1743
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1849
    :cond_0
    :goto_0
    return-void

    .line 1749
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1752
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDoubleTabbed:Z

    if-nez v3, :cond_0

    .line 1755
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsInLongPress:Z

    if-nez v3, :cond_0

    .line 1758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getFocusedZone()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    .line 1759
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    if-eqz v3, :cond_0

    .line 1762
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarFixed:Z

    if-eqz v3, :cond_3

    .line 1763
    const-string v3, "CenterBarWindow"

    const-string v4, "CenterBarWindow is fixed! skip showing centerbarbutton "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1767
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->prepareCenterBarAnimation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportCenterbarClickSound(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->centerBarButtonSoundId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 1773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->centerBarButtonSoundId:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1781
    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->initButtonPopup()V

    .line 1784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v4, 0x7f0e0092

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 1785
    .local v19, "leftImageView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v4, 0x7f0e0094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1786
    .local v22, "rightImageView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const v4, 0x7f0e0093

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1787
    .local v15, "centerImageView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 1788
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 1789
    .local v14, "centerImageParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1790
    .local v16, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 1791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1798
    :goto_2
    new-instance v3, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    .line 1799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    .line 1801
    const/16 v20, 0x0

    .line 1802
    .local v20, "posX":I
    const/16 v21, 0x0

    .line 1803
    .local v21, "posY":I
    const/16 v17, 0x0

    .line 1804
    .local v17, "gravity":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0297

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v13, v3

    .line 1805
    .local v13, "buttonsMargin":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0298

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v11, v3

    .line 1808
    .local v11, "buttonBgHeight":I
    new-instance v12, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$16;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$16;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    .line 1824
    .local v12, "buttonHoverListener":Landroid/view/View$OnHoverListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1825
    .local v10, "b":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1826
    invoke-virtual {v10, v12}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_3

    .line 1776
    .end local v10    # "b":Landroid/view/View;
    .end local v11    # "buttonBgHeight":I
    .end local v12    # "buttonHoverListener":Landroid/view/View$OnHoverListener;
    .end local v13    # "buttonsMargin":I
    .end local v14    # "centerImageParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v15    # "centerImageView":Landroid/view/View;
    .end local v16    # "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "gravity":I
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "leftImageView":Landroid/view/View;
    .end local v20    # "posX":I
    .end local v21    # "posY":I
    .end local v22    # "rightImageView":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_4

    .line 1777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 1794
    .restart local v14    # "centerImageParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v15    # "centerImageView":Landroid/view/View;
    .restart local v16    # "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v19    # "leftImageView":Landroid/view/View;
    .restart local v22    # "rightImageView":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2

    .line 1830
    .restart local v11    # "buttonBgHeight":I
    .restart local v12    # "buttonHoverListener":Landroid/view/View$OnHoverListener;
    .restart local v13    # "buttonsMargin":I
    .restart local v17    # "gravity":I
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v20    # "posX":I
    .restart local v21    # "posY":I
    :cond_8
    const/16 v17, 0x11

    .line 1831
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setHoverMarginOfButtons()V

    .line 1833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1835
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$17;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$17;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    move/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1846
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    .line 1848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->animateCenterBarOpen(Landroid/view/View;Z)V

    goto/16 :goto_0
.end method

.method private showDragAndDropHelpDialog()V
    .locals 2

    .prologue
    .line 2913
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getSealedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2925
    :cond_0
    :goto_0
    return-void

    .line 2917
    :cond_1
    const-string v0, "CenterBarWindow"

    const-string v1, "showDragAndDropHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const-string v1, "do_not_show_help_popup_drag_and_drop"

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getPreferenceThroughSystemProcess(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2923
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeDragAndDropHelpPopupLayout()V

    .line 2924
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    goto :goto_0
.end method

.method private showToastMessage(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v12, 0x35

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1705
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 1706
    .local v3, "screenPos":[I
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1707
    .local v4, "screenWidth":I
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->density:F

    .line 1708
    .local v1, "density":F
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1710
    iget-boolean v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mToastCheck:Z

    if-eqz v7, :cond_0

    .line 1731
    :goto_0
    return-void

    .line 1713
    :cond_0
    iput-boolean v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mToastCheck:Z

    .line 1715
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1717
    .local v0, "cheatSheet":Landroid/widget/Toast;
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1718
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040046

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1719
    .local v6, "toastView":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1720
    const v7, 0x7f0e017e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1721
    .local v5, "toastTxt":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1723
    iget v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v7, v10, :cond_1

    .line 1724
    aget v7, v3, v10

    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0288

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v3, v10

    .line 1725
    float-to-int v7, v1

    mul-int/lit8 v7, v7, 0x5

    sub-int v7, v4, v7

    aget v8, v3, v11

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    aget v8, v3, v10

    invoke-virtual {v0, v12, v7, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 1730
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1727
    :cond_1
    aget v7, v3, v11

    sub-int v7, v4, v7

    aget v8, v3, v10

    invoke-virtual {v0, v12, v7, v8}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method private startDragAndDrop()V
    .locals 4

    .prologue
    .line 2935
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2936
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.multiwindow.centerbarwindow.SmartClipDragDrop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2937
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2938
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    .line 2939
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v2, "SPLW"

    const-string v3, "DRAGCONTENT"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2942
    return-void
.end method

.method private startHideButtonTimer()V
    .locals 2

    .prologue
    const/16 v1, 0xc9

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1398
    :cond_0
    return-void
.end method

.method private updateDisplaySize()V
    .locals 2

    .prologue
    .line 342
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 343
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 345
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    .line 346
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    .line 348
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelHideButtonTimer()V
    .locals 2

    .prologue
    const/16 v1, 0xc9

    .line 1401
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1403
    :cond_0
    return-void
.end method

.method public centerControlBarDocking(Z)Z
    .locals 8
    .param p1, "checkAll"    # Z

    .prologue
    const/4 v7, 0x1

    .line 811
    const-string v4, "CenterBarWindow"

    const-string v5, "centerControlBarDocking"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v3, 0x0

    .line 814
    .local v3, "result":Z
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDockingSize:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 815
    .local v1, "dockingRange":I
    const/4 v2, 0x0

    .line 816
    .local v2, "dockingWidth":I
    const/4 v0, 0x0

    .line 818
    .local v0, "dockingHeight":I
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v4, v7, :cond_6

    .line 819
    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeW:I

    .line 820
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v0, v4, 0x64

    .line 826
    :goto_0
    if-nez p1, :cond_0

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 827
    :cond_0
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v5

    add-int/2addr v5, v0

    if-gt v4, v5, :cond_7

    .line 828
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v5

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 829
    const/4 v3, 0x1

    .line 840
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v4, v7, :cond_5

    .line 841
    :cond_2
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    if-gt v4, v2, :cond_3

    .line 842
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iput v2, v4, Landroid/graphics/Point;->x:I

    .line 843
    const/4 v3, 0x1

    .line 845
    :cond_3
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    sub-int/2addr v5, v2

    if-lt v4, v5, :cond_4

    .line 846
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 847
    const/4 v3, 0x1

    .line 849
    :cond_4
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v1

    if-lt v4, v5, :cond_5

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    if-gt v4, v5, :cond_5

    .line 851
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 852
    const/4 v3, 0x1

    .line 856
    :cond_5
    return v3

    .line 822
    :cond_6
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v2, v4, 0x64

    .line 823
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeH:I

    goto :goto_0

    .line 830
    :cond_7
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    sub-int/2addr v5, v0

    if-lt v4, v5, :cond_8

    .line 831
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    sub-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 832
    const/4 v3, 0x1

    goto :goto_1

    .line 833
    :cond_8
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    if-lt v4, v5, :cond_1

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    if-gt v4, v5, :cond_1

    .line 835
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getIndicatorSize()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 836
    const/4 v3, 0x1

    goto/16 :goto_1
.end method

.method public checkFixedBoundsForDimLayer()Z
    .locals 9

    .prologue
    const v8, 0x3f4ccccd    # 0.8f

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v5, 0x1

    .line 860
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 861
    .local v3, "MIN_FIXED_WIDTH":I
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v1, v6

    .line 863
    .local v1, "MAX_FIXED_WIDTH":I
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 864
    .local v2, "MIN_FIXED_HEIGHT":I
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v0, v6

    .line 866
    .local v0, "MAX_FIXED_HEIGHT":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " / CenterBarPoint = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {v7}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 867
    .local v4, "detailLog":Ljava/lang/String;
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v6, v5, :cond_1

    .line 868
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / MIN_FIXED_HEIGHT="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / MAX_FIXED_HEIGHT="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 869
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-gt v0, v6, :cond_1

    .line 870
    :cond_0
    const-string v6, "CenterBarWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "true, CenterBarPoint is out of fixed bonunds for DimLayer in Portrait Mode / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :goto_0
    return v5

    .line 874
    :cond_1
    iget v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 875
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / MIN_FIXED_WIDTH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / MAX_FIXED_WIDTH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 876
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-gt v1, v6, :cond_3

    .line 877
    :cond_2
    const-string v6, "CenterBarWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "true, CenterBarPoint is out of fixed bonunds for DimLayer in LandScape Mode / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 882
    :cond_3
    const-string v5, "CenterBarWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "false, CenterBarPoint is in fixed bonunds for DimLayer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public checkSealedFixedWindow(Z)V
    .locals 5
    .param p1, "forceUpdate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2951
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getSealedState()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p1, :cond_3

    .line 2952
    :cond_0
    const/16 v4, 0x1b9

    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getKnoxSealedMultiWindowFixedState(I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    .line 2953
    .local v0, "sealedMultiWindowFixed":Z
    :goto_0
    const/16 v4, 0x1ba

    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getKnoxSealedMultiWindowFixedState(I)I

    move-result v1

    .line 2954
    .local v1, "splitPercentage":I
    if-nez v0, :cond_1

    .line 2955
    const/16 v1, 0x32

    .line 2957
    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    .line 2958
    :cond_2
    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v4, v2, :cond_5

    .line 2959
    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    mul-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 2960
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 2961
    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    mul-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    .line 2962
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 2969
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 2970
    const-string v2, "CenterBarWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sealed Fixed mode - centre bar position ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    .end local v0    # "sealedMultiWindowFixed":Z
    .end local v1    # "splitPercentage":I
    :cond_3
    return-void

    :cond_4
    move v0, v3

    .line 2952
    goto :goto_0

    .line 2964
    .restart local v0    # "sealedMultiWindowFixed":Z
    .restart local v1    # "splitPercentage":I
    :cond_5
    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    mul-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    .line 2965
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 2966
    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    mul-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 2967
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    iput v4, v2, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method public drawCenterBar(II)V
    .locals 6
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    .line 605
    const-string v3, "CenterBarWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawCenterBar : positionX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", positionY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 607
    const-string v3, "CenterBarWindow"

    const-string v4, "CenterBar is null, so return."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarPressed:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setImageToImageView(Z)V

    .line 621
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarViewsVisibility(I)V

    .line 622
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 623
    .local v0, "centerBarLayout":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0290

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 625
    .local v2, "transparentMargin":I
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int p1, v3, v2

    .line 626
    :cond_1
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int p1, v3, v2

    .line 627
    :cond_2
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    if-gtz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int p2, v3, v2

    .line 628
    :cond_3
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p2

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    if-lt v3, v4, :cond_4

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int p2, v3, v2

    .line 630
    :cond_4
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 631
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 633
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 634
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 635
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 637
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 638
    :catch_0
    move-exception v1

    .line 639
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public drawCenterBarButton(II)V
    .locals 2
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    .line 736
    const-string v0, "CenterBarWindow"

    const-string v1, "drawCenterBarButton"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 739
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showButtonPopupWindow()V

    .line 740
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->startHideButtonTimer()V

    .line 741
    return-void
.end method

.method public drawDragAndDrop()V
    .locals 2

    .prologue
    .line 558
    const-string v0, "CenterBarWindow"

    const-string v1, "Draw drag and drop center bar image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragMode:Z

    .line 562
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 563
    const-string v0, "CenterBarWindow"

    const-string v1, "CenterBar is null, so return."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0298

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    .line 568
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 569
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    const v1, 0x7f02030c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 570
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 571
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getIndicatorSize()I
    .locals 1

    .prologue
    .line 2784
    const/4 v0, 0x0

    return v0
.end method

.method public hideButtonsPopupWindow(Z)V
    .locals 4
    .param p1, "needAnim"    # Z

    .prologue
    const/4 v3, 0x0

    .line 744
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    .line 745
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->clearButtonAnimation()V

    .line 746
    if-eqz p1, :cond_1

    .line 747
    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    if-eqz v2, :cond_0

    .line 748
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarButtons:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->animateCenterBarClose(Landroid/view/View;)V

    .line 749
    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAvailableAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 753
    .local v1, "v":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 755
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarViewsVisibility(I)V

    .line 756
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 757
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mButtonsPopupWindow:Landroid/widget/PopupWindow;

    .line 758
    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    goto :goto_0
.end method

.method public hideDragAndDropHelpDialog()V
    .locals 1

    .prologue
    .line 2928
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2929
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2931
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDragAndDropHelpPopupDialog:Landroid/app/AlertDialog;

    .line 2932
    return-void
.end method

.method public hideGuideCenterBar()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->dismiss()V

    .line 731
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mGuideView:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;

    .line 732
    return-void
.end method

.method public initCenterBarButtonAnim()V
    .locals 4

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$7;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1011
    return-void
.end method

.method public initCenterBarIfNeed()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 947
    const/4 v4, 0x0

    .line 948
    .local v4, "level":I
    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v5

    .line 949
    .local v5, "mode":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 951
    .local v2, "displaySize":Landroid/graphics/Point;
    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-nez v5, :cond_2

    .line 952
    const/4 v4, 0x0

    .line 960
    :goto_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 961
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 962
    :cond_0
    iget v10, v2, Landroid/graphics/Point;->x:I

    if-lez v10, :cond_1

    iget v10, v2, Landroid/graphics/Point;->y:I

    if-gtz v10, :cond_3

    .line 997
    .end local v1    # "display":Landroid/view/Display;
    :cond_1
    :goto_1
    return-void

    .line 953
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-ne v5, v8, :cond_1

    iget-boolean v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSupportQuadView:Z

    if-eqz v10, :cond_1

    .line 954
    const/4 v4, 0x1

    goto :goto_0

    .line 967
    .restart local v1    # "display":Landroid/view/Display;
    :cond_3
    const/4 v0, 0x0

    .line 968
    .local v0, "changed":Z
    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    if-le v10, v11, :cond_9

    move v3, v8

    .line 969
    .local v3, "isLand":Z
    :goto_2
    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    div-float v6, v10, v11

    .line 970
    .local v6, "xAxis":F
    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 972
    .local v7, "yAxis":F
    if-eqz v3, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    if-nez v3, :cond_a

    if-ne v4, v8, :cond_a

    .line 974
    :cond_5
    iget v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSplitMinWeight:F

    cmpg-float v8, v6, v8

    if-lez v8, :cond_6

    iget v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSplitMaxWeight:F

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_7

    .line 975
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v10, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v10, v10, 0x2

    iput v10, v8, Landroid/graphics/Point;->x:I

    .line 976
    const/4 v0, 0x1

    .line 988
    :cond_7
    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->checkSealedFixedWindow(Z)V

    .line 991
    if-eqz v0, :cond_8

    .line 992
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 993
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v8, v10}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 996
    :cond_8
    iput-boolean v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFullSizeDocking:Z

    goto :goto_1

    .end local v3    # "isLand":Z
    .end local v6    # "xAxis":F
    .end local v7    # "yAxis":F
    :cond_9
    move v3, v9

    .line 968
    goto :goto_2

    .line 980
    .restart local v3    # "isLand":Z
    .restart local v6    # "xAxis":F
    .restart local v7    # "yAxis":F
    :cond_a
    iget v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSplitMinWeight:F

    cmpg-float v8, v7, v8

    if-lez v8, :cond_b

    iget v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSplitMaxWeight:F

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_7

    .line 981
    :cond_b
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v10, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v10, v10, 0x2

    iput v10, v8, Landroid/graphics/Point;->y:I

    .line 982
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public initVariables()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->updateDisplaySize()V

    .line 416
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingNonQuadRatio:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingProportion:I

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    .line 422
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v1, v4, :cond_2

    .line 423
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingProportion:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeW:I

    .line 424
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    mul-int/lit8 v1, v1, 0x14

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeH:I

    .line 431
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 432
    .local v0, "centerBarPoint":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v0

    .line 433
    if-nez v0, :cond_3

    .line 452
    :goto_1
    return-void

    .line 426
    .end local v0    # "centerBarPoint":Landroid/graphics/Point;
    :cond_2
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 427
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    mul-int/lit8 v1, v1, 0x14

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeW:I

    .line 428
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingProportion:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeH:I

    goto :goto_0

    .line 437
    .restart local v0    # "centerBarPoint":Landroid/graphics/Point;
    :cond_3
    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    .line 438
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v1, v4, :cond_4

    .line 439
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    .line 440
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 447
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->checkSealedFixedWindow(Z)V

    .line 451
    const-string v1, "CenterBarWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initVariables centerBarPoint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mTouchEventX ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mTouchEventY ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 442
    :cond_4
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 443
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    goto :goto_2
.end method

.method public makeCenterBarImageViews()V
    .locals 2

    .prologue
    .line 502
    const-string v0, "CenterBarWindow"

    const-string v1, "makeCenterBarImageViews"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mViewForLayout:Landroid/view/View;

    const v1, 0x7f0e008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    .line 506
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarViewsVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 511
    :cond_0
    return-void
.end method

.method public makeCenterBarLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 466
    const-string v1, "CenterBarWindow"

    const-string v2, "makeCenterBarLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 469
    .local v0, "centerBarLayout":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 470
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 471
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 472
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 473
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 474
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiWindowTrayService/CenterBar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 476
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 477
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 478
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 480
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 481
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 483
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mViewForLayout:Landroid/view/View;

    const v2, 0x7f0e008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFrame:Landroid/widget/FrameLayout;

    .line 485
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFrame:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$4;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFrame:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$5;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeCenterBarImageViews()V

    .line 498
    invoke-virtual {p0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setImageToImageView(Z)V

    .line 499
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1260
    const-string v3, "CenterBarWindow"

    const-string v4, "onConfigurationChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-eq v3, v4, :cond_c

    .line 1263
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    const/16 v4, 0xcc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1264
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    const/16 v4, 0xcc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1266
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->updateDisplaySize()V

    .line 1267
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    .line 1268
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v3, v8, :cond_4

    .line 1269
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingProportion:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeW:I

    .line 1270
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    mul-int/lit8 v3, v3, 0x14

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeH:I

    .line 1276
    :cond_1
    :goto_0
    const-string v3, "CenterBarWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged : mDisplayOrientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1279
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    if-nez v3, :cond_5

    .line 1280
    iput v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 1290
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    if-nez v3, :cond_8

    .line 1340
    :cond_3
    :goto_2
    return-void

    .line 1272
    :cond_4
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v3, v7, :cond_1

    .line 1273
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    mul-int/lit8 v3, v3, 0x14

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeW:I

    .line 1274
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingProportion:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarFlingSizeH:I

    goto :goto_0

    .line 1281
    :cond_5
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    if-ne v3, v8, :cond_6

    .line 1282
    iput v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_1

    .line 1283
    :cond_6
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    if-ne v3, v7, :cond_7

    .line 1284
    iput v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_1

    .line 1285
    :cond_7
    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    if-ne v3, v9, :cond_2

    .line 1286
    iput v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_1

    .line 1294
    :cond_8
    const/4 v2, 0x0

    .line 1295
    .local v2, "point":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v2

    .line 1297
    if-eqz v2, :cond_9

    .line 1298
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 1299
    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    .line 1300
    iget v3, v2, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    .line 1301
    const-string v3, "CenterBarWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged point = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_9
    invoke-virtual {p0, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->checkSealedFixedWindow(Z)V

    .line 1308
    invoke-virtual {p0, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setImageToImageView(Z)V

    .line 1309
    invoke-virtual {p0, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    .line 1311
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    if-nez v3, :cond_e

    .line 1313
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->isNavigationBarVisible()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1314
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    const/16 v4, 0xcf

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1315
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    const/16 v4, 0xcf

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1317
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    const/16 v5, 0xcf

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :goto_3
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragMode:Z

    if-eqz v3, :cond_b

    .line 1328
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawDragAndDrop()V

    .line 1330
    :cond_b
    iput-boolean v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActionCancel:Z

    .line 1331
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeButtonPopupLayout()V

    .line 1334
    .end local v2    # "point":Landroid/graphics/Point;
    :cond_c
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1335
    .local v1, "locale":Ljava/util/Locale;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentLanguage:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1336
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCurrentLanguage:Ljava/lang/String;

    .line 1337
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeButtonPopupLayout()V

    goto/16 :goto_2

    .line 1319
    .end local v1    # "locale":Ljava/util/Locale;
    .restart local v2    # "point":Landroid/graphics/Point;
    :cond_d
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 1325
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBarButton(II)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2788
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2790
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2793
    :goto_0
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

    .line 2795
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mInputMethodChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 2797
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mInputMethodChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2800
    :goto_1
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mInputMethodChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 2802
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 2804
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2807
    :goto_2
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 2811
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->cancelHideButtonTimer()V

    .line 2813
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_3

    .line 2814
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 2816
    :cond_3
    return-void

    .line 2805
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2798
    :catch_1
    move-exception v0

    goto :goto_1

    .line 2791
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public refreshWindow(I)V
    .locals 1
    .param p1, "arrageMode"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 404
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarViewsVisibility(I)V

    .line 406
    :cond_0
    return-void
.end method

.method public removeDragAndDrop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 575
    const-string v0, "CenterBarWindow"

    const-string v1, "Remove drag and drop center bar image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragMode:Z

    .line 579
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 580
    const-string v0, "CenterBarWindow"

    const-string v1, "CenterBar is null, so return."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c028b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    .line 584
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    .line 585
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 586
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 587
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 588
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    const v1, 0x7f020303

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setCenterBarViewsVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 792
    return-void
.end method

.method public setFocusedZoneInfo(I)V
    .locals 3
    .param p1, "focusZoneInfo"    # I

    .prologue
    const/4 v1, 0x0

    .line 764
    if-eqz p1, :cond_0

    .line 765
    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    if-eq v2, p1, :cond_1

    const/4 v0, 0x1

    .line 766
    .local v0, "focusZoneChanged":Z
    :goto_0
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I

    .line 768
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsShowButton:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {p0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    .line 773
    .end local v0    # "focusZoneChanged":Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 765
    goto :goto_0
.end method

.method public setImageToImageView(Z)V
    .locals 8
    .param p1, "isPress"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const v5, 0x7f020303

    .line 514
    const-string v3, "CenterBarWindow"

    const-string v4, "setImageToImageView"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    if-nez v3, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsDragMode:Z

    if-eqz v3, :cond_2

    .line 519
    const-string v3, "CenterBarWindow"

    const-string v4, "Drag mode. Do not set ImageView."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mAnimationPlaying:Z

    if-nez v3, :cond_0

    .line 529
    const/4 v2, 0x1

    .line 530
    .local v2, "visible":Z
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsCenterBarFixed:Z

    if-eqz v3, :cond_3

    .line 531
    const/4 v2, 0x0

    .line 534
    :cond_3
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x1b9

    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->getKnoxSealedMultiWindowFixedState(I)I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 536
    const/4 v2, 0x0

    .line 540
    :cond_4
    if-nez v2, :cond_5

    .line 541
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 543
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 544
    new-array v0, v7, [Landroid/graphics/drawable/Drawable;

    .line 545
    .local v0, "layersLand":[Landroid/graphics/drawable/Drawable;
    new-array v1, v7, [Landroid/graphics/drawable/Drawable;

    .line 548
    .local v1, "layersPort":[Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v6

    .line 549
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v6

    .line 550
    iput v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mLastBackgroundPortait:I

    .line 551
    iput v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mLastBackgroundLandscape:I

    .line 553
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setView(Landroid/view/View;)V
    .locals 2
    .param p1, "viewForLayout"    # Landroid/view/View;

    .prologue
    .line 409
    const-string v0, "CenterBarWindow"

    const-string v1, "setView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mViewForLayout:Landroid/view/View;

    .line 411
    return-void
.end method

.method public setWindow(Landroid/view/Window;I)V
    .locals 4
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "arrageMode"    # I

    .prologue
    .line 383
    const-string v0, "CenterBarWindow"

    const-string v1, "setWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mWindowCenterBar:Landroid/view/Window;

    .line 387
    const-string v0, "CenterBarWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindow : mDisplayWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDisplayHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v0, "CenterBarWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindow : mDisplayOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v0, "CenterBarWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CenterBarWindow : mTouchEventX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTouchEventY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsFirst:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 392
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarGestureDetector:Landroid/view/GestureDetector;

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsFirst:Z

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeCenterBarLayout()V

    .line 397
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setCenterBarPoint()V

    .line 399
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventX:I

    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTouchEventY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 400
    return-void
.end method

.method public updateCenterBarPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "centerPoint"    # Landroid/graphics/Point;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 781
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 784
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->checkSealedFixedWindow(Z)V

    .line 785
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 788
    return-void
.end method
