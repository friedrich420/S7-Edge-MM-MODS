.class public abstract Landroid/widget/AbsHorizontalListView;
.super Landroid/widget/AdapterView;
.source "AbsHorizontalListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsHorizontalListView$HoverScrollHandler;,
        Landroid/widget/AbsHorizontalListView$RecycleBin;,
        Landroid/widget/AbsHorizontalListView$RecyclerListener;,
        Landroid/widget/AbsHorizontalListView$LayoutParams;,
        Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;,
        Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;,
        Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;,
        Landroid/widget/AbsHorizontalListView$PositionScroller;,
        Landroid/widget/AbsHorizontalListView$FlingRunnable;,
        Landroid/widget/AbsHorizontalListView$CheckForTap;,
        Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;,
        Landroid/widget/AbsHorizontalListView$CheckForLongPress;,
        Landroid/widget/AbsHorizontalListView$PerformClick;,
        Landroid/widget/AbsHorizontalListView$WindowRunnnable;,
        Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsHorizontalListView$SavedState;,
        Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsHorizontalListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsHorizontalListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected AIR_VIEW_WINSET:Z

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private isHoveringUIEnabled:Z

.field private mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mAlwaysDisableHoverHighlight:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field public mCurrentKeyCode:I

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDVFSHelperCore:Landroid/os/DVFSHelper;

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/HorizontalFastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field public mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingBottom:I

.field private mGlowPaddingTop:I

.field private mHapticOverScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasWindowFocusForMotion:Z

.field mHeightMeasureSpec:I

.field public mHoverAreaEnter:Z

.field private mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

.field private mHoverLeftAreaWidth:I

.field private mHoverLeftAreaWidth_DP:I

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverRightAreaWidth:I

.field private mHoverRightAreaWidth_DP:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mHoveredOnEllipsizedText:Z

.field private mIsChildViewEnabled:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDragScrolled:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsPnePressed:Z

.field final mIsScrap:[Z

.field private mIsShiftkeyPressed:Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field private mMotionListener:Lcom/samsung/android/motion/MRListener;

.field mMotionPosition:I

.field private mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

.field mMotionViewNewLeft:I

.field mMotionViewOriginalLeft:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

.field mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field public mOldAdapterItemCount:I

.field public mOldKeyCode:I

.field private mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

.field private mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field mScrollLeft:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollingCacheEnabled:Z

.field public mSecondPressedPoint:I

.field mSelectedLeft:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field public mTwCurrentFocusPosition:I

.field private mTwCustomMultiChoiceMode:Z

.field public mTwPressItemListArray:[I

.field public mTwPressItemListIndex:I

.field private final mTwScrollAmount:I

.field private mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

.field private mTwTwScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 800
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 978
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 134
    iput-boolean v3, p0, mMotionEnable:Z

    .line 135
    iput-boolean v3, p0, mHasWindowFocusForMotion:Z

    .line 136
    iput-object v5, p0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 138
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, USE_SET_INTEGRATOR_HAPTIC:Z

    .line 269
    iput v3, p0, mChoiceMode:I

    .line 302
    iput v3, p0, mLayoutMode:I

    .line 327
    iput-boolean v3, p0, mDeferNotifyDataSetChanged:Z

    .line 332
    iput-boolean v3, p0, mDrawSelectorOnTop:Z

    .line 342
    iput v4, p0, mSelectorPosition:I

    .line 347
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mSelectorRect:Landroid/graphics/Rect;

    .line 353
    new-instance v1, Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$RecycleBin;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    .line 358
    iput v3, p0, mSelectionLeftPadding:I

    .line 363
    iput v3, p0, mSelectionTopPadding:I

    .line 368
    iput v3, p0, mSelectionRightPadding:I

    .line 373
    iput v3, p0, mSelectionBottomPadding:I

    .line 378
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mListPadding:Landroid/graphics/Rect;

    .line 383
    iput v3, p0, mHeightMeasureSpec:I

    .line 431
    iput v4, p0, mTouchMode:I

    .line 462
    iput v3, p0, mSelectedLeft:I

    .line 505
    iput-boolean v6, p0, mSmoothScrollbarEnabled:Z

    .line 525
    iput v4, p0, mResurrectToPosition:I

    .line 527
    iput-object v5, p0, mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 553
    iput v4, p0, mLastTouchMode:I

    .line 556
    iput-boolean v3, p0, mScrollProfilingStarted:Z

    .line 559
    iput-boolean v3, p0, mFlingProfilingStarted:Z

    .line 567
    iput-object v5, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 568
    iput-object v5, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 615
    iput v3, p0, mLastScrollState:I

    .line 634
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, mVelocityScale:F

    .line 636
    new-array v1, v6, [Z

    iput-object v1, p0, mIsScrap:[Z

    .line 646
    iput v4, p0, mActivePointerId:I

    .line 651
    iput v3, p0, mPointerCount:I

    .line 657
    iput-boolean v3, p0, mHapticOverScroll:Z

    .line 707
    iput v3, p0, mDirection:I

    .line 739
    const/16 v1, 0xf

    iput v1, p0, mHoverLeftAreaWidth_DP:I

    .line 741
    const/16 v1, 0x19

    iput v1, p0, mHoverRightAreaWidth_DP:I

    .line 743
    iput v3, p0, mHoverLeftAreaWidth:I

    .line 745
    iput v3, p0, mHoverRightAreaWidth:I

    .line 755
    iput v3, p0, mHoverRecognitionDurationTime:I

    .line 757
    iput v3, p0, mHoverRecognitionCurrentTime:I

    .line 759
    iput v3, p0, mHoverRecognitionStartTime:I

    .line 761
    const/16 v1, 0x12c

    iput v1, p0, mHoverScrollTimeInterval:I

    .line 763
    iput v3, p0, mHoverScrollStartTime:I

    .line 765
    iput v4, p0, mHoverScrollDirection:I

    .line 770
    iput-boolean v3, p0, mIsHoverOverscrolled:Z

    .line 775
    iput-boolean v6, p0, mHoverScrollEnable:Z

    .line 780
    iput-boolean v3, p0, mHoverAreaEnter:Z

    .line 785
    const/16 v1, 0xa

    iput v1, p0, HOVERSCROLL_SPEED:I

    .line 790
    iput v3, p0, HOVERSCROLL_DELAY:I

    .line 795
    iput-boolean v3, p0, isHoveringUIEnabled:Z

    .line 818
    iput-boolean v3, p0, mTwCustomMultiChoiceMode:Z

    .line 823
    iput-boolean v3, p0, mIsCtrlkeyPressed:Z

    .line 828
    iput-boolean v3, p0, mIsShiftkeyPressed:Z

    .line 830
    iput-boolean v3, p0, mIsMultiFocusEnabled:Z

    .line 835
    iput v3, p0, mTwPressItemListIndex:I

    .line 837
    iput v4, p0, mFirstPressedPoint:I

    .line 839
    iput v4, p0, mSecondPressedPoint:I

    .line 843
    iput v3, p0, mOldAdapterItemCount:I

    .line 845
    iput v3, p0, mOldKeyCode:I

    .line 847
    iput v3, p0, mCurrentKeyCode:I

    .line 849
    iput v4, p0, mTwCurrentFocusPosition:I

    .line 917
    iput-object v5, p0, mDVFSHelper:Landroid/os/DVFSHelper;

    .line 918
    iput-object v5, p0, mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 919
    iput-boolean v3, p0, mDVFSLockAcquired:Z

    .line 971
    iput-boolean v3, p0, AIR_VIEW_WINSET:Z

    .line 3310
    iput-boolean v3, p0, mForcedClick:Z

    .line 4239
    iput v3, p0, mDragScrollWorkingZonePx:I

    .line 4240
    iput-boolean v3, p0, mIsDragScrolled:Z

    .line 4834
    iput v4, p0, mHoverPosition:I

    .line 4836
    iput-boolean v3, p0, mHoveredOnEllipsizedText:Z

    .line 4837
    iput-boolean v3, p0, mIsHoveredByMouse:Z

    .line 4838
    iput-boolean v3, p0, mAlwaysDisableHoverHighlight:Z

    .line 4839
    iput-boolean v3, p0, mIsPnePressed:Z

    .line 6055
    iput-object v5, p0, mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    .line 6056
    iput-object v5, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6057
    const/16 v1, 0x1f4

    iput v1, p0, mTwScrollAmount:I

    .line 8114
    new-instance v1, Landroid/widget/AbsHorizontalListView$6;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$6;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, mMotionListener:Lcom/samsung/android/motion/MRListener;

    .line 8183
    iput v3, p0, mHoverScrollSpeed:I

    .line 979
    invoke-direct {p0}, initAbsListView()V

    .line 981
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, mOwnerThread:Ljava/lang/Thread;

    .line 983
    invoke-virtual {p0, v6}, setHorizontalScrollBarEnabled(Z)V

    .line 984
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 985
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 986
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 991
    iget-object v1, p0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-nez v1, :cond_fd

    .line 992
    const-string v1, "AbsHorizontalListView"

    const-string v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/motion/MotionRecognitionManager;

    iput-object v1, p0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 997
    :cond_fd
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, isHoveringUIEnabled:Z

    .line 998
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1001
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1002
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1005
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    const/4 v9, 0x0

    iput-boolean v9, p0, mMotionEnable:Z

    .line 135
    const/4 v9, 0x0

    iput-boolean v9, p0, mHasWindowFocusForMotion:Z

    .line 136
    const/4 v9, 0x0

    iput-object v9, p0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 138
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, USE_SET_INTEGRATOR_HAPTIC:Z

    .line 269
    const/4 v9, 0x0

    iput v9, p0, mChoiceMode:I

    .line 302
    const/4 v9, 0x0

    iput v9, p0, mLayoutMode:I

    .line 327
    const/4 v9, 0x0

    iput-boolean v9, p0, mDeferNotifyDataSetChanged:Z

    .line 332
    const/4 v9, 0x0

    iput-boolean v9, p0, mDrawSelectorOnTop:Z

    .line 342
    const/4 v9, -0x1

    iput v9, p0, mSelectorPosition:I

    .line 347
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, mSelectorRect:Landroid/graphics/Rect;

    .line 353
    new-instance v9, Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-direct {v9, p0}, Landroid/widget/AbsHorizontalListView$RecycleBin;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v9, p0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    .line 358
    const/4 v9, 0x0

    iput v9, p0, mSelectionLeftPadding:I

    .line 363
    const/4 v9, 0x0

    iput v9, p0, mSelectionTopPadding:I

    .line 368
    const/4 v9, 0x0

    iput v9, p0, mSelectionRightPadding:I

    .line 373
    const/4 v9, 0x0

    iput v9, p0, mSelectionBottomPadding:I

    .line 378
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, mListPadding:Landroid/graphics/Rect;

    .line 383
    const/4 v9, 0x0

    iput v9, p0, mHeightMeasureSpec:I

    .line 431
    const/4 v9, -0x1

    iput v9, p0, mTouchMode:I

    .line 462
    const/4 v9, 0x0

    iput v9, p0, mSelectedLeft:I

    .line 505
    const/4 v9, 0x1

    iput-boolean v9, p0, mSmoothScrollbarEnabled:Z

    .line 525
    const/4 v9, -0x1

    iput v9, p0, mResurrectToPosition:I

    .line 527
    const/4 v9, 0x0

    iput-object v9, p0, mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 553
    const/4 v9, -0x1

    iput v9, p0, mLastTouchMode:I

    .line 556
    const/4 v9, 0x0

    iput-boolean v9, p0, mScrollProfilingStarted:Z

    .line 559
    const/4 v9, 0x0

    iput-boolean v9, p0, mFlingProfilingStarted:Z

    .line 567
    const/4 v9, 0x0

    iput-object v9, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 568
    const/4 v9, 0x0

    iput-object v9, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 615
    const/4 v9, 0x0

    iput v9, p0, mLastScrollState:I

    .line 634
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, mVelocityScale:F

    .line 636
    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, mIsScrap:[Z

    .line 646
    const/4 v9, -0x1

    iput v9, p0, mActivePointerId:I

    .line 651
    const/4 v9, 0x0

    iput v9, p0, mPointerCount:I

    .line 657
    const/4 v9, 0x0

    iput-boolean v9, p0, mHapticOverScroll:Z

    .line 707
    const/4 v9, 0x0

    iput v9, p0, mDirection:I

    .line 739
    const/16 v9, 0xf

    iput v9, p0, mHoverLeftAreaWidth_DP:I

    .line 741
    const/16 v9, 0x19

    iput v9, p0, mHoverRightAreaWidth_DP:I

    .line 743
    const/4 v9, 0x0

    iput v9, p0, mHoverLeftAreaWidth:I

    .line 745
    const/4 v9, 0x0

    iput v9, p0, mHoverRightAreaWidth:I

    .line 755
    const/4 v9, 0x0

    iput v9, p0, mHoverRecognitionDurationTime:I

    .line 757
    const/4 v9, 0x0

    iput v9, p0, mHoverRecognitionCurrentTime:I

    .line 759
    const/4 v9, 0x0

    iput v9, p0, mHoverRecognitionStartTime:I

    .line 761
    const/16 v9, 0x12c

    iput v9, p0, mHoverScrollTimeInterval:I

    .line 763
    const/4 v9, 0x0

    iput v9, p0, mHoverScrollStartTime:I

    .line 765
    const/4 v9, -0x1

    iput v9, p0, mHoverScrollDirection:I

    .line 770
    const/4 v9, 0x0

    iput-boolean v9, p0, mIsHoverOverscrolled:Z

    .line 775
    const/4 v9, 0x1

    iput-boolean v9, p0, mHoverScrollEnable:Z

    .line 780
    const/4 v9, 0x0

    iput-boolean v9, p0, mHoverAreaEnter:Z

    .line 785
    const/16 v9, 0xa

    iput v9, p0, HOVERSCROLL_SPEED:I

    .line 790
    const/4 v9, 0x0

    iput v9, p0, HOVERSCROLL_DELAY:I

    .line 795
    const/4 v9, 0x0

    iput-boolean v9, p0, isHoveringUIEnabled:Z

    .line 818
    const/4 v9, 0x0

    iput-boolean v9, p0, mTwCustomMultiChoiceMode:Z

    .line 823
    const/4 v9, 0x0

    iput-boolean v9, p0, mIsCtrlkeyPressed:Z

    .line 828
    const/4 v9, 0x0

    iput-boolean v9, p0, mIsShiftkeyPressed:Z

    .line 830
    const/4 v9, 0x0

    iput-boolean v9, p0, mIsMultiFocusEnabled:Z

    .line 835
    const/4 v9, 0x0

    iput v9, p0, mTwPressItemListIndex:I

    .line 837
    const/4 v9, -0x1

    iput v9, p0, mFirstPressedPoint:I

    .line 839
    const/4 v9, -0x1

    iput v9, p0, mSecondPressedPoint:I

    .line 843
    const/4 v9, 0x0

    iput v9, p0, mOldAdapterItemCount:I

    .line 845
    const/4 v9, 0x0

    iput v9, p0, mOldKeyCode:I

    .line 847
    const/4 v9, 0x0

    iput v9, p0, mCurrentKeyCode:I

    .line 849
    const/4 v9, -0x1

    iput v9, p0, mTwCurrentFocusPosition:I

    .line 917
    const/4 v9, 0x0

    iput-object v9, p0, mDVFSHelper:Landroid/os/DVFSHelper;

    .line 918
    const/4 v9, 0x0

    iput-object v9, p0, mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 919
    const/4 v9, 0x0

    iput-boolean v9, p0, mDVFSLockAcquired:Z

    .line 971
    const/4 v9, 0x0

    iput-boolean v9, p0, AIR_VIEW_WINSET:Z

    .line 3310
    const/4 v9, 0x0

    iput-boolean v9, p0, mForcedClick:Z

    .line 4239
    const/4 v9, 0x0

    iput v9, p0, mDragScrollWorkingZonePx:I

    .line 4240
    const/4 v9, 0x0

    iput-boolean v9, p0, mIsDragScrolled:Z

    .line 4834
    const/4 v9, -0x1

    iput v9, p0, mHoverPosition:I

    .line 4836
    const/4 v9, 0x0

    iput-boolean v9, p0, mHoveredOnEllipsizedText:Z

    .line 4837
    const/4 v9, 0x0

    iput-boolean v9, p0, mIsHoveredByMouse:Z

    .line 4838
    const/4 v9, 0x0

    iput-boolean v9, p0, mAlwaysDisableHoverHighlight:Z

    .line 4839
    const/4 v9, 0x0

    iput-boolean v9, p0, mIsPnePressed:Z

    .line 6055
    const/4 v9, 0x0

    iput-object v9, p0, mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    .line 6056
    const/4 v9, 0x0

    iput-object v9, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6057
    const/16 v9, 0x1f4

    iput v9, p0, mTwScrollAmount:I

    .line 8114
    new-instance v9, Landroid/widget/AbsHorizontalListView$6;

    invoke-direct {v9, p0}, Landroid/widget/AbsHorizontalListView$6;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v9, p0, mMotionListener:Lcom/samsung/android/motion/MRListener;

    .line 8183
    const/4 v9, 0x0

    iput v9, p0, mHoverScrollSpeed:I

    .line 1006
    invoke-direct {p0}, initAbsListView()V

    .line 1008
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iput-object v9, p0, mOwnerThread:Ljava/lang/Thread;

    .line 1010
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1013
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1014
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_128

    .line 1015
    invoke-virtual {p0, v2}, setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1018
    :cond_128
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, mDrawSelectorOnTop:Z

    .line 1021
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1022
    .local v6, "stackFromBottom":Z
    invoke-virtual {p0, v6}, setStackFromBottom(Z)V

    .line 1024
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1025
    .local v4, "scrollingCacheEnabled":Z
    invoke-virtual {p0, v4}, setScrollingCacheEnabled(Z)V

    .line 1027
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1028
    .local v8, "useTextFilter":Z
    invoke-virtual {p0, v8}, setTextFilterEnabled(Z)V

    .line 1030
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 1032
    .local v7, "transcriptMode":I
    invoke-virtual {p0, v7}, setTranscriptMode(I)V

    .line 1034
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 1035
    .local v1, "color":I
    invoke-virtual {p0, v1}, setCacheColorHint(I)V

    .line 1037
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 1038
    .local v3, "enableFastScroll":Z
    invoke-virtual {p0, v3}, setFastScrollEnabled(Z)V

    .line 1040
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1041
    .local v5, "smoothScrollbar":Z
    invoke-virtual {p0, v5}, setSmoothScrollbarEnabled(Z)V

    .line 1043
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {p0, v9}, setChoiceMode(I)V

    .line 1044
    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {p0, v9}, setFastScrollAlwaysVisible(Z)V

    .line 1047
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1052
    iget-object v9, p0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-nez v9, :cond_19d

    .line 1053
    const-string v9, "AbsHorizontalListView"

    const-string v10, "Get MotionRecognitionManager"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const-string/jumbo v9, "motion_recognition"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/motion/MotionRecognitionManager;

    iput-object v9, p0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 1058
    :cond_19d
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.feature.hovering_ui"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, isHoveringUIEnabled:Z

    .line 1059
    return-void
.end method

.method private acceptFilter()Z
    .registers 2

    .prologue
    .line 2195
    iget-boolean v0, p0, mTextFilterEnabled:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static synthetic access$000(Landroid/widget/AbsHorizontalListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    invoke-direct {p0, p1}, setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AbsHorizontalListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    invoke-direct {p0, p1}, setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1002(Landroid/widget/AbsHorizontalListView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, mIsChildViewEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-object v0, p0, mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$CheckForLongPress;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    .prologue
    .line 123
    iput-object p1, p0, mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1602(Landroid/widget/AbsHorizontalListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 123
    iput-object p1, p0, mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mActivePointerId:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/AbsHorizontalListView;)Landroid/view/VelocityTracker;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/AbsHorizontalListView;)Landroid/os/StrictMode$Span;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-object v0, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/widget/AbsHorizontalListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 123
    iput-object p1, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2300(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mScrollX:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mScrollX:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mScrollX:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsHorizontalListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    invoke-direct {p0}, contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-object v0, p0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-object v0, p0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsHorizontalListView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    invoke-direct {p0}, clearScrollingCache()V

    return-void
.end method

.method static synthetic access$3000(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mPaddingRight:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mPaddingLeft:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mPaddingRight:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mPaddingLeft:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mScrollX:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z
    .registers 11
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 123
    invoke-virtual/range {p0 .. p9}, overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mScrollX:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z
    .registers 11
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 123
    invoke-virtual/range {p0 .. p9}, overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/AbsHorizontalListView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$FlingRunnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-object v0, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    invoke-virtual {p0}, getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/AbsHorizontalListView;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-object v0, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/widget/AbsHorizontalListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1}, setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4300(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$4400(Landroid/widget/AbsHorizontalListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1}, setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4500(Landroid/widget/AbsHorizontalListView;)Landroid/view/inputmethod/InputConnection;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-object v0, p0, mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/HorizontalFastScroller;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/widget/AbsHorizontalListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-boolean v0, p0, mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic access$4900(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    invoke-virtual {p0}, getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5100(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5200(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5300(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5400(Landroid/widget/AbsHorizontalListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-boolean v0, p0, mMotionEnable:Z

    return v0
.end method

.method static synthetic access$5500(Landroid/widget/AbsHorizontalListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-boolean v0, p0, mHasWindowFocusForMotion:Z

    return v0
.end method

.method static synthetic access$5600(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p0}, log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mHoverRecognitionCurrentTime:I

    return v0
.end method

.method static synthetic access$5702(Landroid/widget/AbsHorizontalListView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 123
    iput p1, p0, mHoverRecognitionCurrentTime:I

    return p1
.end method

.method static synthetic access$5802(Landroid/widget/AbsHorizontalListView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 123
    iput p1, p0, mHoverRecognitionDurationTime:I

    return p1
.end method

.method static synthetic access$5900(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mHoverRecognitionStartTime:I

    return v0
.end method

.method static synthetic access$6000(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mHoverScrollStartTime:I

    return v0
.end method

.method static synthetic access$6100(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mHoverScrollTimeInterval:I

    return v0
.end method

.method static synthetic access$6200(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mRight:I

    return v0
.end method

.method static synthetic access$6300(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$6302(Landroid/widget/AbsHorizontalListView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 123
    iput p1, p0, mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$6400(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$6500(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, mHoverScrollDirection:I

    return v0
.end method

.method static synthetic access$6600(Landroid/widget/AbsHorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget v0, p0, HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$6700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$HoverScrollHandler;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-object v0, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$6800(Landroid/widget/AbsHorizontalListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-boolean v0, p0, mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$6802(Landroid/widget/AbsHorizontalListView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$700(Landroid/widget/AbsHorizontalListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-boolean v0, p0, mForcedClick:Z

    return v0
.end method

.method static synthetic access$800(Landroid/widget/AbsHorizontalListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-boolean v0, p0, mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/AbsHorizontalListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 123
    iget-boolean v0, p0, mIsCtrlkeyPressed:Z

    return v0
.end method

.method private clearScrollingCache()V
    .registers 2

    .prologue
    .line 6181
    invoke-virtual {p0}, isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_16

    .line 6182
    iget-object v0, p0, mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_11

    .line 6183
    new-instance v0, Landroid/widget/AbsHorizontalListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$4;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, mClearScrollingCache:Ljava/lang/Runnable;

    .line 6199
    :cond_11
    iget-object v0, p0, mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    .line 6201
    :cond_16
    return-void
.end method

.method private contentFits()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1533
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 1534
    .local v0, "childCount":I
    if-nez v0, :cond_9

    .line 1537
    :cond_8
    :goto_8
    return v1

    .line 1535
    :cond_9
    iget v3, p0, mItemCount:I

    if-eq v0, v3, :cond_f

    move v1, v2

    goto :goto_8

    .line 1537
    :cond_f
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_32

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, getWidth()I

    move-result v4

    iget-object v5, p0, mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_8

    :cond_32
    move v1, v2

    goto :goto_8
.end method

.method private createScrollingCache()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 6173
    iget-boolean v0, p0, mScrollingCacheEnabled:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, mCachingStarted:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_19

    .line 6174
    invoke-virtual {p0, v1}, setChildrenDrawnWithCacheEnabled(Z)V

    .line 6175
    invoke-virtual {p0, v1}, setChildrenDrawingCacheEnabled(Z)V

    .line 6176
    iput-boolean v1, p0, mCachingActive:Z

    iput-boolean v1, p0, mCachingStarted:Z

    .line 6178
    :cond_19
    return-void
.end method

.method private createTextFilter(Z)V
    .registers 6
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 7117
    iget-object v1, p0, mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_36

    .line 7118
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 7119
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7120
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 7121
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 7122
    invoke-direct {p0}, getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7123
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 7124
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7126
    iput-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    .line 7127
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7128
    const/4 v1, 0x1

    iput-boolean v1, p0, mGlobalLayoutListenerAddedFilter:Z

    .line 7130
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_36
    if-eqz p1, :cond_41

    .line 7131
    iget-object v1, p0, mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7135
    :goto_40
    return-void

    .line 7133
    :cond_41
    iget-object v1, p0, mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_40
.end method

.method private dismissPopup()V
    .registers 2

    .prologue
    .line 6868
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 6869
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6871
    :cond_9
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2902
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2903
    .local v4, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 2904
    .local v2, "selectedPosition":I
    const/4 v1, 0x0

    .line 2905
    .local v1, "selectedChild":Landroid/view/View;
    iget-object v5, p0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_19

    .line 2906
    iget-object v3, p0, mSelector:Landroid/graphics/drawable/Drawable;

    .line 2907
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2908
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2912
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_19
    iget-boolean v5, p0, mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_50

    .line 2914
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget v5, p0, mTwPressItemListIndex:I

    if-ge v0, v5, :cond_50

    .line 2915
    iget-object v5, p0, mTwPressItemListArray:[I

    aget v2, v5, v0

    .line 2916
    iget v5, p0, mFirstPosition:I

    sub-int v5, v2, v5

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2918
    if-eqz v1, :cond_4d

    .line 2919
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2920
    iget-object v5, p0, mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2921
    iget-object v5, p0, mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2914
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 2926
    .end local v0    # "i":I
    :cond_50
    return-void
.end method

.method private finishGlows()V
    .registers 2

    .prologue
    .line 7358
    iget-object v0, p0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_e

    .line 7359
    iget-object v0, p0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7360
    iget-object v0, p0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7362
    :cond_e
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 11
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 6914
    sparse-switch p2, :sswitch_data_a2

    .line 6947
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 6916
    :sswitch_b
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 6917
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6918
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 6919
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6951
    .local v1, "dY":I
    :goto_23
    sub-int v2, v0, v4

    .line 6952
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 6953
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 6922
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2d
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6923
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 6924
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6925
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 6926
    .restart local v1    # "dY":I
    goto :goto_23

    .line 6928
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_46
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 6929
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6930
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 6931
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6932
    .restart local v1    # "dY":I
    goto :goto_23

    .line 6934
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_5f
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6935
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 6936
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6937
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 6938
    .restart local v1    # "dY":I
    goto :goto_23

    .line 6941
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_78
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6942
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6943
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6944
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6945
    .restart local v1    # "dY":I
    goto :goto_23

    .line 6914
    nop

    :sswitch_data_a2
    .sparse-switch
        0x1 -> :sswitch_78
        0x2 -> :sswitch_78
        0x11 -> :sswitch_46
        0x21 -> :sswitch_5f
        0x42 -> :sswitch_b
        0x82 -> :sswitch_2d
    .end sparse-switch
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .registers 4

    .prologue
    .line 7138
    iget-object v1, p0, mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_2b

    .line 7139
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7140
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x109015e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, mTextFilter:Landroid/widget/EditText;

    .line 7145
    iget-object v1, p0, mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 7147
    iget-object v1, p0, mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 7148
    iget-object v1, p0, mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7150
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_2b
    iget-object v1, p0, mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private initAbsListView()V
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 1063
    invoke-virtual {p0, v9}, setClickable(Z)V

    .line 1064
    invoke-virtual {p0, v9}, setFocusableInTouchMode(Z)V

    .line 1065
    invoke-virtual {p0, v0}, setWillNotDraw(Z)V

    .line 1066
    invoke-virtual {p0, v0}, setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1067
    invoke-virtual {p0, v9}, setScrollingCacheEnabled(Z)V

    .line 1068
    invoke-virtual {p0}, twEnableHorizontalScrollbar()V

    .line 1070
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-eqz v1, :cond_3e

    .line 1071
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 1072
    .local v6, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, mTouchSlop:I

    .line 1073
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, mMinimumVelocity:I

    .line 1074
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, mMaximumVelocity:I

    .line 1075
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, mOverscrollDistance:I

    .line 1076
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, mOverflingDistance:I

    .line 1079
    .end local v6    # "configuration":Landroid/view/ViewConfiguration;
    :cond_3e
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 1080
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, mDensityScale:F

    .line 1083
    :cond_54
    new-instance v1, Landroid/view/HapticPreDrawListener;

    invoke-direct {v1}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v1, p0, mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    .line 1085
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-eqz v1, :cond_70

    .line 1086
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v9, :cond_6e

    move v0, v9

    :cond_6e
    iput-boolean v0, p0, AIR_VIEW_WINSET:Z

    .line 1090
    :cond_70
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-eqz v0, :cond_a3

    .line 1091
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, mDVFSHelper:Landroid/os/DVFSHelper;

    .line 1092
    iget-object v0, p0, mDVFSHelper:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1094
    sget v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    if-eqz v0, :cond_a3

    .line 1095
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_CORE"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 1096
    iget-object v0, p0, mDVFSHelperCore:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    sget v2, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1101
    :cond_a3
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_b7

    .line 1102
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    .line 1106
    :cond_b7
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 1107
    .local v8, "value":Landroid/util/TypedValue;
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-eqz v0, :cond_dd

    .line 1108
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x11600cf

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v7

    .line 1110
    .local v7, "resolved":Z
    if-eqz v7, :cond_dd

    .line 1111
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1115
    .end local v7    # "resolved":Z
    :cond_dd
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .prologue
    .line 5044
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 5045
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5049
    :goto_a
    return-void

    .line 5047
    :cond_b
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .prologue
    .line 5052
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 5053
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5055
    :cond_a
    return-void
.end method

.method private isOwnerThread()Z
    .registers 3

    .prologue
    .line 1633
    iget-object v0, p0, mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 8280
    const-string v0, "AbsHorizontalListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8281
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4847
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 4848
    .local v1, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 4851
    .local v11, "toolType":I
    const/4 v14, 0x7

    if-eq v1, v14, :cond_12

    const/16 v14, 0x9

    if-ne v1, v14, :cond_26

    :cond_12
    const/4 v14, 0x2

    if-ne v11, v14, :cond_26

    .line 4852
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsPnePressed:Z

    .line 4858
    :cond_1a
    :goto_1a
    const/4 v14, 0x1

    if-eq v11, v14, :cond_32

    .line 4859
    const/4 v14, 0x3

    if-ne v11, v14, :cond_30

    const/4 v14, 0x1

    :goto_21
    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsHoveredByMouse:Z

    .line 4958
    :cond_25
    :goto_25
    return-void

    .line 4853
    :cond_26
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1a

    .line 4854
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsPnePressed:Z

    goto :goto_1a

    .line 4859
    :cond_30
    const/4 v14, 0x0

    goto :goto_21

    .line 4862
    :cond_32
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsHoveredByMouse:Z

    .line 4865
    move-object/from16 v0, p0

    iget-boolean v14, v0, mAlwaysDisableHoverHighlight:Z

    if-nez v14, :cond_25

    move-object/from16 v0, p0

    iget-object v14, v0, mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_25

    move-object/from16 v0, p0

    iget-object v14, v0, mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_25

    move-object/from16 v0, p0

    iget-boolean v14, v0, mHoverAreaEnter:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_25

    .line 4870
    const/16 v14, 0x9

    if-ne v1, v14, :cond_66

    .line 4871
    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsPnePressed:Z

    if-nez v14, :cond_25

    .line 4872
    move-object/from16 v0, p0

    iget-object v14, v0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_25

    .line 4877
    :cond_66
    invoke-virtual/range {p0 .. p0}, isMultiWindows()Z

    move-result v14

    if-nez v14, :cond_25

    .line 4881
    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsPnePressed:Z

    if-nez v14, :cond_89

    invoke-virtual/range {p0 .. p0}, isInDialog()Z

    move-result v14

    if-eqz v14, :cond_89

    .line 4882
    move-object/from16 v0, p0

    iget-object v14, v0, mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4883
    move-object/from16 v0, p0

    iget-object v14, v0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_25

    .line 4887
    :cond_89
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_115

    const/4 v6, 0x1

    .line 4892
    .local v6, "isFingerAirView":Z
    :goto_9d
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view_information_preview"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_117

    const/4 v7, 0x1

    .line 4895
    .local v7, "isFingerAirViewPreview":Z
    :goto_b1
    if-eqz v6, :cond_25

    if-eqz v7, :cond_25

    .line 4898
    :try_start_b5
    invoke-virtual/range {p0 .. p0}, isHovered()Z

    move-result v14

    if-nez v14, :cond_ca

    .line 4899
    const/4 v14, 0x1

    if-ne v11, v14, :cond_c4

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, setFingerHovered(Z)V

    .line 4900
    :cond_c4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, setHovered(Z)V

    .line 4902
    :cond_ca
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 4903
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 4904
    .local v13, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, pointToPosition(II)I

    move-result v9

    .line 4905
    .local v9, "newHoverPosition":I
    move-object/from16 v0, p0

    iget v14, v0, mHoverPosition:I

    if-eq v14, v9, :cond_119

    const/4 v2, 0x1

    .line 4906
    .local v2, "bChanged":Z
    :goto_e1
    invoke-virtual/range {p0 .. p0}, shouldShowSelectorDefault()Z

    move-result v10

    .line 4908
    .local v10, "shouldShowSelector":Z
    const/4 v3, 0x0

    .line 4910
    .local v3, "child":Landroid/view/View;
    if-gez v9, :cond_11b

    .line 4911
    if-nez v10, :cond_f1

    .line 4912
    move-object/from16 v0, p0

    iget-object v14, v0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 4915
    :cond_f1
    move-object/from16 v0, p0

    iget-boolean v14, v0, mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_108

    .line 4916
    move-object/from16 v0, p0

    iget-object v14, v0, mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4917
    invoke-virtual/range {p0 .. p0}, postInvalidateOnAnimation()V

    .line 4918
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mHoveredOnEllipsizedText:Z

    .line 4920
    :cond_108
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mHoverPosition:I
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_10d} :catch_10f

    goto/16 :goto_25

    .line 4954
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_10f
    move-exception v4

    .line 4955
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_25

    .line 4887
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "isFingerAirView":Z
    .end local v7    # "isFingerAirViewPreview":Z
    :cond_115
    const/4 v6, 0x0

    goto :goto_9d

    .line 4892
    .restart local v6    # "isFingerAirView":Z
    :cond_117
    const/4 v7, 0x0

    goto :goto_b1

    .line 4905
    .restart local v7    # "isFingerAirViewPreview":Z
    .restart local v9    # "newHoverPosition":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_119
    const/4 v2, 0x0

    goto :goto_e1

    .line 4924
    .restart local v2    # "bChanged":Z
    .restart local v3    # "child":Landroid/view/View;
    .restart local v10    # "shouldShowSelector":Z
    :cond_11b
    :try_start_11b
    move-object/from16 v0, p0

    iput v9, v0, mHoverPosition:I

    .line 4926
    move-object/from16 v0, p0

    iget v14, v0, mHoverPosition:I

    move-object/from16 v0, p0

    iget v15, v0, mFirstPosition:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4928
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, findEllipsizedTextView(Landroid/view/View;)Z

    move-result v5

    .line 4930
    .local v5, "foundEllipsizedTextView":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v8

    .line 4933
    .local v8, "isSetFingerHovedInAppWidget":Z
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_185

    if-eqz v5, :cond_185

    if-eqz v8, :cond_185

    .line 4934
    move-object/from16 v0, p0

    iget v14, v0, mHoverPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, positionSelector(ILandroid/view/View;)V

    .line 4935
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mHoveredOnEllipsizedText:Z

    .line 4942
    :cond_152
    :goto_152
    if-eqz v2, :cond_160

    move-object/from16 v0, p0

    iget-boolean v14, v0, mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_160

    .line 4943
    invoke-virtual/range {p0 .. p0}, refreshDrawableState()V

    .line 4944
    invoke-virtual/range {p0 .. p0}, postInvalidateOnAnimation()V

    .line 4947
    :cond_160
    const/16 v14, 0xa

    if-ne v1, v14, :cond_25

    if-nez v10, :cond_25

    .line 4948
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mHoveredOnEllipsizedText:Z

    .line 4949
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mHoverPosition:I

    .line 4950
    move-object/from16 v0, p0

    iget-object v14, v0, mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4951
    move-object/from16 v0, p0

    iget-object v14, v0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 4952
    invoke-virtual/range {p0 .. p0}, postInvalidateOnAnimation()V

    goto/16 :goto_25

    .line 4937
    :cond_185
    if-nez v10, :cond_152

    .line 4938
    move-object/from16 v0, p0

    iget-object v14, v0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_18e} :catch_10f

    goto :goto_152
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 5173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 5175
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 5176
    .local v1, "pointerId":I
    iget v4, p0, mActivePointerId:I

    if-ne v1, v4, :cond_30

    .line 5180
    if-nez v2, :cond_31

    const/4 v0, 0x1

    .line 5181
    .local v0, "newPointerIndex":I
    :goto_16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, mMotionX:I

    .line 5182
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, mMotionY:I

    .line 5183
    iput v3, p0, mMotionCorrection:I

    .line 5184
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, mActivePointerId:I

    .line 5190
    iget v3, p0, mMotionX:I

    iput v3, p0, mLastX:I

    .line 5192
    .end local v0    # "newPointerIndex":I
    :cond_30
    return-void

    :cond_31
    move v0, v3

    .line 5180
    goto :goto_16
.end method

.method private onTouchCancel()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 4801
    iget v1, p0, mTouchMode:I

    packed-switch v1, :pswitch_data_4a

    .line 4814
    iput v4, p0, mTouchMode:I

    .line 4815
    invoke-virtual {p0, v3}, setPressed(Z)V

    .line 4816
    iget v1, p0, mMotionPosition:I

    iget v2, p0, mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4817
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_1a

    .line 4818
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 4820
    :cond_1a
    invoke-direct {p0}, clearScrollingCache()V

    .line 4821
    iget-object v1, p0, mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4822
    invoke-direct {p0}, recycleVelocityTracker()V

    .line 4825
    .end local v0    # "motionView":Landroid/view/View;
    :goto_25
    :pswitch_25
    iget-object v1, p0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_33

    .line 4826
    iget-object v1, p0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4827
    iget-object v1, p0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4829
    :cond_33
    iput v4, p0, mActivePointerId:I

    .line 4830
    iput v3, p0, mPointerCount:I

    .line 4831
    return-void

    .line 4803
    :pswitch_38
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v1, :cond_43

    .line 4804
    new-instance v1, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 4806
    :cond_43
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startSpringback()V

    goto :goto_25

    .line 4801
    nop

    :pswitch_data_4a
    .packed-switch 0x5
        :pswitch_38
        :pswitch_25
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 4515
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, mActivePointerId:I

    .line 4516
    iget v4, p0, mPointerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mPointerCount:I

    .line 4518
    iget v4, p0, mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4e

    .line 4520
    iget-object v4, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 4521
    iget-object v4, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v4, :cond_20

    .line 4522
    iget-object v4, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 4524
    :cond_20
    const/4 v4, 0x5

    iput v4, p0, mTouchMode:I

    .line 4525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, mMotionX:I

    .line 4526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, mMotionY:I

    .line 4527
    iget v4, p0, mMotionX:I

    iput v4, p0, mLastX:I

    .line 4528
    iput v6, p0, mMotionCorrection:I

    .line 4529
    iput v6, p0, mDirection:I

    .line 4572
    :goto_39
    iget v4, p0, mTouchMode:I

    if-nez v4, :cond_4d

    iget v4, p0, mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4d

    invoke-virtual {p0, p1}, performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 4574
    iget-object v4, p0, mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    invoke-virtual {p0, v4}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4576
    :cond_4d
    return-void

    .line 4531
    :cond_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 4532
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 4533
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, pointToPosition(II)I

    move-result v0

    .line 4535
    .local v0, "motionPosition":I
    iget-boolean v4, p0, mDataChanged:Z

    if-nez v4, :cond_76

    .line 4536
    iget v4, p0, mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_91

    .line 4538
    invoke-direct {p0}, createScrollingCache()V

    .line 4539
    const/4 v4, 0x3

    iput v4, p0, mTouchMode:I

    .line 4540
    iput v6, p0, mMotionCorrection:I

    .line 4541
    invoke-virtual {p0, v3}, findMotionRow(I)I

    move-result v0

    .line 4542
    iget-object v4, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->flywheelTouch()V

    .line 4560
    :cond_76
    :goto_76
    if-ltz v0, :cond_86

    .line 4562
    iget v4, p0, mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4563
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, p0, mMotionViewOriginalLeft:I

    .line 4566
    .end local v1    # "v":Landroid/view/View;
    :cond_86
    iput v2, p0, mMotionX:I

    .line 4567
    iput v3, p0, mMotionY:I

    .line 4568
    iput v0, p0, mMotionPosition:I

    .line 4569
    const/high16 v4, -0x80000000

    iput v4, p0, mLastX:I

    goto :goto_39

    .line 4543
    :cond_91
    if-ltz v0, :cond_76

    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 4547
    iput v6, p0, mTouchMode:I

    .line 4550
    iget-object v4, p0, mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    if-nez v4, :cond_ad

    .line 4551
    new-instance v4, Landroid/widget/AbsHorizontalListView$CheckForTap;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/widget/AbsHorizontalListView$CheckForTap;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v4, p0, mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    .line 4554
    :cond_ad
    iget-object v4, p0, mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsHorizontalListView$CheckForTap;->x:F

    .line 4555
    iget-object v4, p0, mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsHorizontalListView$CheckForTap;->y:F

    .line 4556
    iget-object v4, p0, mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_76
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 4579
    iget v4, p0, mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 4580
    .local v1, "pointerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_11

    .line 4581
    const/4 v1, 0x0

    .line 4582
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, mActivePointerId:I

    .line 4584
    :cond_11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    .line 4585
    .local v2, "x":I
    iget-boolean v4, p0, mDataChanged:Z

    if-eqz v4, :cond_1d

    .line 4588
    invoke-virtual {p0}, layoutChildren()V

    .line 4591
    :cond_1d
    iget v4, p0, mTouchMode:I

    packed-switch v4, :pswitch_data_6a

    .line 4620
    :cond_22
    :goto_22
    :pswitch_22
    return-void

    .line 4597
    :pswitch_23
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 4602
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 4603
    .local v3, "y":F
    int-to-float v4, v2

    iget v5, p0, mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v3, v5}, pointInView(FFF)Z

    move-result v4

    if-nez v4, :cond_22

    .line 4604
    invoke-virtual {p0, v6}, setPressed(Z)V

    .line 4605
    iget v4, p0, mMotionPosition:I

    iget v5, p0, mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4606
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_4d

    .line 4607
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4609
    :cond_4d
    iget v4, p0, mTouchMode:I

    if-nez v4, :cond_5d

    iget-object v4, p0, mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    :goto_53
    invoke-virtual {p0, v4}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4611
    const/4 v4, 0x2

    iput v4, p0, mTouchMode:I

    .line 4612
    invoke-virtual {p0}, updateSelectorState()V

    goto :goto_22

    .line 4609
    :cond_5d
    iget-object v4, p0, mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    goto :goto_53

    .line 4617
    .end local v0    # "motionView":Landroid/view/View;
    .end local v3    # "y":F
    :pswitch_60
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_22

    .line 4591
    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_60
        :pswitch_22
        :pswitch_60
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .registers 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4623
    move-object/from16 v0, p0

    iget v0, v0, mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_422

    .line 4772
    :cond_9
    :goto_9
    :pswitch_9
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, setPressed(Z)V

    .line 4774
    move-object/from16 v0, p0

    iget-object v0, v0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2c

    .line 4775
    move-object/from16 v0, p0

    iget-object v0, v0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4776
    move-object/from16 v0, p0

    iget-object v0, v0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4780
    :cond_2c
    invoke-virtual/range {p0 .. p0}, invalidate()V

    .line 4781
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4782
    invoke-direct/range {p0 .. p0}, recycleVelocityTracker()V

    .line 4784
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mActivePointerId:I

    .line 4785
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mPointerCount:I

    .line 4794
    move-object/from16 v0, p0

    iget-object v0, v0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_68

    .line 4795
    move-object/from16 v0, p0

    iget-object v0, v0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    .line 4796
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4798
    :cond_68
    :goto_68
    return-void

    .line 4627
    :pswitch_69
    move-object/from16 v0, p0

    iget v13, v0, mMotionPosition:I

    .line 4628
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4629
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_233

    .line 4630
    move-object/from16 v0, p0

    iget v0, v0, mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_8e

    .line 4631
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4634
    :cond_8e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 4635
    .local v16, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_1e1

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_1e1

    const/4 v10, 0x1

    .line 4636
    .local v10, "inList":Z
    :goto_c3
    if-eqz v10, :cond_233

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-nez v17, :cond_233

    .line 4637
    move-object/from16 v0, p0

    iget-object v0, v0, mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_e6

    .line 4638
    new-instance v17, Landroid/widget/AbsHorizontalListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$PerformClick;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    .line 4641
    :cond_e6
    move-object/from16 v0, p0

    iget-object v14, v0, mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    .line 4642
    .local v14, "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    iput v13, v14, Landroid/widget/AbsHorizontalListView$PerformClick;->mClickMotionPosition:I

    .line 4643
    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView$PerformClick;->rememberWindowAttachCount()V

    .line 4645
    move-object/from16 v0, p0

    iput v13, v0, mResurrectToPosition:I

    .line 4647
    move-object/from16 v0, p0

    iget v0, v0, mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_109

    move-object/from16 v0, p0

    iget v0, v0, mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_212

    .line 4648
    :cond_109
    move-object/from16 v0, p0

    iget v0, v0, mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_1e4

    move-object/from16 v0, p0

    iget-object v0, v0, mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    move-object/from16 v17, v0

    :goto_117
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4650
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mLayoutMode:I

    .line 4651
    move-object/from16 v0, p0

    iget-boolean v0, v0, mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_1ec

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_1ec

    .line 4652
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchMode:I

    .line 4653
    move-object/from16 v0, p0

    iget v0, v0, mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, setSelectedPositionInt(I)V

    .line 4654
    invoke-virtual/range {p0 .. p0}, layoutChildren()V

    .line 4655
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4656
    move-object/from16 v0, p0

    iget v0, v0, mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, positionSelector(ILandroid/view/View;)V

    .line 4657
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, setPressed(Z)V

    .line 4658
    move-object/from16 v0, p0

    iget-object v0, v0, mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a3

    .line 4659
    move-object/from16 v0, p0

    iget-object v0, v0, mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4660
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_190

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_190

    .line 4661
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4663
    :cond_190
    move-object/from16 v0, p0

    iget-object v0, v0, mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4665
    :cond_1a3
    move-object/from16 v0, p0

    iget-object v0, v0, mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b8

    .line 4666
    move-object/from16 v0, p0

    iget-object v0, v0, mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4668
    :cond_1b8
    new-instance v17, Landroid/widget/AbsHorizontalListView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Landroid/widget/AbsHorizontalListView$3;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Landroid/widget/AbsHorizontalListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mTouchModeReset:Ljava/lang/Runnable;

    .line 4680
    move-object/from16 v0, p0

    iget-object v0, v0, mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_68

    .line 4635
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    :cond_1e1
    const/4 v10, 0x0

    goto/16 :goto_c3

    .line 4648
    .restart local v10    # "inList":Z
    .restart local v14    # "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    :cond_1e4
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_117

    .line 4683
    :cond_1ec
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchMode:I

    .line 4684
    invoke-virtual/range {p0 .. p0}, updateSelectorState()V

    .line 4685
    move-object/from16 v0, p0

    iget-boolean v0, v0, mForcedClick:Z

    move/from16 v17, v0

    if-eqz v17, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_68

    .line 4686
    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView$PerformClick;->run()V

    goto/16 :goto_68

    .line 4690
    :cond_212
    move-object/from16 v0, p0

    iget-boolean v0, v0, mForcedClick:Z

    move/from16 v17, v0

    if-nez v17, :cond_222

    move-object/from16 v0, p0

    iget-boolean v0, v0, mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_233

    :cond_222
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_233

    .line 4691
    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView$PerformClick;->run()V

    .line 4696
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    .end local v16    # "x":F
    :cond_233
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchMode:I

    .line 4697
    invoke-virtual/range {p0 .. p0}, updateSelectorState()V

    goto/16 :goto_9

    .line 4700
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "motionPosition":I
    :pswitch_240
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v5

    .line 4701
    .local v5, "childCount":I
    if-lez v5, :cond_38f

    .line 4702
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 4703
    .local v9, "firstChildLeft":I
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v12

    .line 4704
    .local v12, "lastChildRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 4705
    .local v6, "contentLeft":I
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 4706
    .local v7, "contentRight":I
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_2b9

    if-lt v9, v6, :cond_2b9

    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2b9

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v17

    sub-int v17, v17, v7

    move/from16 v0, v17

    if-gt v12, v0, :cond_2b9

    .line 4709
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchMode:I

    .line 4710
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, reportScrollStateChange(I)V

    goto/16 :goto_9

    .line 4712
    :cond_2b9
    move-object/from16 v0, p0

    iget-object v15, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4713
    .local v15, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4715
    move-object/from16 v0, p0

    iget v0, v0, mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    .line 4721
    .local v11, "initialVelocity":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_35a

    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_30c

    move-object/from16 v0, p0

    iget v0, v0, mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v6, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_35a

    :cond_30c
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_32c

    move-object/from16 v0, p0

    iget v0, v0, mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v7

    move/from16 v0, v17

    if-eq v12, v0, :cond_35a

    .line 4726
    :cond_32c
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_343

    .line 4727
    new-instance v17, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 4729
    :cond_343
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, reportScrollStateChange(I)V

    .line 4731
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->start(I)V

    goto/16 :goto_9

    .line 4733
    :cond_35a
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchMode:I

    .line 4734
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, reportScrollStateChange(I)V

    .line 4735
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_37c

    .line 4736
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 4738
    :cond_37c
    move-object/from16 v0, p0

    iget-object v0, v0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 4739
    move-object/from16 v0, p0

    iget-object v0, v0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    goto/16 :goto_9

    .line 4744
    .end local v6    # "contentLeft":I
    .end local v7    # "contentRight":I
    .end local v9    # "firstChildLeft":I
    .end local v11    # "initialVelocity":I
    .end local v12    # "lastChildRight":I
    .end local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_38f
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchMode:I

    .line 4745
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, reportScrollStateChange(I)V

    goto/16 :goto_9

    .line 4751
    .end local v5    # "childCount":I
    :pswitch_3a2
    move-object/from16 v0, p0

    iget-boolean v0, v0, USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3b2

    .line 4752
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHapticOverScroll:Z

    .line 4755
    :cond_3b2
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_3c9

    .line 4756
    new-instance v17, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 4758
    :cond_3c9
    move-object/from16 v0, p0

    iget-object v15, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4759
    .restart local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4760
    move-object/from16 v0, p0

    iget v0, v0, mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 4762
    .restart local v11    # "initialVelocity":I
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, reportScrollStateChange(I)V

    .line 4763
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_417

    .line 4764
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_9

    .line 4766
    :cond_417
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_9

    .line 4623
    :pswitch_data_422
    .packed-switch 0x0
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_240
        :pswitch_9
        :pswitch_3a2
    .end packed-switch
.end method

.method private positionPopup()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 6887
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6888
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 6889
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, getLocationOnScreen([I)V

    .line 6892
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 6893
    .local v0, "bottomGap":I
    iget-object v3, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_36

    .line 6894
    iget-object v3, p0, mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 6899
    :goto_35
    return-void

    .line 6897
    :cond_36
    iget-object v3, p0, mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_35
.end method

.method private positionSelector(IIII)V
    .registers 10
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 2792
    iget-object v0, p0, mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2794
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .prologue
    .line 5058
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 5059
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5060
    const/4 v0, 0x0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5062
    :cond_c
    return-void
.end method

.method private registerMotionListener()V
    .registers 4

    .prologue
    .line 8139
    const-string v0, "[registerDoubleTapMotionListener]"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 8140
    iget-object v0, p0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-eqz v0, :cond_12

    .line 8141
    iget-object v0, p0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    iget-object v1, p0, mMotionListener:Lcom/samsung/android/motion/MRListener;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/motion/MotionRecognitionManager;->registerListenerEvent(Lcom/samsung/android/motion/MRListener;I)V

    .line 8144
    :cond_12
    return-void
.end method

.method private releaseAllBoosters()V
    .registers 2

    .prologue
    .line 922
    iget-boolean v0, p0, mDVFSLockAcquired:Z

    if-eqz v0, :cond_19

    .line 923
    iget-object v0, p0, mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_d

    .line 924
    iget-object v0, p0, mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 926
    :cond_d
    iget-object v0, p0, mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_16

    .line 927
    iget-object v0, p0, mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 929
    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, mDVFSLockAcquired:Z

    .line 931
    :cond_19
    return-void
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 8094
    .local p0, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8095
    .local v1, "size":I
    if-lez v1, :cond_2a

    .line 8097
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_20

    .line 8098
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 8099
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    iget v3, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_1d

    .line 8101
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8107
    .end local v0    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :goto_1c
    return-object v2

    .line 8097
    .restart local v0    # "i":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 8105
    .end local v2    # "view":Landroid/view/View;
    :cond_20
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1c

    .line 8107
    .end local v0    # "i":I
    :cond_2a
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .registers 34
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3752
    move-object/from16 v0, p0

    iget v3, v0, mMotionX:I

    sub-int v29, p1, v3

    .line 3753
    .local v29, "rawDeltaX":I
    move-object/from16 v0, p0

    iget v3, v0, mMotionCorrection:I

    sub-int v16, v29, v3

    .line 3754
    .local v16, "deltaX":I
    move-object/from16 v0, p0

    iget v3, v0, mLastX:I

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_142

    move-object/from16 v0, p0

    iget v3, v0, mLastX:I

    sub-int v17, p1, v3

    .line 3756
    .local v17, "incrementalDeltaX":I
    :goto_1a
    move-object/from16 v0, p0

    iget v3, v0, mTouchMode:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_199

    .line 3764
    move-object/from16 v0, p0

    iget-object v3, v0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_31

    .line 3766
    const-string v3, "AbsHorizontalListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3769
    :cond_31
    move-object/from16 v0, p0

    iget v3, v0, mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_141

    .line 3773
    move-object/from16 v0, p0

    iget v3, v0, mGroupFlags:I

    const/high16 v5, 0x80000

    and-int/2addr v3, v5

    if-nez v3, :cond_58

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, mTouchSlop:I

    if-le v3, v5, :cond_58

    .line 3775
    invoke-virtual/range {p0 .. p0}, getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 3776
    .local v28, "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_58

    .line 3777
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3782
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_58
    move-object/from16 v0, p0

    iget v3, v0, mMotionPosition:I

    if-ltz v3, :cond_146

    .line 3783
    move-object/from16 v0, p0

    iget v3, v0, mMotionPosition:I

    move-object/from16 v0, p0

    iget v5, v0, mFirstPosition:I

    sub-int v18, v3, v5

    .line 3790
    .local v18, "motionIndex":I
    :goto_68
    const/16 v21, 0x0

    .line 3791
    .local v21, "motionViewPrevLeft":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 3792
    .local v20, "motionView":Landroid/view/View;
    if-eqz v20, :cond_78

    .line 3793
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v21

    .line 3797
    :cond_78
    const/4 v15, 0x0

    .line 3798
    .local v15, "atEdge":Z
    if-eqz v17, :cond_85

    .line 3799
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, trackMotionScroll(II)Z

    move-result v15

    .line 3803
    :cond_85
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 3804
    if-eqz v20, :cond_13b

    .line 3807
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v22

    .line 3808
    .local v22, "motionViewRealLeft":I
    if-eqz v15, :cond_135

    .line 3811
    move/from16 v0, v17

    neg-int v3, v0

    sub-int v5, v22, v21

    sub-int v4, v3, v5

    .line 3813
    .local v4, "overscroll":I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, mScrollX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, overScrollBy(IIIIIIIIZ)Z

    .line 3815
    move-object/from16 v0, p0

    iget v3, v0, mOverscrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, mScrollX:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v3, v5, :cond_ce

    .line 3817
    move-object/from16 v0, p0

    iget-object v3, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_ce

    .line 3818
    move-object/from16 v0, p0

    iget-object v3, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3822
    :cond_ce
    invoke-virtual/range {p0 .. p0}, getOverScrollMode()I

    move-result v27

    .line 3823
    .local v27, "overscrollMode":I
    if-eqz v27, :cond_df

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_135

    invoke-direct/range {p0 .. p0}, contentFits()Z

    move-result v3

    if-nez v3, :cond_135

    .line 3826
    :cond_df
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, mDirection:I

    .line 3828
    move-object/from16 v0, p0

    iget v0, v0, mTouchMode:I

    move/from16 v26, v0

    .line 3830
    .local v26, "oldTouchMode":I
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, mTouchMode:I

    .line 3831
    if-lez v29, :cond_14e

    .line 3833
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v5, v4

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v8, v0

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3835
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11d

    .line 3836
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3838
    :cond_11d
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, invalidate(IIII)V

    .line 3852
    .end local v4    # "overscroll":I
    .end local v26    # "oldTouchMode":I
    .end local v27    # "overscrollMode":I
    :cond_135
    :goto_135
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mMotionX:I

    .line 3854
    .end local v22    # "motionViewRealLeft":I
    :cond_13b
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mLastX:I

    .line 3928
    .end local v15    # "atEdge":Z
    .end local v18    # "motionIndex":I
    .end local v20    # "motionView":Landroid/view/View;
    .end local v21    # "motionViewPrevLeft":I
    :cond_141
    :goto_141
    return-void

    .end local v17    # "incrementalDeltaX":I
    :cond_142
    move/from16 v17, v16

    .line 3754
    goto/16 :goto_1a

    .line 3787
    .restart local v17    # "incrementalDeltaX":I
    :cond_146
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v3

    div-int/lit8 v18, v3, 0x2

    .restart local v18    # "motionIndex":I
    goto/16 :goto_68

    .line 3840
    .restart local v4    # "overscroll":I
    .restart local v15    # "atEdge":Z
    .restart local v20    # "motionView":Landroid/view/View;
    .restart local v21    # "motionViewPrevLeft":I
    .restart local v22    # "motionViewRealLeft":I
    .restart local v26    # "oldTouchMode":I
    .restart local v27    # "overscrollMode":I
    :cond_14e
    if-gez v29, :cond_135

    .line 3841
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    move/from16 v0, p2

    int-to-float v7, v0

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3843
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_178

    .line 3844
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3846
    :cond_178
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, invalidate(IIII)V

    goto :goto_135

    .line 3856
    .end local v4    # "overscroll":I
    .end local v15    # "atEdge":Z
    .end local v18    # "motionIndex":I
    .end local v20    # "motionView":Landroid/view/View;
    .end local v21    # "motionViewPrevLeft":I
    .end local v22    # "motionViewRealLeft":I
    .end local v26    # "oldTouchMode":I
    .end local v27    # "overscrollMode":I
    :cond_199
    move-object/from16 v0, p0

    iget v3, v0, mTouchMode:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_141

    .line 3857
    move-object/from16 v0, p0

    iget v3, v0, mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_141

    .line 3858
    move-object/from16 v0, p0

    iget v0, v0, mScrollX:I

    move/from16 v25, v0

    .line 3859
    .local v25, "oldScroll":I
    sub-int v24, v25, v17

    .line 3860
    .local v24, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, mLastX:I

    move/from16 v0, p1

    if-le v0, v3, :cond_298

    const/16 v23, 0x1

    .line 3862
    .local v23, "newDirection":I
    :goto_1ba
    move-object/from16 v0, p0

    iget v3, v0, mDirection:I

    if-nez v3, :cond_1c6

    .line 3863
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mDirection:I

    .line 3866
    :cond_1c6
    move/from16 v0, v17

    neg-int v6, v0

    .line 3867
    .local v6, "overScrollDistance":I
    if-gez v24, :cond_1cd

    if-gez v25, :cond_1d1

    :cond_1cd
    if-lez v24, :cond_29c

    if-gtz v25, :cond_29c

    .line 3868
    :cond_1d1
    move/from16 v0, v25

    neg-int v6, v0

    .line 3869
    add-int v17, v17, v6

    .line 3874
    :goto_1d6
    if-eqz v6, :cond_241

    .line 3875
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, mScrollX:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, mOverscrollDistance:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, overScrollBy(IIIIIIIIZ)Z

    .line 3877
    invoke-virtual/range {p0 .. p0}, getOverScrollMode()I

    move-result v27

    .line 3878
    .restart local v27    # "overscrollMode":I
    if-eqz v27, :cond_1fc

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_241

    invoke-direct/range {p0 .. p0}, contentFits()Z

    move-result v3

    if-nez v3, :cond_241

    .line 3881
    :cond_1fc
    if-lez v29, :cond_2a0

    .line 3882
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v8, v0

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3884
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_229

    .line 3885
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3887
    :cond_229
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, invalidate(IIII)V

    .line 3903
    .end local v27    # "overscrollMode":I
    :cond_241
    :goto_241
    if-eqz v17, :cond_28a

    .line 3905
    move-object/from16 v0, p0

    iget v3, v0, mScrollX:I

    if-eqz v3, :cond_251

    .line 3906
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, mScrollX:I

    .line 3907
    invoke-virtual/range {p0 .. p0}, invalidateParentIfNeeded()V

    .line 3910
    :cond_251
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, trackMotionScroll(II)Z

    .line 3912
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, mTouchMode:I

    .line 3916
    invoke-virtual/range {p0 .. p1}, findClosestMotionRow(I)I

    move-result v19

    .line 3918
    .local v19, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, mMotionCorrection:I

    .line 3919
    move-object/from16 v0, p0

    iget v3, v0, mFirstPosition:I

    sub-int v3, v19, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 3920
    .restart local v20    # "motionView":Landroid/view/View;
    if-eqz v20, :cond_2ea

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_27a
    move-object/from16 v0, p0

    iput v3, v0, mMotionViewOriginalLeft:I

    .line 3921
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mMotionX:I

    .line 3922
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mMotionPosition:I

    .line 3924
    .end local v19    # "motionPosition":I
    .end local v20    # "motionView":Landroid/view/View;
    :cond_28a
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mLastX:I

    .line 3925
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mDirection:I

    goto/16 :goto_141

    .line 3860
    .end local v6    # "overScrollDistance":I
    .end local v23    # "newDirection":I
    :cond_298
    const/16 v23, -0x1

    goto/16 :goto_1ba

    .line 3871
    .restart local v6    # "overScrollDistance":I
    .restart local v23    # "newDirection":I
    :cond_29c
    const/16 v17, 0x0

    goto/16 :goto_1d6

    .line 3890
    .restart local v27    # "overscrollMode":I
    :cond_2a0
    if-gez v29, :cond_241

    .line 3891
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v7

    div-int v7, p2, v7

    int-to-float v7, v7

    invoke-virtual {v3, v5, v7}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3893
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2c8

    .line 3894
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3896
    :cond_2c8
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, invalidate(IIII)V

    goto/16 :goto_241

    .line 3920
    .end local v27    # "overscrollMode":I
    .restart local v19    # "motionPosition":I
    .restart local v20    # "motionView":Landroid/view/View;
    :cond_2ea
    const/4 v3, 0x0

    goto :goto_27a
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1624
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_9

    .line 1625
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setAlwaysShow(Z)V

    .line 1627
    :cond_9
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1574
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_16

    .line 1575
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setEnabled(Z)V

    .line 1581
    :cond_9
    :goto_9
    invoke-virtual {p0}, resolvePadding()V

    .line 1583
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_15

    .line 1584
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->updateLayout()V

    .line 1586
    :cond_15
    return-void

    .line 1576
    :cond_16
    if-eqz p1, :cond_9

    .line 1577
    new-instance v0, Landroid/widget/HorizontalFastScroller;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalFastScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    .line 1578
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalFastScroller;->setEnabled(Z)V

    goto :goto_9
.end method

.method private showPopup()V
    .registers 2

    .prologue
    .line 6878
    invoke-virtual {p0}, getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 6879
    const/4 v0, 0x1

    invoke-direct {p0, v0}, createTextFilter(Z)V

    .line 6880
    invoke-direct {p0}, positionPopup()V

    .line 6882
    invoke-virtual {p0}, checkFocus()V

    .line 6884
    :cond_10
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3707
    iget v7, p0, mMotionX:I

    sub-int v1, p1, v7

    .line 3708
    .local v1, "deltaX":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3709
    .local v2, "distance":I
    iget v7, p0, mScrollX:I

    if-eqz v7, :cond_4a

    move v5, v9

    .line 3710
    .local v5, "overscroll":Z
    :goto_f
    if-nez v5, :cond_15

    iget v7, p0, mTouchSlop:I

    if-le v2, v7, :cond_6b

    .line 3711
    :cond_15
    invoke-direct {p0}, createScrollingCache()V

    .line 3712
    if-eqz v5, :cond_4c

    .line 3713
    const/4 v7, 0x5

    iput v7, p0, mTouchMode:I

    .line 3714
    iput v8, p0, mMotionCorrection:I

    .line 3719
    :goto_1f
    iget-object v7, p0, mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v7}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3720
    invoke-virtual {p0, v8}, setPressed(Z)V

    .line 3721
    iget v7, p0, mMotionPosition:I

    iget v10, p0, mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3722
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_35

    .line 3723
    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3726
    :cond_35
    iget v7, p0, mPointerCount:I

    if-le v7, v9, :cond_5a

    .line 3732
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 3733
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3e
    if-ge v3, v0, :cond_5a

    .line 3734
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3733
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_4a
    move v5, v8

    .line 3709
    goto :goto_f

    .line 3716
    .restart local v5    # "overscroll":Z
    :cond_4c
    const/4 v7, 0x3

    iput v7, p0, mTouchMode:I

    .line 3717
    if-lez v1, :cond_56

    iget v7, p0, mTouchSlop:I

    :goto_53
    iput v7, p0, mMotionCorrection:I

    goto :goto_1f

    :cond_56
    iget v7, p0, mTouchSlop:I

    neg-int v7, v7

    goto :goto_53

    .line 3737
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_5a
    invoke-virtual {p0, v9}, reportScrollStateChange(I)V

    .line 3740
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 3741
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_66

    .line 3742
    invoke-interface {v6, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3744
    :cond_66
    invoke-direct {p0, p1, p2, p3}, scrollIfNeeded(IILandroid/view/MotionEvent;)V

    move v7, v9

    .line 3748
    .end local v4    # "motionView":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :goto_6a
    return v7

    :cond_6b
    move v7, v8

    goto :goto_6a
.end method

.method private unregisterMotionListener()V
    .registers 3

    .prologue
    .line 8150
    const-string v0, "[unregisterDoubleTapMotionListener]"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 8151
    iget-object v0, p0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-eqz v0, :cond_10

    .line 8152
    iget-object v0, p0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    iget-object v1, p0, mMotionListener:Lcom/samsung/android/motion/MRListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/motion/MotionRecognitionManager;->unregisterListener(Lcom/samsung/android/motion/MRListener;)V

    .line 8154
    :cond_10
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .registers 9

    .prologue
    .line 1422
    iget v2, p0, mFirstPosition:I

    .line 1423
    .local v2, "firstPos":I
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 1424
    .local v1, "count":I
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_30

    const/4 v5, 0x1

    .line 1426
    .local v5, "useActivated":Z
    :goto_15
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v1, :cond_3e

    .line 1427
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1428
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1430
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_32

    .line 1431
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1426
    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1424
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_30
    const/4 v5, 0x0

    goto :goto_15

    .line 1432
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_32
    if-eqz v5, :cond_2d

    .line 1433
    iget-object v6, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2d

    .line 1436
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3e
    return-void
.end method

.method private useDefaultSelector()V
    .registers 3

    .prologue
    .line 1919
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1921
    return-void
.end method


# virtual methods
.method public addToPressItemListArray(II)V
    .registers 10
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    .line 8292
    const/4 v2, 0x0

    .line 8293
    .local v2, "isSameValueExist":Z
    const/4 v0, 0x0

    .line 8295
    .local v0, "checkCount":I
    iget-boolean v4, p0, mIsMultiFocusEnabled:Z

    if-nez v4, :cond_7

    .line 8375
    :goto_6
    return-void

    .line 8299
    :cond_7
    const/4 v4, -0x1

    if-ne p2, v4, :cond_45

    .line 8300
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget v4, p0, mTwPressItemListIndex:I

    if-ge v1, v4, :cond_33

    .line 8301
    iget-object v4, p0, mTwPressItemListArray:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_30

    .line 8302
    const/4 v2, 0x1

    .line 8304
    move v3, v1

    .local v3, "j":I
    :goto_17
    iget v4, p0, mTwPressItemListIndex:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2a

    .line 8305
    iget-object v4, p0, mTwPressItemListArray:[I

    iget-object v5, p0, mTwPressItemListArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    aput v5, v4, v3

    .line 8304
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 8307
    :cond_2a
    iget v4, p0, mTwPressItemListIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mTwPressItemListIndex:I

    .line 8300
    .end local v3    # "j":I
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 8312
    :cond_33
    if-nez v2, :cond_41

    .line 8313
    iget-object v4, p0, mTwPressItemListArray:[I

    iget v5, p0, mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8314
    iget v4, p0, mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mTwPressItemListIndex:I

    .line 8373
    :cond_41
    :goto_41
    invoke-virtual {p0}, invalidate()V

    goto :goto_6

    .line 8318
    .end local v1    # "i":I
    :cond_45
    if-ge p1, p2, :cond_71

    .line 8319
    sub-int v4, p2, p1

    add-int/lit8 v0, v4, 0x1

    .line 8321
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4c
    if-ge v1, v0, :cond_41

    .line 8322
    const/4 v2, 0x0

    .line 8324
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_50
    iget v4, p0, mTwPressItemListIndex:I

    if-ge v3, v4, :cond_5e

    .line 8325
    iget-object v4, p0, mTwPressItemListArray:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_5b

    .line 8326
    const/4 v2, 0x1

    .line 8324
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 8331
    :cond_5e
    if-nez v2, :cond_6c

    .line 8332
    iget-object v4, p0, mTwPressItemListArray:[I

    iget v5, p0, mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8333
    iget v4, p0, mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mTwPressItemListIndex:I

    .line 8335
    :cond_6c
    add-int/lit8 p1, p1, 0x1

    .line 8321
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 8338
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_71
    if-le p1, p2, :cond_9d

    .line 8339
    sub-int v4, p1, p2

    add-int/lit8 v0, v4, 0x1

    .line 8340
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_78
    if-ge v1, v0, :cond_41

    .line 8341
    const/4 v2, 0x0

    .line 8343
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_7c
    iget v4, p0, mTwPressItemListIndex:I

    if-ge v3, v4, :cond_8a

    .line 8344
    iget-object v4, p0, mTwPressItemListArray:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_87

    .line 8345
    const/4 v2, 0x1

    .line 8343
    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    .line 8350
    :cond_8a
    if-nez v2, :cond_98

    .line 8351
    iget-object v4, p0, mTwPressItemListArray:[I

    iget v5, p0, mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8352
    iget v4, p0, mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mTwPressItemListIndex:I

    .line 8355
    :cond_98
    add-int/lit8 p1, p1, -0x1

    .line 8340
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 8358
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_9d
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9e
    iget v4, p0, mTwPressItemListIndex:I

    if-ge v1, v4, :cond_ac

    .line 8359
    iget-object v4, p0, mTwPressItemListArray:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_a9

    .line 8360
    const/4 v2, 0x1

    .line 8358
    :cond_a9
    add-int/lit8 v1, v1, 0x1

    goto :goto_9e

    .line 8365
    :cond_ac
    if-nez v2, :cond_41

    .line 8366
    iget-object v4, p0, mTwPressItemListArray:[I

    iget v5, p0, mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8367
    iget v4, p0, mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mTwPressItemListIndex:I

    goto :goto_41
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5199
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    .line 5200
    .local v2, "count":I
    iget v3, p0, mFirstPosition:I

    .line 5201
    .local v3, "firstPosition":I
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 5203
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_b

    .line 5214
    :cond_a
    return-void

    .line 5207
    :cond_b
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v2, :cond_a

    .line 5208
    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5209
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 5210
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5212
    :cond_1d
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 5207
    add-int/lit8 v4, v4, 0x1

    goto :goto_c
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 7236
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 7195
    return-void
.end method

.method public canScrollList(I)Z
    .registers 12
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6223
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 6224
    .local v0, "childCount":I
    if-nez v0, :cond_9

    .line 6236
    :cond_8
    :goto_8
    return v6

    .line 6228
    :cond_9
    iget v1, p0, mFirstPosition:I

    .line 6229
    .local v1, "firstPosition":I
    iget-object v5, p0, mListPadding:Landroid/graphics/Rect;

    .line 6230
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_2a

    .line 6231
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 6232
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 6233
    .local v4, "lastPosition":I
    iget v8, p0, mItemCount:I

    if-lt v4, v8, :cond_28

    invoke-virtual {p0}, getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_8

    :cond_28
    move v6, v7

    goto :goto_8

    .line 6235
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_2a
    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 6236
    .local v2, "firstTop":I
    if-gtz v1, :cond_38

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_8

    :cond_38
    move v6, v7

    goto :goto_8
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7108
    iget-object v0, p0, mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7264
    instance-of v0, p1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .registers 2

    .prologue
    .line 1259
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_9

    .line 1260
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1262
    :cond_9
    iget-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_12

    .line 1263
    iget-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1265
    :cond_12
    const/4 v0, 0x0

    iput v0, p0, mCheckedItemCount:I

    .line 1266
    return-void
.end method

.method public clearTextFilter()V
    .registers 3

    .prologue
    .line 7157
    iget-boolean v0, p0, mFiltered:Z

    if-eqz v0, :cond_1f

    .line 7158
    invoke-direct {p0}, getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7159
    const/4 v0, 0x0

    iput-boolean v0, p0, mFiltered:Z

    .line 7160
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1f

    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 7161
    invoke-direct {p0}, dismissPopup()V

    .line 7164
    :cond_1f
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 2298
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 2299
    .local v0, "count":I
    if-lez v0, :cond_3c

    .line 2300
    iget-boolean v7, p0, mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_3a

    .line 2301
    mul-int/lit8 v1, v0, 0x64

    .line 2303
    .local v1, "extent":I
    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2304
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2305
    .local v2, "left":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2306
    .local v5, "width":I
    if-lez v5, :cond_1f

    .line 2307
    mul-int/lit8 v6, v2, 0x64

    div-int/2addr v6, v5

    add-int/2addr v1, v6

    .line 2310
    :cond_1f
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2311
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2312
    .local v3, "right":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2313
    if-lez v5, :cond_39

    .line 2314
    invoke-virtual {p0}, getWidth()I

    move-result v6

    sub-int v6, v3, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v1, v6

    .line 2322
    .end local v1    # "extent":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "width":I
    :cond_39
    :goto_39
    return v1

    .line 2319
    :cond_3a
    const/4 v1, 0x1

    goto :goto_39

    :cond_3c
    move v1, v6

    .line 2322
    goto :goto_39
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 2327
    iget v2, p0, mFirstPosition:I

    .line 2328
    .local v2, "firstPosition":I
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 2329
    .local v0, "childCount":I
    if-ltz v2, :cond_39

    if-lez v0, :cond_39

    .line 2330
    iget-boolean v8, p0, mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_3a

    .line 2331
    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2332
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2333
    .local v4, "left":I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2334
    .local v6, "width":I
    if-lez v6, :cond_39

    .line 2335
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    iget v9, p0, mScrollX:I

    int-to-float v9, v9

    invoke-virtual {p0}, getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2351
    .end local v4    # "left":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "width":I
    :cond_39
    :goto_39
    return v7

    .line 2340
    :cond_3a
    iget v1, p0, mItemCount:I

    .line 2341
    .local v1, "count":I
    if-nez v2, :cond_48

    .line 2342
    const/4 v3, 0x0

    .line 2348
    .local v3, "index":I
    :goto_3f
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_39

    .line 2343
    .end local v3    # "index":I
    :cond_48
    add-int v7, v2, v0

    if-ne v7, v1, :cond_4e

    .line 2344
    move v3, v1

    .restart local v3    # "index":I
    goto :goto_3f

    .line 2346
    .end local v3    # "index":I
    :cond_4e
    div-int/lit8 v7, v0, 0x2

    add-int v3, v2, v7

    .restart local v3    # "index":I
    goto :goto_3f
.end method

.method protected computeHorizontalScrollRange()I
    .registers 4

    .prologue
    .line 2357
    iget-boolean v1, p0, mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_28

    .line 2358
    iget v1, p0, mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2359
    .local v0, "result":I
    iget v1, p0, mScrollX:I

    if-eqz v1, :cond_27

    .line 2361
    iget v1, p0, mScrollX:I

    int-to-float v1, v1

    invoke-virtual {p0}, getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2366
    :cond_27
    :goto_27
    return v0

    .line 2364
    .end local v0    # "result":I
    :cond_28
    iget v0, p0, mItemCount:I

    .restart local v0    # "result":I
    goto :goto_27
.end method

.method confirmCheckedPositionsById()V
    .registers 19

    .prologue
    .line 6652
    move-object/from16 v0, p0

    iget-object v3, v0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 6654
    const/4 v2, 0x0

    .line 6655
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_af

    .line 6656
    move-object/from16 v0, p0

    iget-object v3, v0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 6657
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 6659
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 6660
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_a6

    .line 6662
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 6663
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 6664
    .local v10, "end":I
    const/4 v11, 0x0

    .line 6665
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_49
    move/from16 v0, v16

    if-ge v0, v10, :cond_71

    .line 6666
    move-object/from16 v0, p0

    iget-object v3, v0, mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 6667
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_a3

    .line 6668
    const/4 v11, 0x1

    .line 6669
    move-object/from16 v0, p0

    iget-object v3, v0, mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6670
    move-object/from16 v0, p0

    iget-object v3, v0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 6675
    .end local v14    # "searchId":J
    :cond_71
    if-nez v11, :cond_9f

    .line 6676
    move-object/from16 v0, p0

    iget-object v3, v0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 6677
    add-int/lit8 v9, v9, -0x1

    .line 6678
    move-object/from16 v0, p0

    iget v3, v0, mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, mCheckedItemCount:I

    .line 6679
    const/4 v2, 0x1

    .line 6680
    move-object/from16 v0, p0

    iget-object v3, v0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9f

    move-object/from16 v0, p0

    iget-object v3, v0, mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_9f

    .line 6681
    move-object/from16 v0, p0

    iget-object v3, v0, mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 6655
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_9f
    :goto_9f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9

    .line 6665
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_a3
    add-int/lit8 v16, v16, 0x1

    goto :goto_49

    .line 6686
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_a6
    move-object/from16 v0, p0

    iget-object v3, v0, mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_9f

    .line 6690
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_af
    if-eqz v2, :cond_be

    move-object/from16 v0, p0

    iget-object v3, v0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_be

    .line 6691
    move-object/from16 v0, p0

    iget-object v3, v0, mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 6693
    :cond_be
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3273
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .registers 2

    .prologue
    .line 7409
    const/4 v0, 0x1

    iput-boolean v0, p0, mDeferNotifyDataSetChanged:Z

    .line 7410
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 17
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 4244
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 4246
    .local v0, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 4247
    .local v3, "cd":Landroid/content/ClipDescription;
    if-eqz v3, :cond_16

    const-string v12, "cropUri"

    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1b

    .line 4248
    :cond_16
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    .line 4404
    :goto_1a
    return v12

    .line 4252
    :cond_1b
    const/4 v12, 0x1

    if-ne v0, v12, :cond_41

    .line 4253
    iget v12, p0, mDragScrollWorkingZonePx:I

    if-gtz v12, :cond_39

    .line 4254
    const/4 v12, 0x1

    const/high16 v13, 0x41c80000    # 25.0f

    iget-object v14, p0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, mDragScrollWorkingZonePx:I

    .line 4258
    :cond_39
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    if-nez v12, :cond_3f

    :cond_3f
    const/4 v12, 0x1

    goto :goto_1a

    .line 4261
    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 4262
    .local v10, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 4263
    .local v11, "y":I
    invoke-virtual {p0}, getChildCount()I

    move-result v5

    .line 4264
    .local v5, "childCount":I
    const/4 v6, 0x0

    .line 4265
    .local v6, "contentRight":I
    const/4 v8, 0x0

    .line 4266
    .local v8, "lastChildRight":I
    invoke-virtual {p0}, getChildCount()I

    move-result v7

    .line 4270
    .local v7, "count":I
    if-eqz v5, :cond_5b

    .line 4271
    invoke-virtual {p0}, getWidth()I

    move-result v6

    .line 4275
    :cond_5b
    iget v12, p0, mFirstPosition:I

    add-int/2addr v12, v7

    iget v13, p0, mItemCount:I

    if-ge v12, v13, :cond_f5

    const/4 v2, 0x1

    .line 4277
    .local v2, "canScrollRight":Z
    :goto_63
    if-nez v2, :cond_8a

    if-lez v7, :cond_8a

    .line 4278
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {p0, v12}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4279
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v12

    iget v13, p0, mRight:I

    iget-object v14, p0, mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    if-gt v12, v13, :cond_89

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {p0}, getWidth()I

    move-result v13

    iget-object v14, p0, mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_f8

    :cond_89
    const/4 v2, 0x1

    .line 4284
    .end local v4    # "child":Landroid/view/View;
    :cond_8a
    :goto_8a
    iget v12, p0, mFirstPosition:I

    if-lez v12, :cond_fa

    const/4 v1, 0x1

    .line 4286
    .local v1, "canScrollLeft":Z
    :goto_8f
    if-nez v1, :cond_a7

    .line 4287
    invoke-virtual {p0}, getChildCount()I

    move-result v12

    if-lez v12, :cond_a7

    .line 4288
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4289
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v12

    iget-object v13, p0, mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    if-ge v12, v13, :cond_fc

    const/4 v1, 0x1

    .line 4294
    .end local v4    # "child":Landroid/view/View;
    :cond_a7
    :goto_a7
    iget v12, p0, mDragScrollWorkingZonePx:I

    if-le v10, v12, :cond_b1

    iget v12, p0, mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v10, v12, :cond_bd

    :cond_b1
    if-lez v11, :cond_bd

    invoke-virtual {p0}, getBottom()I

    move-result v12

    if-gt v11, v12, :cond_bd

    if-nez v1, :cond_fe

    if-nez v2, :cond_fe

    .line 4297
    :cond_bd
    iget-object v12, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    if-eqz v12, :cond_d0

    iget-object v12, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_d0

    .line 4298
    iget-object v12, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4301
    :cond_d0
    iget-boolean v12, p0, mIsHoverOverscrolled:Z

    const/4 v13, 0x1

    if-eq v12, v13, :cond_d9

    iget v12, p0, mHoverScrollStartTime:I

    if-eqz v12, :cond_dc

    .line 4302
    :cond_d9
    const/4 v12, 0x0

    iput-boolean v12, p0, mIsHoverOverscrolled:Z

    .line 4305
    :cond_dc
    const/4 v12, 0x0

    iput v12, p0, mHoverRecognitionStartTime:I

    .line 4306
    const/4 v12, 0x0

    iput v12, p0, mHoverScrollStartTime:I

    .line 4307
    const/4 v12, 0x0

    iput-boolean v12, p0, mHoverAreaEnter:Z

    .line 4310
    const/4 v12, 0x2

    if-ne v0, v12, :cond_ef

    iget-boolean v12, p0, mIsDragScrolled:Z

    if-eqz v12, :cond_ef

    .line 4311
    const/4 v12, 0x0

    iput-boolean v12, p0, mIsDragScrolled:Z

    .line 4315
    :cond_ef
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_1a

    .line 4275
    .end local v1    # "canScrollLeft":Z
    .end local v2    # "canScrollRight":Z
    :cond_f5
    const/4 v2, 0x0

    goto/16 :goto_63

    .line 4279
    .restart local v2    # "canScrollRight":Z
    .restart local v4    # "child":Landroid/view/View;
    :cond_f8
    const/4 v2, 0x0

    goto :goto_8a

    .line 4284
    .end local v4    # "child":Landroid/view/View;
    :cond_fa
    const/4 v1, 0x0

    goto :goto_8f

    .line 4289
    .restart local v1    # "canScrollLeft":Z
    .restart local v4    # "child":Landroid/view/View;
    :cond_fc
    const/4 v1, 0x0

    goto :goto_a7

    .line 4319
    .end local v4    # "child":Landroid/view/View;
    :cond_fe
    iget-object v12, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    if-nez v12, :cond_10a

    .line 4320
    new-instance v12, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v12, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    .line 4322
    :cond_10a
    iget-boolean v12, p0, mHoverAreaEnter:Z

    if-nez v12, :cond_115

    .line 4323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, mHoverScrollStartTime:I

    .line 4325
    :cond_115
    packed-switch v0, :pswitch_data_1fa

    .line 4404
    :cond_118
    :goto_118
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_1a

    .line 4327
    :pswitch_11e
    const/4 v12, 0x1

    iput-boolean v12, p0, mHoverAreaEnter:Z

    .line 4328
    if-ltz v10, :cond_14a

    iget v12, p0, mDragScrollWorkingZonePx:I

    if-gt v10, v12, :cond_14a

    .line 4330
    iget-object v12, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_118

    .line 4331
    const/4 v12, 0x1

    iput-boolean v12, p0, mIsDragScrolled:Z

    .line 4332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, mHoverRecognitionStartTime:I

    .line 4333
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4334
    .local v9, "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4335
    const/4 v12, 0x2

    iput v12, p0, mHoverScrollDirection:I

    .line 4336
    iget-object v12, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_118

    .line 4338
    .end local v9    # "msg":Landroid/os/Message;
    :cond_14a
    iget v12, p0, mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v10, v12, :cond_118

    if-gt v10, v6, :cond_118

    .line 4340
    iget-object v12, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_118

    .line 4341
    const/4 v12, 0x1

    iput-boolean v12, p0, mIsDragScrolled:Z

    .line 4342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, mHoverRecognitionStartTime:I

    .line 4343
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4344
    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4345
    const/4 v12, 0x1

    iput v12, p0, mHoverScrollDirection:I

    .line 4346
    iget-object v12, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_118

    .line 4352
    .end local v9    # "msg":Landroid/os/Message;
    :pswitch_175
    iget-boolean v12, p0, mHoverAreaEnter:Z

    if-nez v12, :cond_17c

    .line 4353
    const/4 v12, 0x1

    iput-boolean v12, p0, mHoverAreaEnter:Z

    .line 4356
    :cond_17c
    if-ltz v10, :cond_1a6

    iget v12, p0, mDragScrollWorkingZonePx:I

    if-gt v10, v12, :cond_1a6

    .line 4358
    iget-object v12, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_118

    .line 4359
    const/4 v12, 0x1

    iput-boolean v12, p0, mIsDragScrolled:Z

    .line 4360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, mHoverRecognitionStartTime:I

    .line 4361
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4362
    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4363
    const/4 v12, 0x2

    iput v12, p0, mHoverScrollDirection:I

    .line 4364
    iget-object v12, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_118

    .line 4366
    .end local v9    # "msg":Landroid/os/Message;
    :cond_1a6
    iget v12, p0, mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v10, v12, :cond_118

    if-gt v10, v6, :cond_118

    .line 4368
    iget-object v12, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_118

    .line 4369
    const/4 v12, 0x1

    iput-boolean v12, p0, mIsDragScrolled:Z

    .line 4370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, mHoverRecognitionStartTime:I

    .line 4371
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4372
    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4373
    const/4 v12, 0x1

    iput v12, p0, mHoverScrollDirection:I

    .line 4374
    iget-object v12, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_118

    .line 4381
    .end local v9    # "msg":Landroid/os/Message;
    :pswitch_1d2
    iget-boolean v12, p0, mIsDragScrolled:Z

    if-eqz v12, :cond_1d9

    .line 4382
    const/4 v12, 0x0

    iput-boolean v12, p0, mIsDragScrolled:Z

    .line 4389
    :cond_1d9
    :pswitch_1d9
    iget-object v12, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_1e8

    .line 4390
    iget-object v12, p0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4392
    :cond_1e8
    const/4 v12, 0x0

    iput-boolean v12, p0, mIsDragScrolled:Z

    .line 4394
    const/4 v12, 0x0

    iput v12, p0, mHoverRecognitionStartTime:I

    .line 4395
    const/4 v12, 0x0

    iput v12, p0, mHoverScrollStartTime:I

    .line 4396
    const/4 v12, 0x0

    iput-boolean v12, p0, mIsHoverOverscrolled:Z

    .line 4397
    const/4 v12, 0x0

    iput-boolean v12, p0, mHoverAreaEnter:Z

    goto/16 :goto_118

    .line 4325
    nop

    :pswitch_data_1fa
    .packed-switch 0x2
        :pswitch_175
        :pswitch_1d2
        :pswitch_1d9
        :pswitch_11e
        :pswitch_1d9
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2798
    const/4 v2, 0x0

    .line 2799
    .local v2, "saveCount":I
    iget v5, p0, mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_50

    const/4 v0, 0x1

    .line 2800
    .local v0, "clipToPadding":Z
    :goto_a
    if-eqz v0, :cond_35

    .line 2801
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2802
    iget v3, p0, mScrollX:I

    .line 2803
    .local v3, "scrollX":I
    iget v4, p0, mScrollY:I

    .line 2804
    .local v4, "scrollY":I
    iget v5, p0, mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, mRight:I

    add-int/2addr v7, v3

    iget v8, p0, mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2807
    iget v5, p0, mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, mGroupFlags:I

    .line 2810
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    :cond_35
    iget-boolean v1, p0, mDrawSelectorOnTop:Z

    .line 2811
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_3c

    .line 2812
    invoke-direct {p0, p1}, drawSelector(Landroid/graphics/Canvas;)V

    .line 2815
    :cond_3c
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2817
    if-eqz v1, :cond_44

    .line 2818
    invoke-direct {p0, p1}, drawSelector(Landroid/graphics/Canvas;)V

    .line 2821
    :cond_44
    if-eqz v0, :cond_4f

    .line 2822
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2823
    iget v5, p0, mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, mGroupFlags:I

    .line 2825
    :cond_4f
    return-void

    .line 2799
    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_50
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 23
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4020
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "pen_hovering"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_93

    const/4 v12, 0x1

    .line 4021
    .local v12, "isHoveringOn":Z
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "pen_hovering_list_scroll"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_95

    const/4 v11, 0x1

    .line 4024
    .local v11, "isHoverListScrollOn":Z
    :goto_38
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    if-nez v18, :cond_53

    .line 4025
    new-instance v18, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    .line 4027
    :cond_53
    invoke-direct/range {p0 .. p1}, onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 4030
    move-object/from16 v0, p0

    iget-boolean v0, v0, isHoveringUIEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8e

    move-object/from16 v0, p0

    iget-boolean v0, v0, mHoverScrollEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8e

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7c

    if-eqz v12, :cond_8e

    if-eqz v11, :cond_8e

    :cond_7c
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_97

    .line 4033
    :cond_8e
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    .line 4234
    :goto_92
    return v18

    .line 4020
    .end local v11    # "isHoverListScrollOn":Z
    .end local v12    # "isHoveringOn":Z
    :cond_93
    const/4 v12, 0x0

    goto :goto_1c

    .line 4021
    .restart local v12    # "isHoveringOn":Z
    :cond_95
    const/4 v11, 0x0

    goto :goto_38

    .line 4036
    .restart local v11    # "isHoverListScrollOn":Z
    :cond_97
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 4037
    .local v16, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 4038
    .local v17, "y":I
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v7

    .line 4039
    .local v7, "childCount":I
    const/4 v8, 0x0

    .line 4040
    .local v8, "contentRight":I
    const/4 v14, 0x0

    .line 4041
    .local v14, "lastChildRight":I
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v9

    .line 4045
    .local v9, "count":I
    move-object/from16 v0, p0

    iget v0, v0, mHoverLeftAreaWidth:I

    move/from16 v18, v0

    if-lez v18, :cond_c3

    move-object/from16 v0, p0

    iget v0, v0, mHoverRightAreaWidth:I

    move/from16 v18, v0

    if-gtz v18, :cond_11f

    .line 4046
    :cond_c3
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, mHoverLeftAreaWidth_DP:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mHoverLeftAreaWidth:I

    .line 4054
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, mHoverRightAreaWidth_DP:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mHoverRightAreaWidth:I

    .line 4063
    :cond_11f
    if-eqz v7, :cond_125

    .line 4064
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v8

    .line 4068
    :cond_125
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_26b

    const/4 v5, 0x1

    .line 4070
    .local v5, "canScrollRight":Z
    :goto_13a
    if-nez v5, :cond_183

    if-lez v9, :cond_183

    .line 4071
    add-int/lit8 v18, v9, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4072
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, mRight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_182

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_26e

    :cond_182
    const/4 v5, 0x1

    .line 4077
    .end local v6    # "child":Landroid/view/View;
    :cond_183
    :goto_183
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v18, v0

    if-lez v18, :cond_271

    const/4 v4, 0x1

    .line 4079
    .local v4, "canScrollLeft":Z
    :goto_18c
    if-nez v4, :cond_1b5

    .line 4080
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v18

    if-lez v18, :cond_1b5

    .line 4081
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4082
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_274

    const/4 v4, 0x1

    .line 4086
    .end local v6    # "child":Landroid/view/View;
    :cond_1b5
    :goto_1b5
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_277

    const/4 v13, 0x1

    .line 4088
    .local v13, "isPossibleTooltype":Z
    :goto_1c8
    move-object/from16 v0, p0

    iget v0, v0, mHoverLeftAreaWidth:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_1e2

    move-object/from16 v0, p0

    iget v0, v0, mHoverRightAreaWidth:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_208

    :cond_1e2
    if-lez v17, :cond_208

    invoke-virtual/range {p0 .. p0}, getBottom()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_208

    if-nez v4, :cond_1f2

    if-eqz v5, :cond_208

    :cond_1f2
    if-eqz v13, :cond_200

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_208

    :cond_200
    if-eqz v13, :cond_208

    invoke-virtual/range {p0 .. p0}, isLockScreenMode()Z

    move-result v18

    if-eqz v18, :cond_28c

    .line 4091
    :cond_208
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_228

    .line 4092
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4094
    const/16 v18, 0x1

    const/16 v19, -0x1

    :try_start_225
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_228
    .catch Landroid/os/RemoteException; {:try_start_225 .. :try_end_228} :catch_27a

    .line 4100
    :cond_228
    :goto_228
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsHoverOverscrolled:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_23e

    move-object/from16 v0, p0

    iget v0, v0, mHoverScrollStartTime:I

    move/from16 v18, v0

    if-eqz v18, :cond_24d

    .line 4101
    :cond_23e
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsHoverOverscrolled:Z

    .line 4103
    const/16 v18, 0x1

    const/16 v19, -0x1

    :try_start_24a
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_24d
    .catch Landroid/os/RemoteException; {:try_start_24a .. :try_end_24d} :catch_283

    .line 4109
    :cond_24d
    :goto_24d
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mHoverRecognitionStartTime:I

    .line 4110
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mHoverScrollStartTime:I

    .line 4111
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoverAreaEnter:Z

    .line 4113
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    goto/16 :goto_92

    .line 4068
    .end local v4    # "canScrollLeft":Z
    .end local v5    # "canScrollRight":Z
    .end local v13    # "isPossibleTooltype":Z
    :cond_26b
    const/4 v5, 0x0

    goto/16 :goto_13a

    .line 4072
    .restart local v5    # "canScrollRight":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_26e
    const/4 v5, 0x0

    goto/16 :goto_183

    .line 4077
    .end local v6    # "child":Landroid/view/View;
    :cond_271
    const/4 v4, 0x0

    goto/16 :goto_18c

    .line 4082
    .restart local v4    # "canScrollLeft":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_274
    const/4 v4, 0x0

    goto/16 :goto_1b5

    .line 4086
    .end local v6    # "child":Landroid/view/View;
    :cond_277
    const/4 v13, 0x0

    goto/16 :goto_1c8

    .line 4095
    .restart local v13    # "isPossibleTooltype":Z
    :catch_27a
    move-exception v10

    .line 4096
    .local v10, "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_228

    .line 4104
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_283
    move-exception v10

    .line 4105
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24d

    .line 4116
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_28c
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHoverAreaEnter:Z

    move/from16 v18, v0

    if-nez v18, :cond_2bc

    .line 4117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mHoverScrollStartTime:I

    .line 4119
    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2bc

    .line 4120
    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsHorizontalListView;I)V

    .line 4125
    :cond_2bc
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    packed-switch v18, :pswitch_data_4f2

    .line 4234
    :cond_2c3
    :goto_2c3
    :pswitch_2c3
    const/16 v18, 0x1

    goto/16 :goto_92

    .line 4127
    :pswitch_2c7
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoverAreaEnter:Z

    .line 4129
    if-ltz v16, :cond_328

    move-object/from16 v0, p0

    iget v0, v0, mHoverLeftAreaWidth:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_328

    .line 4131
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_2c3

    .line 4132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mHoverRecognitionStartTime:I

    .line 4134
    const/16 v18, 0x11

    const/16 v19, -0x1

    :try_start_2fe
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_301
    .catch Landroid/os/RemoteException; {:try_start_2fe .. :try_end_301} :catch_31f

    .line 4138
    :goto_301
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4139
    .local v15, "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4140
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mHoverScrollDirection:I

    .line 4141
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2c3

    .line 4135
    .end local v15    # "msg":Landroid/os/Message;
    :catch_31f
    move-exception v10

    .line 4136
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SCROLL_LEFT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_301

    .line 4143
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_328
    move-object/from16 v0, p0

    iget v0, v0, mHoverRightAreaWidth:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_2c3

    move/from16 v0, v16

    if-gt v0, v8, :cond_2c3

    .line 4145
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_2c3

    .line 4146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mHoverRecognitionStartTime:I

    .line 4148
    const/16 v18, 0xd

    const/16 v19, -0x1

    :try_start_35b
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_35e
    .catch Landroid/os/RemoteException; {:try_start_35b .. :try_end_35e} :catch_37d

    .line 4152
    :goto_35e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4153
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4154
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mHoverScrollDirection:I

    .line 4155
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2c3

    .line 4149
    .end local v15    # "msg":Landroid/os/Message;
    :catch_37d
    move-exception v10

    .line 4150
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SCROLL_RIGHT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35e

    .line 4162
    .end local v10    # "e":Landroid/os/RemoteException;
    :pswitch_386
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHoverAreaEnter:Z

    move/from16 v18, v0

    if-nez v18, :cond_3a5

    .line 4163
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoverAreaEnter:Z

    .line 4164
    const/16 v18, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4165
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    goto/16 :goto_92

    .line 4168
    :cond_3a5
    if-ltz v16, :cond_415

    move-object/from16 v0, p0

    iget v0, v0, mHoverLeftAreaWidth:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_415

    .line 4170
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_2c3

    .line 4171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mHoverRecognitionStartTime:I

    .line 4174
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsHoverOverscrolled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3e6

    move-object/from16 v0, p0

    iget v0, v0, mHoverScrollDirection:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3ed

    .line 4176
    :cond_3e6
    const/16 v18, 0x11

    const/16 v19, -0x1

    :try_start_3ea
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3ed
    .catch Landroid/os/RemoteException; {:try_start_3ea .. :try_end_3ed} :catch_40c

    .line 4182
    :cond_3ed
    :goto_3ed
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4183
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4184
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mHoverScrollDirection:I

    .line 4185
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2c3

    .line 4177
    .end local v15    # "msg":Landroid/os/Message;
    :catch_40c
    move-exception v10

    .line 4178
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SCROLL_LEFT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3ed

    .line 4187
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_415
    move-object/from16 v0, p0

    iget v0, v0, mHoverRightAreaWidth:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_2c3

    move/from16 v0, v16

    if-gt v0, v8, :cond_2c3

    .line 4189
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_2c3

    .line 4190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mHoverRecognitionStartTime:I

    .line 4193
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsHoverOverscrolled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_45a

    move-object/from16 v0, p0

    iget v0, v0, mHoverScrollDirection:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_461

    .line 4195
    :cond_45a
    const/16 v18, 0xd

    const/16 v19, -0x1

    :try_start_45e
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_461
    .catch Landroid/os/RemoteException; {:try_start_45e .. :try_end_461} :catch_480

    .line 4201
    :cond_461
    :goto_461
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4202
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4203
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mHoverScrollDirection:I

    .line 4204
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2c3

    .line 4196
    .end local v15    # "msg":Landroid/os/Message;
    :catch_480
    move-exception v10

    .line 4197
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SCROLL_RIGHT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_461

    .line 4210
    .end local v10    # "e":Landroid/os/RemoteException;
    :pswitch_489
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_4a2

    .line 4211
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4215
    :cond_4a2
    const/16 v18, 0x1

    const/16 v19, -0x1

    :try_start_4a6
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4a9
    .catch Landroid/os/RemoteException; {:try_start_4a6 .. :try_end_4a9} :catch_4e8

    .line 4220
    :goto_4a9
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mHoverRecognitionStartTime:I

    .line 4221
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mHoverScrollStartTime:I

    .line 4222
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsHoverOverscrolled:Z

    .line 4223
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoverAreaEnter:Z

    .line 4225
    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4e2

    .line 4226
    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsHorizontalListView;I)V

    .line 4229
    :cond_4e2
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    goto/16 :goto_92

    .line 4216
    :catch_4e8
    move-exception v10

    .line 4217
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a9

    .line 4125
    nop

    :pswitch_data_4f2
    .packed-switch 0x7
        :pswitch_386
        :pswitch_2c3
        :pswitch_2c7
        :pswitch_489
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .prologue
    .line 3601
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 4993
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 4994
    iget-object v8, p0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_9f

    .line 4995
    iget v5, p0, mScrollX:I

    .line 4996
    .local v5, "scrollX":I
    iget-object v8, p0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_55

    .line 4997
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 4998
    .local v4, "restoreCount":I
    iget-object v8, p0, mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, mGlowPaddingTop:I

    add-int v6, v8, v9

    .line 4999
    .local v6, "topPadding":I
    iget-object v8, p0, mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, mGlowPaddingBottom:I

    add-int v0, v8, v9

    .line 5000
    .local v0, "bottomPadding":I
    invoke-virtual {p0}, getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    sub-int v3, v8, v0

    .line 5002
    .local v3, "height":I
    neg-int v8, v3

    add-int v2, v8, v6

    .line 5003
    .local v2, "edgeY":I
    const/4 v8, 0x0

    iget v9, p0, mFirstPositionDistanceGuess:I

    add-int/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5004
    .local v1, "edgeX":I
    const/high16 v8, 0x43870000    # 270.0f

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5005
    int-to-float v8, v2

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5006
    iget-object v8, p0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getWidth()I

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5007
    iget-object v8, p0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 5011
    :cond_52
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5013
    .end local v0    # "bottomPadding":I
    .end local v1    # "edgeX":I
    .end local v2    # "edgeY":I
    .end local v3    # "height":I
    .end local v4    # "restoreCount":I
    .end local v6    # "topPadding":I
    :cond_55
    iget-object v8, p0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_9f

    .line 5014
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 5015
    .restart local v4    # "restoreCount":I
    iget-object v8, p0, mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, mGlowPaddingTop:I

    add-int v6, v8, v9

    .line 5016
    .restart local v6    # "topPadding":I
    iget-object v8, p0, mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, mGlowPaddingBottom:I

    add-int v0, v8, v9

    .line 5017
    .restart local v0    # "bottomPadding":I
    invoke-virtual {p0}, getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    sub-int v3, v8, v0

    .line 5018
    .restart local v3    # "height":I
    invoke-virtual {p0}, getWidth()I

    move-result v7

    .line 5020
    .local v7, "width":I
    neg-int v2, v6

    .line 5021
    .restart local v2    # "edgeY":I
    iget v8, p0, mLastPositionDistanceGuess:I

    add-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    neg-int v1, v8

    .line 5022
    .restart local v1    # "edgeX":I
    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5023
    int-to-float v8, v2

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5024
    iget-object v8, p0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v3, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5025
    iget-object v8, p0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 5030
    :cond_9c
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5033
    .end local v0    # "bottomPadding":I
    .end local v1    # "edgeX":I
    .end local v2    # "edgeY":I
    .end local v3    # "height":I
    .end local v4    # "restoreCount":I
    .end local v5    # "scrollX":I
    .end local v6    # "topPadding":I
    .end local v7    # "width":I
    :cond_9f
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 3048
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3049
    invoke-virtual {p0}, updateSelectorState()V

    .line 3050
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 8170
    :try_start_0
    invoke-direct {p0}, unregisterMotionListener()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 8172
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 8174
    return-void

    .line 8172
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method findClosestMotionRow(I)I
    .registers 5
    .param p1, "x"    # I

    .prologue
    const/4 v2, -0x1

    .line 6505
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 6506
    .local v0, "childCount":I
    if-nez v0, :cond_9

    move v1, v2

    .line 6511
    :cond_8
    :goto_8
    return v1

    .line 6510
    :cond_9
    invoke-virtual {p0, p1}, findMotionRow(I)I

    move-result v1

    .line 6511
    .local v1, "motionRow":I
    if-ne v1, v2, :cond_8

    iget v2, p0, mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_8
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .registers 3
    .param p1, "accessibilityId"    # I

    .prologue
    .line 1830
    invoke-virtual {p0}, getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1840
    .end local p0    # "this":Landroid/widget/AbsHorizontalListView;
    :goto_6
    return-object p0

    .line 1837
    .restart local p0    # "this":Landroid/widget/AbsHorizontalListView;
    :cond_7
    iget-boolean v0, p0, mDataChanged:Z

    if-eqz v0, :cond_d

    .line 1838
    const/4 p0, 0x0

    goto :goto_6

    .line 1840
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p0

    goto :goto_6
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 5

    .prologue
    .line 7248
    new-instance v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 123
    invoke-virtual {p0, p1}, generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsHorizontalListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7254
    new-instance v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsHorizontalListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsHorizontalListView$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 7259
    new-instance v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsHorizontalListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomPaddingOffset()I
    .registers 3

    .prologue
    .line 2849
    iget v0, p0, mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, mPaddingBottom:I

    goto :goto_9
.end method

.method public getCacheColorHint()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 7325
    iget v0, p0, mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .registers 2

    .prologue
    .line 1176
    iget v0, p0, mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .registers 7

    .prologue
    .line 1240
    iget v4, p0, mChoiceMode:I

    if-eqz v4, :cond_c

    iget-object v4, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_c

    iget-object v4, p0, mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_10

    .line 1241
    :cond_c
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1252
    :cond_f
    return-object v3

    .line 1244
    :cond_10
    iget-object v2, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1245
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1246
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1248
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-ge v1, v0, :cond_f

    .line 1249
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1248
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method public getCheckedItemPosition()I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1208
    iget v0, p0, mChoiceMode:I

    if-ne v0, v1, :cond_19

    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_19

    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_19

    .line 1209
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1212
    :goto_18
    return v0

    :cond_19
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .registers 2

    .prologue
    .line 1225
    iget v0, p0, mChoiceMode:I

    if-eqz v0, :cond_7

    .line 1226
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1228
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getChoiceMode()I
    .registers 2

    .prologue
    .line 1444
    iget v0, p0, mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 3453
    iget-object v0, p0, mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1906
    invoke-virtual {p0}, getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1907
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_13

    .line 1910
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1911
    invoke-virtual {p0, v0, p1}, offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1916
    :goto_12
    return-void

    .line 1914
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_12
.end method

.method getFooterViewsCount()I
    .registers 2

    .prologue
    .line 6448
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 6438
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalScrollbarHeight()I
    .registers 3

    .prologue
    .line 1652
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_1b

    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1653
    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    iget-object v1, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v1}, Landroid/widget/HorizontalFastScroller;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1655
    :goto_1a
    return v0

    :cond_1b
    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    goto :goto_1a
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 6

    .prologue
    .line 2371
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 2372
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 2373
    .local v1, "fadeEdge":F
    if-nez v0, :cond_b

    .line 2382
    .end local v1    # "fadeEdge":F
    :cond_a
    :goto_a
    return v1

    .line 2376
    .restart local v1    # "fadeEdge":F
    :cond_b
    iget v4, p0, mFirstPosition:I

    if-lez v4, :cond_12

    .line 2377
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_a

    .line 2380
    :cond_12
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2381
    .local v3, "left":I
    invoke-virtual {p0}, getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2382
    .local v2, "fadeLength":F
    iget v4, p0, mPaddingLeft:I

    if-ge v3, v4, :cond_a

    iget v4, p0, mPaddingLeft:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_a
.end method

.method protected getLeftPaddingOffset()I
    .registers 3

    .prologue
    .line 2834
    iget v0, p0, mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, mPaddingLeft:I

    neg-int v0, v0

    goto :goto_9
.end method

.method public getListPaddingBottom()I
    .registers 2

    .prologue
    .line 2545
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .registers 2

    .prologue
    .line 2557
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .registers 2

    .prologue
    .line 2569
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .registers 2

    .prologue
    .line 2533
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 8

    .prologue
    .line 2388
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 2389
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    .line 2390
    .local v1, "fadeEdge":F
    if-nez v0, :cond_b

    .line 2400
    .end local v1    # "fadeEdge":F
    :cond_a
    :goto_a
    return v1

    .line 2393
    .restart local v1    # "fadeEdge":F
    :cond_b
    iget v5, p0, mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_19

    .line 2394
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_a

    .line 2397
    :cond_19
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2398
    .local v3, "right":I
    invoke-virtual {p0}, getWidth()I

    move-result v4

    .line 2399
    .local v4, "width":I
    invoke-virtual {p0}, getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 2400
    .local v2, "fadeLength":F
    iget v5, p0, mPaddingRight:I

    sub-int v5, v4, v5

    if-le v3, v5, :cond_a

    sub-int v5, v3, v4

    iget v6, p0, mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_a
.end method

.method protected getRightPaddingOffset()I
    .registers 3

    .prologue
    .line 2844
    iget v0, p0, mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, mPaddingRight:I

    goto :goto_9
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2517
    iget v0, p0, mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 2518
    iget v0, p0, mSelectedPosition:I

    iget v1, p0, mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2520
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 2975
    iget-object v0, p0, mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 7293
    iget v0, p0, mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2232
    iget-boolean v0, p0, mTextFilterEnabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    .line 2233
    iget-object v0, p0, mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2235
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected getTopPaddingOffset()I
    .registers 3

    .prologue
    .line 2839
    iget v0, p0, mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, mPaddingTop:I

    neg-int v0, v0

    goto :goto_9
.end method

.method public getTouchSlop()I
    .registers 2

    .prologue
    .line 961
    iget v0, p0, mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .registers 2

    .prologue
    .line 7288
    iget v0, p0, mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .registers 16

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 6697
    iget v1, p0, mItemCount:I

    .line 6698
    .local v1, "count":I
    iget v3, p0, mLastHandledItemCount:I

    .line 6699
    .local v3, "lastHandledItemCount":I
    iget v10, p0, mItemCount:I

    iput v10, p0, mLastHandledItemCount:I

    .line 6702
    iget-boolean v10, p0, mIsMultiFocusEnabled:Z

    if-ne v10, v9, :cond_28

    iget-object v10, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_28

    iget v10, p0, mItemCount:I

    iget v11, p0, mOldAdapterItemCount:I

    if-eq v10, v11, :cond_28

    .line 6704
    iget v10, p0, mItemCount:I

    new-array v10, v10, [I

    iput-object v10, p0, mTwPressItemListArray:[I

    .line 6705
    invoke-virtual {p0}, resetPressItemListArray()V

    .line 6706
    iget v10, p0, mItemCount:I

    iput v10, p0, mOldAdapterItemCount:I

    .line 6710
    :cond_28
    iget v10, p0, mChoiceMode:I

    if-eqz v10, :cond_3b

    iget-object v10, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_3b

    iget-object v10, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 6711
    invoke-virtual {p0}, confirmCheckedPositionsById()V

    .line 6715
    :cond_3b
    iget-object v10, p0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsHorizontalListView$RecycleBin;->clearTransientStateViews()V

    .line 6717
    if-lez v1, :cond_105

    .line 6722
    iget-boolean v10, p0, mNeedSync:Z

    if-eqz v10, :cond_8e

    .line 6724
    iput-boolean v12, p0, mNeedSync:Z

    .line 6725
    const/4 v10, 0x0

    iput-object v10, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 6727
    iget v10, p0, mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_53

    .line 6728
    iput v8, p0, mLayoutMode:I

    .line 6844
    :cond_52
    :goto_52
    return-void

    .line 6730
    :cond_53
    iget v10, p0, mTranscriptMode:I

    if-ne v10, v9, :cond_89

    .line 6731
    iget-boolean v10, p0, mForceTranscriptScroll:Z

    if-eqz v10, :cond_60

    .line 6732
    iput-boolean v12, p0, mForceTranscriptScroll:Z

    .line 6733
    iput v8, p0, mLayoutMode:I

    goto :goto_52

    .line 6736
    :cond_60
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 6737
    .local v0, "childCount":I
    invoke-virtual {p0}, getWidth()I

    move-result v10

    invoke-virtual {p0}, getPaddingRight()I

    move-result v11

    sub-int v5, v10, v11

    .line 6738
    .local v5, "listRight":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6739
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_84

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 6740
    .local v4, "lastRight":I
    :goto_7a
    iget v10, p0, mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v3, :cond_86

    if-gt v4, v5, :cond_86

    .line 6742
    iput v8, p0, mLayoutMode:I

    goto :goto_52

    .end local v4    # "lastRight":I
    :cond_84
    move v4, v5

    .line 6739
    goto :goto_7a

    .line 6747
    .restart local v4    # "lastRight":I
    :cond_86
    invoke-virtual {p0}, awakenScrollBars()Z

    .line 6750
    .end local v0    # "childCount":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v4    # "lastRight":I
    .end local v5    # "listRight":I
    :cond_89
    iget v10, p0, mSyncMode:I

    packed-switch v10, :pswitch_data_126

    .line 6798
    :cond_8e
    invoke-virtual {p0}, isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_101

    .line 6800
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v6

    .line 6803
    .local v6, "newPos":I
    if-lt v6, v1, :cond_9c

    .line 6804
    add-int/lit8 v6, v1, -0x1

    .line 6806
    :cond_9c
    if-gez v6, :cond_9f

    .line 6807
    const/4 v6, 0x0

    .line 6811
    :cond_9f
    invoke-virtual {p0, v6, v9}, lookForSelectablePosition(IZ)I

    move-result v7

    .line 6813
    .local v7, "selectablePos":I
    if-ltz v7, :cond_f6

    .line 6814
    invoke-virtual {p0, v7}, setNextSelectedPositionInt(I)V

    goto :goto_52

    .line 6752
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_a9
    invoke-virtual {p0}, isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_c0

    .line 6757
    iput v14, p0, mLayoutMode:I

    .line 6758
    iget v8, p0, mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, mSyncPosition:I

    goto :goto_52

    .line 6764
    :cond_c0
    invoke-virtual {p0}, findSyncPosition()I

    move-result v6

    .line 6765
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_8e

    .line 6767
    invoke-virtual {p0, v6, v9}, lookForSelectablePosition(IZ)I

    move-result v7

    .line 6768
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_8e

    .line 6770
    iput v6, p0, mSyncPosition:I

    .line 6772
    iget-wide v8, p0, mSyncHeight:J

    invoke-virtual {p0}, getWidth()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_e0

    .line 6775
    iput v14, p0, mLayoutMode:I

    .line 6783
    :goto_db
    invoke-virtual {p0, v6}, setNextSelectedPositionInt(I)V

    goto/16 :goto_52

    .line 6779
    :cond_e0
    const/4 v8, 0x2

    iput v8, p0, mLayoutMode:I

    goto :goto_db

    .line 6791
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_e4
    iput v14, p0, mLayoutMode:I

    .line 6792
    iget v8, p0, mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, mSyncPosition:I

    goto/16 :goto_52

    .line 6818
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_f6
    invoke-virtual {p0, v6, v12}, lookForSelectablePosition(IZ)I

    move-result v7

    .line 6819
    if-ltz v7, :cond_105

    .line 6820
    invoke-virtual {p0, v7}, setNextSelectedPositionInt(I)V

    goto/16 :goto_52

    .line 6827
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_101
    iget v10, p0, mResurrectToPosition:I

    if-gez v10, :cond_52

    .line 6835
    :cond_105
    iget-boolean v10, p0, mStackFromBottom:Z

    if-eqz v10, :cond_123

    :goto_109
    iput v8, p0, mLayoutMode:I

    .line 6836
    iput v13, p0, mSelectedPosition:I

    .line 6837
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, mSelectedRowId:J

    .line 6838
    iput v13, p0, mNextSelectedPosition:I

    .line 6839
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, mNextSelectedRowId:J

    .line 6840
    iput-boolean v12, p0, mNeedSync:Z

    .line 6841
    const/4 v8, 0x0

    iput-object v8, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 6842
    iput v13, p0, mSelectorPosition:I

    .line 6843
    invoke-virtual {p0}, checkSelectionChanged()V

    goto/16 :goto_52

    :cond_123
    move v8, v9

    .line 6835
    goto :goto_109

    .line 6750
    nop

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_e4
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .registers 2

    .prologue
    .line 7170
    iget-boolean v0, p0, mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 6462
    iget v0, p0, mSelectedPosition:I

    if-eq v0, v2, :cond_25

    .line 6463
    iget v0, p0, mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 6464
    iget v0, p0, mSelectedPosition:I

    iput v0, p0, mResurrectToPosition:I

    .line 6466
    :cond_e
    iget v0, p0, mNextSelectedPosition:I

    if-ltz v0, :cond_1c

    iget v0, p0, mNextSelectedPosition:I

    iget v1, p0, mSelectedPosition:I

    if-eq v0, v1, :cond_1c

    .line 6467
    iget v0, p0, mNextSelectedPosition:I

    iput v0, p0, mResurrectToPosition:I

    .line 6469
    :cond_1c
    invoke-virtual {p0, v2}, setSelectedPositionInt(I)V

    .line 6470
    invoke-virtual {p0, v2}, setNextSelectedPositionInt(I)V

    .line 6471
    const/4 v0, 0x0

    iput v0, p0, mSelectedLeft:I

    .line 6473
    :cond_25
    return-void
.end method

.method public invalidateViews()V
    .registers 2

    .prologue
    .line 6518
    const/4 v0, 0x1

    iput-boolean v0, p0, mDataChanged:Z

    .line 6519
    invoke-virtual {p0}, rememberSyncState()V

    .line 6520
    invoke-virtual {p0}, requestLayout()V

    .line 6521
    invoke-virtual {p0}, invalidate()V

    .line 6522
    return-void
.end method

.method invokeOnItemScrollListener()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1753
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_12

    .line 1754
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    iget v1, p0, mFirstPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v2

    iget v3, p0, mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalFastScroller;->onScroll(III)V

    .line 1756
    :cond_12
    iget-object v0, p0, mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_23

    .line 1757
    iget-object v0, p0, mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    iget v1, p0, mFirstPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v2

    iget v3, p0, mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScroll(Landroid/widget/AbsHorizontalListView;III)V

    .line 1759
    :cond_23
    invoke-virtual {p0, v4, v4, v4, v4}, onScrollChanged(IIII)V

    .line 1760
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1643
    iget-object v2, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-nez v2, :cond_11

    .line 1644
    iget-boolean v2, p0, mFastScrollEnabled:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_f

    .line 1646
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 1644
    goto :goto_e

    .line 1646
    :cond_11
    iget-object v2, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v2}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v2}, Landroid/widget/HorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_21
    move v0, v1

    goto :goto_e
.end method

.method public isFastScrollEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1666
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-nez v0, :cond_7

    .line 1667
    iget-boolean v0, p0, mFastScrollEnabled:Z

    .line 1669
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v0

    goto :goto_6
.end method

.method protected isInFilterMode()Z
    .registers 2

    .prologue
    .line 6958
    iget-boolean v0, p0, mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1191
    iget v0, p0, mChoiceMode:I

    if-eqz v0, :cond_f

    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_f

    .line 1192
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1195
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isLockScreenMode()Z
    .registers 8

    .prologue
    .line 3968
    iget-object v5, p0, mContext:Landroid/content/Context;

    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 3969
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 3970
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 3972
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 3973
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 3984
    .local v0, "isCoverOpen":Z
    const/4 v1, 0x0

    .line 3985
    .local v1, "isLockScreenAndCoverOpen":Z
    if-eqz v2, :cond_26

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    .line 3987
    :goto_25
    return v1

    .line 3985
    :cond_26
    const/4 v1, 0x0

    goto :goto_25
.end method

.method public isMultiFocusEnabled()Z
    .registers 2

    .prologue
    .line 8288
    iget-boolean v0, p0, mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .registers 3

    .prologue
    .line 1724
    const-string v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 3

    .prologue
    .line 2829
    iget v0, p0, mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isScrollingCacheEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1854
    iget-boolean v0, p0, mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1736
    iget-boolean v0, p0, mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1931
    iget-boolean v0, p0, mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1901
    iget-boolean v0, p0, mTextFilterEnabled:Z

    return v0
.end method

.method protected isTwHorizontalScrollBarHidden()Z
    .registers 2

    .prologue
    .line 1695
    invoke-virtual {p0}, isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method protected isTwShowingScrollbar()Z
    .registers 2

    .prologue
    .line 6061
    invoke-super {p0}, Landroid/widget/AdapterView;->isTwShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, mFastScrollEnabled:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected isTwUsingAdapterView()Z
    .registers 2

    .prologue
    .line 6072
    const/4 v0, 0x1

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 3093
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3094
    iget-object v0, p0, mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3095
    :cond_c
    return-void
.end method

.method keyPressed()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 2983
    invoke-virtual {p0}, isEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, isClickable()Z

    move-result v5

    if-nez v5, :cond_e

    .line 3018
    :cond_d
    :goto_d
    return-void

    .line 2987
    :cond_e
    iget-object v2, p0, mSelector:Landroid/graphics/drawable/Drawable;

    .line 2988
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, mSelectorRect:Landroid/graphics/Rect;

    .line 2989
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_d

    invoke-virtual {p0}, isFocused()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {p0}, touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_20
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 2992
    iget v5, p0, mSelectedPosition:I

    iget v6, p0, mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2994
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_3a

    .line 2995
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_d

    .line 2996
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2998
    :cond_3a
    invoke-virtual {p0, v7}, setPressed(Z)V

    .line 3000
    invoke-virtual {p0}, isLongClickable()Z

    move-result v1

    .line 3001
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3002
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_56

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_56

    .line 3003
    if-eqz v1, :cond_78

    .line 3004
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3010
    :cond_56
    :goto_56
    if-eqz v1, :cond_d

    iget-boolean v5, p0, mDataChanged:Z

    if-nez v5, :cond_d

    .line 3011
    iget-object v5, p0, mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    if-nez v5, :cond_68

    .line 3012
    new-instance v5, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v5, p0, mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    .line 3014
    :cond_68
    iget-object v5, p0, mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3015
    iget-object v5, p0, mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 3007
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_78
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_56
.end method

.method protected layoutChildren()V
    .registers 1

    .prologue
    .line 2478
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const-wide/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2585
    const-string/jumbo v4, "obtainView"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2587
    aput-boolean v5, p2, v5

    .line 2590
    iget-object v4, p0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v4, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v2

    .line 2591
    .local v2, "scrapView":Landroid/view/View;
    if-nez v2, :cond_1a

    .line 2592
    iget-object v4, p0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v4, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    .line 2596
    :cond_1a
    if-eqz v2, :cond_8b

    .line 2597
    iget-object v4, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2599
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_2b

    .line 2600
    invoke-virtual {v0, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2603
    :cond_2b
    if-eq v0, v2, :cond_7c

    .line 2604
    iget-object v4, p0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v4, v2, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2605
    iget v4, p0, mCacheColorHint:I

    if-eqz v4, :cond_3b

    .line 2606
    iget v4, p0, mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2631
    :cond_3b
    :goto_3b
    iget-boolean v4, p0, mAdapterHasStableIds:Z

    if-eqz v4, :cond_56

    .line 2632
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2634
    .local v3, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_a5

    .line 2635
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 2641
    .local v1, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :goto_4b
    iget-object v4, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/widget/AbsHorizontalListView$LayoutParams;->itemId:J

    .line 2642
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2645
    .end local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v3    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_56
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 2646
    iget-object v4, p0, mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    if-nez v4, :cond_6d

    .line 2647
    new-instance v4, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    invoke-direct {v4, p0}, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v4, p0, mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    .line 2649
    :cond_6d
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v4

    if-nez v4, :cond_78

    .line 2650
    iget-object v4, p0, mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2654
    :cond_78
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2656
    return-object v0

    .line 2609
    :cond_7c
    aput-boolean v6, p2, v5

    .line 2613
    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 2614
    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2617
    :cond_87
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_3b

    .line 2620
    .end local v0    # "child":Landroid/view/View;
    :cond_8b
    iget-object v4, p0, mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2622
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_9b

    .line 2623
    invoke-virtual {v0, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2626
    :cond_9b
    iget v4, p0, mCacheColorHint:I

    if-eqz v4, :cond_3b

    .line 2627
    iget v4, p0, mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_3b

    .line 2636
    .restart local v3    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_a5
    invoke-virtual {p0, v3}, checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_b2

    .line 2637
    invoke-virtual {p0, v3}, generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    goto :goto_4b

    .end local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_b2
    move-object v1, v3

    .line 2639
    check-cast v1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    goto :goto_4b
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 3099
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3101
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3102
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3104
    iget-boolean v1, p0, USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_13

    .line 3105
    iget-object v1, p0, mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3108
    :cond_13
    iget-boolean v1, p0, mTextFilterEnabled:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_22

    iget-boolean v1, p0, mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_22

    .line 3109
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3112
    :cond_22
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_47

    iget-object v1, p0, mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-nez v1, :cond_47

    .line 3113
    new-instance v1, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    .line 3114
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3117
    const/4 v1, 0x1

    iput-boolean v1, p0, mDataChanged:Z

    .line 3118
    iget v1, p0, mItemCount:I

    iput v1, p0, mOldItemCount:I

    .line 3119
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, mItemCount:I

    .line 3122
    :cond_47
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .registers 2

    .prologue
    .line 3278
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3279
    iget-object v0, p0, mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    if-eqz v0, :cond_c

    .line 3280
    iget-object v0, p0, mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3282
    :cond_c
    iget-object v0, p0, mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    if-eqz v0, :cond_15

    .line 3283
    iget-object v0, p0, mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3285
    :cond_15
    iget-object v0, p0, mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    if-eqz v0, :cond_1e

    .line 3286
    iget-object v0, p0, mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3288
    :cond_1e
    iget-object v0, p0, mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    if-eqz v0, :cond_27

    .line 3289
    iget-object v0, p0, mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3291
    :cond_27
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 8
    .param p1, "extraSpace"    # I

    .prologue
    .line 3055
    iget-boolean v4, p0, mIsChildViewEnabled:Z

    if-eqz v4, :cond_9

    .line 3057
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3083
    :cond_8
    :goto_8
    return-object v3

    .line 3063
    :cond_9
    sget-object v4, ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3068
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3069
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3070
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_1f

    .line 3071
    aget v4, v3, v2

    if-ne v4, v1, :cond_2b

    .line 3072
    move v0, v2

    .line 3078
    :cond_1f
    if-ltz v0, :cond_8

    .line 3079
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_8

    .line 3070
    :cond_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_18
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v1, 0x0

    .line 7053
    invoke-virtual {p0}, isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7057
    invoke-direct {p0, v1}, createTextFilter(Z)V

    .line 7058
    iget-object v0, p0, mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_23

    .line 7059
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 7060
    new-instance v0, Landroid/widget/AbsHorizontalListView$5;

    iget-object v1, p0, mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/AbsHorizontalListView$5;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 7094
    :cond_23
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7096
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7097
    iget-object v0, p0, mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 7099
    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method protected onDetachedFromWindow()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 3126
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3127
    const-string v1, "AbsHorizontalListView"

    const-string/jumbo v2, "onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    invoke-direct {p0}, dismissPopup()V

    .line 3133
    iget-object v1, p0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->clear()V

    .line 3135
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3136
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3137
    iget-boolean v1, p0, mTextFilterEnabled:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2a

    .line 3138
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3139
    const/4 v1, 0x0

    iput-boolean v1, p0, mGlobalLayoutListenerAddedFilter:Z

    .line 3142
    :cond_2a
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3b

    iget-object v1, p0, mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_3b

    .line 3143
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3144
    iput-object v3, p0, mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    .line 3147
    :cond_3b
    iget-object v1, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_46

    .line 3148
    iget-object v1, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3149
    iput-object v3, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3152
    :cond_46
    iget-object v1, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_51

    .line 3153
    iget-object v1, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3154
    iput-object v3, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3157
    :cond_51
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-eqz v1, :cond_5a

    .line 3158
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {p0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3161
    :cond_5a
    iget-object v1, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v1, :cond_63

    .line 3162
    iget-object v1, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 3165
    :cond_63
    iget-object v1, p0, mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6c

    .line 3166
    iget-object v1, p0, mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3169
    :cond_6c
    iget-object v1, p0, mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    if-eqz v1, :cond_75

    .line 3170
    iget-object v1, p0, mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    invoke-virtual {p0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3173
    :cond_75
    iget-object v1, p0, mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_83

    .line 3174
    iget-object v1, p0, mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3175
    iget-object v1, p0, mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3178
    :cond_83
    iget v1, p0, mTouchMode:I

    if-eq v1, v4, :cond_89

    .line 3179
    iput v4, p0, mTouchMode:I

    .line 3182
    :cond_89
    iget-boolean v1, p0, USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_92

    .line 3183
    iget-object v1, p0, mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3186
    :cond_92
    invoke-direct {p0}, releaseAllBoosters()V

    .line 3187
    return-void
.end method

.method protected onDisplayHint(I)V
    .registers 3
    .param p1, "hint"    # I

    .prologue
    .line 6848
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 6849
    sparse-switch p1, :sswitch_data_34

    .line 6861
    :cond_6
    :goto_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_31

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, mPopupHidden:Z

    .line 6862
    return-void

    .line 6851
    :sswitch_d
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6852
    invoke-direct {p0}, dismissPopup()V

    goto :goto_6

    .line 6856
    :sswitch_1d
    iget-boolean v0, p0, mFiltered:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6857
    invoke-direct {p0}, showPopup()V

    goto :goto_6

    .line 6861
    :cond_31
    const/4 v0, 0x0

    goto :goto_a

    .line 6849
    nop

    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_1d
        0x4 -> :sswitch_d
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 7240
    iget v0, p0, mSelectedPosition:I

    if-gez v0, :cond_c

    if-lez p1, :cond_c

    .line 7241
    const/4 v0, -0x1

    iput v0, p0, mResurrectToPosition:I

    .line 7242
    invoke-virtual {p0}, resurrectSelection()Z

    .line 7244
    :cond_c
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2240
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2241
    if-eqz p1, :cond_2b

    iget v0, p0, mSelectedPosition:I

    if-gez v0, :cond_2b

    invoke-virtual {p0}, isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2242
    invoke-virtual {p0}, isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_28

    .line 2245
    const/4 v0, 0x1

    iput-boolean v0, p0, mDataChanged:Z

    .line 2246
    iget v0, p0, mItemCount:I

    iput v0, p0, mOldItemCount:I

    .line 2247
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, mItemCount:I

    .line 2249
    :cond_28
    invoke-virtual {p0}, resurrectSelection()Z

    .line 2252
    :cond_2b
    invoke-virtual {p0}, isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_37

    if-eqz p1, :cond_37

    iget v0, p0, mSelectedPosition:I

    if-ltz v0, :cond_37

    .line 2259
    :cond_37
    if-nez p1, :cond_3c

    .line 2260
    invoke-direct {p0}, releaseAllBoosters()V

    .line 2262
    :cond_3c
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4973
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_f

    .line 4974
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_32

    .line 4988
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_13
    return v2

    .line 4976
    :pswitch_14
    iget v2, p0, mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    .line 4977
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 4978
    .local v1, "hscroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_f

    .line 4979
    invoke-virtual {p0}, getHorizontalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 4980
    .local v0, "delta":I
    invoke-virtual {p0, v0, v0}, trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_f

    .line 4981
    const/4 v2, 0x1

    goto :goto_13

    .line 4974
    :pswitch_data_32
    .packed-switch 0x8
        :pswitch_14
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 7175
    invoke-virtual {p0}, isShown()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 7177
    iget-boolean v0, p0, mFiltered:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, mPopupHidden:Z

    if-nez v0, :cond_1d

    .line 7178
    invoke-direct {p0}, showPopup()V

    .line 7187
    :cond_1d
    :goto_1d
    return-void

    .line 7182
    :cond_1e
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 7183
    invoke-direct {p0}, dismissPopup()V

    goto :goto_1d
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1783
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1784
    const-class v0, Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1785
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 1789
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1790
    const-class v0, Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1791
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1792
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_21

    .line 1793
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1794
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1796
    :cond_21
    invoke-virtual {p0}, getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_35

    .line 1797
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1798
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1801
    :cond_35
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2740
    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2741
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_c

    if-nez v0, :cond_d

    .line 2767
    :cond_c
    :goto_c
    return-void

    .line 2746
    :cond_d
    invoke-virtual {p0}, isEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2747
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_c

    .line 2751
    :cond_1e
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_49

    .line 2752
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2753
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2758
    :goto_2c
    invoke-virtual {p0}, isClickable()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 2759
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2760
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2763
    :cond_3a
    invoke-virtual {p0}, isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2764
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2765
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_c

    .line 2755
    :cond_49
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_2c
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5074
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_e

    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5075
    const/4 v0, 0x1

    .line 5078
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5083
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5086
    .local v0, "action":I
    iget-object v9, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v9, :cond_11

    .line 5087
    iget-object v9, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v9}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 5090
    :cond_11
    invoke-virtual {p0}, isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_18

    .line 5169
    :cond_17
    :goto_17
    return v7

    .line 5098
    :cond_18
    iget-object v9, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v9, :cond_26

    iget-object v9, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v9, p1}, Landroid/widget/HorizontalFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_26

    move v7, v8

    .line 5099
    goto :goto_17

    .line 5102
    :cond_26
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_bc

    :pswitch_2b
    goto :goto_17

    .line 5104
    :pswitch_2c
    iget v3, p0, mTouchMode:I

    .line 5105
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_34

    const/4 v9, 0x5

    if-ne v3, v9, :cond_38

    .line 5106
    :cond_34
    iput v7, p0, mMotionCorrection:I

    move v7, v8

    .line 5107
    goto :goto_17

    .line 5110
    :cond_38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 5111
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 5112
    .local v6, "y":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, mActivePointerId:I

    .line 5114
    invoke-virtual {p0, v5}, findMotionRow(I)I

    move-result v1

    .line 5115
    .local v1, "motionPosition":I
    if-eq v3, v11, :cond_69

    if-ltz v1, :cond_69

    .line 5118
    iget v9, p0, mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5119
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, mMotionViewOriginalLeft:I

    .line 5120
    iput v5, p0, mMotionX:I

    .line 5121
    iput v6, p0, mMotionY:I

    .line 5122
    iput v1, p0, mMotionPosition:I

    .line 5123
    iput v7, p0, mTouchMode:I

    .line 5124
    invoke-direct {p0}, clearScrollingCache()V

    .line 5126
    .end local v4    # "v":Landroid/view/View;
    :cond_69
    const/high16 v9, -0x80000000

    iput v9, p0, mLastX:I

    .line 5127
    invoke-direct {p0}, initOrResetVelocityTracker()V

    .line 5128
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5129
    if-ne v3, v11, :cond_17

    move v7, v8

    .line 5130
    goto :goto_17

    .line 5136
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_79
    iget v9, p0, mTouchMode:I

    packed-switch v9, :pswitch_data_ce

    goto :goto_17

    .line 5138
    :pswitch_7f
    iget v9, p0, mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 5139
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_8e

    .line 5140
    const/4 v2, 0x0

    .line 5141
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, mActivePointerId:I

    .line 5143
    :cond_8e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v5, v9

    .line 5144
    .restart local v5    # "x":I
    invoke-direct {p0}, initVelocityTrackerIfNotExists()V

    .line 5145
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5146
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-direct {p0, v5, v9, v10}, startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_17

    move v7, v8

    .line 5147
    goto/16 :goto_17

    .line 5156
    .end local v2    # "pointerIndex":I
    .end local v5    # "x":I
    :pswitch_aa
    iput v10, p0, mTouchMode:I

    .line 5157
    iput v10, p0, mActivePointerId:I

    .line 5158
    invoke-direct {p0}, recycleVelocityTracker()V

    .line 5159
    invoke-virtual {p0, v7}, reportScrollStateChange(I)V

    goto/16 :goto_17

    .line 5164
    :pswitch_b6
    invoke-direct {p0, p1}, onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_17

    .line 5102
    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_aa
        :pswitch_79
        :pswitch_aa
        :pswitch_2b
        :pswitch_2b
        :pswitch_b6
    .end packed-switch

    .line 5136
    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_7f
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 3498
    sparse-switch p1, :sswitch_data_c

    .line 3509
    :goto_4
    const/4 v0, 0x0

    return v0

    .line 3501
    :sswitch_6
    iput-boolean v0, p0, mIsCtrlkeyPressed:Z

    goto :goto_4

    .line 3505
    :sswitch_9
    iput-boolean v0, p0, mIsShiftkeyPressed:Z

    goto :goto_4

    .line 3498
    :sswitch_data_c
    .sparse-switch
        0x3b -> :sswitch_9
        0x3c -> :sswitch_9
        0x71 -> :sswitch_6
        0x72 -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 3514
    iget v4, p0, mSelectedPosition:I

    iget v5, p0, mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3515
    .local v1, "selectedview":Landroid/view/View;
    const/4 v0, 0x0

    .line 3517
    .local v0, "currentview":Landroid/view/View;
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 3518
    invoke-virtual {p0}, isEnabled()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 3594
    :goto_19
    return v3

    .line 3521
    :cond_1a
    invoke-virtual {p0}, isClickable()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-virtual {p0}, isPressed()Z

    move-result v4

    if-eqz v4, :cond_51

    iget v4, p0, mSelectedPosition:I

    if-ltz v4, :cond_51

    iget-object v4, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_51

    iget v4, p0, mSelectedPosition:I

    iget-object v5, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_51

    .line 3525
    iget v4, p0, mSelectedPosition:I

    iget v5, p0, mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3526
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_4d

    .line 3527
    iget v4, p0, mSelectedPosition:I

    iget-wide v6, p0, mSelectedRowId:J

    invoke-virtual {p0, v2, v4, v6, v7}, performItemClick(Landroid/view/View;IJ)Z

    .line 3528
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3530
    :cond_4d
    invoke-virtual {p0, v8}, setPressed(Z)V

    goto :goto_19

    .line 3535
    .end local v2    # "view":Landroid/view/View;
    :cond_51
    sparse-switch p1, :sswitch_data_da

    .line 3594
    :cond_54
    :goto_54
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_19

    .line 3541
    :sswitch_59
    iget-boolean v4, p0, mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_63

    .line 3542
    iget v4, p0, mOldKeyCode:I

    if-nez v4, :cond_ad

    .line 3543
    iput p1, p0, mOldKeyCode:I

    .line 3549
    :cond_63
    :goto_63
    invoke-virtual {p0}, isClickable()Z

    move-result v4

    if-eqz v4, :cond_54

    iget v4, p0, mSelectedPosition:I

    if-ltz v4, :cond_54

    iget-object v4, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_54

    iget v4, p0, mSelectedPosition:I

    iget-object v5, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_54

    .line 3553
    iget v4, p0, mTwCurrentFocusPosition:I

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3555
    iget-boolean v4, p0, mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_a4

    if-eqz v1, :cond_a4

    .line 3556
    iget v3, p0, mCurrentKeyCode:I

    if-nez v3, :cond_b0

    .line 3557
    iget v3, p0, mTwCurrentFocusPosition:I

    iget-wide v4, p0, mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3558
    iget v3, p0, mSelectedPosition:I

    iget-wide v4, p0, mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3559
    iget v3, p0, mTwCurrentFocusPosition:I

    iget v4, p0, mSelectedPosition:I

    invoke-virtual {p0, v3, v4}, addToPressItemListArray(II)V

    .line 3560
    iget v3, p0, mTwCurrentFocusPosition:I

    iput v3, p0, mFirstPressedPoint:I

    .line 3568
    :cond_a4
    :goto_a4
    iget v3, p0, mCurrentKeyCode:I

    if-eqz v3, :cond_54

    .line 3569
    iget v3, p0, mCurrentKeyCode:I

    iput v3, p0, mOldKeyCode:I

    goto :goto_54

    .line 3545
    :cond_ad
    iput p1, p0, mCurrentKeyCode:I

    goto :goto_63

    .line 3562
    :cond_b0
    invoke-virtual {p0}, resetPressItemListArray()V

    .line 3563
    iget v3, p0, mSelectedPosition:I

    iget-wide v4, p0, mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3564
    iget v3, p0, mFirstPressedPoint:I

    iget v4, p0, mSelectedPosition:I

    invoke-virtual {p0, v3, v4}, addToPressItemListArray(II)V

    goto :goto_a4

    .line 3576
    :sswitch_c2
    iput-boolean v8, p0, mIsCtrlkeyPressed:Z

    goto :goto_54

    .line 3580
    :sswitch_c5
    iput-boolean v8, p0, mIsShiftkeyPressed:Z

    .line 3581
    iput v8, p0, mOldKeyCode:I

    .line 3582
    iput v8, p0, mCurrentKeyCode:I

    .line 3583
    iput v6, p0, mFirstPressedPoint:I

    .line 3584
    iput v6, p0, mSecondPressedPoint:I

    goto :goto_54

    .line 3587
    :sswitch_d0
    iget-boolean v4, p0, mIsCtrlkeyPressed:Z

    if-ne v4, v3, :cond_54

    .line 3588
    invoke-virtual {p0}, resetPressItemListArray()V

    goto/16 :goto_54

    .line 3535
    nop

    :sswitch_data_da
    .sparse-switch
        0x13 -> :sswitch_59
        0x14 -> :sswitch_59
        0x15 -> :sswitch_59
        0x16 -> :sswitch_59
        0x1f -> :sswitch_d0
        0x3b -> :sswitch_c5
        0x3c -> :sswitch_c5
        0x71 -> :sswitch_c2
        0x72 -> :sswitch_c2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2434
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2435
    const/4 v2, 0x1

    iput-boolean v2, p0, mInLayout:Z

    .line 2436
    if-eqz p1, :cond_1e

    .line 2437
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 2438
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_19

    .line 2439
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2438
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2441
    :cond_19
    iget-object v2, p0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView$RecycleBin;->markChildrenDirty()V

    .line 2444
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1e
    iget-object v2, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v2, :cond_33

    iget v2, p0, mItemCount:I

    iget v3, p0, mOldItemCount:I

    if-ne v2, v3, :cond_2c

    iget-boolean v2, p0, mDataChanged:Z

    if-eqz v2, :cond_33

    .line 2445
    :cond_2c
    iget-object v2, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    iget v3, p0, mItemCount:I

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalFastScroller;->onItemCountChanged(I)V

    .line 2448
    :cond_33
    invoke-virtual {p0}, layoutChildren()V

    .line 2449
    const/4 v2, 0x0

    iput-boolean v2, p0, mInLayout:Z

    .line 2451
    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, mOverscrollMax:I

    .line 2452
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 2407
    iget-object v6, p0, mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_8

    .line 2408
    invoke-direct {p0}, useDefaultSelector()V

    .line 2410
    :cond_8
    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    .line 2411
    .local v3, "listPadding":Landroid/graphics/Rect;
    iget v6, p0, mSelectionLeftPadding:I

    iget v7, p0, mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 2412
    iget v6, p0, mSelectionTopPadding:I

    iget v7, p0, mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 2413
    iget v6, p0, mSelectionRightPadding:I

    iget v7, p0, mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 2414
    iget v6, p0, mSelectionBottomPadding:I

    iget v7, p0, mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 2417
    iget v6, p0, mTranscriptMode:I

    if-ne v6, v5, :cond_4f

    .line 2418
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 2419
    .local v0, "childCount":I
    invoke-virtual {p0}, getWidth()I

    move-result v6

    invoke-virtual {p0}, getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 2420
    .local v4, "listRight":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2421
    .local v1, "lastChild":Landroid/view/View;
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2422
    .local v2, "lastRight":I
    :goto_44
    iget v6, p0, mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, mLastHandledItemCount:I

    if-lt v6, v7, :cond_52

    if-gt v2, v4, :cond_52

    :goto_4d
    iput-boolean v5, p0, mForceTranscriptScroll:Z

    .line 2426
    .end local v0    # "childCount":I
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastRight":I
    .end local v4    # "listRight":I
    :cond_4f
    return-void

    .restart local v0    # "childCount":I
    .restart local v1    # "lastChild":Landroid/view/View;
    .restart local v4    # "listRight":I
    :cond_50
    move v2, v4

    .line 2421
    goto :goto_44

    .line 2422
    .restart local v2    # "lastRight":I
    :cond_52
    const/4 v5, 0x0

    goto :goto_4d
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 8
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 4962
    iget v0, p0, mScrollX:I

    if-eq v0, p1, :cond_15

    .line 4963
    iget v0, p0, mScrollY:I

    iget v1, p0, mScrollX:I

    iget v2, p0, mScrollY:I

    invoke-virtual {p0, p1, v0, v1, v2}, onScrollChanged(IIII)V

    .line 4964
    iput p1, p0, mScrollX:I

    .line 4965
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    .line 4967
    invoke-virtual {p0}, awakenScrollBars()Z

    .line 4969
    :cond_15
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 7417
    iget-object v1, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_18

    .line 7418
    iget-object v1, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, setAdapter(Landroid/widget/ListAdapter;)V

    .line 7419
    iget-boolean v1, p0, mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_17

    .line 7420
    iget-object v1, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 7421
    iput-boolean v0, p0, mDeferNotifyDataSetChanged:Z

    .line 7428
    :cond_17
    :goto_17
    return v0

    .line 7424
    :cond_18
    iget-object v1, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_17

    .line 7425
    iget-object v0, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 7426
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public onRemoteAdapterDisconnected()V
    .registers 1

    .prologue
    .line 7441
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 10
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 2147
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2149
    .local v0, "ss":Landroid/widget/AbsHorizontalListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2150
    iput-boolean v4, p0, mDataChanged:Z

    .line 2152
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    int-to-long v2, v1

    iput-wide v2, p0, mSyncHeight:J

    .line 2154
    iget-wide v2, v0, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_60

    .line 2155
    iput-boolean v4, p0, mNeedSync:Z

    .line 2156
    iput-object v0, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2157
    iget-wide v2, v0, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    iput-wide v2, p0, mSyncRowId:J

    .line 2158
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iput v1, p0, mSyncPosition:I

    .line 2159
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iput v1, p0, mSpecificTop:I

    .line 2160
    const/4 v1, 0x0

    iput v1, p0, mSyncMode:I

    .line 2174
    :cond_2e
    :goto_2e
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, setFilterText(Ljava/lang/String;)V

    .line 2176
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_3b

    .line 2177
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2180
    :cond_3b
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_43

    .line 2181
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2184
    :cond_43
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    iput v1, p0, mCheckedItemCount:I

    .line 2186
    iget-boolean v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_5c

    iget v1, p0, mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5c

    iget-object v1, p0, mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_5c

    .line 2188
    iget-object v1, p0, mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, mChoiceActionMode:Landroid/view/ActionMode;

    .line 2191
    :cond_5c
    invoke-virtual {p0}, requestLayout()V

    .line 2192
    return-void

    .line 2161
    :cond_60
    iget-wide v2, v0, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_2e

    .line 2162
    invoke-virtual {p0, v5}, setSelectedPositionInt(I)V

    .line 2164
    invoke-virtual {p0, v5}, setNextSelectedPositionInt(I)V

    .line 2165
    iput v5, p0, mSelectorPosition:I

    .line 2166
    iput-boolean v4, p0, mNeedSync:Z

    .line 2167
    iput-object v0, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2168
    iget-wide v2, v0, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    iput-wide v2, p0, mSyncRowId:J

    .line 2169
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iput v1, p0, mSyncPosition:I

    .line 2170
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iput v1, p0, mSpecificTop:I

    .line 2171
    iput v4, p0, mSyncMode:I

    goto :goto_2e
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3255
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 3256
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_10

    .line 3257
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {p0}, getTwHorizontalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalFastScroller;->setScrollbarPosition(I)V

    .line 3259
    :cond_10
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 16

    .prologue
    .line 2055
    invoke-direct {p0}, dismissPopup()V

    .line 2057
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2059
    .local v9, "superState":Landroid/os/Parcelable;
    new-instance v8, Landroid/widget/AbsHorizontalListView$SavedState;

    invoke-direct {v8, v9}, Landroid/widget/AbsHorizontalListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2061
    .local v8, "ss":Landroid/widget/AbsHorizontalListView$SavedState;
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    if-eqz v12, :cond_4d

    .line 2063
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    .line 2064
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    .line 2065
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2066
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    .line 2067
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    .line 2068
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 2069
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-boolean v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    iput-boolean v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    .line 2070
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    .line 2071
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2072
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2142
    :cond_4c
    :goto_4c
    return-object v8

    .line 2076
    :cond_4d
    invoke-virtual {p0}, getChildCount()I

    move-result v12

    if-lez v12, :cond_cb

    iget v12, p0, mItemCount:I

    if-lez v12, :cond_cb

    const/4 v3, 0x1

    .line 2077
    .local v3, "haveChildren":Z
    :goto_58
    invoke-virtual {p0}, getSelectedItemId()J

    move-result-wide v6

    .line 2078
    .local v6, "selectedId":J
    iput-wide v6, v8, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    .line 2079
    invoke-virtual {p0}, getWidth()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    .line 2081
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_cd

    .line 2083
    iget v12, p0, mSelectedLeft:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2084
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    .line 2085
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    .line 2112
    :goto_78
    const/4 v12, 0x0

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 2113
    iget-boolean v12, p0, mFiltered:Z

    if-eqz v12, :cond_8f

    .line 2114
    iget-object v10, p0, mTextFilter:Landroid/widget/EditText;

    .line 2115
    .local v10, "textFilter":Landroid/widget/EditText;
    if-eqz v10, :cond_8f

    .line 2116
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2117
    .local v1, "filterText":Landroid/text/Editable;
    if-eqz v1, :cond_8f

    .line 2118
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 2123
    .end local v1    # "filterText":Landroid/text/Editable;
    .end local v10    # "textFilter":Landroid/widget/EditText;
    :cond_8f
    iget v12, p0, mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_ff

    iget-object v12, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_ff

    const/4 v12, 0x1

    :goto_99
    iput-boolean v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    .line 2125
    iget-object v12, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_a7

    .line 2126
    iget-object v12, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2128
    :cond_a7
    iget-object v12, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_103

    .line 2129
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 2130
    .local v5, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2131
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b7
    if-ge v4, v0, :cond_101

    .line 2132
    iget-object v12, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2131
    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    .line 2076
    .end local v0    # "count":I
    .end local v3    # "haveChildren":Z
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6    # "selectedId":J
    :cond_cb
    const/4 v3, 0x0

    goto :goto_58

    .line 2087
    .restart local v3    # "haveChildren":Z
    .restart local v6    # "selectedId":J
    :cond_cd
    if-eqz v3, :cond_f3

    iget v12, p0, mFirstPosition:I

    if-lez v12, :cond_f3

    .line 2097
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2098
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2099
    iget v2, p0, mFirstPosition:I

    .line 2100
    .local v2, "firstPos":I
    iget v12, p0, mItemCount:I

    if-lt v2, v12, :cond_e8

    .line 2101
    iget v12, p0, mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 2103
    :cond_e8
    iput v2, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    .line 2104
    iget-object v12, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    goto :goto_78

    .line 2106
    .end local v2    # "firstPos":I
    .end local v11    # "v":Landroid/view/View;
    :cond_f3
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2107
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    .line 2108
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    goto/16 :goto_78

    .line 2123
    :cond_ff
    const/4 v12, 0x0

    goto :goto_99

    .line 2134
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_101
    iput-object v5, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2136
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_103
    iget v12, p0, mCheckedItemCount:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    .line 2138
    iget-object v12, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v12, :cond_4c

    .line 2139
    iget-object v12, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v12}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    goto/16 :goto_4c
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2854
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 2855
    const/4 v0, 0x1

    iput-boolean v0, p0, mDataChanged:Z

    .line 2856
    invoke-virtual {p0}, rememberSyncState()V

    .line 2859
    :cond_c
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_15

    .line 2860
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/HorizontalFastScroller;->onSizeChanged(IIII)V

    .line 2862
    :cond_15
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    .line 7204
    invoke-virtual {p0}, isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 7205
    invoke-direct {p0, v4}, createTextFilter(Z)V

    .line 7206
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7207
    .local v1, "length":I
    iget-object v3, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 7208
    .local v2, "showing":Z
    if-nez v2, :cond_31

    if-lez v1, :cond_31

    .line 7210
    invoke-direct {p0}, showPopup()V

    .line 7211
    iput-boolean v4, p0, mFiltered:Z

    .line 7217
    :cond_1d
    :goto_1d
    iget-object v3, p0, mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_30

    .line 7218
    iget-object v3, p0, mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 7220
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3c

    .line 7221
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 7228
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_30
    return-void

    .line 7212
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_31
    if-eqz v2, :cond_1d

    if-nez v1, :cond_1d

    .line 7214
    invoke-direct {p0}, dismissPopup()V

    .line 7215
    const/4 v3, 0x0

    iput-boolean v3, p0, mFiltered:Z

    goto :goto_1d

    .line 7223
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3c
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 4414
    iget-boolean v11, p0, mMotionEnable:Z

    if-eqz v11, :cond_11

    .line 4415
    iget-object v11, p0, mMotionListener:Lcom/samsung/android/motion/MRListener;

    if-eqz v11, :cond_11

    .line 4416
    iget-object v11, p0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    iget-object v12, p0, mMotionListener:Lcom/samsung/android/motion/MRListener;

    invoke-virtual {v11, v12, v10}, Lcom/samsung/android/motion/MotionRecognitionManager;->setMotionAngle(Lcom/samsung/android/motion/MRListener;I)V

    .line 4420
    :cond_11
    invoke-virtual {p0}, isEnabled()Z

    move-result v11

    if-nez v11, :cond_25

    .line 4423
    invoke-virtual {p0}, isClickable()Z

    move-result v11

    if-nez v11, :cond_23

    invoke-virtual {p0}, isLongClickable()Z

    move-result v11

    if-eqz v11, :cond_24

    :cond_23
    move v9, v10

    .line 4511
    :cond_24
    :goto_24
    return v9

    .line 4426
    :cond_25
    iget-object v11, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v11, :cond_2e

    .line 4427
    iget-object v11, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v11}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 4430
    :cond_2e
    invoke-virtual {p0}, isAttachedToWindow()Z

    move-result v11

    if-eqz v11, :cond_24

    .line 4438
    iget-object v11, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v11, :cond_42

    .line 4439
    iget-object v11, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v11, p1}, Landroid/widget/HorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 4440
    .local v4, "intercepted":Z
    if-eqz v4, :cond_42

    move v9, v10

    .line 4441
    goto :goto_24

    .line 4445
    .end local v4    # "intercepted":Z
    :cond_42
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 4446
    .local v6, "vtev":Landroid/view/MotionEvent;
    invoke-direct {p0}, initVelocityTrackerIfNotExists()V

    .line 4447
    iget-object v11, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4450
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_ca

    .line 4510
    :goto_55
    :pswitch_55
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    move v9, v10

    .line 4511
    goto :goto_24

    .line 4452
    :pswitch_5a
    invoke-direct {p0, p1}, onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_55

    .line 4457
    :pswitch_5e
    invoke-direct {p0, p1, v6}, onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_55

    .line 4462
    :pswitch_62
    invoke-direct {p0, p1}, onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_55

    .line 4467
    :pswitch_66
    invoke-direct {p0}, onTouchCancel()V

    goto :goto_55

    .line 4472
    :pswitch_6a
    invoke-direct {p0, p1}, onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4473
    iget v7, p0, mMotionX:I

    .line 4474
    .local v7, "x":I
    iget v8, p0, mMotionY:I

    .line 4475
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, pointToPosition(II)I

    move-result v5

    .line 4476
    .local v5, "motionPosition":I
    if-ltz v5, :cond_87

    .line 4478
    iget v9, p0, mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4479
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, mMotionViewOriginalLeft:I

    .line 4480
    iput v5, p0, mMotionPosition:I

    .line 4482
    .end local v1    # "child":Landroid/view/View;
    :cond_87
    iput v7, p0, mLastX:I

    .line 4483
    iget v9, p0, mPointerCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, mPointerCount:I

    goto :goto_55

    .line 4489
    .end local v5    # "motionPosition":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 4490
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 4491
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v7, v11

    .line 4492
    .restart local v7    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v8, v11

    .line 4493
    .restart local v8    # "y":I
    iput v9, p0, mMotionCorrection:I

    .line 4494
    iput v2, p0, mActivePointerId:I

    .line 4495
    iput v7, p0, mMotionX:I

    .line 4496
    iput v8, p0, mMotionY:I

    .line 4497
    invoke-virtual {p0, v7, v8}, pointToPosition(II)I

    move-result v5

    .line 4498
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_c0

    .line 4500
    iget v9, p0, mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4501
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, mMotionViewOriginalLeft:I

    .line 4502
    iput v5, p0, mMotionPosition:I

    .line 4504
    .end local v1    # "child":Landroid/view/View;
    :cond_c0
    iput v7, p0, mLastX:I

    .line 4505
    iget v9, p0, mPointerCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, mPointerCount:I

    goto :goto_55

    .line 4450
    nop

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_62
        :pswitch_5e
        :pswitch_66
        :pswitch_55
        :pswitch_90
        :pswitch_6a
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .registers 4
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 3932
    if-eqz p1, :cond_18

    .line 3934
    invoke-virtual {p0}, hideSelector()V

    .line 3938
    invoke-virtual {p0}, getWidth()I

    move-result v1

    if-lez v1, :cond_14

    invoke-virtual {p0}, getChildCount()I

    move-result v1

    if-lez v1, :cond_14

    .line 3941
    invoke-virtual {p0}, layoutChildren()V

    .line 3943
    :cond_14
    invoke-virtual {p0}, updateSelectorState()V

    .line 3962
    :cond_17
    :goto_17
    return-void

    .line 3945
    :cond_18
    iget v0, p0, mTouchMode:I

    .line 3946
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    .line 3947
    :cond_20
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-eqz v1, :cond_29

    .line 3948
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 3950
    :cond_29
    iget-object v1, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v1, :cond_32

    .line 3951
    iget-object v1, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 3954
    :cond_32
    iget v1, p0, mScrollX:I

    if-eqz v1, :cond_17

    .line 3955
    const/4 v1, 0x0

    iput v1, p0, mScrollX:I

    .line 3956
    invoke-virtual {p0}, invalidateParentCaches()V

    .line 3957
    invoke-direct {p0}, finishGlows()V

    .line 3958
    invoke-virtual {p0}, invalidate()V

    goto :goto_17
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 8158
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 8159
    const/4 v0, -0x1

    iput v0, p0, mHoverPosition:I

    .line 8161
    if-nez p2, :cond_9

    .line 8166
    :goto_8
    return-void

    .line 8164
    :cond_9
    invoke-direct {p0}, releaseAllBoosters()V

    goto :goto_8
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3191
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3196
    iput-boolean p1, p0, mHasWindowFocusForMotion:Z

    .line 3198
    invoke-virtual {p0}, isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_4a

    move v0, v1

    .line 3200
    .local v0, "touchMode":I
    :goto_e
    if-nez p1, :cond_4c

    .line 3201
    invoke-virtual {p0, v1}, setChildrenDrawingCacheEnabled(Z)V

    .line 3202
    iget-object v3, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-eqz v3, :cond_39

    .line 3203
    iget-object v3, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {p0, v3}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3206
    iget-object v3, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 3207
    iget-object v3, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v3, :cond_2a

    .line 3208
    iget-object v3, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 3210
    :cond_2a
    iget v3, p0, mScrollY:I

    if-eqz v3, :cond_39

    .line 3211
    iput v1, p0, mScrollY:I

    .line 3212
    invoke-virtual {p0}, invalidateParentCaches()V

    .line 3213
    invoke-direct {p0}, finishGlows()V

    .line 3214
    invoke-virtual {p0}, invalidate()V

    .line 3218
    :cond_39
    invoke-direct {p0}, dismissPopup()V

    .line 3220
    if-ne v0, v2, :cond_42

    .line 3222
    iget v1, p0, mSelectedPosition:I

    iput v1, p0, mResurrectToPosition:I

    .line 3246
    :cond_42
    :goto_42
    iput v0, p0, mLastTouchMode:I

    .line 3248
    if-nez p1, :cond_49

    .line 3249
    invoke-direct {p0}, releaseAllBoosters()V

    .line 3251
    :cond_49
    return-void

    .end local v0    # "touchMode":I
    :cond_4a
    move v0, v2

    .line 3198
    goto :goto_e

    .line 3225
    .restart local v0    # "touchMode":I
    :cond_4c
    iget-boolean v3, p0, mFiltered:Z

    if-eqz v3, :cond_57

    iget-boolean v3, p0, mPopupHidden:Z

    if-nez v3, :cond_57

    .line 3227
    invoke-direct {p0}, showPopup()V

    .line 3231
    :cond_57
    iget v3, p0, mLastTouchMode:I

    if-eq v0, v3, :cond_42

    iget v3, p0, mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_42

    .line 3233
    if-ne v0, v2, :cond_66

    .line 3235
    invoke-virtual {p0}, resurrectSelection()Z

    goto :goto_42

    .line 3239
    :cond_66
    invoke-virtual {p0}, hideSelector()V

    .line 3240
    iput v1, p0, mLayoutMode:I

    .line 3241
    invoke-virtual {p0}, layoutChildren()V

    goto :goto_42
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1805
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1824
    :goto_a
    return v1

    .line 1808
    :cond_b
    sparse-switch p1, :sswitch_data_58

    move v1, v2

    .line 1824
    goto :goto_a

    .line 1810
    :sswitch_10
    invoke-virtual {p0}, isEnabled()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {p0}, getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_35

    .line 1811
    invoke-virtual {p0}, getWidth()I

    move-result v2

    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 1812
    .local v0, "viewportWidth":I
    invoke-virtual {p0, v0, v5}, smoothScrollBy(II)V

    goto :goto_a

    .end local v0    # "viewportWidth":I
    :cond_35
    move v1, v2

    .line 1815
    goto :goto_a

    .line 1817
    :sswitch_37
    invoke-virtual {p0}, isEnabled()Z

    move-result v3

    if-eqz v3, :cond_55

    iget v3, p0, mFirstPosition:I

    if-lez v3, :cond_55

    .line 1818
    invoke-virtual {p0}, getWidth()I

    move-result v2

    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 1819
    .restart local v0    # "viewportWidth":I
    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, smoothScrollBy(II)V

    goto :goto_a

    .end local v0    # "viewportWidth":I
    :cond_55
    move v1, v2

    .line 1822
    goto :goto_a

    .line 1808
    nop

    :sswitch_data_58
    .sparse-switch
        0x1000 -> :sswitch_10
        0x2000 -> :sswitch_37
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1348
    const/4 v8, 0x0

    .line 1349
    .local v8, "handled":Z
    const/4 v9, 0x0

    .line 1350
    .local v9, "handledNotifykeyPress":Z
    const/4 v7, 0x1

    .line 1352
    .local v7, "dispatchItemClick":Z
    iget v3, p0, mChoiceMode:I

    if-eqz v3, :cond_64

    .line 1353
    const/4 v8, 0x1

    .line 1354
    const/4 v0, 0x0

    .line 1356
    .local v0, "checkedStateChanged":Z
    iget-object v3, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_81

    iget v3, p0, mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1d

    iget v3, p0, mChoiceMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_81

    iget-object v3, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_81

    .line 1358
    :cond_1d
    iget-object v3, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_6c

    move v6, v1

    .line 1359
    .local v6, "checked":Z
    :goto_26
    iget-object v1, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1360
    iget-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_48

    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1361
    if-eqz v6, :cond_6e

    .line 1362
    iget-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1367
    :cond_48
    :goto_48
    if-eqz v6, :cond_7a

    .line 1368
    iget v1, p0, mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mCheckedItemCount:I

    .line 1372
    :goto_50
    iget-object v1, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5e

    .line 1373
    iget-object v1, p0, mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    iget-object v2, p0, mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1375
    const/4 v7, 0x0

    .line 1377
    :cond_5e
    const/4 v0, 0x1

    .line 1394
    .end local v6    # "checked":Z
    :cond_5f
    :goto_5f
    if-eqz v0, :cond_64

    .line 1395
    invoke-direct {p0}, updateOnScreenCheckedViews()V

    .line 1399
    .end local v0    # "checkedStateChanged":Z
    :cond_64
    if-eqz v7, :cond_6b

    .line 1400
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1403
    :cond_6b
    return v8

    .restart local v0    # "checkedStateChanged":Z
    :cond_6c
    move v6, v2

    .line 1358
    goto :goto_26

    .line 1364
    .restart local v6    # "checked":Z
    :cond_6e
    iget-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_48

    .line 1370
    :cond_7a
    iget v1, p0, mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mCheckedItemCount:I

    goto :goto_50

    .line 1378
    .end local v6    # "checked":Z
    :cond_81
    iget-object v3, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_5f

    iget v3, p0, mChoiceMode:I

    if-ne v3, v1, :cond_5f

    .line 1379
    iget-object v3, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_c2

    move v6, v1

    .line 1380
    .restart local v6    # "checked":Z
    :goto_92
    if-eqz v6, :cond_c4

    .line 1381
    iget-object v2, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1382
    iget-object v2, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1383
    iget-object v2, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_be

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_be

    .line 1384
    iget-object v2, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1385
    iget-object v2, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1387
    :cond_be
    iput v1, p0, mCheckedItemCount:I

    .line 1391
    :cond_c0
    :goto_c0
    const/4 v0, 0x1

    goto :goto_5f

    .end local v6    # "checked":Z
    :cond_c2
    move v6, v2

    .line 1379
    goto :goto_92

    .line 1388
    .restart local v6    # "checked":Z
    :cond_c4
    iget-object v1, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_d4

    iget-object v1, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_c0

    .line 1389
    :cond_d4
    iput v2, p0, mCheckedItemCount:I

    goto :goto_c0
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const v7, 0xc369

    const/4 v6, 0x1

    .line 3426
    iget v0, p0, mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e

    .line 3427
    iget-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1d

    iget-object v0, p0, mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1d

    .line 3429
    invoke-virtual {p0, p2, v6}, setItemChecked(IZ)V

    .line 3430
    invoke-virtual {p0, v7}, performHapticFeedback(I)Z

    .line 3448
    :cond_1d
    :goto_1d
    return v6

    .line 3436
    :cond_1e
    const/4 v6, 0x0

    .line 3437
    .local v6, "handled":Z
    iget-object v0, p0, mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2d

    .line 3438
    iget-object v0, p0, mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3441
    :cond_2d
    if-nez v6, :cond_39

    .line 3442
    invoke-virtual {p0, p1, p2, p3, p4}, createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3443
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3445
    :cond_39
    if-eqz v6, :cond_1d

    .line 3446
    invoke-virtual {p0, v7}, performHapticFeedback(I)Z

    goto :goto_1d
.end method

.method public pointToPosition(II)I
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3612
    iget-object v2, p0, mTouchFrame:Landroid/graphics/Rect;

    .line 3613
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_d

    .line 3614
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, mTouchFrame:Landroid/graphics/Rect;

    .line 3615
    iget-object v2, p0, mTouchFrame:Landroid/graphics/Rect;

    .line 3618
    :cond_d
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 3619
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_13
    if-ltz v3, :cond_2f

    .line 3620
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3621
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 3622
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3623
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3624
    iget v4, p0, mFirstPosition:I

    add-int/2addr v4, v3

    .line 3628
    .end local v0    # "child":Landroid/view/View;
    :goto_2b
    return v4

    .line 3619
    .restart local v0    # "child":Landroid/view/View;
    :cond_2c
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 3628
    .end local v0    # "child":Landroid/view/View;
    :cond_2f
    const/4 v4, -0x1

    goto :goto_2b
.end method

.method public pointToRowId(II)J
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3641
    invoke-virtual {p0, p1, p2}, pointToPosition(II)I

    move-result v0

    .line 3642
    .local v0, "position":I
    if-ltz v0, :cond_d

    .line 3643
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3645
    :goto_c
    return-wide v2

    :cond_d
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_c
.end method

.method positionSelector(ILandroid/view/View;)V
    .registers 10
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 2770
    if-eq p1, v6, :cond_5

    .line 2771
    iput p1, p0, mSelectorPosition:I

    .line 2774
    :cond_5
    iget-object v1, p0, mSelectorRect:Landroid/graphics/Rect;

    .line 2775
    .local v1, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2776
    instance-of v2, p2, Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_24

    move-object v2, p2

    .line 2777
    check-cast v2, Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2779
    :cond_24
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, positionSelector(IIII)V

    .line 2782
    iget-boolean v0, p0, mIsChildViewEnabled:Z

    .line 2783
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_45

    .line 2784
    if-nez v0, :cond_46

    const/4 v2, 0x1

    :goto_3a
    iput-boolean v2, p0, mIsChildViewEnabled:Z

    .line 2785
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_45

    .line 2786
    invoke-virtual {p0}, refreshDrawableState()V

    .line 2789
    :cond_45
    return-void

    .line 2784
    :cond_46
    const/4 v2, 0x0

    goto :goto_3a
.end method

.method public reclaimViews(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7336
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 7337
    .local v1, "childCount":I
    iget-object v5, p0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    # getter for: Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView$RecycleBin;->access$4600(Landroid/widget/AbsHorizontalListView$RecycleBin;)Landroid/widget/AbsHorizontalListView$RecyclerListener;

    move-result-object v3

    .line 7340
    .local v3, "listener":Landroid/widget/AbsHorizontalListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_32

    .line 7341
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7342
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 7344
    .local v4, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-eqz v4, :cond_2f

    iget-object v5, p0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 7345
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7346
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7347
    if-eqz v3, :cond_2f

    .line 7349
    invoke-interface {v3, v0}, Landroid/widget/AbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7340
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7353
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_32
    iget-object v5, p0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 7354
    invoke-virtual {p0}, removeAllViewsInLayout()V

    .line 7355
    return-void
.end method

.method reconcileSelectedPosition()I
    .registers 3

    .prologue
    .line 6481
    iget v0, p0, mSelectedPosition:I

    .line 6482
    .local v0, "position":I
    if-gez v0, :cond_6

    .line 6483
    iget v0, p0, mResurrectToPosition:I

    .line 6485
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6486
    iget v1, p0, mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6487
    return v0
.end method

.method public registerDoubleTapMotion()V
    .registers 2

    .prologue
    .line 937
    invoke-direct {p0}, registerMotionListener()V

    .line 938
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setMotionEvent(Z)V

    .line 939
    return-void
.end method

.method reportScrollStateChange(I)V
    .registers 3
    .param p1, "newState"    # I

    .prologue
    .line 5224
    iget v0, p0, mLastScrollState:I

    if-eq p1, v0, :cond_13

    .line 5225
    iput p1, p0, mLastScrollState:I

    .line 5226
    iget-object v0, p0, mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, mHoverAreaEnter:Z

    if-nez v0, :cond_13

    .line 5228
    iget-object v0, p0, mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsHorizontalListView;I)V

    .line 5231
    :cond_13
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 5066
    if-eqz p1, :cond_5

    .line 5067
    invoke-direct {p0}, recycleVelocityTracker()V

    .line 5069
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 5070
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 2266
    iget-boolean v0, p0, mBlockLayoutRequests:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, mInLayout:Z

    if-nez v0, :cond_b

    .line 2267
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 2269
    :cond_b
    return-void
.end method

.method requestLayoutIfNecessary()V
    .registers 2

    .prologue
    .line 1949
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 1950
    invoke-virtual {p0}, resetList()V

    .line 1951
    invoke-virtual {p0}, requestLayout()V

    .line 1952
    invoke-virtual {p0}, invalidate()V

    .line 1954
    :cond_f
    return-void
.end method

.method resetList()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2275
    invoke-virtual {p0}, removeAllViewsInLayout()V

    .line 2276
    iput v3, p0, mFirstPosition:I

    .line 2278
    iget-boolean v0, p0, USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_e

    .line 2279
    iput v2, p0, mLastPosition:I

    .line 2282
    :cond_e
    iput-boolean v3, p0, mDataChanged:Z

    .line 2283
    iput-object v1, p0, mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2284
    iput-boolean v3, p0, mNeedSync:Z

    .line 2285
    iput-object v1, p0, mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2286
    iput v2, p0, mOldSelectedPosition:I

    .line 2287
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, mOldSelectedRowId:J

    .line 2288
    invoke-virtual {p0, v2}, setSelectedPositionInt(I)V

    .line 2289
    invoke-virtual {p0, v2}, setNextSelectedPositionInt(I)V

    .line 2290
    iput v3, p0, mSelectedLeft:I

    .line 2291
    iput v2, p0, mSelectorPosition:I

    .line 2292
    iget-object v0, p0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2293
    invoke-virtual {p0}, invalidate()V

    .line 2294
    return-void
.end method

.method public resetPressItemListArray()V
    .registers 5

    .prologue
    .line 8378
    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_5

    .line 8392
    :cond_4
    :goto_4
    return-void

    .line 8381
    :cond_5
    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 8383
    .local v0, "checkCount":I
    iget-object v2, p0, mTwPressItemListArray:[I

    if-eqz v2, :cond_4

    .line 8386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_1a

    .line 8387
    iget-object v2, p0, mTwPressItemListArray:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 8386
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 8390
    :cond_1a
    const/4 v2, 0x0

    iput v2, p0, mTwPressItemListIndex:I

    .line 8391
    invoke-virtual {p0}, invalidate()V

    goto :goto_4
.end method

.method resurrectSelection()Z
    .registers 20

    .prologue
    .line 6549
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v2

    .line 6551
    .local v2, "childCount":I
    if-gtz v2, :cond_9

    .line 6552
    const/16 v17, 0x0

    .line 6647
    :goto_8
    return v17

    .line 6555
    :cond_9
    const/4 v12, 0x0

    .line 6557
    .local v12, "selectedLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 6558
    .local v3, "childrenLeft":I
    move-object/from16 v0, p0

    iget v0, v0, mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 6559
    .local v4, "childrenRight":I
    move-object/from16 v0, p0

    iget v5, v0, mFirstPosition:I

    .line 6560
    .local v5, "firstPosition":I
    move-object/from16 v0, p0

    iget v15, v0, mResurrectToPosition:I

    .line 6561
    .local v15, "toPosition":I
    const/4 v10, 0x1

    .line 6563
    .local v10, "rightSide":Z
    if-lt v15, v5, :cond_d8

    add-int v17, v5, v2

    move/from16 v0, v17

    if-ge v15, v0, :cond_d8

    .line 6564
    move v13, v15

    .line 6566
    .local v13, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 6567
    .local v11, "selected":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 6568
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    .line 6571
    .local v14, "selectedRight":I
    if-ge v12, v3, :cond_c9

    .line 6572
    invoke-virtual/range {p0 .. p0}, getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v12, v3, v17

    .line 6628
    .end local v11    # "selected":Landroid/view/View;
    .end local v14    # "selectedRight":I
    :cond_62
    :goto_62
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mResurrectToPosition:I

    .line 6629
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6630
    move-object/from16 v0, p0

    iget-object v0, v0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_88

    .line 6631
    move-object/from16 v0, p0

    iget-object v0, v0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 6633
    :cond_88
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchMode:I

    .line 6634
    invoke-direct/range {p0 .. p0}, clearScrollingCache()V

    .line 6635
    move-object/from16 v0, p0

    iput v12, v0, mSpecificTop:I

    .line 6636
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, lookForSelectablePosition(IZ)I

    move-result v13

    .line 6637
    if-lt v13, v5, :cond_139

    invoke-virtual/range {p0 .. p0}, getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v13, v0, :cond_139

    .line 6638
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mLayoutMode:I

    .line 6639
    invoke-virtual/range {p0 .. p0}, updateSelectorState()V

    .line 6640
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, setSelectionInt(I)V

    .line 6641
    invoke-virtual/range {p0 .. p0}, invokeOnItemScrollListener()V

    .line 6645
    :goto_ba
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, reportScrollStateChange(I)V

    .line 6647
    if-ltz v13, :cond_13b

    const/16 v17, 0x1

    goto/16 :goto_8

    .line 6573
    .restart local v11    # "selected":Landroid/view/View;
    .restart local v14    # "selectedRight":I
    :cond_c9
    if-le v14, v4, :cond_62

    .line 6574
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, getHorizontalFadingEdgeLength()I

    move-result v18

    sub-int v12, v17, v18

    goto :goto_62

    .line 6578
    .end local v11    # "selected":Landroid/view/View;
    .end local v13    # "selectedPos":I
    .end local v14    # "selectedRight":I
    :cond_d8
    if-ge v15, v5, :cond_ff

    .line 6580
    move v13, v5

    .line 6581
    .restart local v13    # "selectedPos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_dc
    if-ge v6, v2, :cond_62

    .line 6582
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6583
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 6585
    .local v8, "left":I
    if-nez v6, :cond_f5

    .line 6587
    move v12, v8

    .line 6589
    if-gtz v5, :cond_ef

    if-ge v8, v3, :cond_f5

    .line 6592
    :cond_ef
    invoke-virtual/range {p0 .. p0}, getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v3, v3, v17

    .line 6595
    :cond_f5
    if-lt v8, v3, :cond_fc

    .line 6597
    add-int v13, v5, v6

    .line 6598
    move v12, v8

    .line 6599
    goto/16 :goto_62

    .line 6581
    :cond_fc
    add-int/lit8 v6, v6, 0x1

    goto :goto_dc

    .line 6603
    .end local v6    # "i":I
    .end local v8    # "left":I
    .end local v13    # "selectedPos":I
    .end local v16    # "v":Landroid/view/View;
    :cond_ff
    move-object/from16 v0, p0

    iget v7, v0, mItemCount:I

    .line 6604
    .local v7, "itemCount":I
    const/4 v10, 0x0

    .line 6605
    add-int v17, v5, v2

    add-int/lit8 v13, v17, -0x1

    .line 6607
    .restart local v13    # "selectedPos":I
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "i":I
    :goto_10a
    if-ltz v6, :cond_62

    .line 6608
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6609
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 6610
    .restart local v8    # "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v9

    .line 6612
    .local v9, "right":I
    add-int/lit8 v17, v2, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_12f

    .line 6613
    move v12, v8

    .line 6614
    add-int v17, v5, v2

    move/from16 v0, v17

    if-lt v0, v7, :cond_129

    if-le v9, v4, :cond_12f

    .line 6615
    :cond_129
    invoke-virtual/range {p0 .. p0}, getHorizontalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 6619
    :cond_12f
    if-gt v9, v4, :cond_136

    .line 6620
    add-int v13, v5, v6

    .line 6621
    move v12, v8

    .line 6622
    goto/16 :goto_62

    .line 6607
    :cond_136
    add-int/lit8 v6, v6, -0x1

    goto :goto_10a

    .line 6643
    .end local v6    # "i":I
    .end local v7    # "itemCount":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v16    # "v":Landroid/view/View;
    :cond_139
    const/4 v13, -0x1

    goto :goto_ba

    .line 6647
    :cond_13b
    const/16 v17, 0x0

    goto/16 :goto_8
.end method

.method resurrectSelectionIfNeeded()Z
    .registers 2

    .prologue
    .line 6529
    iget v0, p0, mSelectedPosition:I

    if-gez v0, :cond_f

    invoke-virtual {p0}, resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6530
    invoke-virtual {p0}, updateSelectorState()V

    .line 6531
    const/4 v0, 0x1

    .line 6533
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public scrollListBy(I)V
    .registers 4
    .param p1, "y"    # I

    .prologue
    .line 6210
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, trackMotionScroll(II)Z

    .line 6211
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 5
    .param p1, "eventType"    # I

    .prologue
    .line 1767
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_19

    .line 1768
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v0

    .line 1769
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, getLastVisiblePosition()I

    move-result v1

    .line 1770
    .local v1, "lastVisiblePosition":I
    iget v2, p0, mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_15

    iget v2, p0, mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_15

    .line 1779
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :goto_14
    return-void

    .line 1774
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_15
    iput v0, p0, mLastAccessibilityScrollEventFromIndex:I

    .line 1775
    iput v1, p0, mLastAccessibilityScrollEventToIndex:I

    .line 1778
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_19
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_14
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .registers 16
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x3b

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 6970
    invoke-direct {p0}, acceptFilter()Z

    move-result v6

    if-nez v6, :cond_f

    move v2, v5

    .line 7045
    :cond_e
    :goto_e
    return v2

    .line 6974
    :cond_f
    const/4 v2, 0x0

    .line 6975
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 6976
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_bc

    .line 7008
    :goto_14
    if-eqz v3, :cond_e

    .line 7009
    invoke-direct {p0, v8}, createTextFilter(Z)V

    .line 7011
    move-object v1, p3

    .line 7012
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_28

    .line 7013
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7016
    :cond_28
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 7017
    .local v0, "action":I
    packed-switch v0, :pswitch_data_de

    goto :goto_e

    .line 7019
    :pswitch_30
    iget-object v5, p0, mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7020
    if-eq p1, v10, :cond_3a

    if-ne p1, v11, :cond_85

    .line 7021
    :cond_3a
    iput-boolean v8, p0, mIsShiftkeyPressed:Z

    goto :goto_e

    .line 6983
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_3d
    const/4 v3, 0x0

    .line 6984
    goto :goto_14

    .line 6986
    :sswitch_3f
    iget-boolean v6, p0, mFiltered:Z

    if-eqz v6, :cond_65

    iget-object v6, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_65

    iget-object v6, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 6987
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_67

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_67

    .line 6989
    invoke-virtual {p0}, getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 6990
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_64

    .line 6991
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 6993
    :cond_64
    const/4 v2, 0x1

    .line 7000
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_65
    :goto_65
    const/4 v3, 0x0

    .line 7001
    goto :goto_14

    .line 6994
    :cond_67
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_65

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_65

    .line 6996
    const/4 v2, 0x1

    .line 6997
    iget-object v6, p0, mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_65

    .line 7004
    :sswitch_82
    iget-boolean v3, p0, mFiltered:Z

    goto :goto_14

    .line 7022
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :cond_85
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8d

    const/16 v5, 0x72

    if-ne p1, v5, :cond_e

    .line 7023
    :cond_8d
    iput-boolean v8, p0, mIsCtrlkeyPressed:Z

    goto/16 :goto_e

    .line 7028
    :pswitch_91
    iget-object v6, p0, mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v6, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7029
    if-eq p1, v10, :cond_9b

    if-ne p1, v11, :cond_a7

    .line 7030
    :cond_9b
    iput-boolean v5, p0, mIsShiftkeyPressed:Z

    .line 7031
    iput v5, p0, mOldKeyCode:I

    .line 7032
    iput v5, p0, mCurrentKeyCode:I

    .line 7033
    iput v9, p0, mFirstPressedPoint:I

    .line 7034
    iput v9, p0, mSecondPressedPoint:I

    goto/16 :goto_e

    .line 7035
    :cond_a7
    const/16 v6, 0x71

    if-eq p1, v6, :cond_af

    const/16 v6, 0x72

    if-ne p1, v6, :cond_e

    .line 7036
    :cond_af
    iput-boolean v5, p0, mIsCtrlkeyPressed:Z

    goto/16 :goto_e

    .line 7041
    :pswitch_b3
    iget-object v5, p0, mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_e

    .line 6976
    nop

    :sswitch_data_bc
    .sparse-switch
        0x4 -> :sswitch_3f
        0x13 -> :sswitch_3d
        0x14 -> :sswitch_3d
        0x15 -> :sswitch_3d
        0x16 -> :sswitch_3d
        0x17 -> :sswitch_3d
        0x3e -> :sswitch_82
        0x42 -> :sswitch_3d
    .end sparse-switch

    .line 7017
    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_30
        :pswitch_91
        :pswitch_b3
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 123
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1137
    if-eqz p1, :cond_1d

    .line 1138
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, mAdapterHasStableIds:Z

    .line 1139
    iget v0, p0, mChoiceMode:I

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, mAdapterHasStableIds:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1d

    .line 1141
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1145
    :cond_1d
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_26

    .line 1146
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1149
    :cond_26
    iget-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2f

    .line 1150
    iget-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1154
    :cond_2f
    iget-boolean v0, p0, mIsMultiFocusEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4d

    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4d

    .line 1155
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, mTwPressItemListArray:[I

    .line 1156
    invoke-virtual {p0}, resetPressItemListArray()V

    .line 1157
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, mOldAdapterItemCount:I

    .line 1160
    :cond_4d
    return-void
.end method

.method public setAlwaysDisableHoverHighlight(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .prologue
    .line 4842
    iput-boolean p1, p0, mAlwaysDisableHoverHighlight:Z

    .line 4843
    return-void
.end method

.method public setCacheColorHint(I)V
    .registers 5
    .param p1, "color"    # I

    .prologue
    .line 7307
    iget v2, p0, mCacheColorHint:I

    if-eq p1, v2, :cond_1c

    .line 7308
    iput p1, p0, mCacheColorHint:I

    .line 7309
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 7310
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 7311
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7310
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 7313
    :cond_17
    iget-object v2, p0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->setCacheColorHint(I)V

    .line 7315
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method public setChoiceMode(I)V
    .registers 4
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1457
    iput p1, p0, mChoiceMode:I

    .line 1458
    iget-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_f

    .line 1459
    iget-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1460
    const/4 v0, 0x0

    iput-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    .line 1462
    :cond_f
    iget v0, p0, mChoiceMode:I

    if-eqz v0, :cond_41

    .line 1463
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1e

    .line 1464
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1466
    :cond_1e
    iget-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_35

    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_35

    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1467
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1470
    :cond_35
    iget v0, p0, mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_41

    .line 1471
    invoke-virtual {p0}, clearChoices()V

    .line 1472
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setLongClickable(Z)V

    .line 1475
    :cond_41
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .registers 2
    .param p1, "onTop"    # Z

    .prologue
    .line 2938
    iput-boolean p1, p0, mDrawSelectorOnTop:Z

    .line 2939
    return-void
.end method

.method public setEnableMultiFocus(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 8284
    iput-boolean p1, p0, mIsMultiFocusEnabled:Z

    .line 8285
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1603
    iget-boolean v0, p0, mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_19

    .line 1604
    if-eqz p1, :cond_e

    iget-boolean v0, p0, mFastScrollEnabled:Z

    if-nez v0, :cond_e

    .line 1605
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setFastScrollEnabled(Z)V

    .line 1608
    :cond_e
    iput-boolean p1, p0, mFastScrollAlwaysVisible:Z

    .line 1610
    invoke-direct {p0}, isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1611
    invoke-direct {p0, p1}, setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1621
    :cond_19
    :goto_19
    return-void

    .line 1613
    :cond_1a
    new-instance v0, Landroid/widget/AbsHorizontalListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$2;-><init>(Landroid/widget/AbsHorizontalListView;Z)V

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    goto :goto_19
.end method

.method public setFastScrollEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1557
    iget-boolean v0, p0, mFastScrollEnabled:Z

    if-eq v0, p1, :cond_f

    .line 1558
    iput-boolean p1, p0, mFastScrollEnabled:Z

    .line 1560
    invoke-direct {p0}, isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1561
    invoke-direct {p0, p1}, setFastScrollerEnabledUiThread(Z)V

    .line 1571
    :cond_f
    :goto_f
    return-void

    .line 1563
    :cond_10
    new-instance v0, Landroid/widget/AbsHorizontalListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$1;-><init>(Landroid/widget/AbsHorizontalListView;Z)V

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public setFilterText(Ljava/lang/String;)V
    .registers 5
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2207
    iget-boolean v1, p0, mTextFilterEnabled:Z

    if-eqz v1, :cond_39

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 2208
    const/4 v1, 0x0

    invoke-direct {p0, v1}, createTextFilter(Z)V

    .line 2211
    iget-object v1, p0, mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2212
    iget-object v1, p0, mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2213
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_39

    .line 2215
    iget-object v1, p0, mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_31

    .line 2216
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2217
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2221
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_31
    const/4 v1, 0x1

    iput-boolean v1, p0, mFiltered:Z

    .line 2222
    iget-object v1, p0, mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2225
    :cond_39
    return-void
.end method

.method public setForcedClick(Z)V
    .registers 2
    .param p1, "force"    # Z

    .prologue
    .line 3319
    iput-boolean p1, p0, mForcedClick:Z

    .line 3320
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2459
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2461
    .local v0, "changed":Z
    if-eqz v0, :cond_22

    .line 2465
    invoke-virtual {p0}, getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_23

    const/4 v1, 0x1

    .line 2466
    .local v1, "visible":Z
    :goto_d
    iget-boolean v2, p0, mFiltered:Z

    if-eqz v2, :cond_22

    if-eqz v1, :cond_22

    iget-object v2, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_22

    iget-object v2, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2467
    invoke-direct {p0}, positionPopup()V

    .line 2471
    .end local v1    # "visible":Z
    :cond_22
    return v0

    .line 2465
    :cond_23
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public setFriction(F)V
    .registers 3
    .param p1, "friction"    # F

    .prologue
    .line 5948
    iget-object v0, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 5949
    new-instance v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 5951
    :cond_b
    iget-object v0, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    # getter for: Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->access$1900(Landroid/widget/AbsHorizontalListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 5952
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .registers 2
    .param p1, "hoverdelay"    # I

    .prologue
    .line 4013
    iput p1, p0, HOVERSCROLL_DELAY:I

    .line 4014
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 3995
    if-eqz p1, :cond_6

    .line 3996
    const/4 v0, 0x1

    iput-boolean v0, p0, mHoverScrollEnable:Z

    .line 4000
    :goto_5
    return-void

    .line 3998
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, mHoverScrollEnable:Z

    goto :goto_5
.end method

.method public setHoverScrollSpeed(I)V
    .registers 2
    .param p1, "hoverspeed"    # I

    .prologue
    .line 4006
    iput p1, p0, HOVERSCROLL_SPEED:I

    .line 4007
    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 12
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1277
    iget v2, p0, mChoiceMode:I

    if-nez v2, :cond_8

    .line 1344
    :cond_7
    :goto_7
    return-void

    .line 1282
    :cond_8
    if-eqz p2, :cond_2e

    iget v2, p0, mChoiceMode:I

    if-ne v2, v6, :cond_2e

    iget-object v2, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_2e

    .line 1283
    iget-object v2, p0, mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_1e

    iget-object v2, p0, mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-nez v2, :cond_26

    .line 1285
    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AbsHorizontalListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1289
    :cond_26
    iget-object v2, p0, mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, mChoiceActionMode:Landroid/view/ActionMode;

    .line 1292
    :cond_2e
    iget v2, p0, mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_37

    iget v2, p0, mChoiceMode:I

    if-ne v2, v6, :cond_a5

    .line 1293
    :cond_37
    iget-object v1, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1294
    .local v0, "oldValue":Z
    iget-object v1, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1295
    iget-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_5f

    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1296
    if-eqz p2, :cond_92

    .line 1297
    iget-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1302
    :cond_5f
    :goto_5f
    if-eq v0, p2, :cond_69

    .line 1303
    if-eqz p2, :cond_9e

    .line 1304
    iget v1, p0, mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mCheckedItemCount:I

    .line 1309
    :cond_69
    :goto_69
    iget-object v1, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_7c

    .line 1310
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1311
    .local v4, "id":J
    iget-object v1, p0, mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    iget-object v2, p0, mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1338
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_7c
    :goto_7c
    iget-boolean v1, p0, mInLayout:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, mBlockLayoutRequests:Z

    if-nez v1, :cond_7

    .line 1339
    iget-boolean v1, p0, mForcedClick:Z

    if-nez v1, :cond_8a

    .line 1340
    iput-boolean v8, p0, mDataChanged:Z

    .line 1341
    :cond_8a
    invoke-virtual {p0}, rememberSyncState()V

    .line 1342
    invoke-virtual {p0}, requestLayout()V

    goto/16 :goto_7

    .line 1299
    .restart local v0    # "oldValue":Z
    :cond_92
    iget-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_5f

    .line 1306
    :cond_9e
    iget v1, p0, mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mCheckedItemCount:I

    goto :goto_69

    .line 1315
    .end local v0    # "oldValue":Z
    :cond_a5
    iget-object v2, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_e1

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_e1

    move v7, v8

    .line 1318
    .local v7, "updateIds":Z
    :goto_b2
    if-nez p2, :cond_ba

    invoke-virtual {p0, p1}, isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 1319
    :cond_ba
    iget-object v2, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1320
    if-eqz v7, :cond_c6

    .line 1321
    iget-object v2, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1326
    :cond_c6
    if-eqz p2, :cond_e3

    .line 1327
    iget-object v1, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1328
    if-eqz v7, :cond_de

    .line 1329
    iget-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1331
    :cond_de
    iput v8, p0, mCheckedItemCount:I

    goto :goto_7c

    .end local v7    # "updateIds":Z
    :cond_e1
    move v7, v1

    .line 1315
    goto :goto_b2

    .line 1332
    .restart local v7    # "updateIds":Z
    :cond_e3
    iget-object v2, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 1333
    :cond_f3
    iput v1, p0, mCheckedItemCount:I

    goto :goto_7c
.end method

.method public setMotionEvent(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 954
    iput-boolean p1, p0, mMotionEnable:Z

    .line 955
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    .prologue
    .line 1487
    iget-object v0, p0, mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_b

    .line 1488
    new-instance v0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    .line 1490
    :cond_b
    iget-object v0, p0, mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;)V

    .line 1491
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .registers 4
    .param p1, "startitem"    # I
    .param p2, "enditem"    # I

    .prologue
    .line 8396
    iget-object v0, p0, mTwPressItemListArray:[I

    if-nez v0, :cond_5

    .line 8402
    :goto_4
    return-void

    .line 8399
    :cond_5
    invoke-virtual {p0}, resetPressItemListArray()V

    .line 8400
    invoke-virtual {p0, p1, p2}, addToPressItemListArray(II)V

    goto :goto_4
.end method

.method public setOnScrollListener(Landroid/widget/AbsHorizontalListView$OnScrollListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AbsHorizontalListView$OnScrollListener;

    .prologue
    .line 1745
    iput-object p1, p0, mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    .line 1746
    invoke-virtual {p0}, invokeOnItemScrollListener()V

    .line 1747
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .registers 3
    .param p1, "topPadding"    # I
    .param p2, "bottomPadding"    # I

    .prologue
    .line 5039
    iput p1, p0, mGlowPaddingTop:I

    .line 5040
    iput p2, p0, mGlowPaddingBottom:I

    .line 5041
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1119
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1e

    .line 1120
    iget-object v1, p0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1a

    .line 1121
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 1122
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1123
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 1129
    .end local v0    # "context":Landroid/content/Context;
    :cond_1a
    :goto_1a
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 1130
    return-void

    .line 1126
    :cond_1e
    iput-object v2, p0, mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1127
    iput-object v2, p0, mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_1a
.end method

.method public setRecyclerListener(Landroid/widget/AbsHorizontalListView$RecyclerListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsHorizontalListView$RecyclerListener;

    .prologue
    .line 7465
    iget-object v0, p0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    # setter for: Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->access$4602(Landroid/widget/AbsHorizontalListView$RecycleBin;Landroid/widget/AbsHorizontalListView$RecyclerListener;)Landroid/widget/AbsHorizontalListView$RecyclerListener;

    .line 7466
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7372
    iget-object v2, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1b

    .line 7373
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7374
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7376
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 7386
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_1a
    :goto_1a
    return-void

    .line 7380
    :cond_1b
    const/4 v2, 0x0

    iput-boolean v2, p0, mDeferNotifyDataSetChanged:Z

    .line 7382
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 7383
    iget-object v2, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 7384
    iget-object v2, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1a
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 7398
    iget-object v0, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_9

    .line 7399
    iget-object v0, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 7401
    :cond_9
    return-void
.end method

.method public setScrollBarStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .prologue
    .line 1683
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1684
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_c

    .line 1685
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setScrollBarStyle(I)V

    .line 1687
    :cond_c
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p1, "left"    # Landroid/view/View;
    .param p2, "right"    # Landroid/view/View;

    .prologue
    .line 3021
    iput-object p1, p0, mScrollLeft:Landroid/view/View;

    .line 3022
    iput-object p2, p0, mScrollRight:Landroid/view/View;

    .line 3023
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1871
    iget-boolean v0, p0, mScrollingCacheEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 1872
    invoke-direct {p0}, clearScrollingCache()V

    .line 1874
    :cond_9
    iput-boolean p1, p0, mScrollingCacheEnabled:Z

    .line 1875
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .registers 3
    .param p1, "resID"    # I

    .prologue
    .line 2949
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2950
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2953
    iget-object v1, p0, mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 2954
    iget-object v1, p0, mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2955
    iget-object v1, p0, mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2957
    :cond_f
    iput-object p1, p0, mSelector:Landroid/graphics/drawable/Drawable;

    .line 2958
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2959
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2960
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, mSelectionLeftPadding:I

    .line 2961
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, mSelectionTopPadding:I

    .line 2962
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, mSelectionRightPadding:I

    .line 2963
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, mSelectionBottomPadding:I

    .line 2964
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2965
    invoke-virtual {p0}, updateSelectorState()V

    .line 2966
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1717
    iput-boolean p1, p0, mSmoothScrollbarEnabled:Z

    .line 1718
    return-void
.end method

.method public setStackFromBottom(Z)V
    .registers 3
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 1942
    iget-boolean v0, p0, mStackFromBottom:Z

    if-eq v0, p1, :cond_9

    .line 1943
    iput-boolean p1, p0, mStackFromBottom:Z

    .line 1944
    invoke-virtual {p0}, requestLayoutIfNecessary()V

    .line 1946
    :cond_9
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .registers 2
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 1888
    iput-boolean p1, p0, mTextFilterEnabled:Z

    .line 1889
    return-void
.end method

.method public setTouchSlop(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 968
    iput p1, p0, mTouchSlop:I

    .line 969
    return-void
.end method

.method public setTranscriptMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 7278
    iput p1, p0, mTranscriptMode:I

    .line 7279
    return-void
.end method

.method public setTwHorizontalScrollbarPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1675
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setTwHorizontalScrollbarPosition(I)V

    .line 1676
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_c

    .line 1677
    iget-object v0, p0, mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setScrollbarPosition(I)V

    .line 1679
    :cond_c
    return-void
.end method

.method public setVelocityScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .prologue
    .line 5961
    iput p1, p0, mVelocityScale:F

    .line 5962
    return-void
.end method

.method setVisibleRangeHint(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 7448
    iget-object v0, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_9

    .line 7449
    iget-object v0, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 7451
    :cond_9
    return-void
.end method

.method shouldShowSelector()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2887
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4a

    move v0, v2

    .line 2888
    .local v0, "isFingerAirView":Z
    :goto_11
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4c

    move v1, v2

    .line 2893
    .local v1, "isFingerAirViewPreview":Z
    :goto_20
    invoke-virtual {p0}, hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {p0}, isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_48

    :cond_2c
    invoke-virtual {p0}, touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-virtual {p0}, isPressed()Z

    move-result v4

    if-nez v4, :cond_48

    :cond_38
    if-eqz v0, :cond_49

    if-eqz v1, :cond_49

    invoke-virtual {p0}, isHovered()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {p0}, isFingerHovered()Z

    move-result v4

    if-eqz v4, :cond_49

    :cond_48
    move v3, v2

    :cond_49
    return v3

    .end local v0    # "isFingerAirView":Z
    .end local v1    # "isFingerAirViewPreview":Z
    :cond_4a
    move v0, v3

    .line 2887
    goto :goto_11

    .restart local v0    # "isFingerAirView":Z
    :cond_4c
    move v1, v3

    .line 2888
    goto :goto_20
.end method

.method shouldShowSelectorDefault()Z
    .registers 2

    .prologue
    .line 2898
    invoke-virtual {p0}, isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, isPressed()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public showContextMenu(FFI)Z
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 3459
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, pointToPosition(II)I

    move-result v1

    .line 3460
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_24

    .line 3461
    iget-object v4, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3462
    .local v2, "id":J
    iget v4, p0, mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3463
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_27

    .line 3464
    invoke-virtual {p0, v0, v1, v2, v3}, createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3465
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3470
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :goto_23
    return v4

    .line 3468
    :cond_24
    const/4 v4, 0x0

    iput-object v4, p0, mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3470
    :cond_27
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_23
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 9
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 3475
    invoke-virtual {p0, p1}, getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3476
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2e

    .line 3477
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3478
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 3480
    .local v6, "handled":Z
    iget-object v0, p0, mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_19

    .line 3481
    iget-object v0, p0, mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3484
    :cond_19
    if-nez v6, :cond_2d

    .line 3485
    iget v0, p0, mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3488
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3493
    .end local v4    # "longPressId":J
    .end local v6    # "handled":Z
    :cond_2d
    :goto_2d
    return v6

    :cond_2e
    const/4 v6, 0x0

    goto :goto_2d
.end method

.method public smoothScrollBy(II)V
    .registers 4
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 6035
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, smoothScrollBy(IIZ)V

    .line 6036
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .registers 11
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    .line 6111
    iget-object v5, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v5, :cond_b

    .line 6112
    new-instance v5, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v5, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 6116
    :cond_b
    iget v1, p0, mFirstPosition:I

    .line 6117
    .local v1, "firstPos":I
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 6118
    .local v0, "childCount":I
    add-int v2, v1, v0

    .line 6119
    .local v2, "lastPos":I
    invoke-virtual {p0}, getPaddingLeft()I

    move-result v3

    .line 6120
    .local v3, "leftLimit":I
    invoke-virtual {p0}, getWidth()I

    move-result v5

    invoke-virtual {p0}, getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 6122
    .local v4, "rightLimit":I
    if-eqz p1, :cond_4a

    iget v5, p0, mItemCount:I

    if-eqz v5, :cond_4a

    if-eqz v0, :cond_4a

    if-nez v1, :cond_38

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v5, v3, :cond_38

    if-ltz p1, :cond_4a

    :cond_38
    iget v5, p0, mItemCount:I

    if-ne v2, v5, :cond_59

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-ne v5, v4, :cond_59

    if-lez p1, :cond_59

    .line 6126
    :cond_4a
    iget-object v5, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 6127
    iget-object v5, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v5, :cond_58

    .line 6128
    iget-object v5, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 6134
    :cond_58
    :goto_58
    return-void

    .line 6131
    :cond_59
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, reportScrollStateChange(I)V

    .line 6132
    iget-object v5, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_58
.end method

.method smoothScrollByOffset(I)V
    .registers 12
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 6140
    const/4 v2, -0x1

    .line 6141
    .local v2, "index":I
    if-gez p1, :cond_58

    .line 6142
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v2

    .line 6147
    :cond_9
    :goto_9
    const/4 v7, -0x1

    if-le v2, v7, :cond_57

    .line 6148
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6149
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_57

    .line 6150
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6151
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 6153
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 6154
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 6155
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 6156
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 6157
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_5f

    cmpg-float v7, v3, v9

    if-gez v7, :cond_5f

    .line 6160
    add-int/lit8 v2, v2, 0x1

    .line 6167
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_45
    :goto_45
    const/4 v7, 0x0

    invoke-virtual {p0}, getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, smoothScrollToPosition(I)V

    .line 6170
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_57
    return-void

    .line 6143
    :cond_58
    if-lez p1, :cond_9

    .line 6144
    invoke-virtual {p0}, getLastVisiblePosition()I

    move-result v2

    goto :goto_9

    .line 6161
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_5f
    if-lez p1, :cond_45

    cmpg-float v7, v3, v9

    if-gez v7, :cond_45

    .line 6164
    add-int/lit8 v2, v2, -0x1

    goto :goto_45
.end method

.method public smoothScrollToPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 5970
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_b

    .line 5971
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 5973
    :cond_b
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->start(I)V

    .line 5974
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 6023
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_b

    .line 6024
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 6026
    :cond_b
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->start(II)V

    .line 6027
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 6007
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_b

    .line 6008
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 6010
    :cond_b
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->startWithOffset(II)V

    .line 6011
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 5989
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_b

    .line 5990
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 5992
    :cond_b
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView$PositionScroller;->startWithOffset(III)V

    .line 5993
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .registers 2

    .prologue
    .line 2870
    iget v0, p0, mTouchMode:I

    packed-switch v0, :pswitch_data_a

    .line 2875
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 2873
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 2870
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .registers 35
    .param p1, "deltaX"    # I
    .param p2, "incrementalDeltaX"    # I

    .prologue
    .line 6249
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v7

    .line 6250
    .local v7, "childCount":I
    if-nez v7, :cond_9

    .line 6251
    const/16 v30, 0x1

    .line 6428
    :goto_8
    return v30

    .line 6254
    :cond_9
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 6255
    .local v13, "firstLeft":I
    add-int/lit8 v30, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getRight()I

    move-result v19

    .line 6257
    .local v19, "lastRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 6262
    .local v21, "listPadding":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 6263
    .local v10, "effectivePaddingLeft":I
    const/4 v11, 0x0

    .line 6264
    .local v11, "effectivePaddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_45

    .line 6265
    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 6266
    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Rect;->right:I

    .line 6270
    :cond_45
    sub-int v26, v10, v13

    .line 6271
    .local v26, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v30

    sub-int v12, v30, v11

    .line 6272
    .local v12, "end":I
    sub-int v27, v19, v12

    .line 6274
    .local v27, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, mPaddingRight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, mPaddingLeft:I

    move/from16 v31, v0

    sub-int v29, v30, v31

    .line 6275
    .local v29, "width":I
    if-gez p1, :cond_f1

    .line 6276
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6281
    :goto_74
    if-gez p2, :cond_fd

    .line 6282
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6287
    :goto_85
    move-object/from16 v0, p0

    iget v14, v0, mFirstPosition:I

    .line 6290
    .local v14, "firstPosition":I
    if-nez v14, :cond_109

    .line 6291
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    sub-int v30, v13, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, mFirstPositionDistanceGuess:I

    .line 6295
    :goto_99
    add-int v30, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_118

    .line 6296
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    add-int v30, v30, v19

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, mLastPositionDistanceGuess:I

    .line 6301
    :goto_b5
    if-nez v14, :cond_127

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v13, v0, :cond_127

    if-ltz p2, :cond_127

    const/4 v5, 0x1

    .line 6303
    .local v5, "cannotScrollRight":Z
    :goto_c4
    add-int v30, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_129

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v30

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v19

    move/from16 v1, v30

    if-gt v0, v1, :cond_129

    if-gtz p2, :cond_129

    const/4 v4, 0x1

    .line 6306
    .local v4, "cannotScrollLeft":Z
    :goto_e7
    if-nez v5, :cond_eb

    if-eqz v4, :cond_12f

    .line 6307
    :cond_eb
    if-eqz p2, :cond_12b

    const/16 v30, 0x1

    goto/16 :goto_8

    .line 6278
    .end local v4    # "cannotScrollLeft":Z
    .end local v5    # "cannotScrollRight":Z
    .end local v14    # "firstPosition":I
    :cond_f1
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_74

    .line 6284
    :cond_fd
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_85

    .line 6293
    .restart local v14    # "firstPosition":I
    :cond_109
    move-object/from16 v0, p0

    iget v0, v0, mFirstPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, mFirstPositionDistanceGuess:I

    goto :goto_99

    .line 6298
    :cond_118
    move-object/from16 v0, p0

    iget v0, v0, mLastPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, mLastPositionDistanceGuess:I

    goto :goto_b5

    .line 6301
    :cond_127
    const/4 v5, 0x0

    goto :goto_c4

    .line 6303
    .restart local v5    # "cannotScrollRight":Z
    :cond_129
    const/4 v4, 0x0

    goto :goto_e7

    .line 6307
    .restart local v4    # "cannotScrollLeft":Z
    :cond_12b
    const/16 v30, 0x0

    goto/16 :goto_8

    .line 6310
    :cond_12f
    if-gez p2, :cond_22f

    const/16 v25, 0x1

    .line 6312
    .local v25, "rightSide":Z
    :goto_133
    invoke-virtual/range {p0 .. p0}, isInTouchMode()Z

    move-result v18

    .line 6313
    .local v18, "inTouchMode":Z
    if-eqz v18, :cond_13c

    .line 6314
    invoke-virtual/range {p0 .. p0}, hideSelector()V

    .line 6317
    :cond_13c
    invoke-virtual/range {p0 .. p0}, getHeaderViewsCount()I

    move-result v16

    .line 6318
    .local v16, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, getFooterViewsCount()I

    move-result v31

    sub-int v15, v30, v31

    .line 6320
    .local v15, "footerViewsStart":I
    const/16 v28, 0x0

    .line 6321
    .local v28, "start":I
    const/4 v9, 0x0

    .line 6323
    .local v9, "count":I
    const/16 v22, 0x1

    .line 6325
    .local v22, "performHaptic":Z
    if-eqz v25, :cond_275

    .line 6326
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v20, v0

    .line 6327
    .local v20, "left":I
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_170

    .line 6328
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    add-int v20, v20, v30

    .line 6330
    :cond_170
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_172
    move/from16 v0, v17

    if-ge v0, v7, :cond_188

    .line 6331
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6332
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v20

    if-lt v0, v1, :cond_233

    .line 6384
    .end local v6    # "child":Landroid/view/View;
    .end local v20    # "left":I
    :cond_188
    move-object/from16 v0, p0

    iget v0, v0, mMotionViewOriginalLeft:I

    move/from16 v30, v0

    add-int v30, v30, p1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, mMotionViewNewLeft:I

    .line 6386
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, mBlockLayoutRequests:Z

    .line 6388
    if-lez v9, :cond_1b0

    .line 6389
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v9}, detachViewsFromParent(II)V

    .line 6390
    move-object/from16 v0, p0

    iget-object v0, v0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/AbsHorizontalListView$RecycleBin;->removeSkippedScrap()V

    .line 6395
    :cond_1b0
    invoke-virtual/range {p0 .. p0}, awakenScrollBars()Z

    move-result v30

    if-nez v30, :cond_1b9

    .line 6396
    invoke-virtual/range {p0 .. p0}, invalidate()V

    .line 6399
    :cond_1b9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, twOffsetChildrenLeftAndRight(I)V

    .line 6401
    if-eqz v25, :cond_1d0

    .line 6402
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v30, v0

    add-int v30, v30, v9

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, mFirstPosition:I

    .line 6405
    :cond_1d0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 6406
    .local v3, "absIncrementalDeltaX":I
    move/from16 v0, v26

    if-lt v0, v3, :cond_1dc

    move/from16 v0, v27

    if-ge v0, v3, :cond_1e3

    .line 6407
    :cond_1dc
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, fillGap(Z)V

    .line 6410
    :cond_1e3
    if-nez v18, :cond_2ec

    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2ec

    .line 6411
    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v31, v0

    sub-int v8, v30, v31

    .line 6412
    .local v8, "childIndex":I
    if-ltz v8, :cond_220

    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_220

    .line 6413
    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, positionSelector(ILandroid/view/View;)V

    .line 6424
    .end local v8    # "childIndex":I
    :cond_220
    :goto_220
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, mBlockLayoutRequests:Z

    .line 6426
    invoke-virtual/range {p0 .. p0}, invokeOnItemScrollListener()V

    .line 6428
    const/16 v30, 0x0

    goto/16 :goto_8

    .line 6310
    .end local v3    # "absIncrementalDeltaX":I
    .end local v9    # "count":I
    .end local v15    # "footerViewsStart":I
    .end local v16    # "headerViewsCount":I
    .end local v17    # "i":I
    .end local v18    # "inTouchMode":Z
    .end local v22    # "performHaptic":Z
    .end local v25    # "rightSide":Z
    .end local v28    # "start":I
    :cond_22f
    const/16 v25, 0x0

    goto/16 :goto_133

    .line 6335
    .restart local v6    # "child":Landroid/view/View;
    .restart local v9    # "count":I
    .restart local v15    # "footerViewsStart":I
    .restart local v16    # "headerViewsCount":I
    .restart local v17    # "i":I
    .restart local v18    # "inTouchMode":Z
    .restart local v20    # "left":I
    .restart local v22    # "performHaptic":Z
    .restart local v25    # "rightSide":Z
    .restart local v28    # "start":I
    :cond_233
    add-int/lit8 v9, v9, 0x1

    .line 6336
    add-int v23, v14, v17

    .line 6337
    .local v23, "position":I
    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_271

    move/from16 v0, v23

    if-ge v0, v15, :cond_271

    .line 6340
    invoke-virtual {v6}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_24a

    .line 6341
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6344
    :cond_24a
    move-object/from16 v0, p0

    iget-boolean v0, v0, USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v30, v0

    if-eqz v30, :cond_264

    .line 6345
    move-object/from16 v0, p0

    iget v0, v0, mLastPosition:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v23

    if-eq v0, v1, :cond_264

    .line 6346
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mLastPosition:I

    .line 6349
    :cond_264
    move-object/from16 v0, p0

    iget-object v0, v0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6330
    :cond_271
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_172

    .line 6354
    .end local v6    # "child":Landroid/view/View;
    .end local v17    # "i":I
    .end local v20    # "left":I
    .end local v23    # "position":I
    :cond_275
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v30

    sub-int v24, v30, p2

    .line 6355
    .local v24, "right":I
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_293

    .line 6356
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    sub-int v24, v24, v30

    .line 6358
    :cond_293
    add-int/lit8 v17, v7, -0x1

    .restart local v17    # "i":I
    :goto_295
    if-ltz v17, :cond_188

    .line 6359
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6360
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v24

    if-le v0, v1, :cond_188

    .line 6363
    move/from16 v28, v17

    .line 6364
    add-int/lit8 v9, v9, 0x1

    .line 6365
    add-int v23, v14, v17

    .line 6366
    .restart local v23    # "position":I
    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_2e9

    move/from16 v0, v23

    if-ge v0, v15, :cond_2e9

    .line 6369
    invoke-virtual {v6}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_2c2

    .line 6370
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6373
    :cond_2c2
    move-object/from16 v0, p0

    iget-boolean v0, v0, USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2dc

    .line 6374
    move-object/from16 v0, p0

    iget v0, v0, mLastPosition:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v23

    if-eq v0, v1, :cond_2dc

    .line 6375
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mLastPosition:I

    .line 6378
    :cond_2dc
    move-object/from16 v0, p0

    iget-object v0, v0, mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6358
    :cond_2e9
    add-int/lit8 v17, v17, -0x1

    goto :goto_295

    .line 6415
    .end local v6    # "child":Landroid/view/View;
    .end local v23    # "position":I
    .end local v24    # "right":I
    .restart local v3    # "absIncrementalDeltaX":I
    :cond_2ec
    move-object/from16 v0, p0

    iget v0, v0, mSelectorPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_325

    .line 6416
    move-object/from16 v0, p0

    iget v0, v0, mSelectorPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v31, v0

    sub-int v8, v30, v31

    .line 6417
    .restart local v8    # "childIndex":I
    if-ltz v8, :cond_220

    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_220

    .line 6418
    const/16 v30, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, positionSelector(ILandroid/view/View;)V

    goto/16 :goto_220

    .line 6421
    .end local v8    # "childIndex":I
    :cond_325
    move-object/from16 v0, p0

    iget-object v0, v0, mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_220
.end method

.method protected twGetItemCount()I
    .registers 3

    .prologue
    .line 6066
    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 6067
    .local v0, "adapter":Landroid/widget/Adapter;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    goto :goto_7
.end method

.method public twIsSetCustomMultiChoiceMode()Z
    .registers 2

    .prologue
    .line 1526
    iget-boolean v0, p0, mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method public twNotifyKeyPressState(Landroid/view/View;IJ)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1408
    const/4 v0, 0x0

    .line 1413
    .local v0, "handledNotifyKeyPress":Z
    return v0
.end method

.method public twSetCustomMultiChoiceMode(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 1517
    iput-boolean p1, p0, mTwCustomMultiChoiceMode:Z

    .line 1518
    return-void
.end method

.method public twSetSelection(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 6077
    invoke-virtual {p0, p1}, setSelection(I)V

    .line 6078
    return-void
.end method

.method public twShowMultiChoiceMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1499
    if-eqz p1, :cond_14

    .line 1500
    iget v0, p0, mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    iget-object v0, p0, mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_13

    .line 1501
    iget-object v0, p0, mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    .line 1509
    :cond_13
    :goto_13
    return-void

    .line 1504
    :cond_14
    iget-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_13

    .line 1505
    iget-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1506
    const/4 v0, 0x0

    iput-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_13
.end method

.method public twSmoothScrollBy(I)V
    .registers 8
    .param p1, "distance"    # I

    .prologue
    const/16 v5, -0x1f4

    const/16 v4, 0x1f4

    .line 6082
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v1, :cond_f

    .line 6083
    new-instance v1, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 6086
    :cond_f
    iget-object v1, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_22

    .line 6087
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6088
    new-instance v1, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v1, p0, mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    .line 6091
    :cond_22
    iget-object v2, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    monitor-enter v2

    .line 6092
    :try_start_25
    iget-object v1, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 6093
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v4, :cond_53

    .line 6094
    if-lez p1, :cond_43

    .line 6095
    :goto_33
    if-le p1, v4, :cond_53

    .line 6096
    iget-object v1, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    const/16 v3, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6095
    add-int/lit16 p1, p1, -0x1f4

    goto :goto_33

    .line 6099
    :cond_43
    :goto_43
    if-ge p1, v5, :cond_53

    .line 6100
    iget-object v1, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    const/16 v3, -0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6099
    add-int/lit16 p1, p1, 0x1f4

    goto :goto_43

    .line 6104
    :cond_53
    iget-object v1, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6105
    if-eqz v0, :cond_63

    iget-object v1, p0, mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    invoke-virtual {p0, v1}, post(Ljava/lang/Runnable;)Z

    .line 6106
    :cond_63
    monitor-exit v2

    .line 6107
    return-void

    .line 6106
    .end local v0    # "isEmpty":Z
    :catchall_65
    move-exception v1

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_25 .. :try_end_67} :catchall_65

    throw v1
.end method

.method public unregisterDoubleTapMotion()V
    .registers 2

    .prologue
    .line 945
    invoke-direct {p0}, unregisterMotionListener()V

    .line 946
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setMotionEvent(Z)V

    .line 947
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 975
    return-void
.end method

.method updateScrollIndicators()V
    .registers 11

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2481
    iget-object v6, p0, mScrollLeft:Landroid/view/View;

    if-eqz v6, :cond_2b

    .line 2484
    iget v6, p0, mFirstPosition:I

    if-lez v6, :cond_5b

    move v0, v4

    .line 2487
    .local v0, "canScrollLeft":Z
    :goto_c
    if-nez v0, :cond_23

    .line 2488
    invoke-virtual {p0}, getChildCount()I

    move-result v6

    if-lez v6, :cond_23

    .line 2489
    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2490
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v8, p0, mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v6, v8, :cond_5d

    move v0, v4

    .line 2494
    .end local v2    # "child":Landroid/view/View;
    :cond_23
    :goto_23
    iget-object v8, p0, mScrollLeft:Landroid/view/View;

    if-eqz v0, :cond_5f

    move v6, v5

    :goto_28
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2497
    .end local v0    # "canScrollLeft":Z
    :cond_2b
    iget-object v6, p0, mScrollRight:Landroid/view/View;

    if-eqz v6, :cond_5a

    .line 2499
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    .line 2502
    .local v3, "count":I
    iget v6, p0, mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, mItemCount:I

    if-ge v6, v8, :cond_61

    move v1, v4

    .line 2505
    .local v1, "canScrollRight":Z
    :goto_3b
    if-nez v1, :cond_53

    if-lez v3, :cond_53

    .line 2506
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2507
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    iget v8, p0, mRight:I

    iget-object v9, p0, mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_63

    move v1, v4

    .line 2510
    .end local v2    # "child":Landroid/view/View;
    :cond_53
    :goto_53
    iget-object v4, p0, mScrollRight:Landroid/view/View;

    if-eqz v1, :cond_65

    :goto_57
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2512
    .end local v1    # "canScrollRight":Z
    .end local v3    # "count":I
    :cond_5a
    return-void

    :cond_5b
    move v0, v5

    .line 2484
    goto :goto_c

    .restart local v0    # "canScrollLeft":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_5d
    move v0, v5

    .line 2490
    goto :goto_23

    .end local v2    # "child":Landroid/view/View;
    :cond_5f
    move v6, v7

    .line 2494
    goto :goto_28

    .end local v0    # "canScrollLeft":Z
    .restart local v3    # "count":I
    :cond_61
    move v1, v5

    .line 2502
    goto :goto_3b

    .restart local v1    # "canScrollRight":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_63
    move v1, v5

    .line 2507
    goto :goto_53

    .end local v2    # "child":Landroid/view/View;
    :cond_65
    move v5, v7

    .line 2510
    goto :goto_57
.end method

.method updateSelectorState()V
    .registers 5

    .prologue
    .line 3026
    iget-object v2, p0, mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_45

    .line 3027
    invoke-virtual {p0}, shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 3028
    invoke-virtual {p0}, isHovered()Z

    move-result v2

    if-eqz v2, :cond_50

    iget-boolean v2, p0, mIsHoveredByMouse:Z

    if-nez v2, :cond_50

    iget v2, p0, mSelectorPosition:I

    iget v3, p0, mFirstPosition:I

    if-lt v2, v3, :cond_50

    .line 3029
    iget v2, p0, mSelectorPosition:I

    iget v3, p0, mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3030
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 3031
    .local v1, "ellipsized":Z
    iget-boolean v2, p0, mIsPnePressed:Z

    if-nez v2, :cond_46

    iget-boolean v2, p0, mAlwaysDisableHoverHighlight:Z

    if-nez v2, :cond_39

    if-eqz v1, :cond_39

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_46

    .line 3032
    :cond_39
    iget-object v2, p0, mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3033
    iget-object v2, p0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3044
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_45
    :goto_45
    return-void

    .line 3035
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "ellipsized":Z
    :cond_46
    iget-object v2, p0, mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_45

    .line 3038
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_50
    iget-object v2, p0, mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_45

    .line 3041
    :cond_5a
    iget-object v2, p0, mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_45
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3088
    iget-object v0, p0, mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
