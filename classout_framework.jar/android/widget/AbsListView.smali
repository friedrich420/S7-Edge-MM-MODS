.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$OnFluidScrollEffectListener;,
        Landroid/widget/AbsListView$HoverScrollHandler;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$TwSmoothScrollByMove;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$CheckForDoublePenClick;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$OnScrollListener;
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

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_SPEED_FASTER:F = 3000.0f

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final MSG_QC_HIDE:I = 0x0

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AbsListView"

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

.field private static mTwScrollAmount:I

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected AIR_VIEW_WINSET:Z

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private QC_ICON_HIDE_DELAY:I

.field private final SWITCH_CONTROL_FLING:I

.field private final SWITCH_CONTROL_SCROLL_DURATION_DEFAULT:I

.field private final SWITCH_CONTROL_SCROLL_DURATION_GAP:I

.field private final SWITCH_CONTROL_SCROLL_MAX_DURATION:I

.field private final SWITCH_CONTROL_SCROLL_MIN_DURATION:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mAlwaysDisableHoverHighlight:Z

.field private mAutoscrollDuration:I

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

.field mChnagedAdapter:Z

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentKeyCode:I

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDeltamoveX:I

.field private mDeltamoveY:I

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mExtraPaddingInBottomHoverArea:I

.field private mExtraPaddingInTopHoverArea:I

.field private mFastScroll:Landroid/widget/FastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mHapticOverScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasWindowFocusForMotion:Z

.field public mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mHoveredOnEllipsizedText:Z

.field mInitAbsListView:Z

.field private mIsChildViewEnabled:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDetaching:Z

.field private mIsDragBlockEnabled:Z

.field private mIsDragScrolled:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsFirstPenClick:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsMovedbeforeUP:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field private mIsQCBtnFadeInSet:Z

.field private mIsQCBtnFadeOutSet:Z

.field private mIsQCShown:Z

.field final mIsScrap:[Z

.field private mIsSendHoverScrollState:Z

.field private mIsShiftkeyPressed:Z

.field private mIsTextSelectionStarted:Z

.field private mIsTwOnClickEnabled:Z

.field private mIsfirstMoveEvent:Z

.field mJumpAtFirst:Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field mMotionPosition:I

.field private mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field public mMultiSelectionStart:Z

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field private mNewTextViewHoverState:Z

.field private mOldAdapterItemCount:I

.field private mOldHoverScrollDirection:I

.field private mOldKeyCode:I

.field private mOldTextViewHoverState:Z

.field private mOnFluidScrollEffectListener:Landroid/widget/AbsListView$OnFluidScrollEffectListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPenDragScrollTimeInterval:J

.field private mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private mPreviousTextViewScroll:Z

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeInRunnable:Ljava/lang/Runnable;

.field private mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCScrollDirection:I

.field private mQCScrollFrom:I

.field private mQCScrollNext:I

.field private mQCScrollRunnable:Ljava/lang/Runnable;

.field private mQCScrollTo:I

.field private mQCScrollingCount:I

.field private mQCstate:I

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field mScrollDown:Landroid/view/View;

.field private mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field private mSecondPressedPoint:I

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSelectorState:[I

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private final mTmpPoint:[F

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTouchdownX:I

.field private mTouchdownY:I

.field private mTranscriptMode:I

.field private mTwCloseChildByBottom:Landroid/view/View;

.field private mTwCloseChildByTop:Landroid/view/View;

.field private mTwCloseChildPositionByBottom:I

.field private mTwCloseChildPositionByTop:I

.field public mTwCurrentFocusPosition:I

.field private mTwCustomMultiChoiceMode:Z

.field private mTwDistanceFromCloseChildBottom:I

.field private mTwDistanceFromCloseChildTop:I

.field private mTwDistanceFromTrackedChildTop:I

.field private mTwDragBlockBottom:I

.field private mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mTwDragBlockLeft:I

.field private mTwDragBlockRect:Landroid/graphics/Rect;

.field private mTwDragBlockRight:I

.field private mTwDragBlockTop:I

.field private mTwDragEndX:I

.field private mTwDragEndY:I

.field private mTwDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTwDragSelectedItemSize:I

.field private mTwDragSelectedViewPosition:I

.field private mTwDragStartX:I

.field private mTwDragStartY:I

.field private mTwFluidScroll:Landroid/widget/FluidScroller;

.field mTwFluidScrollEnabled:Z

.field private mTwPressItemListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

.field private mTwTrackedChild:Landroid/view/View;

.field private mTwTrackedChildPosition:I

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

.field mWidthMeasureSpec:I

.field mWindowFocusChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 880
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 6925
    const/16 v0, 0x1f4

    sput v0, mTwScrollAmount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1131
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 149
    iput-boolean v4, p0, mMotionEnable:Z

    .line 150
    iput-boolean v4, p0, mHasWindowFocusForMotion:Z

    .line 151
    iput-object v7, p0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 153
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, USE_SET_INTEGRATOR_HAPTIC:Z

    .line 289
    iput v4, p0, mChoiceMode:I

    .line 322
    iput v4, p0, mLayoutMode:I

    .line 347
    iput-boolean v4, p0, mDeferNotifyDataSetChanged:Z

    .line 352
    iput-boolean v4, p0, mDrawSelectorOnTop:Z

    .line 362
    iput v5, p0, mSelectorPosition:I

    .line 367
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mSelectorRect:Landroid/graphics/Rect;

    .line 373
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 378
    iput v4, p0, mSelectionLeftPadding:I

    .line 383
    iput v4, p0, mSelectionTopPadding:I

    .line 388
    iput v4, p0, mSelectionRightPadding:I

    .line 393
    iput v4, p0, mSelectionBottomPadding:I

    .line 398
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mListPadding:Landroid/graphics/Rect;

    .line 403
    iput v4, p0, mWidthMeasureSpec:I

    .line 451
    iput v5, p0, mTouchMode:I

    .line 482
    iput v4, p0, mSelectedTop:I

    .line 531
    iput-boolean v6, p0, mSmoothScrollbarEnabled:Z

    .line 551
    iput v5, p0, mResurrectToPosition:I

    .line 553
    iput-object v7, p0, mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 579
    iput v5, p0, mLastTouchMode:I

    .line 582
    iput-boolean v4, p0, mScrollProfilingStarted:Z

    .line 585
    iput-boolean v4, p0, mFlingProfilingStarted:Z

    .line 592
    iput-object v7, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 593
    iput-object v7, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 610
    iput-boolean v4, p0, mIsFirstPenClick:Z

    .line 611
    iput-boolean v4, p0, mIsMovedbeforeUP:Z

    .line 653
    iput v4, p0, mLastScrollState:I

    .line 682
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, mVelocityScale:F

    .line 684
    new-array v1, v6, [Z

    iput-object v1, p0, mIsScrap:[Z

    .line 686
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, mScrollOffset:[I

    .line 687
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, mScrollConsumed:[I

    .line 689
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, mTmpPoint:[F

    .line 695
    iput v4, p0, mNestedYOffset:I

    .line 705
    iput v5, p0, mActivePointerId:I

    .line 710
    iput v4, p0, mPointerCount:I

    .line 716
    iput-boolean v4, p0, mHapticOverScroll:Z

    .line 766
    iput v4, p0, mDirection:I

    .line 800
    iput v4, p0, mHoverTopAreaHeight:I

    .line 802
    iput v4, p0, mHoverBottomAreaHeight:I

    .line 812
    iput-wide v8, p0, mHoverRecognitionDurationTime:J

    .line 814
    iput-wide v8, p0, mHoverRecognitionCurrentTime:J

    .line 816
    iput-wide v8, p0, mHoverRecognitionStartTime:J

    .line 818
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, mHoverScrollTimeInterval:J

    .line 820
    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, mPenDragScrollTimeInterval:J

    .line 822
    iput-wide v8, p0, mHoverScrollStartTime:J

    .line 824
    iput v5, p0, mHoverScrollDirection:I

    .line 829
    iput-boolean v4, p0, mIsHoverOverscrolled:Z

    .line 834
    iput-boolean v6, p0, mHoverScrollEnable:Z

    .line 840
    iput-boolean v4, p0, mHoverAreaEnter:Z

    .line 842
    iput-boolean v4, p0, mIsSendHoverScrollState:Z

    .line 847
    const/high16 v1, 0x44480000    # 800.0f

    iput v1, p0, HOVERSCROLL_SPEED:F

    .line 857
    iput v4, p0, HOVERSCROLL_DELAY:I

    .line 859
    const/16 v1, 0x1e

    iput v1, p0, QC_ICON_HIDE_DELAY:I

    .line 861
    iput-boolean v4, p0, mNeedsHoverScroll:Z

    .line 863
    iput v4, p0, mHoverScrollStateForListener:I

    .line 865
    iput-boolean v4, p0, mIsEnabledPaddingInHoverScroll:Z

    .line 867
    iput v4, p0, mExtraPaddingInTopHoverArea:I

    .line 868
    iput v4, p0, mExtraPaddingInBottomHoverArea:I

    .line 870
    iput-boolean v4, p0, mChnagedAdapter:Z

    .line 871
    iput-boolean v4, p0, mWindowFocusChanged:Z

    .line 872
    iput-boolean v4, p0, mInitAbsListView:Z

    .line 873
    iput-boolean v4, p0, mJumpAtFirst:Z

    .line 900
    iput-boolean v4, p0, mTwCustomMultiChoiceMode:Z

    .line 905
    iput-boolean v4, p0, mIsCtrlkeyPressed:Z

    .line 906
    iput-boolean v4, p0, mIsShiftkeyPressed:Z

    .line 907
    iput-boolean v4, p0, mIsPenHovered:Z

    .line 908
    iput-boolean v4, p0, mIsPenPressed:Z

    .line 909
    iput-boolean v6, p0, mIsfirstMoveEvent:Z

    .line 911
    iput-boolean v4, p0, mIsMultiFocusEnabled:Z

    .line 915
    iput v5, p0, mFirstPressedPoint:I

    .line 916
    iput v5, p0, mSecondPressedPoint:I

    .line 917
    iput v4, p0, mOldAdapterItemCount:I

    .line 918
    iput v4, p0, mOldKeyCode:I

    .line 919
    iput v4, p0, mCurrentKeyCode:I

    .line 920
    iput v5, p0, mTwCurrentFocusPosition:I

    .line 923
    iput-boolean v4, p0, mMultiSelectionStart:Z

    .line 924
    iput-boolean v4, p0, mIsTextSelectionStarted:Z

    .line 925
    iput-boolean v4, p0, mIsNeedPenSelection:Z

    .line 927
    iput v4, p0, mTwDragSelectedItemSize:I

    .line 928
    iput v5, p0, mTwDragSelectedViewPosition:I

    .line 929
    iput-boolean v4, p0, mIsPenSelectPointerSetted:Z

    .line 930
    iput-boolean v4, p0, mIsNeedPenSelectIconSet:Z

    .line 931
    iput-boolean v4, p0, mOldTextViewHoverState:Z

    .line 932
    iput-boolean v4, p0, mNewTextViewHoverState:Z

    .line 933
    iput-boolean v4, p0, mPreviousTextViewScroll:Z

    .line 936
    iput-boolean v4, p0, mIsDragBlockEnabled:Z

    .line 937
    iput v4, p0, mTwDragStartX:I

    .line 938
    iput v4, p0, mTwDragStartY:I

    .line 939
    iput v4, p0, mTwDragEndX:I

    .line 940
    iput v4, p0, mTwDragEndY:I

    .line 942
    iput v4, p0, mTwDragBlockLeft:I

    .line 943
    iput v4, p0, mTwDragBlockTop:I

    .line 944
    iput v4, p0, mTwDragBlockRight:I

    .line 945
    iput v4, p0, mTwDragBlockBottom:I

    .line 947
    iput-object v7, p0, mTwTrackedChild:Landroid/view/View;

    .line 948
    iput v5, p0, mTwTrackedChildPosition:I

    .line 949
    iput v4, p0, mTwDistanceFromTrackedChildTop:I

    .line 951
    iput-boolean v4, p0, mIsCloseChildSetted:Z

    .line 952
    iput v5, p0, mOldHoverScrollDirection:I

    .line 953
    iput-object v7, p0, mTwCloseChildByTop:Landroid/view/View;

    .line 954
    iput v5, p0, mTwCloseChildPositionByTop:I

    .line 955
    iput v4, p0, mTwDistanceFromCloseChildTop:I

    .line 956
    iput-object v7, p0, mTwCloseChildByBottom:Landroid/view/View;

    .line 957
    iput v5, p0, mTwCloseChildPositionByBottom:I

    .line 958
    iput v4, p0, mTwDistanceFromCloseChildBottom:I

    .line 961
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mTwDragBlockRect:Landroid/graphics/Rect;

    .line 963
    iput-boolean v6, p0, mIsTwOnClickEnabled:Z

    .line 967
    const/16 v1, 0xfa0

    iput v1, p0, SWITCH_CONTROL_FLING:I

    .line 968
    const/16 v1, 0x140

    iput v1, p0, SWITCH_CONTROL_SCROLL_DURATION_DEFAULT:I

    .line 969
    const/16 v1, 0x50

    iput v1, p0, SWITCH_CONTROL_SCROLL_MIN_DURATION:I

    .line 970
    const/16 v1, 0x230

    iput v1, p0, SWITCH_CONTROL_SCROLL_MAX_DURATION:I

    .line 971
    const/16 v1, 0x50

    iput v1, p0, SWITCH_CONTROL_SCROLL_DURATION_GAP:I

    .line 1041
    iput-boolean v4, p0, mDVFSLockAcquired:Z

    .line 1120
    iput-boolean v4, p0, AIR_VIEW_WINSET:Z

    .line 3787
    iput-boolean v4, p0, mForcedClick:Z

    .line 4994
    iput v4, p0, mDragScrollWorkingZonePx:I

    .line 4995
    iput-boolean v4, p0, mIsDragScrolled:Z

    .line 5994
    iput v5, p0, mHoverPosition:I

    .line 5996
    iput-boolean v4, p0, mHoveredOnEllipsizedText:Z

    .line 5997
    iput-boolean v4, p0, mIsHoveredByMouse:Z

    .line 5998
    iput-boolean v4, p0, mAlwaysDisableHoverHighlight:Z

    .line 6923
    iput-object v7, p0, mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    .line 6924
    iput-object v7, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 9341
    iput v4, p0, mHoverScrollSpeed:I

    .line 9715
    iput-boolean v6, p0, mIsQCBtnFadeInSet:Z

    .line 9716
    iput-boolean v6, p0, mIsQCBtnFadeOutSet:Z

    .line 9720
    new-instance v1, Landroid/widget/AbsListView$5;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    .line 9726
    new-instance v1, Landroid/widget/AbsListView$6;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$6;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    .line 9732
    iput v5, p0, mQCLocation:I

    .line 9733
    iput v4, p0, mQCstate:I

    .line 9734
    iput-boolean v4, p0, mIsQCShown:Z

    .line 9739
    iput v6, p0, mQCScrollingCount:I

    .line 9965
    new-instance v1, Landroid/widget/AbsListView$10;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$10;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1132
    invoke-direct {p0}, initAbsListView()V

    .line 1134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, mOwnerThread:Ljava/lang/Thread;

    .line 1136
    invoke-virtual {p0, v6}, setVerticalScrollBarEnabled(Z)V

    .line 1137
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1138
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 1139
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1144
    iget-object v1, p0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-nez v1, :cond_193

    .line 1145
    const-string v1, "AbsListView"

    const-string v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/motion/MotionRecognitionManager;

    iput-object v1, p0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 1149
    :cond_193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1152
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1160
    invoke-direct/range {p0 .. p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 149
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mMotionEnable:Z

    .line 150
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mHasWindowFocusForMotion:Z

    .line 151
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 153
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, USE_SET_INTEGRATOR_HAPTIC:Z

    .line 289
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mChoiceMode:I

    .line 322
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mLayoutMode:I

    .line 347
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mDeferNotifyDataSetChanged:Z

    .line 352
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mDrawSelectorOnTop:Z

    .line 362
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mSelectorPosition:I

    .line 367
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, mSelectorRect:Landroid/graphics/Rect;

    .line 373
    new-instance v14, Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 378
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mSelectionLeftPadding:I

    .line 383
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mSelectionTopPadding:I

    .line 388
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mSelectionRightPadding:I

    .line 393
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mSelectionBottomPadding:I

    .line 398
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, mListPadding:Landroid/graphics/Rect;

    .line 403
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mWidthMeasureSpec:I

    .line 451
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mTouchMode:I

    .line 482
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mSelectedTop:I

    .line 531
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mSmoothScrollbarEnabled:Z

    .line 551
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mResurrectToPosition:I

    .line 553
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 579
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mLastTouchMode:I

    .line 582
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mScrollProfilingStarted:Z

    .line 585
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mFlingProfilingStarted:Z

    .line 592
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 593
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 610
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsFirstPenClick:Z

    .line 611
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsMovedbeforeUP:Z

    .line 653
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mLastScrollState:I

    .line 682
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v14, v0, mVelocityScale:F

    .line 684
    const/4 v14, 0x1

    new-array v14, v14, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, mIsScrap:[Z

    .line 686
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, mScrollOffset:[I

    .line 687
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, mScrollConsumed:[I

    .line 689
    const/4 v14, 0x2

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, mTmpPoint:[F

    .line 695
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mNestedYOffset:I

    .line 705
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mActivePointerId:I

    .line 710
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mPointerCount:I

    .line 716
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mHapticOverScroll:Z

    .line 766
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mDirection:I

    .line 800
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mHoverTopAreaHeight:I

    .line 802
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mHoverBottomAreaHeight:I

    .line 812
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, mHoverRecognitionDurationTime:J

    .line 814
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, mHoverRecognitionCurrentTime:J

    .line 816
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, mHoverRecognitionStartTime:J

    .line 818
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, mHoverScrollTimeInterval:J

    .line 820
    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    iput-wide v14, v0, mPenDragScrollTimeInterval:J

    .line 822
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, mHoverScrollStartTime:J

    .line 824
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mHoverScrollDirection:I

    .line 829
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsHoverOverscrolled:Z

    .line 834
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mHoverScrollEnable:Z

    .line 840
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mHoverAreaEnter:Z

    .line 842
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsSendHoverScrollState:Z

    .line 847
    const/high16 v14, 0x44480000    # 800.0f

    move-object/from16 v0, p0

    iput v14, v0, HOVERSCROLL_SPEED:F

    .line 857
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, HOVERSCROLL_DELAY:I

    .line 859
    const/16 v14, 0x1e

    move-object/from16 v0, p0

    iput v14, v0, QC_ICON_HIDE_DELAY:I

    .line 861
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mNeedsHoverScroll:Z

    .line 863
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mHoverScrollStateForListener:I

    .line 865
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsEnabledPaddingInHoverScroll:Z

    .line 867
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mExtraPaddingInTopHoverArea:I

    .line 868
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mExtraPaddingInBottomHoverArea:I

    .line 870
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mChnagedAdapter:Z

    .line 871
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mWindowFocusChanged:Z

    .line 872
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mInitAbsListView:Z

    .line 873
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mJumpAtFirst:Z

    .line 900
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mTwCustomMultiChoiceMode:Z

    .line 905
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsCtrlkeyPressed:Z

    .line 906
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsShiftkeyPressed:Z

    .line 907
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsPenHovered:Z

    .line 908
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsPenPressed:Z

    .line 909
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsfirstMoveEvent:Z

    .line 911
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsMultiFocusEnabled:Z

    .line 915
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mFirstPressedPoint:I

    .line 916
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mSecondPressedPoint:I

    .line 917
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mOldAdapterItemCount:I

    .line 918
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mOldKeyCode:I

    .line 919
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mCurrentKeyCode:I

    .line 920
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mTwCurrentFocusPosition:I

    .line 923
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mMultiSelectionStart:Z

    .line 924
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsTextSelectionStarted:Z

    .line 925
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsNeedPenSelection:Z

    .line 927
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mTwDragSelectedItemSize:I

    .line 928
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mTwDragSelectedViewPosition:I

    .line 929
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsPenSelectPointerSetted:Z

    .line 930
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsNeedPenSelectIconSet:Z

    .line 931
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mOldTextViewHoverState:Z

    .line 932
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mNewTextViewHoverState:Z

    .line 933
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mPreviousTextViewScroll:Z

    .line 936
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsDragBlockEnabled:Z

    .line 937
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mTwDragStartX:I

    .line 938
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mTwDragStartY:I

    .line 939
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mTwDragEndX:I

    .line 940
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mTwDragEndY:I

    .line 942
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mTwDragBlockLeft:I

    .line 943
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mTwDragBlockTop:I

    .line 944
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mTwDragBlockRight:I

    .line 945
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mTwDragBlockBottom:I

    .line 947
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mTwTrackedChild:Landroid/view/View;

    .line 948
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mTwTrackedChildPosition:I

    .line 949
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mTwDistanceFromTrackedChildTop:I

    .line 951
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsCloseChildSetted:Z

    .line 952
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mOldHoverScrollDirection:I

    .line 953
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mTwCloseChildByTop:Landroid/view/View;

    .line 954
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mTwCloseChildPositionByTop:I

    .line 955
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mTwDistanceFromCloseChildTop:I

    .line 956
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mTwCloseChildByBottom:Landroid/view/View;

    .line 957
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mTwCloseChildPositionByBottom:I

    .line 958
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mTwDistanceFromCloseChildBottom:I

    .line 961
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, mTwDragBlockRect:Landroid/graphics/Rect;

    .line 963
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsTwOnClickEnabled:Z

    .line 967
    const/16 v14, 0xfa0

    move-object/from16 v0, p0

    iput v14, v0, SWITCH_CONTROL_FLING:I

    .line 968
    const/16 v14, 0x140

    move-object/from16 v0, p0

    iput v14, v0, SWITCH_CONTROL_SCROLL_DURATION_DEFAULT:I

    .line 969
    const/16 v14, 0x50

    move-object/from16 v0, p0

    iput v14, v0, SWITCH_CONTROL_SCROLL_MIN_DURATION:I

    .line 970
    const/16 v14, 0x230

    move-object/from16 v0, p0

    iput v14, v0, SWITCH_CONTROL_SCROLL_MAX_DURATION:I

    .line 971
    const/16 v14, 0x50

    move-object/from16 v0, p0

    iput v14, v0, SWITCH_CONTROL_SCROLL_DURATION_GAP:I

    .line 1041
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mDVFSLockAcquired:Z

    .line 1120
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, AIR_VIEW_WINSET:Z

    .line 3787
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mForcedClick:Z

    .line 4994
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mDragScrollWorkingZonePx:I

    .line 4995
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsDragScrolled:Z

    .line 5994
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mHoverPosition:I

    .line 5996
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mHoveredOnEllipsizedText:Z

    .line 5997
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsHoveredByMouse:Z

    .line 5998
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mAlwaysDisableHoverHighlight:Z

    .line 6923
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    .line 6924
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 9341
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mHoverScrollSpeed:I

    .line 9715
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsQCBtnFadeInSet:Z

    .line 9716
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsQCBtnFadeOutSet:Z

    .line 9720
    new-instance v14, Landroid/widget/AbsListView$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    .line 9726
    new-instance v14, Landroid/widget/AbsListView$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$6;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    .line 9732
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mQCLocation:I

    .line 9733
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mQCstate:I

    .line 9734
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsQCShown:Z

    .line 9739
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, mQCScrollingCount:I

    .line 9965
    new-instance v14, Landroid/widget/AbsListView$10;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$10;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1161
    invoke-direct/range {p0 .. p0}, initAbsListView()V

    .line 1163
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, mOwnerThread:Ljava/lang/Thread;

    .line 1165
    sget-object v14, Lcom/android/internal/R$styleable;->AbsListView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1168
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1169
    .local v9, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_313

    .line 1170
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1173
    :cond_313
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, mDrawSelectorOnTop:Z

    .line 1176
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 1177
    .local v11, "stackFromBottom":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, setStackFromBottom(Z)V

    .line 1179
    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1180
    .local v8, "scrollingCacheEnabled":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, setScrollingCacheEnabled(Z)V

    .line 1182
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 1183
    .local v13, "useTextFilter":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, setTextFilterEnabled(Z)V

    .line 1185
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 1187
    .local v12, "transcriptMode":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, setTranscriptMode(I)V

    .line 1189
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 1190
    .local v5, "color":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, setCacheColorHint(I)V

    .line 1192
    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1193
    .local v6, "enableFastScroll":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, setFastScrollEnabled(Z)V

    .line 1195
    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1196
    .local v7, "fastScrollStyle":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setFastScrollStyle(I)V

    .line 1198
    const/16 v14, 0x9

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 1199
    .local v10, "smoothScrollbar":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, setSmoothScrollbarEnabled(Z)V

    .line 1201
    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, setChoiceMode(I)V

    .line 1202
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, setFastScrollAlwaysVisible(Z)V

    .line 1204
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1208
    move-object/from16 v0, p0

    iget-object v14, v0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-nez v14, :cond_3ae

    .line 1209
    const-string v14, "AbsListView"

    const-string v15, "Get MotionRecognitionManager"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const-string/jumbo v14, "motion_recognition"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/motion/MotionRecognitionManager;

    move-object/from16 v0, p0

    iput-object v14, v0, mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 1213
    :cond_3ae
    return-void
.end method

.method private acceptFilter()Z
    .registers 2

    .prologue
    .line 2484
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

.method static synthetic access$000(Landroid/widget/AbsListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    invoke-direct {p0, p1}, setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AbsListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    invoke-direct {p0, p1}, setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/AbsListView;II)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, addToPressItemListArray(II)V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mFirstPressedPoint:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/AbsListView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, mFirstPressedPoint:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/AbsListView;)[F
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mTmpPoint:[F

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/widget/AbsListView$CheckForLongPress;

    .prologue
    .line 137
    iput-object p1, p0, mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-boolean v0, p0, mIsFirstPenClick:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/widget/AbsListView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, mIsFirstPenClick:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mTwDragSelectedItemSize:I

    return v0
.end method

.method static synthetic access$1602(Landroid/widget/AbsListView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, mTwDragSelectedItemSize:I

    return p1
.end method

.method static synthetic access$1700(Landroid/widget/AbsListView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mTwDragSelectedItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-boolean v0, p0, mIsTwOnClickEnabled:Z

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/AbsListView;II)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, totwNotifyMultiSelectedStop(II)V

    return-void
.end method

.method static synthetic access$2302(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 137
    iput-object p1, p0, mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2400(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-boolean v0, p0, mIsDetaching:Z

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mActivePointerId:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$3002(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 137
    iput-object p1, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$3100(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mScrollY:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mScrollY:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mScrollY:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    invoke-direct {p0}, contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/widget/AbsListView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    invoke-direct {p0}, clearScrollingCache()V

    return-void
.end method

.method static synthetic access$3800(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mPaddingTop:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    invoke-virtual {p0}, getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mPaddingBottom:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mPaddingTop:I

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mScrollY:I

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 11
    .param p0, "x0"    # Landroid/widget/AbsListView;
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
    .line 137
    invoke-virtual/range {p0 .. p9}, overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mScrollY:I

    return v0
.end method

.method static synthetic access$4500(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 11
    .param p0, "x0"    # Landroid/widget/AbsListView;
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
    .line 137
    invoke-virtual/range {p0 .. p9}, overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/widget/AbsListView;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/widget/AbsListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    invoke-virtual {p0, p1}, setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    invoke-virtual {p0}, getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$5100(Landroid/widget/AbsListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    invoke-virtual {p0, p1}, setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$5200(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    invoke-direct {p0}, getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    return-object v0
.end method

.method static synthetic access$5600(Landroid/widget/AbsListView;)Landroid/widget/FluidScroller;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-boolean v0, p0, mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic access$5800(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5900(Landroid/widget/AbsListView;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 137
    invoke-direct {p0, p1}, handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6000(Landroid/widget/AbsListView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    invoke-direct {p0}, playQCBtnFadeIn()V

    return-void
.end method

.method static synthetic access$6100(Landroid/widget/AbsListView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    invoke-direct {p0}, playQCBtnFadeOut()V

    return-void
.end method

.method static synthetic access$6200(Landroid/widget/AbsListView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6302(Landroid/widget/AbsListView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, mIsQCShown:Z

    return p1
.end method

.method static synthetic access$6400(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mQCScrollTo:I

    return v0
.end method

.method static synthetic access$6500(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mQCScrollNext:I

    return v0
.end method

.method static synthetic access$6502(Landroid/widget/AbsListView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, mQCScrollNext:I

    return p1
.end method

.method static synthetic access$6600(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mQCScrollFrom:I

    return v0
.end method

.method static synthetic access$6700(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mQCScrollingCount:I

    return v0
.end method

.method static synthetic access$6708(Landroid/widget/AbsListView;)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mQCScrollingCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mQCScrollingCount:I

    return v0
.end method

.method static synthetic access$6800(Landroid/widget/AbsListView;)Landroid/view/animation/DecelerateInterpolator;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$6900(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget v0, p0, mQCScrollDirection:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-boolean v0, p0, mForcedClick:Z

    return v0
.end method

.method static synthetic access$7000(Landroid/widget/AbsListView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mQCScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7100(Landroid/widget/AbsListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    invoke-direct {p0, p1}, twSetFluidScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$7200(Landroid/widget/AbsListView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-boolean v0, p0, mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 137
    iget-boolean v0, p0, mIsCtrlkeyPressed:Z

    return v0
.end method

.method private addToPressItemListArray(II)V
    .registers 7
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    .line 9626
    const/4 v0, 0x0

    .line 9628
    .local v0, "checkCount":I
    iget-boolean v2, p0, mIsMultiFocusEnabled:Z

    if-nez v2, :cond_6

    .line 9670
    :goto_5
    return-void

    .line 9632
    :cond_6
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2d

    .line 9633
    iget-object v2, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 9634
    iget-object v2, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9669
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, invalidate()V

    goto :goto_5

    .line 9636
    :cond_23
    iget-object v2, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 9639
    :cond_2d
    if-ge p1, p2, :cond_5b

    .line 9640
    sub-int v2, p2, p1

    add-int/lit8 v0, v2, 0x1

    .line 9641
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    if-ge v1, v0, :cond_1f

    .line 9642
    iget-object v2, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 9643
    iget-object v2, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9647
    :goto_4c
    add-int/lit8 p1, p1, 0x1

    .line 9641
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 9645
    :cond_51
    iget-object v2, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 9649
    .end local v1    # "i":I
    :cond_5b
    if-le p1, p2, :cond_89

    .line 9650
    sub-int v2, p1, p2

    add-int/lit8 v0, v2, 0x1

    .line 9651
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_62
    if-ge v1, v0, :cond_1f

    .line 9652
    iget-object v2, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 9653
    iget-object v2, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9657
    :goto_7a
    add-int/lit8 p1, p1, -0x1

    .line 9651
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 9655
    :cond_7f
    iget-object v2, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 9660
    .end local v1    # "i":I
    :cond_89
    iget-object v2, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 9661
    iget-object v2, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 9663
    :cond_a0
    iget-object v2, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f
.end method

.method private autoScrollWithDuration(I)V
    .registers 11
    .param p1, "duration"    # I

    .prologue
    .line 2104
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v0

    .line 2105
    .local v0, "firstPosition":I
    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2106
    .local v3, "mFirst":Landroid/view/View;
    invoke-virtual {p0}, getLastVisiblePosition()I

    move-result v6

    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2107
    .local v4, "mLast":Landroid/view/View;
    const/4 v1, 0x0

    .line 2108
    .local v1, "height":I
    invoke-virtual {p0}, getCount()I

    move-result v2

    .line 2109
    .local v2, "mCount":I
    const-string v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autoScrollWithDuration:CASE  mFirst "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mCount is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2111
    :cond_3d
    if-eqz v4, :cond_44

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    .line 2113
    :cond_44
    const-string v6, "AbsListView"

    const-string v7, "autoScrollWithDuration:CASEE  height > 0 && getAdapter()!= null && mCount > 0 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    sub-int v6, v2, v0

    mul-int v5, p1, v6

    .line 2115
    .local v5, "tempdur":I
    const-string v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autoScrollWithDuration(), duration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    add-int/lit8 v6, v2, -0x1

    mul-int v7, v0, v1

    div-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7, v5}, smoothScrollToPositionFromTop(III)V

    .line 2121
    return-void
.end method

.method private canScrollDown()Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2809
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    .line 2812
    .local v2, "count":I
    iget v5, p0, mFirstPosition:I

    add-int/2addr v5, v2

    iget v6, p0, mItemCount:I

    if-ge v5, v6, :cond_27

    move v0, v3

    .line 2815
    .local v0, "canScrollDown":Z
    :goto_e
    if-nez v0, :cond_26

    if-lez v2, :cond_26

    .line 2816
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2817
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, mBottom:I

    iget-object v7, p0, mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_29

    move v0, v3

    .line 2820
    .end local v1    # "child":Landroid/view/View;
    :cond_26
    :goto_26
    return v0

    .end local v0    # "canScrollDown":Z
    :cond_27
    move v0, v4

    .line 2812
    goto :goto_e

    .restart local v0    # "canScrollDown":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_29
    move v0, v4

    .line 2817
    goto :goto_26
.end method

.method private canScrollUp()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2794
    iget v4, p0, mFirstPosition:I

    if-lez v4, :cond_1f

    move v0, v2

    .line 2797
    .local v0, "canScrollUp":Z
    :goto_7
    if-nez v0, :cond_1e

    .line 2798
    invoke-virtual {p0}, getChildCount()I

    move-result v4

    if-lez v4, :cond_1e

    .line 2799
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2800
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_21

    move v0, v2

    .line 2804
    .end local v1    # "child":Landroid/view/View;
    :cond_1e
    :goto_1e
    return v0

    .end local v0    # "canScrollUp":Z
    :cond_1f
    move v0, v3

    .line 2794
    goto :goto_7

    .restart local v0    # "canScrollUp":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_21
    move v0, v3

    .line 2800
    goto :goto_1e
.end method

.method private clearScrollingCache()V
    .registers 2

    .prologue
    .line 7085
    invoke-virtual {p0}, isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_16

    .line 7086
    iget-object v0, p0, mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_11

    .line 7087
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, mClearScrollingCache:Ljava/lang/Runnable;

    .line 7103
    :cond_11
    iget-object v0, p0, mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    .line 7105
    :cond_16
    return-void
.end method

.method private contentFits()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1707
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 1708
    .local v0, "childCount":I
    if-nez v0, :cond_9

    .line 1711
    :cond_8
    :goto_8
    return v1

    .line 1709
    :cond_9
    iget v3, p0, mItemCount:I

    if-eq v0, v3, :cond_f

    move v1, v2

    goto :goto_8

    .line 1711
    :cond_f
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_32

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, getHeight()I

    move-result v4

    iget-object v5, p0, mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

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

    .line 7077
    iget-boolean v0, p0, mScrollingCacheEnabled:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, mCachingStarted:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_19

    .line 7078
    invoke-virtual {p0, v1}, setChildrenDrawnWithCacheEnabled(Z)V

    .line 7079
    invoke-virtual {p0, v1}, setChildrenDrawingCacheEnabled(Z)V

    .line 7080
    iput-boolean v1, p0, mCachingActive:Z

    iput-boolean v1, p0, mCachingStarted:Z

    .line 7082
    :cond_19
    return-void
.end method

.method private createTextFilter(Z)V
    .registers 6
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 8113
    iget-object v1, p0, mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_36

    .line 8114
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 8115
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8116
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 8117
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 8118
    invoke-direct {p0}, getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8119
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8120
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 8121
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8122
    iput-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    .line 8123
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8124
    const/4 v1, 0x1

    iput-boolean v1, p0, mGlobalLayoutListenerAddedFilter:Z

    .line 8126
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_36
    if-eqz p1, :cond_41

    .line 8127
    iget-object v1, p0, mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 8131
    :goto_40
    return-void

    .line 8129
    :cond_41
    iget-object v1, p0, mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_40
.end method

.method private dismissPopup()V
    .registers 2

    .prologue
    .line 7755
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 7756
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7758
    :cond_9
    return-void
.end method

.method private doScrollToBottomEnd()V
    .registers 2

    .prologue
    .line 9952
    const/4 v0, 0x4

    iput v0, p0, mQCScrollDirection:I

    .line 9953
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, mQCScrollFrom:I

    .line 9954
    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, mQCScrollTo:I

    .line 9955
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, mQCScrollNext:I

    .line 9956
    const/4 v0, 0x1

    iput v0, p0, mQCScrollingCount:I

    .line 9958
    iget-object v0, p0, mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_29

    .line 9959
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 9962
    :cond_29
    iget-object v0, p0, mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    .line 9963
    return-void
.end method

.method private doScrollToTopEnd()V
    .registers 2

    .prologue
    .line 9938
    const/4 v0, 0x2

    iput v0, p0, mQCScrollDirection:I

    .line 9939
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, mQCScrollFrom:I

    .line 9940
    const/4 v0, 0x0

    iput v0, p0, mQCScrollTo:I

    .line 9941
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, mQCScrollNext:I

    .line 9942
    const/4 v0, 0x1

    iput v0, p0, mQCScrollingCount:I

    .line 9944
    iget-object v0, p0, mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_20

    .line 9945
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 9948
    :cond_20
    iget-object v0, p0, mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    .line 9949
    return-void
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 9890
    iget v2, p0, mQCstate:I

    if-eq v2, v3, :cond_c

    iget v2, p0, mQCstate:I

    if-ne v2, v6, :cond_41

    .line 9891
    :cond_c
    iget v1, p0, mScrollY:I

    .line 9892
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 9893
    .local v0, "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9895
    iget v2, p0, mQCstate:I

    if-ne v2, v3, :cond_37

    .line 9896
    iget-boolean v2, p0, mIsQCBtnFadeInSet:Z

    if-eqz v2, :cond_2a

    .line 9897
    iget-object v2, p0, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9898
    iget-object v2, p0, mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, post(Ljava/lang/Runnable;)Z

    .line 9899
    iput-boolean v4, p0, mIsQCBtnFadeInSet:Z

    .line 9901
    :cond_2a
    iget-object v2, p0, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9906
    :cond_2f
    :goto_2f
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 9908
    iput-boolean v3, p0, mIsQCShown:Z

    .line 9909
    iput-boolean v3, p0, mIsQCBtnFadeOutSet:Z

    .line 9923
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_36
    :goto_36
    return-void

    .line 9902
    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollY":I
    :cond_37
    iget v2, p0, mQCstate:I

    if-ne v2, v6, :cond_2f

    .line 9903
    iget-object v2, p0, mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2f

    .line 9910
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_41
    iget-boolean v2, p0, mIsQCShown:Z

    if-ne v2, v3, :cond_36

    .line 9911
    iget v1, p0, mScrollY:I

    .line 9912
    .restart local v1    # "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 9913
    .restart local v0    # "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9914
    iget-boolean v2, p0, mIsQCBtnFadeOutSet:Z

    if-eqz v2, :cond_5a

    .line 9915
    iget-object v2, p0, mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, post(Ljava/lang/Runnable;)Z

    .line 9916
    iput-boolean v4, p0, mIsQCBtnFadeOutSet:Z

    .line 9918
    :cond_5a
    iget-object v2, p0, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9919
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 9920
    iput-boolean v3, p0, mIsQCBtnFadeInSet:Z

    goto :goto_36
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3338
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3339
    .local v4, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 3340
    .local v1, "selectedChild":Landroid/view/View;
    iget-object v5, p0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_18

    .line 3341
    iget-object v3, p0, mSelector:Landroid/graphics/drawable/Drawable;

    .line 3342
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3343
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3347
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_18
    iget-boolean v5, p0, mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_59

    .line 3349
    iget-object v5, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3350
    .local v2, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3352
    if-eqz v1, :cond_22

    .line 3353
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3354
    iget-object v5, p0, mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3355
    iget-object v5, p0, mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_22

    .line 3360
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "selectedPosition":Ljava/lang/Integer;
    :cond_59
    return-void
.end method

.method private finishGlows()V
    .registers 2

    .prologue
    .line 8355
    iget-object v0, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_e

    .line 8356
    iget-object v0, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 8357
    iget-object v0, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 8359
    :cond_e
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 11
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 7801
    sparse-switch p2, :sswitch_data_a2

    .line 7834
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7803
    :sswitch_b
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 7804
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7805
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 7806
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7838
    .local v1, "dY":I
    :goto_23
    sub-int v2, v0, v4

    .line 7839
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 7840
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 7809
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

    .line 7810
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 7811
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7812
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 7813
    .restart local v1    # "dY":I
    goto :goto_23

    .line 7815
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_46
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 7816
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7817
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 7818
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7819
    .restart local v1    # "dY":I
    goto :goto_23

    .line 7821
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

    .line 7822
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 7823
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7824
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 7825
    .restart local v1    # "dY":I
    goto :goto_23

    .line 7828
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

    .line 7829
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7830
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7831
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7832
    .restart local v1    # "dY":I
    goto :goto_23

    .line 7801
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

.method private getDrawableStateForSelector()[I
    .registers 7

    .prologue
    .line 3501
    iget-boolean v4, p0, mIsChildViewEnabled:Z

    if-eqz v4, :cond_9

    .line 3503
    invoke-super {p0}, Landroid/widget/AdapterView;->getDrawableState()[I

    move-result-object v3

    .line 3531
    :cond_8
    :goto_8
    return-object v3

    .line 3509
    :cond_9
    sget-object v4, ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3515
    .local v1, "enabledState":I
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, onCreateDrawableState(I)[I

    move-result-object v3

    .line 3517
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3518
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_17
    if-ltz v2, :cond_1e

    .line 3519
    aget v4, v3, v2

    if-ne v4, v1, :cond_2a

    .line 3520
    move v0, v2

    .line 3526
    :cond_1e
    if-ltz v0, :cond_8

    .line 3527
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_8

    .line 3518
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_17
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .registers 4

    .prologue
    .line 8134
    iget-object v1, p0, mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_2b

    .line 8135
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8136
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x109015e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, mTextFilter:Landroid/widget/EditText;

    .line 8141
    iget-object v1, p0, mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 8143
    iget-object v1, p0, mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 8144
    iget-object v1, p0, mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8146
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_2b
    iget-object v1, p0, mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 9360
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_32e

    .line 9567
    :cond_5
    :goto_5
    return-void

    .line 9362
    :pswitch_6
    const/4 v9, 0x0

    iput v9, p0, mQCstate:I

    .line 9363
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    goto :goto_5

    .line 9366
    :pswitch_d
    const/4 v7, 0x0

    .line 9368
    .local v7, "offset":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, mHoverRecognitionCurrentTime:J

    .line 9369
    iget-wide v10, p0, mHoverRecognitionCurrentTime:J

    iget-wide v12, p0, mHoverRecognitionStartTime:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iput-wide v10, p0, mHoverRecognitionDurationTime:J

    .line 9371
    iget-boolean v9, p0, mIsPenHovered:Z

    if-eqz v9, :cond_2d

    iget-wide v10, p0, mHoverRecognitionCurrentTime:J

    iget-wide v12, p0, mHoverScrollStartTime:J

    sub-long/2addr v10, v12

    iget-wide v12, p0, mHoverScrollTimeInterval:J

    cmp-long v9, v10, v12

    if-ltz v9, :cond_5

    .line 9373
    :cond_2d
    iget-boolean v9, p0, mIsPenPressed:Z

    if-eqz v9, :cond_3c

    iget-wide v10, p0, mHoverRecognitionCurrentTime:J

    iget-wide v12, p0, mHoverScrollStartTime:J

    sub-long/2addr v10, v12

    iget-wide v12, p0, mPenDragScrollTimeInterval:J

    cmp-long v9, v10, v12

    if-ltz v9, :cond_5

    .line 9377
    :cond_3c
    iget-boolean v9, p0, mIsPenHovered:Z

    if-eqz v9, :cond_54

    iget-boolean v9, p0, mIsSendHoverScrollState:Z

    if-nez v9, :cond_54

    .line 9378
    iget-object v9, p0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v9, :cond_51

    .line 9379
    const/4 v9, 0x1

    iput v9, p0, mHoverScrollStateForListener:I

    .line 9380
    iget-object v9, p0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v10, 0x1

    invoke-interface {v9, p0, v10}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 9383
    :cond_51
    const/4 v9, 0x1

    iput-boolean v9, p0, mIsSendHoverScrollState:Z

    .line 9386
    :cond_54
    invoke-virtual {p0}, getChildCount()I

    move-result v5

    .line 9391
    .local v5, "count":I
    iget v9, p0, mFirstPosition:I

    add-int/2addr v9, v5

    iget v10, p0, mItemCount:I

    if-ge v9, v10, :cond_11e

    const/4 v1, 0x1

    .line 9393
    .local v1, "canScrollDown":Z
    :goto_60
    if-nez v1, :cond_87

    if-lez v5, :cond_87

    .line 9394
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {p0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9395
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, mBottom:I

    iget-object v11, p0, mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_86

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, getHeight()I

    move-result v10

    iget-object v11, p0, mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_121

    :cond_86
    const/4 v1, 0x1

    .line 9400
    .end local v3    # "child":Landroid/view/View;
    :cond_87
    :goto_87
    iget v9, p0, mFirstPosition:I

    if-lez v9, :cond_124

    const/4 v2, 0x1

    .line 9402
    .local v2, "canScrollUp":Z
    :goto_8c
    if-nez v2, :cond_a4

    .line 9403
    invoke-virtual {p0}, getChildCount()I

    move-result v9

    if-lez v9, :cond_a4

    .line 9404
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9405
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v9, v10, :cond_127

    const/4 v2, 0x1

    .line 9409
    .end local v3    # "child":Landroid/view/View;
    :cond_a4
    :goto_a4
    const/4 v9, 0x1

    iget v10, p0, HOVERSCROLL_SPEED:F

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, mHoverScrollSpeed:I

    .line 9412
    iget v9, p0, mHoverScrollDirection:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_12a

    .line 9413
    iget v9, p0, mHoverScrollSpeed:I

    mul-int/lit8 v7, v9, -0x1

    .line 9414
    iget-object v9, p0, mTwTrackedChild:Landroid/view/View;

    if-nez v9, :cond_cc

    iget-object v9, p0, mTwCloseChildByBottom:Landroid/view/View;

    if-nez v9, :cond_d7

    :cond_cc
    iget v9, p0, mOldHoverScrollDirection:I

    iget v10, p0, mHoverScrollDirection:I

    if-eq v9, v10, :cond_ea

    iget-boolean v9, p0, mIsCloseChildSetted:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_ea

    .line 9415
    :cond_d7
    iget-object v9, p0, mTwCloseChildByBottom:Landroid/view/View;

    iput-object v9, p0, mTwTrackedChild:Landroid/view/View;

    .line 9416
    iget v9, p0, mTwDistanceFromCloseChildBottom:I

    iput v9, p0, mTwDistanceFromTrackedChildTop:I

    .line 9417
    iget v9, p0, mTwCloseChildPositionByBottom:I

    iput v9, p0, mTwTrackedChildPosition:I

    .line 9418
    iget v9, p0, mHoverScrollDirection:I

    iput v9, p0, mOldHoverScrollDirection:I

    .line 9419
    const/4 v9, 0x1

    iput-boolean v9, p0, mIsCloseChildSetted:Z

    .line 9432
    :cond_ea
    :goto_ea
    invoke-virtual {p0}, getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 9436
    if-gez v7, :cond_fa

    if-nez v2, :cond_fe

    :cond_fa
    if-lez v7, :cond_155

    if-eqz v1, :cond_155

    .line 9438
    :cond_fe
    iget-object v9, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v9, :cond_109

    .line 9439
    new-instance v9, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 9441
    :cond_109
    iget-object v9, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    const/4 v10, 0x1

    invoke-virtual {v9, v7, v10}, Landroid/widget/AbsListView$FlingRunnable;->start(IZ)V

    .line 9442
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, reportScrollStateChange(I)V

    .line 9444
    iget-object v9, p0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v10, 0x1

    iget v11, p0, HOVERSCROLL_DELAY:I

    int-to-long v12, v11

    invoke-virtual {v9, v10, v12, v13}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 9391
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    :cond_11e
    const/4 v1, 0x0

    goto/16 :goto_60

    .line 9395
    .restart local v1    # "canScrollDown":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_121
    const/4 v1, 0x0

    goto/16 :goto_87

    .line 9400
    .end local v3    # "child":Landroid/view/View;
    :cond_124
    const/4 v2, 0x0

    goto/16 :goto_8c

    .line 9405
    .restart local v2    # "canScrollUp":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_127
    const/4 v2, 0x0

    goto/16 :goto_a4

    .line 9422
    .end local v3    # "child":Landroid/view/View;
    :cond_12a
    iget v9, p0, mHoverScrollSpeed:I

    mul-int/lit8 v7, v9, 0x1

    .line 9423
    iget-object v9, p0, mTwTrackedChild:Landroid/view/View;

    if-nez v9, :cond_136

    iget-object v9, p0, mTwCloseChildByTop:Landroid/view/View;

    if-nez v9, :cond_141

    :cond_136
    iget v9, p0, mOldHoverScrollDirection:I

    iget v10, p0, mHoverScrollDirection:I

    if-eq v9, v10, :cond_ea

    iget-boolean v9, p0, mIsCloseChildSetted:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_ea

    .line 9424
    :cond_141
    iget-object v9, p0, mTwCloseChildByTop:Landroid/view/View;

    iput-object v9, p0, mTwTrackedChild:Landroid/view/View;

    .line 9425
    iget v9, p0, mTwDistanceFromCloseChildTop:I

    iput v9, p0, mTwDistanceFromTrackedChildTop:I

    .line 9426
    iget v9, p0, mTwCloseChildPositionByTop:I

    iput v9, p0, mTwTrackedChildPosition:I

    .line 9427
    iget v9, p0, mHoverScrollDirection:I

    iput v9, p0, mOldHoverScrollDirection:I

    .line 9428
    const/4 v9, 0x1

    iput-boolean v9, p0, mIsCloseChildSetted:Z

    goto :goto_ea

    .line 9447
    :cond_155
    invoke-virtual {p0}, getOverScrollMode()I

    move-result v8

    .line 9448
    .local v8, "overscrollMode":I
    if-eqz v8, :cond_164

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1b7

    invoke-direct {p0}, contentFits()Z

    move-result v9

    if-nez v9, :cond_1b7

    :cond_164
    const/4 v0, 0x1

    .line 9451
    .local v0, "canOverscroll":Z
    :goto_165
    if-eqz v0, :cond_1ac

    iget-boolean v9, p0, mIsHoverOverscrolled:Z

    if-nez v9, :cond_1ac

    .line 9452
    iget v9, p0, mHoverScrollDirection:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1b9

    .line 9453
    iget-object v9, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getWidth()I

    move-result v10

    invoke-virtual {p0}, getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9454
    iget-object v9, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9455
    iget-object v9, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_192

    .line 9456
    iget-object v9, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9466
    :cond_192
    :goto_192
    iget-object v9, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_1a9

    iget-object v9, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_1a6

    iget-object v9, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1a9

    .line 9467
    :cond_1a6
    invoke-virtual {p0}, invalidate()V

    .line 9470
    :cond_1a9
    const/4 v9, 0x1

    iput-boolean v9, p0, mIsHoverOverscrolled:Z

    .line 9473
    :cond_1ac
    if-nez v0, :cond_5

    iget-boolean v9, p0, mIsHoverOverscrolled:Z

    if-nez v9, :cond_5

    .line 9474
    const/4 v9, 0x1

    iput-boolean v9, p0, mIsHoverOverscrolled:Z

    goto/16 :goto_5

    .line 9448
    .end local v0    # "canOverscroll":Z
    :cond_1b7
    const/4 v0, 0x0

    goto :goto_165

    .line 9458
    .restart local v0    # "canOverscroll":Z
    :cond_1b9
    iget v9, p0, mHoverScrollDirection:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_192

    .line 9459
    iget-object v9, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getWidth()I

    move-result v10

    invoke-virtual {p0}, getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9460
    iget-object v9, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9461
    iget-object v9, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_192

    .line 9462
    iget-object v9, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_192

    .line 9482
    .end local v0    # "canOverscroll":Z
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v5    # "count":I
    .end local v7    # "offset":I
    .end local v8    # "overscrollMode":I
    :pswitch_1e1
    invoke-virtual {p0}, getChildCount()I

    move-result v4

    .line 9484
    .local v4, "childCount":I
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 9489
    iget v9, p0, mFirstPosition:I

    add-int/2addr v9, v4

    iget v10, p0, mItemCount:I

    if-ge v9, v10, :cond_281

    const/4 v1, 0x1

    .line 9491
    .restart local v1    # "canScrollDown":Z
    :goto_1f5
    if-nez v1, :cond_21c

    if-lez v4, :cond_21c

    .line 9492
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9493
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, mBottom:I

    iget-object v11, p0, mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_21b

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, getHeight()I

    move-result v10

    iget-object v11, p0, mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_284

    :cond_21b
    const/4 v1, 0x1

    .line 9498
    .end local v3    # "child":Landroid/view/View;
    :cond_21c
    :goto_21c
    iget v9, p0, mFirstPosition:I

    if-lez v9, :cond_286

    const/4 v2, 0x1

    .line 9500
    .restart local v2    # "canScrollUp":Z
    :goto_221
    if-nez v2, :cond_239

    .line 9501
    invoke-virtual {p0}, getChildCount()I

    move-result v9

    if-lez v9, :cond_239

    .line 9502
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9503
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v9, v10, :cond_288

    const/4 v2, 0x1

    .line 9507
    .end local v3    # "child":Landroid/view/View;
    :cond_239
    :goto_239
    const/4 v9, 0x1

    const v10, 0x453b8000    # 3000.0f

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, mHoverScrollSpeed:I

    .line 9510
    iget v9, p0, mQCLocation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_28a

    iget v9, p0, mHoverScrollSpeed:I

    neg-int v6, v9

    .line 9512
    .local v6, "distanceToMove":I
    :goto_259
    if-gez v6, :cond_25d

    if-nez v2, :cond_261

    :cond_25d
    if-lez v6, :cond_28d

    if-eqz v1, :cond_28d

    .line 9515
    :cond_261
    iget-object v9, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v9, :cond_26c

    .line 9516
    new-instance v9, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 9518
    :cond_26c
    iget-object v9, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    const/4 v10, 0x1

    invoke-virtual {v9, v6, v10}, Landroid/widget/AbsListView$FlingRunnable;->start(IZ)V

    .line 9519
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, reportScrollStateChange(I)V

    .line 9521
    iget-object v9, p0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v10, 0x2

    iget v11, p0, HOVERSCROLL_DELAY:I

    int-to-long v12, v11

    invoke-virtual {v9, v10, v12, v13}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 9489
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v6    # "distanceToMove":I
    :cond_281
    const/4 v1, 0x0

    goto/16 :goto_1f5

    .line 9493
    .restart local v1    # "canScrollDown":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_284
    const/4 v1, 0x0

    goto :goto_21c

    .line 9498
    .end local v3    # "child":Landroid/view/View;
    :cond_286
    const/4 v2, 0x0

    goto :goto_221

    .line 9503
    .restart local v2    # "canScrollUp":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_288
    const/4 v2, 0x0

    goto :goto_239

    .line 9510
    .end local v3    # "child":Landroid/view/View;
    :cond_28a
    iget v6, p0, mHoverScrollSpeed:I

    goto :goto_259

    .line 9524
    .restart local v6    # "distanceToMove":I
    :cond_28d
    invoke-virtual {p0}, getOverScrollMode()I

    move-result v8

    .line 9525
    .restart local v8    # "overscrollMode":I
    if-eqz v8, :cond_29c

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2ef

    invoke-direct {p0}, contentFits()Z

    move-result v9

    if-nez v9, :cond_2ef

    :cond_29c
    const/4 v0, 0x1

    .line 9528
    .restart local v0    # "canOverscroll":Z
    :goto_29d
    if-eqz v0, :cond_2e4

    iget-boolean v9, p0, mIsHoverOverscrolled:Z

    if-nez v9, :cond_2e4

    .line 9529
    iget v9, p0, mQCLocation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2f1

    .line 9530
    iget-object v9, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getWidth()I

    move-result v10

    invoke-virtual {p0}, getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9531
    iget-object v9, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9532
    iget-object v9, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_2ca

    .line 9533
    iget-object v9, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9543
    :cond_2ca
    :goto_2ca
    iget-object v9, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_2e1

    iget-object v9, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_2de

    iget-object v9, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_2e1

    .line 9544
    :cond_2de
    invoke-virtual {p0}, invalidate()V

    .line 9547
    :cond_2e1
    const/4 v9, 0x1

    iput-boolean v9, p0, mIsHoverOverscrolled:Z

    .line 9550
    :cond_2e4
    if-nez v0, :cond_5

    iget-boolean v9, p0, mIsHoverOverscrolled:Z

    if-nez v9, :cond_5

    .line 9551
    const/4 v9, 0x1

    iput-boolean v9, p0, mIsHoverOverscrolled:Z

    goto/16 :goto_5

    .line 9525
    .end local v0    # "canOverscroll":Z
    :cond_2ef
    const/4 v0, 0x0

    goto :goto_29d

    .line 9535
    .restart local v0    # "canOverscroll":Z
    :cond_2f1
    iget v9, p0, mQCLocation:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2ca

    .line 9536
    iget-object v9, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getWidth()I

    move-result v10

    invoke-virtual {p0}, getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9537
    iget-object v9, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9538
    iget-object v9, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_2ca

    .line 9539
    iget-object v9, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2ca

    .line 9557
    .end local v0    # "canOverscroll":Z
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v4    # "childCount":I
    .end local v6    # "distanceToMove":I
    .end local v8    # "overscrollMode":I
    :pswitch_319
    iget v9, p0, mQCLocation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_323

    .line 9558
    invoke-direct {p0}, doScrollToTopEnd()V

    goto/16 :goto_5

    .line 9559
    :cond_323
    iget v9, p0, mQCLocation:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    .line 9560
    invoke-direct {p0}, doScrollToBottomEnd()V

    goto/16 :goto_5

    .line 9360
    nop

    :pswitch_data_32e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_d
        :pswitch_1e1
        :pswitch_319
    .end packed-switch
.end method

.method private initAbsListView()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1217
    iput-boolean v4, p0, mInitAbsListView:Z

    .line 1218
    invoke-virtual {p0, v4}, setClickable(Z)V

    .line 1219
    invoke-virtual {p0, v4}, setFocusableInTouchMode(Z)V

    .line 1220
    invoke-virtual {p0, v3}, setWillNotDraw(Z)V

    .line 1221
    invoke-virtual {p0, v3}, setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1222
    invoke-virtual {p0, v4}, setScrollingCacheEnabled(Z)V

    .line 1224
    iget-object v5, p0, mContext:Landroid/content/Context;

    if-eqz v5, :cond_3b

    .line 1225
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1226
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, mTouchSlop:I

    .line 1227
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, mMinimumVelocity:I

    .line 1228
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, mMaximumVelocity:I

    .line 1229
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v5

    iput v5, p0, mOverscrollDistance:I

    .line 1230
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v5

    iput v5, p0, mOverflingDistance:I

    .line 1233
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    :cond_3b
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_51

    .line 1234
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, p0, mDensityScale:F

    .line 1237
    :cond_51
    new-instance v5, Landroid/view/HapticPreDrawListener;

    invoke-direct {v5}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v5, p0, mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    .line 1239
    iget-object v5, p0, mContext:Landroid/content/Context;

    if-eqz v5, :cond_6d

    .line 1240
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_6b

    move v3, v4

    :cond_6b
    iput-boolean v3, p0, AIR_VIEW_WINSET:Z

    .line 1244
    :cond_6d
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1245
    .local v2, "value":Landroid/util/TypedValue;
    iget-object v3, p0, mContext:Landroid/content/Context;

    if-eqz v3, :cond_b0

    .line 1246
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v5, 0x11600cf

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 1248
    .local v1, "resolved":Z
    if-eqz v1, :cond_93

    .line 1249
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1253
    :cond_93
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v5, 0x11600d2

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 1255
    if-eqz v1, :cond_b0

    .line 1256
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 1261
    .end local v1    # "resolved":Z
    :cond_b0
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .prologue
    .line 6296
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 6297
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6301
    :goto_a
    return-void

    .line 6299
    :cond_b
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .prologue
    .line 6304
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 6305
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6307
    :cond_a
    return-void
.end method

.method private invalidateBottomGlow()V
    .registers 7

    .prologue
    .line 4533
    iget-object v4, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_5

    .line 4541
    :goto_4
    return-void

    .line 4536
    :cond_5
    invoke-virtual {p0}, getClipToPadding()Z

    move-result v1

    .line 4537
    .local v1, "clipToPadding":Z
    if-eqz v1, :cond_2d

    invoke-virtual {p0}, getHeight()I

    move-result v4

    iget v5, p0, mPaddingBottom:I

    sub-int v0, v4, v5

    .line 4538
    .local v0, "bottom":I
    :goto_13
    if-eqz v1, :cond_32

    iget v2, p0, mPaddingLeft:I

    .line 4539
    .local v2, "left":I
    :goto_17
    if-eqz v1, :cond_34

    invoke-virtual {p0}, getWidth()I

    move-result v4

    iget v5, p0, mPaddingRight:I

    sub-int v3, v4, v5

    .line 4540
    .local v3, "right":I
    :goto_21
    iget-object v4, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v2, v4, v3, v0}, invalidate(IIII)V

    goto :goto_4

    .line 4537
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_2d
    invoke-virtual {p0}, getHeight()I

    move-result v0

    goto :goto_13

    .line 4538
    .restart local v0    # "bottom":I
    :cond_32
    const/4 v2, 0x0

    goto :goto_17

    .line 4539
    .restart local v2    # "left":I
    :cond_34
    invoke-virtual {p0}, getWidth()I

    move-result v3

    goto :goto_21
.end method

.method private invalidateTopGlow()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 4522
    iget-object v4, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_6

    .line 4530
    :goto_5
    return-void

    .line 4525
    :cond_6
    invoke-virtual {p0}, getClipToPadding()Z

    move-result v0

    .line 4526
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_27

    iget v3, p0, mPaddingTop:I

    .line 4527
    .local v3, "top":I
    :goto_e
    if-eqz v0, :cond_12

    iget v1, p0, mPaddingLeft:I

    .line 4528
    .local v1, "left":I
    :cond_12
    if-eqz v0, :cond_29

    invoke-virtual {p0}, getWidth()I

    move-result v4

    iget v5, p0, mPaddingRight:I

    sub-int v2, v4, v5

    .line 4529
    .local v2, "right":I
    :goto_1c
    iget-object v4, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v2, v4}, invalidate(IIII)V

    goto :goto_5

    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_27
    move v3, v1

    .line 4526
    goto :goto_e

    .line 4528
    .restart local v1    # "left":I
    .restart local v3    # "top":I
    :cond_29
    invoke-virtual {p0}, getWidth()I

    move-result v2

    goto :goto_1c
.end method

.method private isOwnerThread()Z
    .registers 3

    .prologue
    .line 1821
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

.method private isQCSupported()Z
    .registers 3

    .prologue
    .line 9745
    sget v0, sSpenUspLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    .line 9746
    const/4 v0, 0x1

    .line 9748
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 9581
    const-string v0, "AbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9582
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6013
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 6014
    .local v1, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 6017
    .local v11, "toolType":I
    const/4 v14, 0x7

    if-eq v1, v14, :cond_12

    const/16 v14, 0x9

    if-ne v1, v14, :cond_26

    :cond_12
    const/4 v14, 0x2

    if-ne v11, v14, :cond_26

    .line 6018
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsPenHovered:Z

    .line 6024
    :cond_1a
    :goto_1a
    const/4 v14, 0x1

    if-eq v11, v14, :cond_32

    .line 6025
    const/4 v14, 0x3

    if-ne v11, v14, :cond_30

    const/4 v14, 0x1

    :goto_21
    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsHoveredByMouse:Z

    .line 6128
    :cond_25
    :goto_25
    return-void

    .line 6019
    :cond_26
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1a

    .line 6020
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsPenHovered:Z

    goto :goto_1a

    .line 6025
    :cond_30
    const/4 v14, 0x0

    goto :goto_21

    .line 6028
    :cond_32
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsHoveredByMouse:Z

    .line 6031
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

    .line 6036
    const/16 v14, 0x9

    if-ne v1, v14, :cond_66

    .line 6037
    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsPenHovered:Z

    if-nez v14, :cond_25

    .line 6038
    move-object/from16 v0, p0

    iget-object v14, v0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_25

    .line 6043
    :cond_66
    invoke-virtual/range {p0 .. p0}, isMultiWindows()Z

    move-result v14

    if-nez v14, :cond_25

    .line 6047
    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsPenHovered:Z

    if-nez v14, :cond_89

    invoke-virtual/range {p0 .. p0}, isInDialog()Z

    move-result v14

    if-eqz v14, :cond_89

    .line 6048
    move-object/from16 v0, p0

    iget-object v14, v0, mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6049
    move-object/from16 v0, p0

    iget-object v14, v0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_25

    .line 6053
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

    .line 6058
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

    .line 6061
    .local v7, "isFingerAirViewPreview":Z
    :goto_b1
    if-eqz v6, :cond_25

    if-eqz v7, :cond_25

    .line 6064
    :try_start_b5
    invoke-virtual/range {p0 .. p0}, isHovered()Z

    move-result v14

    if-nez v14, :cond_ca

    .line 6065
    const/4 v14, 0x1

    if-ne v11, v14, :cond_c4

    .line 6066
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, setFingerHovered(Z)V

    .line 6068
    :cond_c4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, setHovered(Z)V

    .line 6070
    :cond_ca
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 6071
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 6072
    .local v13, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, pointToPosition(II)I

    move-result v9

    .line 6073
    .local v9, "newHoverPosition":I
    move-object/from16 v0, p0

    iget v14, v0, mHoverPosition:I

    if-eq v14, v9, :cond_119

    const/4 v2, 0x1

    .line 6074
    .local v2, "bChanged":Z
    :goto_e1
    invoke-virtual/range {p0 .. p0}, shouldShowSelectorDefault()Z

    move-result v10

    .line 6076
    .local v10, "shouldShowSelector":Z
    const/4 v3, 0x0

    .line 6078
    .local v3, "child":Landroid/view/View;
    if-gez v9, :cond_11b

    .line 6079
    if-nez v10, :cond_f1

    .line 6080
    move-object/from16 v0, p0

    iget-object v14, v0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6083
    :cond_f1
    move-object/from16 v0, p0

    iget-boolean v14, v0, mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_108

    .line 6084
    move-object/from16 v0, p0

    iget-object v14, v0, mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6085
    invoke-virtual/range {p0 .. p0}, postInvalidateOnAnimation()V

    .line 6086
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mHoveredOnEllipsizedText:Z

    .line 6088
    :cond_108
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mHoverPosition:I
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_10d} :catch_10f

    goto/16 :goto_25

    .line 6124
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_10f
    move-exception v4

    .line 6125
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_25

    .line 6053
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "isFingerAirView":Z
    .end local v7    # "isFingerAirViewPreview":Z
    :cond_115
    const/4 v6, 0x0

    goto :goto_9d

    .line 6058
    .restart local v6    # "isFingerAirView":Z
    :cond_117
    const/4 v7, 0x0

    goto :goto_b1

    .line 6073
    .restart local v7    # "isFingerAirViewPreview":Z
    .restart local v9    # "newHoverPosition":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_119
    const/4 v2, 0x0

    goto :goto_e1

    .line 6092
    .restart local v2    # "bChanged":Z
    .restart local v3    # "child":Landroid/view/View;
    .restart local v10    # "shouldShowSelector":Z
    :cond_11b
    :try_start_11b
    move-object/from16 v0, p0

    iput v9, v0, mHoverPosition:I

    .line 6094
    move-object/from16 v0, p0

    iget v14, v0, mHoverPosition:I

    move-object/from16 v0, p0

    iget v15, v0, mFirstPosition:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6096
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, findEllipsizedTextView(Landroid/view/View;)Z

    move-result v5

    .line 6098
    .local v5, "foundEllipsizedTextView":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v8

    .line 6102
    .local v8, "isSetFingerHovedInAppWidget":Z
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_18a

    if-eqz v5, :cond_18a

    if-eqz v8, :cond_18a

    .line 6103
    move-object/from16 v0, p0

    iget v14, v0, mHoverPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, positionSelector(ILandroid/view/View;)V

    .line 6104
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mHoveredOnEllipsizedText:Z

    .line 6111
    :cond_152
    :goto_152
    if-eqz v2, :cond_160

    move-object/from16 v0, p0

    iget-boolean v14, v0, mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_160

    .line 6112
    invoke-virtual/range {p0 .. p0}, refreshDrawableState()V

    .line 6113
    invoke-virtual/range {p0 .. p0}, postInvalidateOnAnimation()V

    .line 6116
    :cond_160
    const/16 v14, 0xa

    if-ne v1, v14, :cond_25

    if-nez v10, :cond_25

    .line 6117
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mHoveredOnEllipsizedText:Z

    .line 6118
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mHoverPosition:I

    .line 6119
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mSelectorPosition:I

    .line 6120
    move-object/from16 v0, p0

    iget-object v14, v0, mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6121
    move-object/from16 v0, p0

    iget-object v14, v0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6122
    invoke-virtual/range {p0 .. p0}, postInvalidateOnAnimation()V

    goto/16 :goto_25

    .line 6106
    :cond_18a
    if-nez v10, :cond_152

    .line 6107
    move-object/from16 v0, p0

    iget-object v14, v0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_193} :catch_10f

    goto :goto_152
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 6432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 6434
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 6435
    .local v1, "pointerId":I
    iget v4, p0, mActivePointerId:I

    if-ne v1, v4, :cond_30

    .line 6439
    if-nez v2, :cond_31

    const/4 v0, 0x1

    .line 6440
    .local v0, "newPointerIndex":I
    :goto_16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, mMotionX:I

    .line 6441
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, mMotionY:I

    .line 6442
    iput v3, p0, mMotionCorrection:I

    .line 6443
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, mActivePointerId:I

    .line 6449
    iget v3, p0, mMotionY:I

    iput v3, p0, mLastY:I

    .line 6451
    .end local v0    # "newPointerIndex":I
    :cond_30
    return-void

    :cond_31
    move v0, v3

    .line 6439
    goto :goto_16
.end method

.method private onTouchCancel()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 5960
    iget v1, p0, mTouchMode:I

    packed-switch v1, :pswitch_data_4a

    .line 5973
    iput v4, p0, mTouchMode:I

    .line 5974
    invoke-virtual {p0, v3}, setPressed(Z)V

    .line 5975
    iget v1, p0, mMotionPosition:I

    iget v2, p0, mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5976
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_1a

    .line 5977
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5979
    :cond_1a
    invoke-direct {p0}, clearScrollingCache()V

    .line 5980
    iget-object v1, p0, mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5981
    invoke-direct {p0}, recycleVelocityTracker()V

    .line 5984
    .end local v0    # "motionView":Landroid/view/View;
    :goto_25
    :pswitch_25
    iget-object v1, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_33

    .line 5985
    iget-object v1, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5986
    iget-object v1, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5988
    :cond_33
    iput v4, p0, mActivePointerId:I

    .line 5989
    iput v3, p0, mPointerCount:I

    .line 5990
    return-void

    .line 5962
    :pswitch_38
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_43

    .line 5963
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5965
    :cond_43
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_25

    .line 5960
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

    .line 5671
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, mActivePointerId:I

    .line 5672
    iget v4, p0, mPointerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mPointerCount:I

    .line 5674
    iget v4, p0, mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4e

    .line 5676
    iget-object v4, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5677
    iget-object v4, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v4, :cond_20

    .line 5678
    iget-object v4, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5680
    :cond_20
    const/4 v4, 0x5

    iput v4, p0, mTouchMode:I

    .line 5681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, mMotionX:I

    .line 5682
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, mMotionY:I

    .line 5683
    iget v4, p0, mMotionY:I

    iput v4, p0, mLastY:I

    .line 5684
    iput v6, p0, mMotionCorrection:I

    .line 5685
    iput v6, p0, mDirection:I

    .line 5728
    :goto_39
    iget v4, p0, mTouchMode:I

    if-nez v4, :cond_4d

    iget v4, p0, mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4d

    invoke-virtual {p0, p1}, performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 5730
    iget-object v4, p0, mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v4}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5732
    :cond_4d
    return-void

    .line 5687
    :cond_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 5688
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 5689
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, pointToPosition(II)I

    move-result v0

    .line 5691
    .local v0, "motionPosition":I
    iget-boolean v4, p0, mDataChanged:Z

    if-nez v4, :cond_76

    .line 5692
    iget v4, p0, mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_91

    .line 5694
    invoke-direct {p0}, createScrollingCache()V

    .line 5695
    const/4 v4, 0x3

    iput v4, p0, mTouchMode:I

    .line 5696
    iput v6, p0, mMotionCorrection:I

    .line 5697
    invoke-virtual {p0, v3}, findMotionRow(I)I

    move-result v0

    .line 5698
    iget-object v4, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 5716
    :cond_76
    :goto_76
    if-ltz v0, :cond_86

    .line 5718
    iget v4, p0, mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5719
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, mMotionViewOriginalTop:I

    .line 5722
    .end local v1    # "v":Landroid/view/View;
    :cond_86
    iput v2, p0, mMotionX:I

    .line 5723
    iput v3, p0, mMotionY:I

    .line 5724
    iput v0, p0, mMotionPosition:I

    .line 5725
    const/high16 v4, -0x80000000

    iput v4, p0, mLastY:I

    goto :goto_39

    .line 5699
    :cond_91
    if-ltz v0, :cond_76

    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 5703
    iput v6, p0, mTouchMode:I

    .line 5706
    iget-object v4, p0, mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v4, :cond_ad

    .line 5707
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v4, p0, mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 5710
    :cond_ad
    iget-object v4, p0, mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 5711
    iget-object v4, p0, mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 5712
    iget-object v4, p0, mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_76
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5735
    iget v5, p0, mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 5736
    .local v2, "pointerIndex":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_12

    .line 5737
    const/4 v2, 0x0

    .line 5738
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, mActivePointerId:I

    .line 5741
    :cond_12
    iget-boolean v5, p0, mDataChanged:Z

    if-eqz v5, :cond_19

    .line 5744
    invoke-virtual {p0}, layoutChildren()V

    .line 5747
    :cond_19
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 5749
    .local v4, "y":I
    iget v5, p0, mTouchMode:I

    packed-switch v5, :pswitch_data_7e

    .line 5785
    :cond_23
    :goto_23
    :pswitch_23
    return-void

    .line 5755
    :pswitch_24
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 5760
    iget v5, p0, mMotionPosition:I

    iget v6, p0, mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5761
    .local v0, "motionView":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 5762
    .local v3, "x":F
    int-to-float v5, v4

    iget v6, p0, mTouchSlop:I

    int-to-float v6, v6

    invoke-virtual {p0, v3, v5, v6}, pointInView(FFF)Z

    move-result v5

    if-nez v5, :cond_61

    .line 5763
    invoke-virtual {p0, v7}, setPressed(Z)V

    .line 5764
    if-eqz v0, :cond_4e

    .line 5765
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 5767
    :cond_4e
    iget v5, p0, mTouchMode:I

    if-nez v5, :cond_5e

    iget-object v5, p0, mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    :goto_54
    invoke-virtual {p0, v5}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5769
    const/4 v5, 0x2

    iput v5, p0, mTouchMode:I

    .line 5770
    invoke-virtual {p0}, updateSelectorState()V

    goto :goto_23

    .line 5767
    :cond_5e
    iget-object v5, p0, mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    goto :goto_54

    .line 5771
    :cond_61
    if-eqz v0, :cond_23

    .line 5773
    iget-object v1, p0, mTmpPoint:[F

    .line 5774
    .local v1, "point":[F
    aput v3, v1, v7

    .line 5775
    int-to-float v5, v4

    aput v5, v1, v8

    .line 5776
    invoke-virtual {p0, v1, v0}, transformPointToViewLocal([FLandroid/view/View;)V

    .line 5777
    aget v5, v1, v7

    aget v6, v1, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    goto :goto_23

    .line 5782
    .end local v0    # "motionView":Landroid/view/View;
    .end local v1    # "point":[F
    .end local v3    # "x":F
    :pswitch_75
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_23

    .line 5749
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_75
        :pswitch_23
        :pswitch_75
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .registers 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5788
    move-object/from16 v0, p0

    iget v0, v0, mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_412

    .line 5931
    :cond_9
    :goto_9
    :pswitch_9
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, setPressed(Z)V

    .line 5933
    move-object/from16 v0, p0

    iget-object v0, v0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2c

    .line 5934
    move-object/from16 v0, p0

    iget-object v0, v0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5935
    move-object/from16 v0, p0

    iget-object v0, v0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5939
    :cond_2c
    invoke-virtual/range {p0 .. p0}, invalidate()V

    .line 5940
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5941
    invoke-direct/range {p0 .. p0}, recycleVelocityTracker()V

    .line 5943
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mActivePointerId:I

    .line 5944
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mPointerCount:I

    .line 5953
    move-object/from16 v0, p0

    iget-object v0, v0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_68

    .line 5954
    move-object/from16 v0, p0

    iget-object v0, v0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    .line 5955
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 5957
    :cond_68
    :goto_68
    return-void

    .line 5792
    :pswitch_69
    move-object/from16 v0, p0

    iget v13, v0, mMotionPosition:I

    .line 5793
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5794
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_233

    .line 5795
    move-object/from16 v0, p0

    iget v0, v0, mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_8e

    .line 5796
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5799
    :cond_8e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 5800
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

    .line 5801
    .local v10, "inList":Z
    :goto_c3
    if-eqz v10, :cond_233

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-nez v17, :cond_233

    .line 5802
    move-object/from16 v0, p0

    iget-object v0, v0, mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_e6

    .line 5803
    new-instance v17, Landroid/widget/AbsListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 5806
    :cond_e6
    move-object/from16 v0, p0

    iget-object v14, v0, mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 5807
    .local v14, "performClick":Landroid/widget/AbsListView$PerformClick;
    iput v13, v14, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 5808
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 5810
    move-object/from16 v0, p0

    iput v13, v0, mResurrectToPosition:I

    .line 5812
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

    .line 5813
    :cond_109
    move-object/from16 v0, p0

    iget v0, v0, mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_1e4

    move-object/from16 v0, p0

    iget-object v0, v0, mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    move-object/from16 v17, v0

    :goto_117
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5815
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mLayoutMode:I

    .line 5816
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

    .line 5817
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchMode:I

    .line 5818
    move-object/from16 v0, p0

    iget v0, v0, mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, setSelectedPositionInt(I)V

    .line 5819
    invoke-virtual/range {p0 .. p0}, layoutChildren()V

    .line 5820
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5821
    move-object/from16 v0, p0

    iget v0, v0, mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, positionSelector(ILandroid/view/View;)V

    .line 5822
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, setPressed(Z)V

    .line 5823
    move-object/from16 v0, p0

    iget-object v0, v0, mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a3

    .line 5824
    move-object/from16 v0, p0

    iget-object v0, v0, mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 5825
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_190

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_190

    .line 5826
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 5828
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

    .line 5830
    :cond_1a3
    move-object/from16 v0, p0

    iget-object v0, v0, mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b8

    .line 5831
    move-object/from16 v0, p0

    iget-object v0, v0, mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5833
    :cond_1b8
    new-instance v17, Landroid/widget/AbsListView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mTouchModeReset:Ljava/lang/Runnable;

    .line 5845
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

    .line 5800
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_1e1
    const/4 v10, 0x0

    goto/16 :goto_c3

    .line 5813
    .restart local v10    # "inList":Z
    .restart local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_1e4
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_117

    .line 5848
    :cond_1ec
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchMode:I

    .line 5849
    invoke-virtual/range {p0 .. p0}, updateSelectorState()V

    .line 5850
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

    .line 5851
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto/16 :goto_68

    .line 5855
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

    .line 5856
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 5860
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    .end local v16    # "x":F
    :cond_233
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchMode:I

    .line 5861
    invoke-virtual/range {p0 .. p0}, updateSelectorState()V

    goto/16 :goto_9

    .line 5864
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "motionPosition":I
    :pswitch_240
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v5

    .line 5865
    .local v5, "childCount":I
    if-lez v5, :cond_38f

    .line 5866
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v9

    .line 5867
    .local v9, "firstChildTop":I
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 5868
    .local v12, "lastChildBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 5869
    .local v7, "contentTop":I
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 5870
    .local v6, "contentBottom":I
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_2b9

    if-lt v9, v7, :cond_2b9

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

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v17

    sub-int v17, v17, v6

    move/from16 v0, v17

    if-gt v12, v0, :cond_2b9

    .line 5873
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchMode:I

    .line 5874
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, reportScrollStateChange(I)V

    goto/16 :goto_9

    .line 5876
    :cond_2b9
    move-object/from16 v0, p0

    iget-object v15, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5877
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

    .line 5879
    move-object/from16 v0, p0

    iget v0, v0, mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    .line 5885
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

    sub-int v17, v7, v17

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

    add-int v17, v17, v6

    move/from16 v0, v17

    if-eq v12, v0, :cond_35a

    .line 5890
    :cond_32c
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_343

    .line 5891
    new-instance v17, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5893
    :cond_343
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, reportScrollStateChange(I)V

    .line 5895
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_9

    .line 5897
    :cond_35a
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchMode:I

    .line 5898
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, reportScrollStateChange(I)V

    .line 5899
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_37c

    .line 5900
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5902
    :cond_37c
    move-object/from16 v0, p0

    iget-object v0, v0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 5903
    move-object/from16 v0, p0

    iget-object v0, v0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    goto/16 :goto_9

    .line 5908
    .end local v6    # "contentBottom":I
    .end local v7    # "contentTop":I
    .end local v9    # "firstChildTop":I
    .end local v11    # "initialVelocity":I
    .end local v12    # "lastChildBottom":I
    .end local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_38f
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchMode:I

    .line 5909
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, reportScrollStateChange(I)V

    goto/16 :goto_9

    .line 5914
    .end local v5    # "childCount":I
    :pswitch_3a2
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_3b9

    .line 5915
    new-instance v17, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5917
    :cond_3b9
    move-object/from16 v0, p0

    iget-object v15, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5918
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

    .line 5919
    move-object/from16 v0, p0

    iget v0, v0, mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 5921
    .restart local v11    # "initialVelocity":I
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, reportScrollStateChange(I)V

    .line 5922
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_407

    .line 5923
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_9

    .line 5925
    :cond_407
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_9

    .line 5788
    :pswitch_data_412
    .packed-switch 0x0
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_240
        :pswitch_9
        :pswitch_3a2
    .end packed-switch
.end method

.method private performStylusButtonPressAction(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 3905
    iget v5, p0, mChoiceMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2f

    iget-object v5, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_2f

    .line 3906
    iget v5, p0, mMotionPosition:I

    iget v6, p0, mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3907
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2f

    .line 3908
    iget v1, p0, mMotionPosition:I

    .line 3909
    .local v1, "longPressPosition":I
    iget-object v5, p0, mAdapter:Landroid/widget/ListAdapter;

    iget v6, p0, mMotionPosition:I

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3910
    .local v2, "longPressId":J
    invoke-virtual {p0, v0, v1, v2, v3}, performLongPress(Landroid/view/View;IJ)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 3911
    const/4 v5, -0x1

    iput v5, p0, mTouchMode:I

    .line 3912
    invoke-virtual {p0, v4}, setPressed(Z)V

    .line 3913
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 3914
    const/4 v4, 0x1

    .line 3918
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "longPressPosition":I
    .end local v2    # "longPressId":J
    :cond_2f
    return v4
.end method

.method private playQCBtnFadeIn()V
    .registers 3

    .prologue
    .line 9926
    iget-object v0, p0, mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9929
    :goto_8
    return-void

    .line 9927
    :cond_9
    iget-object v0, p0, mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1a

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 9928
    iget-object v0, p0, mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8

    .line 9927
    :array_1a
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private playQCBtnFadeOut()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 9932
    iget-object v0, p0, mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9935
    :goto_9
    return-void

    .line 9933
    :cond_a
    iget-object v0, p0, mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 9934
    iget-object v0, p0, mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_9
.end method

.method private positionPopup()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 7774
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7775
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 7776
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, getLocationOnScreen([I)V

    .line 7779
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

    .line 7780
    .local v0, "bottomGap":I
    iget-object v3, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_36

    .line 7781
    iget-object v3, p0, mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7786
    :goto_35
    return-void

    .line 7784
    :cond_36
    iget-object v3, p0, mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_35
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 3152
    iget v4, p0, mSelectorPosition:I

    if-eq p1, v4, :cond_88

    const/4 v1, 0x1

    .line 3153
    .local v1, "positionChanged":Z
    :goto_5
    const/4 v4, -0x1

    if-eq p1, v4, :cond_a

    .line 3154
    iput p1, p0, mSelectorPosition:I

    .line 3157
    :cond_a
    iget-object v3, p0, mSelectorRect:Landroid/graphics/Rect;

    .line 3158
    .local v3, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3159
    instance-of v4, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v4, :cond_29

    move-object v4, p2

    .line 3160
    check-cast v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v4, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 3164
    :cond_29
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 3165
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 3166
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 3167
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, mSelectionBottomPadding:I

    iget v6, p2, Landroid/view/View;->mTwExtraPaddingBottomForPreference:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3170
    iget-object v2, p0, mSelector:Landroid/graphics/drawable/Drawable;

    .line 3171
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_70

    .line 3172
    if-eqz v1, :cond_58

    .line 3175
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3176
    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3178
    :cond_58
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3179
    if-eqz v1, :cond_6b

    .line 3180
    invoke-virtual {p0}, getVisibility()I

    move-result v4

    if-nez v4, :cond_68

    .line 3181
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3183
    :cond_68
    invoke-virtual {p0}, updateSelectorState()V

    .line 3185
    :cond_6b
    if-eqz p3, :cond_70

    .line 3186
    invoke-virtual {v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3189
    :cond_70
    iget-boolean v0, p0, mIsChildViewEnabled:Z

    .line 3190
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eq v4, v0, :cond_87

    .line 3191
    if-nez v0, :cond_8b

    const/4 v4, 0x1

    :goto_7b
    iput-boolean v4, p0, mIsChildViewEnabled:Z

    .line 3192
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_87

    .line 3193
    invoke-virtual {p0}, refreshDrawableState()V

    .line 3196
    :cond_87
    return-void

    .line 3152
    .end local v0    # "isChildViewEnabled":Z
    .end local v1    # "positionChanged":Z
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_88
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 3191
    .restart local v0    # "isChildViewEnabled":Z
    .restart local v1    # "positionChanged":Z
    .restart local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_8b
    const/4 v4, 0x0

    goto :goto_7b
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .prologue
    .line 6310
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 6311
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6312
    const/4 v0, 0x0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6314
    :cond_c
    return-void
.end method

.method private registerMotionListener()V
    .registers 1

    .prologue
    .line 9297
    return-void
.end method

.method private releaseAllBoosters()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1044
    iget-boolean v0, p0, mDVFSLockAcquired:Z

    if-eqz v0, :cond_a

    .line 1045
    invoke-static {v1}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 1046
    iput-boolean v1, p0, mDVFSLockAcquired:Z

    .line 1048
    :cond_a
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .registers 40
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4327
    move-object/from16 v0, p0

    iget v3, v0, mMotionY:I

    sub-int v33, p2, v3

    .line 4328
    .local v33, "rawDeltaY":I
    const/16 v35, 0x0

    .line 4329
    .local v35, "scrollOffsetCorrection":I
    const/16 v34, 0x0

    .line 4330
    .local v34, "scrollConsumedCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, mLastY:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_18

    .line 4331
    move-object/from16 v0, p0

    iget v3, v0, mMotionCorrection:I

    sub-int v33, v33, v3

    .line 4333
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v3, v0, mLastY:I

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_152

    move-object/from16 v0, p0

    iget v3, v0, mLastY:I

    sub-int v3, v3, p2

    :goto_27
    move-object/from16 v0, p0

    iget-object v5, v0, mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v6, v0, mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5, v6}, dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 4335
    move-object/from16 v0, p0

    iget-object v3, v0, mScrollConsumed:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v33, v33, v3

    .line 4336
    move-object/from16 v0, p0

    iget-object v3, v0, mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v35, v0

    .line 4337
    move-object/from16 v0, p0

    iget-object v3, v0, mScrollConsumed:[I

    const/4 v4, 0x1

    aget v34, v3, v4

    .line 4338
    if-eqz p3, :cond_71

    .line 4339
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4340
    move-object/from16 v0, p0

    iget v3, v0, mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, mNestedYOffset:I

    .line 4343
    :cond_71
    move/from16 v20, v33

    .line 4344
    .local v20, "deltaY":I
    move-object/from16 v0, p0

    iget v3, v0, mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_157

    move-object/from16 v0, p0

    iget v3, v0, mLastY:I

    sub-int v3, p2, v3

    add-int v21, v3, v34

    .line 4346
    .local v21, "incrementalDeltaY":I
    :goto_83
    const/16 v22, 0x0

    .line 4348
    .local v22, "lastYCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_205

    .line 4356
    move-object/from16 v0, p0

    iget-object v3, v0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_9c

    .line 4358
    const-string v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4361
    :cond_9c
    move-object/from16 v0, p0

    iget v3, v0, mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_151

    .line 4365
    move-object/from16 v0, p0

    iget v3, v0, mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_c3

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, mTouchSlop:I

    if-le v3, v4, :cond_c3

    .line 4367
    invoke-virtual/range {p0 .. p0}, getParent()Landroid/view/ViewParent;

    move-result-object v32

    .line 4368
    .local v32, "parent":Landroid/view/ViewParent;
    if-eqz v32, :cond_c3

    .line 4369
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4374
    .end local v32    # "parent":Landroid/view/ViewParent;
    :cond_c3
    move-object/from16 v0, p0

    iget v3, v0, mMotionPosition:I

    if-ltz v3, :cond_15b

    .line 4375
    move-object/from16 v0, p0

    iget v3, v0, mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, mFirstPosition:I

    sub-int v23, v3, v4

    .line 4382
    .local v23, "motionIndex":I
    :goto_d3
    const/16 v26, 0x0

    .line 4383
    .local v26, "motionViewPrevTop":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4384
    .local v25, "motionView":Landroid/view/View;
    if-eqz v25, :cond_e3

    .line 4385
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v26

    .line 4389
    :cond_e3
    const/16 v18, 0x0

    .line 4390
    .local v18, "atEdge":Z
    if-eqz v21, :cond_f1

    .line 4391
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, trackMotionScroll(II)Z

    move-result v18

    .line 4395
    :cond_f1
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4396
    if-eqz v25, :cond_149

    .line 4399
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v27

    .line 4400
    .local v27, "motionViewRealTop":I
    if-eqz v18, :cond_141

    .line 4403
    move/from16 v0, v21

    neg-int v3, v0

    sub-int v4, v27, v26

    sub-int v7, v3, v4

    .line 4405
    .local v7, "overscroll":I
    const/4 v4, 0x0

    sub-int v5, v7, v21

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mScrollOffset:[I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_163

    .line 4407
    move-object/from16 v0, p0

    iget-object v3, v0, mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int v22, v22, v3

    .line 4408
    if-eqz p3, :cond_141

    .line 4409
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4410
    move-object/from16 v0, p0

    iget v3, v0, mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, mNestedYOffset:I

    .line 4447
    .end local v7    # "overscroll":I
    :cond_141
    :goto_141
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, mMotionY:I

    .line 4449
    .end local v27    # "motionViewRealTop":I
    :cond_149
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, mLastY:I

    .line 4519
    .end local v18    # "atEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    :cond_151
    :goto_151
    return-void

    .line 4333
    .end local v20    # "deltaY":I
    .end local v21    # "incrementalDeltaY":I
    .end local v22    # "lastYCorrection":I
    :cond_152
    move/from16 v0, v33

    neg-int v3, v0

    goto/16 :goto_27

    .restart local v20    # "deltaY":I
    :cond_157
    move/from16 v21, v20

    .line 4344
    goto/16 :goto_83

    .line 4379
    .restart local v21    # "incrementalDeltaY":I
    .restart local v22    # "lastYCorrection":I
    :cond_15b
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v3

    div-int/lit8 v23, v3, 0x2

    .restart local v23    # "motionIndex":I
    goto/16 :goto_d3

    .line 4413
    .restart local v7    # "overscroll":I
    .restart local v18    # "atEdge":Z
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v26    # "motionViewPrevTop":I
    .restart local v27    # "motionViewRealTop":I
    :cond_163
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, mScrollY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, mOverscrollDistance:I

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, overScrollBy(IIIIIIIIZ)Z

    move-result v19

    .line 4416
    .local v19, "atOverscrollEdge":Z
    if-eqz v19, :cond_186

    move-object/from16 v0, p0

    iget-object v3, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_186

    .line 4418
    move-object/from16 v0, p0

    iget-object v3, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 4421
    :cond_186
    invoke-virtual/range {p0 .. p0}, getOverScrollMode()I

    move-result v31

    .line 4422
    .local v31, "overscrollMode":I
    if-eqz v31, :cond_197

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_141

    invoke-direct/range {p0 .. p0}, contentFits()Z

    move-result v3

    if-nez v3, :cond_141

    .line 4425
    :cond_197
    if-nez v19, :cond_1a3

    .line 4426
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, mDirection:I

    .line 4427
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, mTouchMode:I

    .line 4429
    :cond_1a3
    if-lez v21, :cond_1d3

    .line 4430
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4432
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1ce

    .line 4433
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4435
    :cond_1ce
    invoke-direct/range {p0 .. p0}, invalidateTopGlow()V

    goto/16 :goto_141

    .line 4436
    :cond_1d3
    if-gez v21, :cond_141

    .line 4437
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4439
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_200

    .line 4440
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4442
    :cond_200
    invoke-direct/range {p0 .. p0}, invalidateBottomGlow()V

    goto/16 :goto_141

    .line 4451
    .end local v7    # "overscroll":I
    .end local v18    # "atEdge":Z
    .end local v19    # "atOverscrollEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    .end local v27    # "motionViewRealTop":I
    .end local v31    # "overscrollMode":I
    :cond_205
    move-object/from16 v0, p0

    iget v3, v0, mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_151

    .line 4452
    move-object/from16 v0, p0

    iget v3, v0, mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_151

    .line 4453
    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v30, v0

    .line 4454
    .local v30, "oldScroll":I
    sub-int v29, v30, v21

    .line 4455
    .local v29, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, mLastY:I

    move/from16 v0, p2

    if-le v0, v3, :cond_2f5

    const/16 v28, 0x1

    .line 4457
    .local v28, "newDirection":I
    :goto_226
    move-object/from16 v0, p0

    iget v3, v0, mDirection:I

    if-nez v3, :cond_232

    .line 4458
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, mDirection:I

    .line 4461
    :cond_232
    move/from16 v0, v21

    neg-int v10, v0

    .line 4462
    .local v10, "overScrollDistance":I
    if-gez v29, :cond_239

    if-gez v30, :cond_23d

    :cond_239
    if-lez v29, :cond_2f9

    if-gtz v30, :cond_2f9

    .line 4463
    :cond_23d
    move/from16 v0, v30

    neg-int v10, v0

    .line 4464
    add-int v21, v21, v10

    .line 4469
    :goto_242
    if-eqz v10, :cond_298

    .line 4470
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mOverscrollDistance:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v17}, overScrollBy(IIIIIIIIZ)Z

    .line 4472
    invoke-virtual/range {p0 .. p0}, getOverScrollMode()I

    move-result v31

    .line 4473
    .restart local v31    # "overscrollMode":I
    if-eqz v31, :cond_26b

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_298

    invoke-direct/range {p0 .. p0}, contentFits()Z

    move-result v3

    if-nez v3, :cond_298

    .line 4476
    :cond_26b
    if-lez v33, :cond_2fd

    .line 4477
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4479
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_295

    .line 4480
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4482
    :cond_295
    invoke-direct/range {p0 .. p0}, invalidateTopGlow()V

    .line 4494
    .end local v31    # "overscrollMode":I
    :cond_298
    :goto_298
    if-eqz v21, :cond_2e5

    .line 4496
    move-object/from16 v0, p0

    iget v3, v0, mScrollY:I

    if-eqz v3, :cond_2a8

    .line 4497
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, mScrollY:I

    .line 4498
    invoke-virtual/range {p0 .. p0}, invalidateParentIfNeeded()V

    .line 4501
    :cond_2a8
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, trackMotionScroll(II)Z

    .line 4503
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, mTouchMode:I

    .line 4507
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, findClosestMotionRow(I)I

    move-result v24

    .line 4509
    .local v24, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, mMotionCorrection:I

    .line 4510
    move-object/from16 v0, p0

    iget v3, v0, mFirstPosition:I

    sub-int v3, v24, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4511
    .restart local v25    # "motionView":Landroid/view/View;
    if-eqz v25, :cond_32f

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_2d5
    move-object/from16 v0, p0

    iput v3, v0, mMotionViewOriginalTop:I

    .line 4512
    add-int v3, p2, v35

    move-object/from16 v0, p0

    iput v3, v0, mMotionY:I

    .line 4513
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, mMotionPosition:I

    .line 4515
    .end local v24    # "motionPosition":I
    .end local v25    # "motionView":Landroid/view/View;
    :cond_2e5
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, mLastY:I

    .line 4516
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, mDirection:I

    goto/16 :goto_151

    .line 4455
    .end local v10    # "overScrollDistance":I
    .end local v28    # "newDirection":I
    :cond_2f5
    const/16 v28, -0x1

    goto/16 :goto_226

    .line 4466
    .restart local v10    # "overScrollDistance":I
    .restart local v28    # "newDirection":I
    :cond_2f9
    const/16 v21, 0x0

    goto/16 :goto_242

    .line 4483
    .restart local v31    # "overscrollMode":I
    :cond_2fd
    if-gez v33, :cond_298

    .line 4484
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4486
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_32a

    .line 4487
    move-object/from16 v0, p0

    iget-object v3, v0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4489
    :cond_32a
    invoke-direct/range {p0 .. p0}, invalidateBottomGlow()V

    goto/16 :goto_298

    .line 4511
    .end local v31    # "overscrollMode":I
    .restart local v24    # "motionPosition":I
    .restart local v25    # "motionView":Landroid/view/View;
    :cond_32f
    const/4 v3, 0x0

    goto :goto_2d5
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1812
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_9

    .line 1813
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1815
    :cond_9
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1748
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_16

    .line 1749
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 1755
    :cond_9
    :goto_9
    invoke-virtual {p0}, resolvePadding()V

    .line 1757
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_15

    .line 1758
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 1760
    :cond_15
    return-void

    .line 1750
    :cond_16
    if-eqz p1, :cond_9

    .line 1751
    new-instance v0, Landroid/widget/FastScroller;

    iget v1, p0, mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    .line 1752
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_9
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2985
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2987
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_2e

    .line 2988
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 2995
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_c
    iget-boolean v2, p0, mAdapterHasStableIds:Z

    if-eqz v2, :cond_18

    .line 2996
    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 2998
    :cond_18
    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2999
    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 3000
    if-eq v0, v1, :cond_2d

    .line 3001
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3003
    :cond_2d
    return-void

    .line 2989
    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2e
    invoke-virtual {p0, v1}, checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 2990
    invoke-virtual {p0, v1}, generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_c

    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_3b
    move-object v0, v1

    .line 2992
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_c
.end method

.method private setupQuickController(I)V
    .registers 25
    .param p1, "where"    # I

    .prologue
    .line 9752
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v17

    .line 9753
    .local v17, "w":I
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v11

    .line 9754
    .local v11, "h":I
    move-object/from16 v0, p0

    iget v0, v0, mPaddingLeft:I

    move/from16 v18, v0

    sub-int v18, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, mPaddingRight:I

    move/from16 v19, v0

    sub-int v9, v18, v19

    .line 9755
    .local v9, "contentW":I
    move-object/from16 v0, p0

    iget v0, v0, mPaddingLeft:I

    move/from16 v18, v0

    div-int/lit8 v19, v9, 0x2

    add-int v7, v18, v19

    .line 9757
    .local v7, "centerX":I
    const/16 v16, 0x0

    .line 9758
    .local v16, "paddingTop":I
    const/4 v15, 0x0

    .line 9760
    .local v15, "paddingBottom":I
    const/4 v6, 0x0

    .line 9761
    .local v6, "btnW":I
    const/4 v5, 0x0

    .line 9763
    .local v5, "btnH":I
    move-object/from16 v0, p0

    iget v13, v0, mQCLocation:I

    .line 9764
    .local v13, "oldLocation":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mQCLocation:I

    .line 9766
    const/4 v8, 0x1

    .line 9767
    .local v8, "checkBoundary":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    .line 9768
    .local v4, "basePkgName":Ljava/lang/String;
    if-eqz v4, :cond_53

    const-string v18, "cocktailbarservice"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_52

    const-string v18, "com.sec.android.app.launcher"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_53

    .line 9771
    :cond_52
    const/4 v8, 0x0

    .line 9776
    :cond_53
    if-eqz v8, :cond_c0

    .line 9777
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v12, v0, [I

    fill-array-data v12, :array_28a

    .line 9778
    .local v12, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, getLocationOnScreen([I)V

    .line 9779
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 9782
    .local v10, "dm":Landroid/util/DisplayMetrics;
    const/16 v18, 0x0

    aget v18, v12, v18

    if-gez v18, :cond_8e

    .line 9783
    const/16 v18, 0x0

    aget v18, v12, v18

    move/from16 v0, v18

    neg-int v14, v0

    .line 9784
    .local v14, "overlappedW":I
    move-object/from16 v0, p0

    iget v0, v0, mPaddingLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v14, v0, :cond_8e

    .line 9785
    move-object/from16 v0, p0

    iget v0, v0, mPaddingLeft:I

    move/from16 v18, v0

    sub-int v18, v14, v18

    div-int/lit8 v18, v18, 0x2

    add-int v7, v7, v18

    .line 9790
    .end local v14    # "overlappedW":I
    :cond_8e
    const/16 v18, 0x0

    aget v18, v12, v18

    add-int v18, v18, v17

    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c0

    .line 9791
    const/16 v18, 0x0

    aget v18, v12, v18

    add-int v18, v18, v17

    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    sub-int v14, v18, v19

    .line 9792
    .restart local v14    # "overlappedW":I
    move-object/from16 v0, p0

    iget v0, v0, mPaddingRight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v14, v0, :cond_c0

    .line 9793
    move-object/from16 v0, p0

    iget v0, v0, mPaddingRight:I

    move/from16 v18, v0

    sub-int v18, v14, v18

    div-int/lit8 v18, v18, 0x2

    sub-int v7, v7, v18

    .line 9798
    .end local v10    # "dm":Landroid/util/DisplayMetrics;
    .end local v12    # "locOnScr":[I
    .end local v14    # "overlappedW":I
    :cond_c0
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsEnabledPaddingInHoverScroll:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_184

    .line 9799
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 9800
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    .line 9805
    :goto_e4
    packed-switch p1, :pswitch_data_292

    .line 9841
    :goto_e7
    move-object/from16 v0, p0

    iget-object v0, v0, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mQCRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 9842
    move-object/from16 v0, p0

    iget-object v0, v0, mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mQCRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 9844
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_29e

    invoke-static/range {v18 .. v18}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 9845
    move-object/from16 v0, p0

    iget-object v0, v0, mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x96

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9847
    move-object/from16 v0, p0

    iget-object v0, v0, mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/AbsListView$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$7;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9858
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_2a6

    invoke-static/range {v18 .. v18}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 9859
    move-object/from16 v0, p0

    iget-object v0, v0, mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x96

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9861
    move-object/from16 v0, p0

    iget-object v0, v0, mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/AbsListView$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$8;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9872
    move-object/from16 v0, p0

    iget-object v0, v0, mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/AbsListView$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$9;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9887
    return-void

    .line 9802
    :cond_184
    move-object/from16 v0, p0

    iget v0, v0, mExtraPaddingInTopHoverArea:I

    move/from16 v16, v0

    .line 9803
    move-object/from16 v0, p0

    iget v15, v0, mExtraPaddingInBottomHoverArea:I

    goto/16 :goto_e4

    .line 9807
    :pswitch_190
    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_e7

    .line 9811
    :pswitch_1a5
    move-object/from16 v0, p0

    iget v0, v0, mQCLocation:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v13, :cond_1d1

    .line 9812
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x108053d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 9813
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x108053e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 9816
    :cond_1d1
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1050293

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 9817
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1050293

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 9818
    new-instance v18, Landroid/graphics/Rect;

    div-int/lit8 v19, v6, 0x2

    sub-int v19, v7, v19

    add-int/lit8 v20, v16, 0x0

    div-int/lit8 v21, v6, 0x2

    add-int v21, v21, v7

    add-int v22, v5, v16

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_e7

    .line 9822
    :pswitch_20c
    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_e7

    .line 9826
    :pswitch_221
    move-object/from16 v0, p0

    iget v0, v0, mQCLocation:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v13, :cond_24d

    .line 9827
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x108053b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 9828
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x108053c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 9831
    :cond_24d
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1050293

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 9832
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1050293

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 9833
    new-instance v18, Landroid/graphics/Rect;

    div-int/lit8 v19, v6, 0x2

    sub-int v19, v7, v19

    sub-int v20, v11, v5

    sub-int v20, v20, v15

    div-int/lit8 v21, v6, 0x2

    add-int v21, v21, v7

    sub-int v22, v11, v15

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_e7

    .line 9777
    :array_28a
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 9805
    :pswitch_data_292
    .packed-switch 0x1
        :pswitch_190
        :pswitch_1a5
        :pswitch_20c
        :pswitch_221
    .end packed-switch

    .line 9844
    :array_29e
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 9858
    :array_2a6
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private showPointerIcon(I)Z
    .registers 6
    .param p1, "iconId"    # I

    .prologue
    .line 9571
    const/4 v1, -0x1

    :try_start_1
    invoke-static {p1, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_6

    .line 9573
    const/4 v1, 0x1

    .line 9576
    :goto_5
    return v1

    .line 9574
    :catch_6
    move-exception v0

    .line 9575
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change PointerIcon to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9576
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private showPopup()V
    .registers 2

    .prologue
    .line 7765
    invoke-virtual {p0}, getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 7766
    const/4 v0, 0x1

    invoke-direct {p0, v0}, createTextFilter(Z)V

    .line 7767
    invoke-direct {p0}, positionPopup()V

    .line 7769
    invoke-virtual {p0}, checkFocus()V

    .line 7771
    :cond_10
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4281
    iget v7, p0, mMotionY:I

    sub-int v1, p2, v7

    .line 4282
    .local v1, "deltaY":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4283
    .local v2, "distance":I
    iget v7, p0, mScrollY:I

    if-eqz v7, :cond_52

    move v5, v8

    .line 4284
    .local v5, "overscroll":Z
    :goto_f
    if-nez v5, :cond_15

    iget v7, p0, mTouchSlop:I

    if-le v2, v7, :cond_73

    :cond_15
    invoke-virtual {p0}, getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_73

    .line 4286
    invoke-direct {p0}, createScrollingCache()V

    .line 4287
    if-eqz v5, :cond_54

    .line 4288
    const/4 v7, 0x5

    iput v7, p0, mTouchMode:I

    .line 4289
    iput v9, p0, mMotionCorrection:I

    .line 4294
    :goto_27
    iget-object v7, p0, mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v7}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4295
    invoke-virtual {p0, v9}, setPressed(Z)V

    .line 4296
    iget v7, p0, mMotionPosition:I

    iget v10, p0, mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4297
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_3d

    .line 4298
    invoke-virtual {v4, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4301
    :cond_3d
    iget v7, p0, mPointerCount:I

    if-le v7, v8, :cond_62

    .line 4307
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 4308
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_46
    if-ge v3, v0, :cond_62

    .line 4309
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4308
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_52
    move v5, v9

    .line 4283
    goto :goto_f

    .line 4291
    .restart local v5    # "overscroll":Z
    :cond_54
    const/4 v7, 0x3

    iput v7, p0, mTouchMode:I

    .line 4292
    if-lez v1, :cond_5e

    iget v7, p0, mTouchSlop:I

    :goto_5b
    iput v7, p0, mMotionCorrection:I

    goto :goto_27

    :cond_5e
    iget v7, p0, mTouchSlop:I

    neg-int v7, v7

    goto :goto_5b

    .line 4312
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_62
    invoke-virtual {p0, v8}, reportScrollStateChange(I)V

    .line 4315
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 4316
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_6e

    .line 4317
    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4319
    :cond_6e
    invoke-direct {p0, p1, p2, p3}, scrollIfNeeded(IILandroid/view/MotionEvent;)V

    move v7, v8

    .line 4323
    .end local v4    # "motionView":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :goto_72
    return v7

    :cond_73
    move v7, v9

    goto :goto_72
.end method

.method private totwNotifyMultiSelectedStop(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4275
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->twNotifyMultiSelectedStop(II)V

    .line 4277
    return-void
.end method

.method private twNotifyMultiSelectState(Landroid/view/View;IJ)Z
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1569
    const/4 v0, 0x0

    .line 1570
    .local v0, "handledNotifyMultiSelect":Z
    iget-boolean v6, p0, mIsShiftkeyPressed:Z

    iget-boolean v7, p0, mIsCtrlkeyPressed:Z

    iget-boolean v8, p0, mIsPenPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v8}, Landroid/widget/AdapterView;->twNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    .line 1572
    return v0
.end method

.method private twSetFluidScrollStyle(I)V
    .registers 3
    .param p1, "styleResId"    # I

    .prologue
    .line 10071
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    if-nez v0, :cond_7

    .line 10072
    iput p1, p0, mFastScrollStyle:I

    .line 10076
    :goto_6
    return-void

    .line 10074
    :cond_7
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FluidScroller;->setStyle(I)V

    goto :goto_6
.end method

.method private twSetFluidScrollerEnabledUiThread(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 10050
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v0, :cond_16

    .line 10051
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FluidScroller;->setEnabled(Z)V

    .line 10057
    :cond_9
    :goto_9
    invoke-virtual {p0}, resolvePadding()V

    .line 10059
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v0, :cond_15

    .line 10060
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v0}, Landroid/widget/FluidScroller;->updateLayout()V

    .line 10062
    :cond_15
    return-void

    .line 10052
    :cond_16
    if-eqz p1, :cond_9

    .line 10053
    new-instance v0, Landroid/widget/FluidScroller;

    iget v1, p0, mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FluidScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    .line 10054
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FluidScroller;->setEnabled(Z)V

    goto :goto_9
.end method

.method private unregisterMotionListener()V
    .registers 1

    .prologue
    .line 9307
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .registers 9

    .prologue
    .line 1581
    iget v2, p0, mFirstPosition:I

    .line 1582
    .local v2, "firstPos":I
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 1583
    .local v1, "count":I
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_30

    const/4 v5, 0x1

    .line 1585
    .local v5, "useActivated":Z
    :goto_15
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v1, :cond_3e

    .line 1586
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1587
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1589
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_32

    .line 1590
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1585
    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1583
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_30
    const/4 v5, 0x0

    goto :goto_15

    .line 1591
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_32
    if-eqz v5, :cond_2d

    .line 1592
    iget-object v6, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2d

    .line 1595
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3e
    return-void
.end method

.method private useDefaultSelector()V
    .registers 3

    .prologue
    .line 2208
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2210
    return-void
.end method


# virtual methods
.method public addExtraPaddingInBottomHoverArea(I)V
    .registers 5
    .param p1, "extraSpace"    # I

    .prologue
    .line 4661
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, mExtraPaddingInBottomHoverArea:I

    .line 4664
    return-void
.end method

.method public addExtraPaddingInTopHoverArea(I)V
    .registers 5
    .param p1, "extraSpace"    # I

    .prologue
    .line 4652
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, mExtraPaddingInTopHoverArea:I

    .line 4655
    return-void
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
    .line 6458
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    .line 6459
    .local v2, "count":I
    iget v3, p0, mFirstPosition:I

    .line 6460
    .local v3, "firstPosition":I
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 6462
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_b

    .line 6473
    :cond_a
    return-void

    .line 6466
    :cond_b
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v2, :cond_a

    .line 6467
    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6468
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 6469
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6471
    :cond_1d
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 6466
    add-int/lit8 v4, v4, 0x1

    goto :goto_c
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 8232
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 8191
    return-void
.end method

.method public canScrollList(I)Z
    .registers 12
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7127
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 7128
    .local v0, "childCount":I
    if-nez v0, :cond_9

    .line 7140
    :cond_8
    :goto_8
    return v6

    .line 7132
    :cond_9
    iget v1, p0, mFirstPosition:I

    .line 7133
    .local v1, "firstPosition":I
    iget-object v5, p0, mListPadding:Landroid/graphics/Rect;

    .line 7134
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_2a

    .line 7135
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 7136
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 7137
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

    .line 7139
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_2a
    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 7140
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
    .line 8104
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
    .line 8260
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .registers 2

    .prologue
    .line 1406
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_9

    .line 1407
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1409
    :cond_9
    iget-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_12

    .line 1410
    iget-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1412
    :cond_12
    const/4 v0, 0x0

    iput v0, p0, mCheckedItemCount:I

    .line 1413
    return-void
.end method

.method public clearTextFilter()V
    .registers 3

    .prologue
    .line 8153
    iget-boolean v0, p0, mFiltered:Z

    if-eqz v0, :cond_1f

    .line 8154
    invoke-direct {p0}, getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8155
    const/4 v0, 0x0

    iput-boolean v0, p0, mFiltered:Z

    .line 8156
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1f

    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 8157
    invoke-direct {p0}, dismissPopup()V

    .line 8160
    :cond_1f
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 2576
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 2577
    .local v1, "count":I
    if-lez v1, :cond_3c

    .line 2578
    iget-boolean v7, p0, mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_3a

    .line 2579
    mul-int/lit8 v2, v1, 0x64

    .line 2581
    .local v2, "extent":I
    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2582
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2583
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2584
    .local v3, "height":I
    if-lez v3, :cond_1f

    .line 2585
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 2588
    :cond_1f
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2589
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2590
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2591
    if-lez v3, :cond_39

    .line 2592
    invoke-virtual {p0}, getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 2600
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_39
    :goto_39
    return v2

    .line 2597
    :cond_3a
    const/4 v2, 0x1

    goto :goto_39

    :cond_3c
    move v2, v6

    .line 2600
    goto :goto_39
.end method

.method protected computeVerticalScrollOffset()I
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 2605
    iget v2, p0, mFirstPosition:I

    .line 2606
    .local v2, "firstPosition":I
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 2607
    .local v0, "childCount":I
    if-ltz v2, :cond_39

    if-lez v0, :cond_39

    .line 2608
    iget-boolean v8, p0, mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_3a

    .line 2609
    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2610
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2611
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2612
    .local v3, "height":I
    if-lez v3, :cond_39

    .line 2613
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, getHeight()I

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

    .line 2629
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_39
    :goto_39
    return v7

    .line 2618
    :cond_3a
    iget v1, p0, mItemCount:I

    .line 2619
    .local v1, "count":I
    if-nez v2, :cond_48

    .line 2620
    const/4 v4, 0x0

    .line 2626
    .local v4, "index":I
    :goto_3f
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_39

    .line 2621
    .end local v4    # "index":I
    :cond_48
    add-int v7, v2, v0

    if-ne v7, v1, :cond_4e

    .line 2622
    move v4, v1

    .restart local v4    # "index":I
    goto :goto_3f

    .line 2624
    .end local v4    # "index":I
    :cond_4e
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4    # "index":I
    goto :goto_3f
.end method

.method protected computeVerticalScrollRange()I
    .registers 4

    .prologue
    .line 2635
    iget-boolean v1, p0, mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_28

    .line 2636
    iget v1, p0, mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2637
    .local v0, "result":I
    iget v1, p0, mScrollY:I

    if-eqz v1, :cond_27

    .line 2639
    iget v1, p0, mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, getHeight()I

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

    .line 2644
    :cond_27
    :goto_27
    return v0

    .line 2642
    .end local v0    # "result":I
    :cond_28
    iget v0, p0, mItemCount:I

    .restart local v0    # "result":I
    goto :goto_27
.end method

.method confirmCheckedPositionsById()V
    .registers 19

    .prologue
    .line 7539
    move-object/from16 v0, p0

    iget-object v3, v0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 7541
    const/4 v2, 0x0

    .line 7542
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_af

    .line 7543
    move-object/from16 v0, p0

    iget-object v3, v0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 7544
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 7546
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 7547
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_a6

    .line 7549
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 7550
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 7551
    .local v10, "end":I
    const/4 v11, 0x0

    .line 7552
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_49
    move/from16 v0, v16

    if-ge v0, v10, :cond_71

    .line 7553
    move-object/from16 v0, p0

    iget-object v3, v0, mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 7554
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_a3

    .line 7555
    const/4 v11, 0x1

    .line 7556
    move-object/from16 v0, p0

    iget-object v3, v0, mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 7557
    move-object/from16 v0, p0

    iget-object v3, v0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 7562
    .end local v14    # "searchId":J
    :cond_71
    if-nez v11, :cond_9f

    .line 7563
    move-object/from16 v0, p0

    iget-object v3, v0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 7564
    add-int/lit8 v9, v9, -0x1

    .line 7565
    move-object/from16 v0, p0

    iget v3, v0, mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, mCheckedItemCount:I

    .line 7566
    const/4 v2, 0x1

    .line 7567
    move-object/from16 v0, p0

    iget-object v3, v0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9f

    move-object/from16 v0, p0

    iget-object v3, v0, mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_9f

    .line 7568
    move-object/from16 v0, p0

    iget-object v3, v0, mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 7542
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_9f
    :goto_9f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9

    .line 7552
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_a3
    add-int/lit8 v16, v16, 0x1

    goto :goto_49

    .line 7573
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

    .line 7577
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_af
    if-eqz v2, :cond_be

    move-object/from16 v0, p0

    iget-object v3, v0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_be

    .line 7578
    move-object/from16 v0, p0

    iget-object v3, v0, mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 7580
    :cond_be
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3747
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .registers 2

    .prologue
    .line 6830
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .registers 2

    .prologue
    .line 8407
    const/4 v0, 0x1

    iput-boolean v0, p0, mDeferNotifyDataSetChanged:Z

    .line 8408
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 20
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 5002
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    .line 5004
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v5

    .line 5005
    .local v5, "cd":Landroid/content/ClipDescription;
    if-eqz v5, :cond_16

    const-string v13, "cropUri"

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1b

    .line 5006
    :cond_16
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    .line 5154
    :goto_1a
    return v13

    .line 5010
    :cond_1b
    const/4 v13, 0x1

    if-ne v2, v13, :cond_47

    .line 5011
    move-object/from16 v0, p0

    iget v13, v0, mDragScrollWorkingZonePx:I

    if-gtz v13, :cond_3f

    .line 5012
    const/4 v13, 0x1

    const/high16 v14, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, mDragScrollWorkingZonePx:I

    .line 5016
    :cond_3f
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    if-nez v13, :cond_45

    :cond_45
    const/4 v13, 0x1

    goto :goto_1a

    .line 5019
    :cond_47
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 5020
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 5021
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v7

    .line 5022
    .local v7, "childCount":I
    const/4 v8, 0x0

    .line 5023
    .local v8, "contentBottom":I
    const/4 v10, 0x0

    .line 5024
    .local v10, "lastChildBottom":I
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v9

    .line 5028
    .local v9, "count":I
    if-eqz v7, :cond_61

    .line 5029
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v8

    .line 5033
    :cond_61
    move-object/from16 v0, p0

    iget v13, v0, mFirstPosition:I

    add-int/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, mItemCount:I

    if-ge v13, v14, :cond_130

    const/4 v3, 0x1

    .line 5035
    .local v3, "canScrollDown":Z
    :goto_6d
    if-nez v3, :cond_9c

    if-lez v9, :cond_9c

    .line 5036
    add-int/lit8 v13, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5037
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, mBottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-gt v13, v14, :cond_9b

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-le v13, v14, :cond_133

    :cond_9b
    const/4 v3, 0x1

    .line 5042
    .end local v6    # "child":Landroid/view/View;
    :cond_9c
    :goto_9c
    move-object/from16 v0, p0

    iget v13, v0, mFirstPosition:I

    if-lez v13, :cond_136

    const/4 v4, 0x1

    .line 5044
    .local v4, "canScrollUp":Z
    :goto_a3
    if-nez v4, :cond_bf

    .line 5045
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v13

    if-lez v13, :cond_bf

    .line 5046
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5047
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-ge v13, v14, :cond_139

    const/4 v4, 0x1

    .line 5052
    .end local v6    # "child":Landroid/view/View;
    :cond_bf
    :goto_bf
    move-object/from16 v0, p0

    iget v13, v0, mDragScrollWorkingZonePx:I

    if-le v12, v13, :cond_cd

    move-object/from16 v0, p0

    iget v13, v0, mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_d9

    :cond_cd
    if-lez v11, :cond_d9

    invoke-virtual/range {p0 .. p0}, getRight()I

    move-result v13

    if-gt v11, v13, :cond_d9

    if-nez v4, :cond_13b

    if-nez v3, :cond_13b

    .line 5055
    :cond_d9
    move-object/from16 v0, p0

    iget-object v13, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-eqz v13, :cond_f2

    move-object/from16 v0, p0

    iget-object v13, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_f2

    .line 5056
    move-object/from16 v0, p0

    iget-object v13, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5059
    :cond_f2
    move-object/from16 v0, p0

    iget-boolean v13, v0, mIsHoverOverscrolled:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_103

    move-object/from16 v0, p0

    iget-wide v14, v0, mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_108

    .line 5060
    :cond_103
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsHoverOverscrolled:Z

    .line 5063
    :cond_108
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, mHoverRecognitionStartTime:J

    .line 5064
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, mHoverScrollStartTime:J

    .line 5065
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mHoverAreaEnter:Z

    .line 5068
    const/4 v13, 0x2

    if-ne v2, v13, :cond_12a

    move-object/from16 v0, p0

    iget-boolean v13, v0, mIsDragScrolled:Z

    if-eqz v13, :cond_12a

    .line 5069
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsDragScrolled:Z

    .line 5070
    invoke-virtual/range {p0 .. p1}, resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 5073
    :cond_12a
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_1a

    .line 5033
    .end local v3    # "canScrollDown":Z
    .end local v4    # "canScrollUp":Z
    :cond_130
    const/4 v3, 0x0

    goto/16 :goto_6d

    .line 5037
    .restart local v3    # "canScrollDown":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_133
    const/4 v3, 0x0

    goto/16 :goto_9c

    .line 5042
    .end local v6    # "child":Landroid/view/View;
    :cond_136
    const/4 v4, 0x0

    goto/16 :goto_a3

    .line 5047
    .restart local v4    # "canScrollUp":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_139
    const/4 v4, 0x0

    goto :goto_bf

    .line 5077
    .end local v6    # "child":Landroid/view/View;
    :cond_13b
    move-object/from16 v0, p0

    iget-object v13, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v13, :cond_14c

    .line 5078
    new-instance v13, Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 5080
    :cond_14c
    move-object/from16 v0, p0

    iget-boolean v13, v0, mHoverAreaEnter:Z

    if-nez v13, :cond_15a

    .line 5081
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, mHoverScrollStartTime:J

    .line 5083
    :cond_15a
    packed-switch v2, :pswitch_data_270

    .line 5154
    :cond_15d
    :goto_15d
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_1a

    .line 5085
    :pswitch_163
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mHoverAreaEnter:Z

    .line 5086
    if-ltz v12, :cond_196

    move-object/from16 v0, p0

    iget v13, v0, mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_196

    .line 5088
    move-object/from16 v0, p0

    iget-object v13, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15d

    .line 5089
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsDragScrolled:Z

    .line 5090
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, mHoverRecognitionStartTime:J

    .line 5091
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, mHoverScrollDirection:I

    .line 5092
    move-object/from16 v0, p0

    iget-object v13, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_15d

    .line 5094
    :cond_196
    move-object/from16 v0, p0

    iget v13, v0, mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_15d

    if-gt v12, v8, :cond_15d

    .line 5096
    move-object/from16 v0, p0

    iget-object v13, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15d

    .line 5097
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsDragScrolled:Z

    .line 5098
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, mHoverRecognitionStartTime:J

    .line 5099
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, mHoverScrollDirection:I

    .line 5100
    move-object/from16 v0, p0

    iget-object v13, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_15d

    .line 5106
    :pswitch_1c6
    move-object/from16 v0, p0

    iget-boolean v13, v0, mHoverAreaEnter:Z

    if-nez v13, :cond_1d1

    .line 5107
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mHoverAreaEnter:Z

    .line 5110
    :cond_1d1
    if-ltz v12, :cond_200

    move-object/from16 v0, p0

    iget v13, v0, mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_200

    .line 5112
    move-object/from16 v0, p0

    iget-object v13, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15d

    .line 5113
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsDragScrolled:Z

    .line 5114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, mHoverRecognitionStartTime:J

    .line 5115
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, mHoverScrollDirection:I

    .line 5116
    move-object/from16 v0, p0

    iget-object v13, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_15d

    .line 5118
    :cond_200
    move-object/from16 v0, p0

    iget v13, v0, mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_15d

    if-gt v12, v8, :cond_15d

    .line 5120
    move-object/from16 v0, p0

    iget-object v13, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15d

    .line 5121
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsDragScrolled:Z

    .line 5122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, mHoverRecognitionStartTime:J

    .line 5123
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, mHoverScrollDirection:I

    .line 5124
    move-object/from16 v0, p0

    iget-object v13, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_15d

    .line 5131
    :pswitch_231
    move-object/from16 v0, p0

    iget-boolean v13, v0, mIsDragScrolled:Z

    if-eqz v13, :cond_23f

    .line 5132
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsDragScrolled:Z

    .line 5133
    invoke-virtual/range {p0 .. p1}, resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 5139
    :cond_23f
    :pswitch_23f
    move-object/from16 v0, p0

    iget-object v13, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_252

    .line 5140
    move-object/from16 v0, p0

    iget-object v13, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5142
    :cond_252
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsDragScrolled:Z

    .line 5144
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, mHoverRecognitionStartTime:J

    .line 5145
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, mHoverScrollStartTime:J

    .line 5146
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsHoverOverscrolled:Z

    .line 5147
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mHoverAreaEnter:Z

    goto/16 :goto_15d

    .line 5083
    nop

    :pswitch_data_270
    .packed-switch 0x2
        :pswitch_1c6
        :pswitch_231
        :pswitch_23f
        :pswitch_163
        :pswitch_23f
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x1

    .line 3200
    const/4 v4, 0x0

    .line 3201
    .local v4, "saveCount":I
    const/4 v7, 0x0

    .line 3202
    .local v7, "trackChildTop":I
    const/4 v2, 0x0

    .line 3203
    .local v2, "firstChildPosition":I
    const/4 v3, 0x0

    .line 3205
    .local v3, "lastChildPosition":I
    iget v9, p0, mGroupFlags:I

    and-int/lit8 v9, v9, 0x22

    const/16 v10, 0x22

    if-ne v9, v10, :cond_60

    move v0, v8

    .line 3206
    .local v0, "clipToPadding":Z
    :goto_e
    if-eqz v0, :cond_39

    .line 3207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3208
    iget v5, p0, mScrollX:I

    .line 3209
    .local v5, "scrollX":I
    iget v6, p0, mScrollY:I

    .line 3210
    .local v6, "scrollY":I
    iget v9, p0, mPaddingLeft:I

    add-int/2addr v9, v5

    iget v10, p0, mPaddingTop:I

    add-int/2addr v10, v6

    iget v11, p0, mRight:I

    add-int/2addr v11, v5

    iget v12, p0, mLeft:I

    sub-int/2addr v11, v12

    iget v12, p0, mPaddingRight:I

    sub-int/2addr v11, v12

    iget v12, p0, mBottom:I

    add-int/2addr v12, v6

    iget v13, p0, mTop:I

    sub-int/2addr v12, v13

    iget v13, p0, mPaddingBottom:I

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3213
    iget v9, p0, mGroupFlags:I

    and-int/lit8 v9, v9, -0x23

    iput v9, p0, mGroupFlags:I

    .line 3216
    .end local v5    # "scrollX":I
    .end local v6    # "scrollY":I
    :cond_39
    iget-boolean v1, p0, mDrawSelectorOnTop:Z

    .line 3217
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_40

    .line 3218
    invoke-direct {p0, p1}, drawSelector(Landroid/graphics/Canvas;)V

    .line 3221
    :cond_40
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3223
    if-eqz v1, :cond_48

    .line 3224
    invoke-direct {p0, p1}, drawSelector(Landroid/graphics/Canvas;)V

    .line 3227
    :cond_48
    if-eqz v0, :cond_53

    .line 3228
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3229
    iget v9, p0, mGroupFlags:I

    or-int/lit8 v9, v9, 0x22

    iput v9, p0, mGroupFlags:I

    .line 3232
    :cond_53
    iget-boolean v9, p0, mIsDragBlockEnabled:Z

    if-ne v9, v8, :cond_5f

    .line 3233
    iget v8, p0, mTwDragBlockLeft:I

    if-nez v8, :cond_62

    iget v8, p0, mTwDragBlockTop:I

    if-nez v8, :cond_62

    .line 3255
    :cond_5f
    :goto_5f
    return-void

    .line 3205
    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_60
    const/4 v0, 0x0

    goto :goto_e

    .line 3236
    .restart local v0    # "clipToPadding":Z
    .restart local v1    # "drawSelectorOnTop":Z
    :cond_62
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v2

    .line 3237
    invoke-virtual {p0}, getLastVisiblePosition()I

    move-result v3

    .line 3239
    iget v8, p0, mTwTrackedChildPosition:I

    if-lt v8, v2, :cond_8e

    iget v8, p0, mTwTrackedChildPosition:I

    if-gt v8, v3, :cond_8e

    .line 3240
    iget v8, p0, mTwTrackedChildPosition:I

    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, mTwTrackedChild:Landroid/view/View;

    .line 3241
    iget-object v8, p0, mTwTrackedChild:Landroid/view/View;

    if-eqz v8, :cond_89

    .line 3242
    iget-object v8, p0, mTwTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    .line 3244
    :cond_89
    iget v8, p0, mTwDistanceFromTrackedChildTop:I

    add-int/2addr v8, v7

    iput v8, p0, mTwDragStartY:I

    .line 3247
    :cond_8e
    iget v8, p0, mTwDragStartY:I

    iget v9, p0, mTwDragEndY:I

    if-ge v8, v9, :cond_bc

    iget v8, p0, mTwDragStartY:I

    :goto_96
    iput v8, p0, mTwDragBlockTop:I

    .line 3248
    iget v8, p0, mTwDragEndY:I

    iget v9, p0, mTwDragStartY:I

    if-le v8, v9, :cond_bf

    iget v8, p0, mTwDragEndY:I

    :goto_a0
    iput v8, p0, mTwDragBlockBottom:I

    .line 3250
    iget-object v8, p0, mTwDragBlockRect:Landroid/graphics/Rect;

    iget v9, p0, mTwDragBlockLeft:I

    iget v10, p0, mTwDragBlockTop:I

    iget v11, p0, mTwDragBlockRight:I

    iget v12, p0, mTwDragBlockBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3251
    iget-object v8, p0, mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, mTwDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3252
    iget-object v8, p0, mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5f

    .line 3247
    :cond_bc
    iget v8, p0, mTwDragEndY:I

    goto :goto_96

    .line 3248
    :cond_bf
    iget v8, p0, mTwDragStartY:I

    goto :goto_a0
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4116
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4668
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 4670
    .local v4, "action":I
    invoke-direct/range {p0 .. p1}, onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 4671
    invoke-static {}, Landroid/text/MultiSelection;->isTextViewHovered()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mNewTextViewHoverState:Z

    .line 4673
    move-object/from16 v0, p0

    iget-boolean v0, v0, mNewTextViewHoverState:Z

    move/from16 v20, v0

    if-nez v20, :cond_16c

    move-object/from16 v0, p0

    iget-boolean v0, v0, mOldTextViewHoverState:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16c

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDragBlockEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_47

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16c

    .line 4675
    :cond_47
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsNeedPenSelectIconSet:Z

    .line 4681
    :goto_4f
    move-object/from16 v0, p0

    iget-boolean v0, v0, mNewTextViewHoverState:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOldTextViewHoverState:Z

    .line 4684
    const/16 v20, 0x9

    move/from16 v0, v20

    if-ne v4, v0, :cond_17f

    .line 4685
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v17

    .line 4687
    .local v17, "toolType":I
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mNeedsHoverScroll:Z

    .line 4690
    invoke-virtual/range {p0 .. p0}, isHoveringUIEnabled()Z

    move-result v20

    if-eqz v20, :cond_81

    move-object/from16 v0, p0

    iget-boolean v0, v0, mHoverScrollEnable:Z

    move/from16 v20, v0

    if-nez v20, :cond_89

    .line 4691
    :cond_81
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mNeedsHoverScroll:Z

    .line 4695
    :cond_89
    move-object/from16 v0, p0

    iget-boolean v0, v0, mNeedsHoverScroll:Z

    move/from16 v20, v0

    if-eqz v20, :cond_147

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_147

    .line 4697
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "pen_hovering"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_176

    const/4 v14, 0x1

    .line 4699
    .local v14, "isHoveringOn":Z
    :goto_b5
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "pen_hovering_list_scroll"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_179

    const/4 v13, 0x1

    .line 4701
    .local v13, "isHoverListScrollOn":Z
    :goto_d1
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "car_mode_on"

    const/16 v22, 0x0

    const/16 v23, -0x3

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17c

    const/4 v12, 0x1

    .line 4704
    .local v12, "isCarModeOn":Z
    :goto_ee
    if-eqz v14, :cond_f2

    if-eqz v12, :cond_fa

    .line 4705
    :cond_f2
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mNeedsHoverScroll:Z

    .line 4708
    :cond_fa
    if-eqz v14, :cond_13d

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDragBlockEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13d

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsPenSelectPointerSetted:Z

    move/from16 v20, v0

    if-nez v20, :cond_13d

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_13d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_12c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13d

    .line 4710
    :cond_12c
    const/16 v20, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, showPointerIcon(I)Z

    .line 4711
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsPenSelectPointerSetted:Z

    .line 4714
    :cond_13d
    if-nez v13, :cond_147

    .line 4715
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mNeedsHoverScroll:Z

    .line 4720
    .end local v12    # "isCarModeOn":Z
    .end local v13    # "isHoverListScrollOn":Z
    .end local v14    # "isHoveringOn":Z
    :cond_147
    move-object/from16 v0, p0

    iget-boolean v0, v0, mNeedsHoverScroll:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15f

    const/16 v20, 0x3

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_15f

    .line 4721
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mNeedsHoverScroll:Z

    .line 4741
    .end local v17    # "toolType":I
    :cond_15f
    :goto_15f
    move-object/from16 v0, p0

    iget-boolean v0, v0, mNeedsHoverScroll:Z

    move/from16 v20, v0

    if-nez v20, :cond_235

    .line 4742
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    .line 4989
    :goto_16b
    return v20

    .line 4678
    :cond_16c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsNeedPenSelectIconSet:Z

    goto/16 :goto_4f

    .line 4697
    .restart local v17    # "toolType":I
    :cond_176
    const/4 v14, 0x0

    goto/16 :goto_b5

    .line 4699
    .restart local v14    # "isHoveringOn":Z
    :cond_179
    const/4 v13, 0x0

    goto/16 :goto_d1

    .line 4701
    .restart local v13    # "isHoverListScrollOn":Z
    :cond_17c
    const/4 v12, 0x0

    goto/16 :goto_ee

    .line 4723
    .end local v13    # "isHoverListScrollOn":Z
    .end local v14    # "isHoveringOn":Z
    .end local v17    # "toolType":I
    :cond_17f
    const/16 v20, 0x7

    move/from16 v0, v20

    if-ne v4, v0, :cond_214

    .line 4724
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDragBlockEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1bf

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsPenSelectPointerSetted:Z

    move/from16 v20, v0

    if-nez v20, :cond_1bf

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1bf

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1c7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1c7

    :cond_1bf
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsNeedPenSelectIconSet:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1d9

    .line 4726
    :cond_1c7
    const/16 v20, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, showPointerIcon(I)Z

    .line 4727
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsPenSelectPointerSetted:Z

    goto :goto_15f

    .line 4728
    :cond_1d9
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDragBlockEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15f

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsPenSelectPointerSetted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_15f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_15f

    .line 4729
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, showPointerIcon(I)Z

    .line 4730
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsPenSelectPointerSetted:Z

    goto/16 :goto_15f

    .line 4733
    :cond_214
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v4, v0, :cond_15f

    .line 4734
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsPenSelectPointerSetted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15f

    .line 4735
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, showPointerIcon(I)Z

    .line 4736
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsPenSelectPointerSetted:Z

    goto/16 :goto_15f

    .line 4746
    :cond_235
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 4747
    .local v18, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 4748
    .local v19, "y":I
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v8

    .line 4749
    .local v8, "childCount":I
    const/4 v10, 0x0

    .line 4750
    .local v10, "contentTop":I
    const/4 v9, 0x0

    .line 4751
    .local v9, "contentBottom":I
    const/16 v16, 0x0

    .line 4752
    .local v16, "lastChildBottom":I
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v11

    .line 4757
    .local v11, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    if-nez v20, :cond_26a

    .line 4758
    new-instance v20, Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 4761
    :cond_26a
    move-object/from16 v0, p0

    iget v0, v0, mHoverTopAreaHeight:I

    move/from16 v20, v0

    if-lez v20, :cond_27a

    move-object/from16 v0, p0

    iget v0, v0, mHoverBottomAreaHeight:I

    move/from16 v20, v0

    if-gtz v20, :cond_2c4

    .line 4762
    :cond_27a
    const/16 v20, 0x1

    const/high16 v21, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v20

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mHoverTopAreaHeight:I

    .line 4770
    const/16 v20, 0x1

    const/high16 v21, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v20

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mHoverBottomAreaHeight:I

    .line 4779
    :cond_2c4
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsEnabledPaddingInHoverScroll:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_51b

    .line 4780
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 4781
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v9, v20, v21

    .line 4788
    :goto_2ee
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v20, v0

    add-int v20, v20, v11

    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_52d

    const/4 v5, 0x1

    .line 4790
    .local v5, "canScrollDown":Z
    :goto_303
    if-nez v5, :cond_34c

    if-lez v11, :cond_34c

    .line 4791
    add-int/lit8 v20, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4792
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, mBottom:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_34b

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_530

    :cond_34b
    const/4 v5, 0x1

    .line 4797
    .end local v7    # "child":Landroid/view/View;
    :cond_34c
    :goto_34c
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v20, v0

    if-lez v20, :cond_533

    const/4 v6, 0x1

    .line 4799
    .local v6, "canScrollUp":Z
    :goto_355
    if-nez v6, :cond_37e

    .line 4800
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v20

    if-lez v20, :cond_37e

    .line 4801
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4802
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_536

    const/4 v6, 0x1

    .line 4806
    .end local v7    # "child":Landroid/view/View;
    :cond_37e
    :goto_37e
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_539

    const/4 v15, 0x1

    .line 4808
    .local v15, "isPossibleTooltype":Z
    :goto_391
    move-object/from16 v0, p0

    iget v0, v0, mHoverTopAreaHeight:I

    move/from16 v20, v0

    add-int v20, v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3ad

    move-object/from16 v0, p0

    iget v0, v0, mHoverBottomAreaHeight:I

    move/from16 v20, v0

    sub-int v20, v9, v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_417

    :cond_3ad
    if-lez v18, :cond_417

    invoke-virtual/range {p0 .. p0}, getRight()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_417

    if-nez v6, :cond_3bd

    if-eqz v5, :cond_417

    :cond_3bd
    move/from16 v0, v19

    if-lt v0, v10, :cond_3d9

    move-object/from16 v0, p0

    iget v0, v0, mHoverTopAreaHeight:I

    move/from16 v20, v0

    add-int v20, v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_3d9

    if-nez v6, :cond_3d9

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsHoverOverscrolled:Z

    move/from16 v20, v0

    if-nez v20, :cond_417

    :cond_3d9
    move-object/from16 v0, p0

    iget v0, v0, mHoverBottomAreaHeight:I

    move/from16 v20, v0

    sub-int v20, v9, v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3f5

    move/from16 v0, v19

    if-gt v0, v9, :cond_3f5

    if-nez v5, :cond_3f5

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsHoverOverscrolled:Z

    move/from16 v20, v0

    if-nez v20, :cond_417

    :cond_3f5
    if-eqz v15, :cond_40f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_417

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_417

    :cond_40f
    if-eqz v15, :cond_417

    invoke-virtual/range {p0 .. p0}, isLockScreenMode()Z

    move-result v20

    if-eqz v20, :cond_53c

    .line 4815
    :cond_417
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v20

    if-eqz v20, :cond_439

    .line 4816
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4817
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, showPointerIcon(I)Z

    .line 4820
    :cond_439
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v20

    if-eqz v20, :cond_452

    .line 4821
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4824
    :cond_452
    move-object/from16 v0, p0

    iget v0, v0, mHoverTopAreaHeight:I

    move/from16 v20, v0

    add-int v20, v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_46e

    move-object/from16 v0, p0

    iget v0, v0, mHoverBottomAreaHeight:I

    move/from16 v20, v0

    sub-int v20, v9, v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_47a

    :cond_46e
    if-lez v18, :cond_47a

    invoke-virtual/range {p0 .. p0}, getRight()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_482

    .line 4825
    :cond_47a
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsHoverOverscrolled:Z

    .line 4828
    :cond_482
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHoverAreaEnter:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_49c

    move-object/from16 v0, p0

    iget-wide v0, v0, mHoverScrollStartTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_4a5

    .line 4829
    :cond_49c
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, showPointerIcon(I)Z

    .line 4831
    :cond_4a5
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverRecognitionStartTime:J

    .line 4832
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverScrollStartTime:J

    .line 4833
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoverAreaEnter:Z

    .line 4834
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsSendHoverScrollState:Z

    .line 4836
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v4, v0, :cond_502

    move-object/from16 v0, p0

    iget v0, v0, mHoverScrollStateForListener:I

    move/from16 v20, v0

    if-eqz v20, :cond_502

    .line 4837
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mHoverScrollStateForListener:I

    .line 4838
    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_502

    move-object/from16 v0, p0

    iget v0, v0, mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_502

    .line 4839
    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4844
    :cond_502
    move-object/from16 v0, p0

    iget v0, v0, mQCstate:I

    move/from16 v20, v0

    if-eqz v20, :cond_515

    .line 4845
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mQCstate:I

    .line 4846
    invoke-virtual/range {p0 .. p0}, postInvalidateOnAnimation()V

    .line 4849
    :cond_515
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    goto/16 :goto_16b

    .line 4783
    .end local v5    # "canScrollDown":Z
    .end local v6    # "canScrollUp":Z
    .end local v15    # "isPossibleTooltype":Z
    :cond_51b
    move-object/from16 v0, p0

    iget v10, v0, mExtraPaddingInTopHoverArea:I

    .line 4784
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, mExtraPaddingInBottomHoverArea:I

    move/from16 v21, v0

    sub-int v9, v20, v21

    goto/16 :goto_2ee

    .line 4788
    :cond_52d
    const/4 v5, 0x0

    goto/16 :goto_303

    .line 4792
    .restart local v5    # "canScrollDown":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_530
    const/4 v5, 0x0

    goto/16 :goto_34c

    .line 4797
    .end local v7    # "child":Landroid/view/View;
    :cond_533
    const/4 v6, 0x0

    goto/16 :goto_355

    .line 4802
    .restart local v6    # "canScrollUp":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_536
    const/4 v6, 0x0

    goto/16 :goto_37e

    .line 4806
    .end local v7    # "child":Landroid/view/View;
    :cond_539
    const/4 v15, 0x0

    goto/16 :goto_391

    .line 4852
    .restart local v15    # "isPossibleTooltype":Z
    :cond_53c
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHoverAreaEnter:Z

    move/from16 v20, v0

    if-nez v20, :cond_54e

    .line 4853
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverScrollStartTime:J

    .line 4856
    :cond_54e
    packed-switch v4, :pswitch_data_872

    .line 4989
    :cond_551
    :goto_551
    :pswitch_551
    const/16 v20, 0x1

    goto/16 :goto_16b

    .line 4858
    :pswitch_555
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoverAreaEnter:Z

    .line 4860
    move/from16 v0, v19

    if-lt v0, v10, :cond_5cd

    move-object/from16 v0, p0

    iget v0, v0, mHoverTopAreaHeight:I

    move/from16 v20, v0

    add-int v20, v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_5cd

    .line 4862
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_551

    .line 4863
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverRecognitionStartTime:J

    .line 4864
    const/16 v20, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, showPointerIcon(I)Z

    .line 4866
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mHoverScrollDirection:I

    .line 4867
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4870
    invoke-direct/range {p0 .. p0}, isQCSupported()Z

    move-result v20

    if-eqz v20, :cond_551

    invoke-direct/range {p0 .. p0}, canScrollUp()Z

    move-result v20

    if-eqz v20, :cond_551

    const/16 v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, canScrollVertically(I)Z

    move-result v20

    if-eqz v20, :cond_551

    .line 4871
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, setupQuickController(I)V

    .line 4872
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mQCstate:I

    goto :goto_551

    .line 4875
    :cond_5cd
    move-object/from16 v0, p0

    iget v0, v0, mHoverBottomAreaHeight:I

    move/from16 v20, v0

    sub-int v20, v9, v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_551

    move/from16 v0, v19

    if-gt v0, v9, :cond_551

    .line 4877
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_551

    .line 4878
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverRecognitionStartTime:J

    .line 4879
    const/16 v20, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, showPointerIcon(I)Z

    .line 4881
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mHoverScrollDirection:I

    .line 4882
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4885
    invoke-direct/range {p0 .. p0}, isQCSupported()Z

    move-result v20

    if-eqz v20, :cond_551

    invoke-direct/range {p0 .. p0}, canScrollDown()Z

    move-result v20

    if-eqz v20, :cond_551

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, canScrollVertically(I)Z

    move-result v20

    if-eqz v20, :cond_551

    .line 4886
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, setupQuickController(I)V

    .line 4887
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mQCstate:I

    goto/16 :goto_551

    .line 4895
    :pswitch_63e
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHoverAreaEnter:Z

    move/from16 v20, v0

    if-nez v20, :cond_65d

    .line 4896
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoverAreaEnter:Z

    .line 4897
    const/16 v20, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4898
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    goto/16 :goto_16b

    .line 4901
    :cond_65d
    move/from16 v0, v19

    if-lt v0, v10, :cond_6ec

    move-object/from16 v0, p0

    iget v0, v0, mHoverTopAreaHeight:I

    move/from16 v20, v0

    add-int v20, v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_6ec

    .line 4903
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_551

    .line 4904
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverRecognitionStartTime:J

    .line 4907
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsHoverOverscrolled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_69d

    move-object/from16 v0, p0

    iget v0, v0, mHoverScrollDirection:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6a6

    .line 4908
    :cond_69d
    const/16 v20, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, showPointerIcon(I)Z

    .line 4911
    :cond_6a6
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mHoverScrollDirection:I

    .line 4912
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4915
    invoke-direct/range {p0 .. p0}, isQCSupported()Z

    move-result v20

    if-eqz v20, :cond_551

    move-object/from16 v0, p0

    iget v0, v0, mQCstate:I

    move/from16 v20, v0

    if-nez v20, :cond_551

    invoke-direct/range {p0 .. p0}, canScrollUp()Z

    move-result v20

    if-eqz v20, :cond_551

    const/16 v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, canScrollVertically(I)Z

    move-result v20

    if-eqz v20, :cond_551

    .line 4916
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, setupQuickController(I)V

    .line 4917
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mQCstate:I

    goto/16 :goto_551

    .line 4920
    :cond_6ec
    move-object/from16 v0, p0

    iget v0, v0, mHoverBottomAreaHeight:I

    move/from16 v20, v0

    sub-int v20, v9, v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_77b

    move/from16 v0, v19

    if-gt v0, v9, :cond_77b

    .line 4922
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_551

    .line 4923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverRecognitionStartTime:J

    .line 4926
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsHoverOverscrolled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_72c

    move-object/from16 v0, p0

    iget v0, v0, mHoverScrollDirection:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_735

    .line 4927
    :cond_72c
    const/16 v20, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, showPointerIcon(I)Z

    .line 4930
    :cond_735
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mHoverScrollDirection:I

    .line 4931
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4934
    invoke-direct/range {p0 .. p0}, isQCSupported()Z

    move-result v20

    if-eqz v20, :cond_551

    move-object/from16 v0, p0

    iget v0, v0, mQCstate:I

    move/from16 v20, v0

    if-nez v20, :cond_551

    invoke-direct/range {p0 .. p0}, canScrollDown()Z

    move-result v20

    if-eqz v20, :cond_551

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, canScrollVertically(I)Z

    move-result v20

    if-eqz v20, :cond_551

    .line 4935
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, setupQuickController(I)V

    .line 4936
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mQCstate:I

    goto/16 :goto_551

    .line 4941
    :cond_77b
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v20

    if-eqz v20, :cond_794

    .line 4942
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4945
    :cond_794
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, showPointerIcon(I)Z

    .line 4947
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverRecognitionStartTime:J

    .line 4948
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverScrollStartTime:J

    .line 4949
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsHoverOverscrolled:Z

    .line 4950
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoverAreaEnter:Z

    .line 4951
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsSendHoverScrollState:Z

    goto/16 :goto_551

    .line 4957
    :pswitch_7c7
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v20

    if-eqz v20, :cond_7e0

    .line 4958
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4961
    :cond_7e0
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, showPointerIcon(I)Z

    .line 4963
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverRecognitionStartTime:J

    .line 4964
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverScrollStartTime:J

    .line 4965
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsHoverOverscrolled:Z

    .line 4966
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoverAreaEnter:Z

    .line 4967
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsSendHoverScrollState:Z

    .line 4970
    move-object/from16 v0, p0

    iget v0, v0, mQCstate:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_835

    .line 4974
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, QC_ICON_HIDE_DELAY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4977
    :cond_835
    move-object/from16 v0, p0

    iget v0, v0, mHoverScrollStateForListener:I

    move/from16 v20, v0

    if-eqz v20, :cond_86c

    .line 4978
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mHoverScrollStateForListener:I

    .line 4979
    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_86c

    move-object/from16 v0, p0

    iget v0, v0, mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_86c

    .line 4980
    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4984
    :cond_86c
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    goto/16 :goto_16b

    .line 4856
    :pswitch_data_872
    .packed-switch 0x7
        :pswitch_63e
        :pswitch_551
        :pswitch_555
        :pswitch_7c7
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .prologue
    .line 4110
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5164
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 5165
    .local v20, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 5166
    .local v21, "y":I
    const/4 v11, 0x0

    .line 5167
    .local v11, "contentTop":I
    const/4 v10, 0x0

    .line 5168
    .local v10, "contentBottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 5169
    .local v4, "action":I
    const/4 v15, 0x0

    .line 5171
    .local v15, "needToScroll":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-nez v22, :cond_2c

    .line 5172
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mTwDragSelectedItemArray:Ljava/util/ArrayList;

    .line 5175
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    if-nez v22, :cond_43

    .line 5176
    new-instance v22, Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 5179
    :cond_43
    invoke-static {}, Landroid/text/MultiSelection;->getIsMultiSelectingText()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsTextSelectionStarted:Z

    .line 5180
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v15

    .line 5182
    const/16 v22, 0xd3

    move/from16 v0, v22

    if-ne v4, v0, :cond_92

    .line 5183
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsNeedPenSelection:Z

    .line 5184
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mTouchdownX:I

    .line 5185
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mTouchdownY:I

    .line 5186
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "car_mode_on"

    const/16 v24, 0x0

    const/16 v25, -0x3

    invoke-static/range {v22 .. v25}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_151

    const/4 v14, 0x1

    .line 5189
    .local v14, "isCarModeOn":Z
    :goto_88
    if-eqz v14, :cond_92

    .line 5190
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsNeedPenSelection:Z

    .line 5194
    .end local v14    # "isCarModeOn":Z
    :cond_92
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsTextSelectionStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a2

    .line 5195
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsNeedPenSelection:Z

    .line 5198
    :cond_a2
    move-object/from16 v0, p0

    iget v0, v0, mHoverTopAreaHeight:I

    move/from16 v22, v0

    if-lez v22, :cond_b2

    move-object/from16 v0, p0

    iget v0, v0, mHoverBottomAreaHeight:I

    move/from16 v22, v0

    if-gtz v22, :cond_fc

    .line 5199
    :cond_b2
    const/16 v22, 0x1

    const/high16 v23, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v22

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mHoverTopAreaHeight:I

    .line 5203
    const/16 v22, 0x1

    const/high16 v23, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v22

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mHoverBottomAreaHeight:I

    .line 5208
    :cond_fc
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsEnabledPaddingInHoverScroll:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_154

    .line 5209
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 5210
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v10, v22, v23

    .line 5216
    :goto_126
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsEnabledPaddingInHoverScroll:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15a

    move/from16 v0, v21

    if-lt v0, v11, :cond_136

    move/from16 v0, v21

    if-le v0, v10, :cond_15a

    :cond_136
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_15a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    const/16 v23, 0xd4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_15a

    .line 5218
    const/16 v22, 0x1

    .line 5547
    :goto_150
    return v22

    .line 5186
    :cond_151
    const/4 v14, 0x0

    goto/16 :goto_88

    .line 5212
    :cond_154
    const/4 v11, 0x0

    .line 5213
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v10

    goto :goto_126

    .line 5221
    :cond_15a
    sparse-switch v4, :sswitch_data_a94

    .line 5547
    :cond_15d
    :goto_15d
    :sswitch_15d
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto :goto_150

    .line 5223
    :sswitch_162
    move-object/from16 v0, p0

    iget-boolean v0, v0, mWindowFocusChanged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_172

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mWindowFocusChanged:Z

    .line 5225
    :cond_172
    move-object/from16 v0, p0

    iget v0, v0, mQCstate:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15d

    .line 5226
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsQCShown:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1e6

    move-object/from16 v0, p0

    iget-object v0, v0, mQCRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v22

    if-eqz v22, :cond_1e6

    .line 5227
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_1b3

    .line 5228
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5230
    :cond_1b3
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_1cc

    .line 5231
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5235
    :cond_1cc
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5237
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mQCstate:I

    .line 5238
    invoke-virtual/range {p0 .. p0}, postInvalidateOnAnimation()V

    .line 5239
    const/16 v22, 0x1

    goto/16 :goto_150

    .line 5242
    :cond_1e6
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mQCstate:I

    goto/16 :goto_15d

    .line 5250
    :sswitch_1f0
    move-object/from16 v0, p0

    iget v0, v0, mQCstate:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15d

    .line 5252
    const/16 v22, 0x1

    goto/16 :goto_150

    .line 5256
    :sswitch_202
    move-object/from16 v0, p0

    iget v0, v0, mTouchdownX:I

    move/from16 v22, v0

    sub-int v22, v20, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mDeltamoveX:I

    .line 5257
    move-object/from16 v0, p0

    iget v0, v0, mTouchdownY:I

    move/from16 v22, v0

    sub-int v22, v21, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mDeltamoveY:I

    .line 5259
    move-object/from16 v0, p0

    iget v0, v0, mDeltamoveX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mDeltamoveX:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, mDeltamoveY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, mDeltamoveY:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, mTouchSlop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, mTouchSlop:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_258

    .line 5260
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsMovedbeforeUP:Z

    .line 5262
    :cond_258
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsNeedPenSelection:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6f2

    .line 5263
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v12

    .line 5265
    .local v12, "count":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsfirstMoveEvent:Z

    move/from16 v22, v0

    if-eqz v22, :cond_38b

    .line 5266
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mTwDragStartX:I

    .line 5267
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mTwDragStartY:I

    .line 5268
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->twNotifyMultiSelectedStart(II)V

    .line 5269
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsPenPressed:Z

    .line 5271
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, pointToPosition(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwTrackedChildPosition:I

    .line 5273
    move-object/from16 v0, p0

    iget v0, v0, mTwTrackedChildPosition:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_617

    .line 5274
    const/16 v19, 0x0

    .line 5275
    .local v19, "oldDistanceFromTop":I
    const/16 v18, 0x0

    .line 5276
    .local v18, "oldDistanceFromBottom":I
    const/16 v17, 0x0

    .line 5277
    .local v17, "newDistanceFromTop":I
    const/16 v16, 0x0

    .line 5279
    .local v16, "newDistanceFromBottom":I
    add-int/lit8 v13, v12, -0x1

    .local v13, "i":I
    :goto_2b1
    if-ltz v13, :cond_2e7

    .line 5280
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5281
    .local v5, "child":Landroid/view/View;
    if-eqz v5, :cond_5ea

    .line 5282
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 5283
    .local v9, "childTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 5286
    .local v6, "childBottom":I
    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartY:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v0, v9, :cond_5ac

    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartY:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-gt v0, v6, :cond_5ac

    .line 5287
    move-object/from16 v0, p0

    iput-object v5, v0, mTwTrackedChild:Landroid/view/View;

    .line 5288
    invoke-virtual/range {p0 .. p0}, getFirstVisiblePosition()I

    move-result v22

    add-int v22, v22, v13

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwTrackedChildPosition:I

    .line 5315
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childBottom":I
    .end local v9    # "childTop":I
    :cond_2e7
    move-object/from16 v0, p0

    iget-object v0, v0, mTwTrackedChild:Landroid/view/View;

    move-object/from16 v22, v0

    if-nez v22, :cond_363

    .line 5316
    move-object/from16 v0, p0

    iget v0, v0, mTwCloseChildPositionByTop:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, getFirstVisiblePosition()I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mTwCloseChildByTop:Landroid/view/View;

    .line 5317
    move-object/from16 v0, p0

    iget-object v0, v0, mTwCloseChildByTop:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_329

    .line 5318
    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTwCloseChildByTop:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDistanceFromCloseChildTop:I

    .line 5321
    :cond_329
    move-object/from16 v0, p0

    iget v0, v0, mTwCloseChildPositionByBottom:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, getFirstVisiblePosition()I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mTwCloseChildByBottom:Landroid/view/View;

    .line 5322
    move-object/from16 v0, p0

    iget-object v0, v0, mTwCloseChildByBottom:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_363

    .line 5323
    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTwCloseChildByBottom:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDistanceFromCloseChildBottom:I

    .line 5330
    .end local v13    # "i":I
    .end local v16    # "newDistanceFromBottom":I
    .end local v17    # "newDistanceFromTop":I
    .end local v18    # "oldDistanceFromBottom":I
    .end local v19    # "oldDistanceFromTop":I
    :cond_363
    :goto_363
    move-object/from16 v0, p0

    iget-object v0, v0, mTwTrackedChild:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_383

    .line 5331
    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTwTrackedChild:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDistanceFromTrackedChildTop:I

    .line 5333
    :cond_383
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsfirstMoveEvent:Z

    .line 5336
    :cond_38b
    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartX:I

    move/from16 v22, v0

    if-nez v22, :cond_3b8

    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartY:I

    move/from16 v22, v0

    if-nez v22, :cond_3b8

    .line 5337
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mTwDragStartX:I

    .line 5338
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mTwDragStartY:I

    .line 5339
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->twNotifyMultiSelectedStart(II)V

    .line 5340
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsPenPressed:Z

    .line 5343
    :cond_3b8
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mTwDragEndX:I

    .line 5344
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mTwDragEndY:I

    .line 5346
    move-object/from16 v0, p0

    iget v0, v0, mTwDragEndY:I

    move/from16 v22, v0

    if-gez v22, :cond_633

    .line 5347
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragEndY:I

    .line 5352
    :cond_3d4
    :goto_3d4
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, pointToPosition(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragSelectedViewPosition:I

    .line 5354
    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mTwDragEndX:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_643

    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartX:I

    move/from16 v22, v0

    :goto_3fc
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragBlockLeft:I

    .line 5355
    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mTwDragEndY:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_64b

    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartY:I

    move/from16 v22, v0

    :goto_41a
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragBlockTop:I

    .line 5356
    move-object/from16 v0, p0

    iget v0, v0, mTwDragEndX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartX:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_653

    move-object/from16 v0, p0

    iget v0, v0, mTwDragEndX:I

    move/from16 v22, v0

    :goto_438
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragBlockRight:I

    .line 5357
    move-object/from16 v0, p0

    iget v0, v0, mTwDragEndY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartY:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_65b

    move-object/from16 v0, p0

    iget v0, v0, mTwDragEndY:I

    move/from16 v22, v0

    :goto_456
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragBlockBottom:I

    .line 5359
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_45d
    if-ge v13, v12, :cond_6f1

    .line 5360
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5361
    .restart local v5    # "child":Landroid/view/View;
    if-eqz v5, :cond_5a8

    .line 5362
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 5363
    .local v7, "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 5364
    .restart local v9    # "childTop":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v8

    .line 5365
    .local v8, "childRight":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 5367
    .restart local v6    # "childBottom":I
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v22

    if-nez v22, :cond_5a8

    .line 5368
    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v0, v7, :cond_4a5

    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v0, v9, :cond_4a5

    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockRight:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v0, v8, :cond_4a5

    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockBottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v0, v6, :cond_51d

    :cond_4a5
    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v0, v7, :cond_4b9

    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockRight:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v0, v8, :cond_4e1

    :cond_4b9
    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v0, v7, :cond_4cd

    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockRight:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-gt v0, v7, :cond_4e1

    :cond_4cd
    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v0, v8, :cond_663

    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockRight:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v0, v8, :cond_663

    :cond_4e1
    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v0, v9, :cond_4f5

    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockBottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v0, v6, :cond_51d

    :cond_4f5
    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-gt v0, v9, :cond_509

    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockBottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-gt v0, v9, :cond_51d

    :cond_509
    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v0, v6, :cond_663

    move-object/from16 v0, p0

    iget v0, v0, mTwDragBlockBottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v0, v6, :cond_663

    .line 5372
    :cond_51d
    add-int/lit8 v22, v7, 0x1

    add-int/lit8 v23, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, pointToPosition(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragSelectedViewPosition:I

    .line 5373
    move-object/from16 v0, p0

    iget v0, v0, mTwDragSelectedViewPosition:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5a8

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mTwDragSelectedViewPosition:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_5a8

    move-object/from16 v0, p0

    iget-object v0, v0, mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mTwDragSelectedViewPosition:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5a8

    .line 5374
    move-object/from16 v0, p0

    iget-object v0, v0, mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mTwDragSelectedViewPosition:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5375
    move-object/from16 v0, p0

    iget v0, v0, mTwDragSelectedViewPosition:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, addToPressItemListArray(II)V

    .line 5376
    move-object/from16 v0, p0

    iget v0, v0, mTwDragSelectedViewPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mTwDragSelectedViewPosition:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, getItemIdAtPosition(I)J

    move-result-wide v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-direct {v0, v5, v1, v2, v3}, twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 5359
    .end local v6    # "childBottom":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    :cond_5a8
    :goto_5a8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_45d

    .line 5293
    .restart local v6    # "childBottom":I
    .restart local v9    # "childTop":I
    .restart local v16    # "newDistanceFromBottom":I
    .restart local v17    # "newDistanceFromTop":I
    .restart local v18    # "oldDistanceFromBottom":I
    .restart local v19    # "oldDistanceFromTop":I
    :cond_5ac
    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartY:I

    move/from16 v22, v0

    sub-int v22, v22, v9

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v17

    .line 5294
    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartY:I

    move/from16 v22, v0

    sub-int v22, v22, v6

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 5296
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_5ee

    .line 5297
    add-int/lit8 v22, v12, -0x1

    invoke-virtual/range {p0 .. p0}, getFirstVisiblePosition()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwCloseChildPositionByTop:I

    .line 5298
    add-int/lit8 v22, v12, -0x1

    invoke-virtual/range {p0 .. p0}, getFirstVisiblePosition()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwCloseChildPositionByBottom:I

    .line 5299
    move/from16 v19, v17

    .line 5300
    move/from16 v18, v16

    .line 5279
    .end local v6    # "childBottom":I
    .end local v9    # "childTop":I
    :cond_5ea
    :goto_5ea
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_2b1

    .line 5302
    .restart local v6    # "childBottom":I
    .restart local v9    # "childTop":I
    :cond_5ee
    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_602

    .line 5303
    invoke-virtual/range {p0 .. p0}, getFirstVisiblePosition()I

    move-result v22

    add-int v22, v22, v13

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwCloseChildPositionByTop:I

    .line 5304
    move/from16 v19, v17

    .line 5307
    :cond_602
    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_5ea

    .line 5308
    invoke-virtual/range {p0 .. p0}, getFirstVisiblePosition()I

    move-result v22

    add-int v22, v22, v13

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwCloseChildPositionByBottom:I

    .line 5309
    move/from16 v18, v16

    goto :goto_5ea

    .line 5327
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childBottom":I
    .end local v9    # "childTop":I
    .end local v13    # "i":I
    .end local v16    # "newDistanceFromBottom":I
    .end local v17    # "newDistanceFromTop":I
    .end local v18    # "oldDistanceFromBottom":I
    .end local v19    # "oldDistanceFromTop":I
    :cond_617
    move-object/from16 v0, p0

    iget v0, v0, mTwTrackedChildPosition:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, getFirstVisiblePosition()I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mTwTrackedChild:Landroid/view/View;

    goto/16 :goto_363

    .line 5348
    :cond_633
    move-object/from16 v0, p0

    iget v0, v0, mTwDragEndY:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v0, v10, :cond_3d4

    .line 5349
    move-object/from16 v0, p0

    iput v10, v0, mTwDragEndY:I

    goto/16 :goto_3d4

    .line 5354
    :cond_643
    move-object/from16 v0, p0

    iget v0, v0, mTwDragEndX:I

    move/from16 v22, v0

    goto/16 :goto_3fc

    .line 5355
    :cond_64b
    move-object/from16 v0, p0

    iget v0, v0, mTwDragEndY:I

    move/from16 v22, v0

    goto/16 :goto_41a

    .line 5356
    :cond_653
    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartX:I

    move/from16 v22, v0

    goto/16 :goto_438

    .line 5357
    :cond_65b
    move-object/from16 v0, p0

    iget v0, v0, mTwDragStartY:I

    move/from16 v22, v0

    goto/16 :goto_456

    .line 5379
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childBottom":I
    .restart local v7    # "childLeft":I
    .restart local v8    # "childRight":I
    .restart local v9    # "childTop":I
    .restart local v13    # "i":I
    :cond_663
    add-int/lit8 v22, v7, 0x1

    add-int/lit8 v23, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, pointToPosition(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragSelectedViewPosition:I

    .line 5380
    move-object/from16 v0, p0

    iget v0, v0, mTwDragSelectedViewPosition:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5a8

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mTwDragSelectedViewPosition:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_5a8

    move-object/from16 v0, p0

    iget-object v0, v0, mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mTwDragSelectedViewPosition:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5a8

    .line 5381
    move-object/from16 v0, p0

    iget-object v0, v0, mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, mTwDragSelectedViewPosition:I

    move/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5382
    move-object/from16 v0, p0

    iget v0, v0, mTwDragSelectedViewPosition:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, addToPressItemListArray(II)V

    .line 5383
    move-object/from16 v0, p0

    iget v0, v0, mTwDragSelectedViewPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mTwDragSelectedViewPosition:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, getItemIdAtPosition(I)J

    move-result-wide v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-direct {v0, v5, v1, v2, v3}, twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    goto/16 :goto_5a8

    .line 5389
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childBottom":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    :cond_6f1
    const/4 v15, 0x1

    .line 5391
    .end local v12    # "count":I
    .end local v13    # "i":I
    :cond_6f2
    if-eqz v15, :cond_853

    .line 5392
    add-int/lit8 v22, v11, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_77f

    move-object/from16 v0, p0

    iget v0, v0, mHoverTopAreaHeight:I

    move/from16 v22, v0

    add-int v22, v22, v11

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_77f

    .line 5393
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHoverAreaEnter:Z

    move/from16 v22, v0

    if-nez v22, :cond_73d

    .line 5394
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoverAreaEnter:Z

    .line 5395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverScrollStartTime:J

    .line 5397
    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_73d

    .line 5398
    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5402
    :cond_73d
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-nez v22, :cond_768

    .line 5403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverRecognitionStartTime:J

    .line 5404
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mHoverScrollDirection:I

    .line 5405
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5439
    :cond_768
    :goto_768
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDragBlockEnabled:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_779

    .line 5440
    invoke-virtual/range {p0 .. p0}, invalidate()V

    .line 5448
    :cond_779
    :goto_779
    move-object/from16 v0, p0

    iput-boolean v15, v0, mPreviousTextViewScroll:Z

    goto/16 :goto_15d

    .line 5407
    :cond_77f
    move-object/from16 v0, p0

    iget v0, v0, mHoverBottomAreaHeight:I

    move/from16 v22, v0

    sub-int v22, v10, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_7f1

    move/from16 v0, v21

    if-gt v0, v10, :cond_7f1

    .line 5408
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHoverAreaEnter:Z

    move/from16 v22, v0

    if-nez v22, :cond_7c4

    .line 5409
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoverAreaEnter:Z

    .line 5410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverScrollStartTime:J

    .line 5412
    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7c4

    .line 5413
    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5417
    :cond_7c4
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-nez v22, :cond_768

    .line 5418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverRecognitionStartTime:J

    .line 5419
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mHoverScrollDirection:I

    .line 5420
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_768

    .line 5423
    :cond_7f1
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHoverAreaEnter:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_818

    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_818

    .line 5424
    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5427
    :cond_818
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverScrollStartTime:J

    .line 5428
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverRecognitionStartTime:J

    .line 5429
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoverAreaEnter:Z

    .line 5432
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_849

    .line 5433
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5436
    :cond_849
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsHoverOverscrolled:Z

    goto/16 :goto_768

    .line 5442
    :cond_853
    move-object/from16 v0, p0

    iget-boolean v0, v0, mPreviousTextViewScroll:Z

    move/from16 v22, v0

    if-eqz v22, :cond_779

    .line 5444
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_779

    .line 5445
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    goto/16 :goto_779

    .line 5453
    :sswitch_876
    move-object/from16 v0, p0

    iget v0, v0, mQCstate:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8cd

    .line 5455
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_89d

    .line 5456
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5459
    :cond_89d
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_8b6

    .line 5460
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5463
    :cond_8b6
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsHoverOverscrolled:Z

    .line 5466
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mQCstate:I

    .line 5467
    invoke-virtual/range {p0 .. p0}, postInvalidateOnAnimation()V

    .line 5468
    const/16 v22, 0x1

    goto/16 :goto_150

    .line 5474
    :cond_8cd
    :sswitch_8cd
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsTextSelectionStarted:Z

    move/from16 v22, v0

    if-nez v22, :cond_98a

    .line 5475
    const/16 v22, 0xd4

    move/from16 v0, v22

    if-ne v4, v0, :cond_8eb

    .line 5476
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFirstPenClick:Z

    move/from16 v22, v0

    if-nez v22, :cond_a66

    const/16 v22, 0x1

    :goto_8e5
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsFirstPenClick:Z

    .line 5478
    :cond_8eb
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHoverAreaEnter:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_912

    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_912

    .line 5479
    move-object/from16 v0, p0

    iget-object v0, v0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5482
    :cond_912
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverRecognitionStartTime:J

    .line 5483
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverScrollStartTime:J

    .line 5484
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHoverAreaEnter:Z

    .line 5486
    move-object/from16 v0, p0

    iget-object v0, v0, mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragSelectedItemSize:I

    .line 5488
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    move-object/from16 v22, v0

    if-nez v22, :cond_955

    new-instance v22, Landroid/widget/AbsListView$CheckForDoublePenClick;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$CheckForDoublePenClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    .line 5490
    :cond_955
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    move-object/from16 v22, v0

    move/from16 v0, v20

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/AbsListView$CheckForDoublePenClick;->x:I

    .line 5491
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/AbsListView$CheckForDoublePenClick;->y:I

    .line 5493
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFirstPenClick:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a84

    .line 5494
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsMovedbeforeUP:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a6a

    .line 5495
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, post(Ljava/lang/Runnable;)Z

    .line 5505
    :cond_98a
    :goto_98a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsPenPressed:Z

    .line 5506
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsfirstMoveEvent:Z

    .line 5507
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragSelectedViewPosition:I

    .line 5509
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragStartX:I

    .line 5510
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragStartY:I

    .line 5511
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragEndX:I

    .line 5512
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragEndY:I

    .line 5514
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragBlockLeft:I

    .line 5515
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragBlockTop:I

    .line 5516
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragBlockRight:I

    .line 5517
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDragBlockBottom:I

    .line 5520
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mTwTrackedChild:Landroid/view/View;

    .line 5521
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDistanceFromTrackedChildTop:I

    .line 5523
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsCloseChildSetted:Z

    .line 5524
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mOldHoverScrollDirection:I

    .line 5525
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mTwCloseChildByTop:Landroid/view/View;

    .line 5526
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwCloseChildPositionByTop:I

    .line 5527
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDistanceFromCloseChildTop:I

    .line 5528
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mTwCloseChildByBottom:Landroid/view/View;

    .line 5529
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwCloseChildPositionByBottom:I

    .line 5530
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mTwDistanceFromCloseChildBottom:I

    .line 5532
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDragBlockEnabled:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a43

    .line 5533
    invoke-virtual/range {p0 .. p0}, invalidate()V

    .line 5537
    :cond_a43
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_a5c

    .line 5538
    move-object/from16 v0, p0

    iget-object v0, v0, mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5540
    :cond_a5c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsMovedbeforeUP:Z

    goto/16 :goto_15d

    .line 5476
    :cond_a66
    const/16 v22, 0x0

    goto/16 :goto_8e5

    .line 5497
    :cond_a6a
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_98a

    .line 5500
    :cond_a84
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_98a

    .line 5221
    nop

    :sswitch_data_a94
    .sparse-switch
        0x0 -> :sswitch_162
        0x1 -> :sswitch_876
        0x2 -> :sswitch_1f0
        0x3 -> :sswitch_876
        0xd3 -> :sswitch_15d
        0xd4 -> :sswitch_8cd
        0xd5 -> :sswitch_202
    .end sparse-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 6240
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 6241
    iget-object v10, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v10, :cond_b2

    .line 6242
    iget v5, p0, mScrollY:I

    .line 6243
    .local v5, "scrollY":I
    invoke-virtual {p0}, getClipToPadding()Z

    move-result v0

    .line 6249
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_b6

    .line 6250
    invoke-virtual {p0}, getWidth()I

    move-result v10

    iget v11, p0, mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, mPaddingRight:I

    sub-int v8, v10, v11

    .line 6251
    .local v8, "width":I
    invoke-virtual {p0}, getHeight()I

    move-result v10

    iget v11, p0, mPaddingTop:I

    sub-int/2addr v10, v11

    iget v11, p0, mPaddingBottom:I

    sub-int v3, v10, v11

    .line 6252
    .local v3, "height":I
    iget v6, p0, mPaddingLeft:I

    .line 6253
    .local v6, "translateX":I
    iget v7, p0, mPaddingTop:I

    .line 6260
    .local v7, "translateY":I
    :goto_2a
    iget-object v10, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_63

    .line 6261
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 6262
    .local v4, "restoreCount":I
    add-int v10, v6, v8

    iget-object v11, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {p1, v6, v7, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 6264
    iget v10, p0, mFirstPositionDistanceGuess:I

    add-int/2addr v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v2, v10, v7

    .line 6265
    .local v2, "edgeY":I
    int-to-float v10, v6

    int-to-float v11, v2

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6266
    iget-object v10, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6267
    iget-object v10, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v10

    if-eqz v10, :cond_60

    .line 6268
    invoke-direct {p0}, invalidateTopGlow()V

    .line 6270
    :cond_60
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6272
    .end local v2    # "edgeY":I
    .end local v4    # "restoreCount":I
    :cond_63
    iget-object v10, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_b2

    .line 6273
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 6274
    .restart local v4    # "restoreCount":I
    add-int v10, v7, v3

    iget-object v11, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int v11, v6, v8

    add-int v12, v7, v3

    invoke-virtual {p1, v6, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 6276
    neg-int v10, v8

    add-int v1, v10, v6

    .line 6277
    .local v1, "edgeX":I
    invoke-virtual {p0}, getHeight()I

    move-result v10

    iget v11, p0, mLastPositionDistanceGuess:I

    add-int/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v0, :cond_91

    iget v9, p0, mPaddingBottom:I

    :cond_91
    sub-int v2, v10, v9

    .line 6279
    .restart local v2    # "edgeY":I
    int-to-float v9, v1

    int-to-float v10, v2

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6280
    const/high16 v9, 0x43340000    # 180.0f

    int-to-float v10, v8

    const/4 v11, 0x0

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 6281
    iget-object v9, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6282
    iget-object v9, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_af

    .line 6283
    invoke-direct {p0}, invalidateBottomGlow()V

    .line 6285
    :cond_af
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6291
    .end local v0    # "clipToPadding":Z
    .end local v1    # "edgeX":I
    .end local v2    # "edgeY":I
    .end local v3    # "height":I
    .end local v4    # "restoreCount":I
    .end local v5    # "scrollY":I
    .end local v6    # "translateX":I
    .end local v7    # "translateY":I
    .end local v8    # "width":I
    :cond_b2
    invoke-direct {p0, p1}, drawQuickController(Landroid/graphics/Canvas;)V

    .line 6293
    return-void

    .line 6255
    .restart local v0    # "clipToPadding":Z
    .restart local v5    # "scrollY":I
    :cond_b6
    invoke-virtual {p0}, getWidth()I

    move-result v8

    .line 6256
    .restart local v8    # "width":I
    invoke-virtual {p0}, getHeight()I

    move-result v3

    .line 6257
    .restart local v3    # "height":I
    const/4 v6, 0x0

    .line 6258
    .restart local v6    # "translateX":I
    const/4 v7, 0x0

    .restart local v7    # "translateY":I
    goto/16 :goto_2a
.end method

.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 3495
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3496
    invoke-virtual {p0}, updateSelectorState()V

    .line 3497
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 5
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 9246
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 9248
    const-string v1, "drawing:cacheColorHint"

    invoke-virtual {p0}, getCacheColorHint()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9249
    const-string v1, "list:fastScrollEnabled"

    invoke-virtual {p0}, isFastScrollEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9250
    const-string v1, "list:scrollingCacheEnabled"

    invoke-virtual {p0}, isScrollingCacheEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9251
    const-string v1, "list:smoothScrollbarEnabled"

    invoke-virtual {p0}, isSmoothScrollbarEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9252
    const-string v1, "list:stackFromBottom"

    invoke-virtual {p0}, isStackFromBottom()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9253
    const-string v1, "list:textFilterEnabled"

    invoke-virtual {p0}, isTextFilterEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9255
    invoke-virtual {p0}, getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 9256
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_48

    .line 9257
    const-string/jumbo v1, "selectedView"

    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 9258
    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 9260
    :cond_48
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 9324
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 9326
    return-void
.end method

.method findClosestMotionRow(I)I
    .registers 5
    .param p1, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 7392
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 7393
    .local v0, "childCount":I
    if-nez v0, :cond_9

    move v1, v2

    .line 7398
    :cond_8
    :goto_8
    return v1

    .line 7397
    :cond_9
    invoke-virtual {p0, p1}, findMotionRow(I)I

    move-result v1

    .line 7398
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
    .line 2126
    invoke-virtual {p0}, getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 2129
    .end local p0    # "this":Landroid/widget/AbsListView;
    :goto_6
    return-object p0

    .restart local p0    # "this":Landroid/widget/AbsListView;
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p0

    goto :goto_6
.end method

.method public fling(I)V
    .registers 3
    .param p1, "velocityY"    # I

    .prologue
    .line 6186
    iget-object v0, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 6187
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6189
    :cond_b
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, reportScrollStateChange(I)V

    .line 6190
    iget-object v0, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 6191
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 5

    .prologue
    .line 8244
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8250
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 8255
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1982
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .registers 4
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 2768
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2769
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_4
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_12

    if-eq v0, p0, :cond_12

    move-object p1, v0

    .line 2770
    check-cast p1, Landroid/view/View;

    .line 2771
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 2774
    :cond_12
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_17

    .line 2775
    const/4 p1, 0x0

    .line 2778
    .end local p1    # "focusedView":Landroid/view/View;
    :cond_17
    return-object p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 8

    .prologue
    .line 2666
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 2667
    .local v1, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2668
    .local v2, "fadeEdge":F
    if-nez v1, :cond_b

    .line 2678
    .end local v2    # "fadeEdge":F
    :cond_a
    :goto_a
    return v2

    .line 2671
    .restart local v2    # "fadeEdge":F
    :cond_b
    iget v5, p0, mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_19

    .line 2672
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_a

    .line 2675
    :cond_19
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2676
    .local v0, "bottom":I
    invoke-virtual {p0}, getHeight()I

    move-result v4

    .line 2677
    .local v4, "height":I
    invoke-virtual {p0}, getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2678
    .local v3, "fadeLength":F
    iget v5, p0, mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_a

    sub-int v5, v0, v4

    iget v6, p0, mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_a
.end method

.method protected getBottomPaddingOffset()I
    .registers 3

    .prologue
    .line 3279
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
    .line 8322
    iget v0, p0, mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .registers 2

    .prologue
    .line 1323
    iget v0, p0, mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .registers 7

    .prologue
    .line 1387
    iget v4, p0, mChoiceMode:I

    if-eqz v4, :cond_c

    iget-object v4, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_c

    iget-object v4, p0, mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_10

    .line 1388
    :cond_c
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1399
    :cond_f
    return-object v3

    .line 1391
    :cond_10
    iget-object v2, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1392
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1393
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1395
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-ge v1, v0, :cond_f

    .line 1396
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1395
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method public getCheckedItemPosition()I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1355
    iget v0, p0, mChoiceMode:I

    if-ne v0, v1, :cond_19

    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_19

    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_19

    .line 1356
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1359
    :goto_18
    return v0

    :cond_19
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .registers 2

    .prologue
    .line 1372
    iget v0, p0, mChoiceMode:I

    if-eqz v0, :cond_7

    .line 1373
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1375
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getChoiceMode()I
    .registers 2

    .prologue
    .line 1603
    iget v0, p0, mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 3954
    iget-object v0, p0, mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2195
    invoke-virtual {p0}, getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2196
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_13

    .line 2199
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2200
    invoke-virtual {p0, v0, p1}, offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2205
    :goto_12
    return-void

    .line 2203
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_12
.end method

.method getFooterViewsCount()I
    .registers 2

    .prologue
    .line 7334
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 7324
    const/4 v0, 0x0

    return v0
.end method

.method getHeightForPosition(I)I
    .registers 9
    .param p1, "position"    # I

    .prologue
    .line 9187
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v1

    .line 9188
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 9189
    .local v0, "childCount":I
    sub-int v3, p1, v1

    .line 9190
    .local v3, "index":I
    if-ltz v3, :cond_17

    if-ge v3, v0, :cond_17

    .line 9192
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 9193
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 9200
    :goto_16
    return v2

    .line 9196
    .end local v4    # "view":Landroid/view/View;
    :cond_17
    iget-object v5, p0, mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 9197
    .restart local v4    # "view":Landroid/view/View;
    iget v5, p0, mWidthMeasureSpec:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 9198
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 9199
    .local v2, "height":I
    iget-object v5, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_16
.end method

.method protected getLeftPaddingOffset()I
    .registers 3

    .prologue
    .line 3264
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
    .line 2854
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .registers 2

    .prologue
    .line 2866
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .registers 2

    .prologue
    .line 2878
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .registers 2

    .prologue
    .line 2842
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .registers 3

    .prologue
    .line 3274
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
    .line 2826
    iget v0, p0, mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 2827
    iget v0, p0, mSelectedPosition:I

    iget v1, p0, mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2829
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method getSelectionModeForAccessibility()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2004
    invoke-virtual {p0}, getChoiceMode()I

    move-result v0

    .line 2005
    .local v0, "choiceMode":I
    packed-switch v0, :pswitch_data_e

    .line 2014
    :goto_8
    :pswitch_8
    return v1

    .line 2009
    :pswitch_9
    const/4 v1, 0x1

    goto :goto_8

    .line 2012
    :pswitch_b
    const/4 v1, 0x2

    goto :goto_8

    .line 2005
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3409
    iget-object v0, p0, mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 8289
    iget v0, p0, mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2521
    iget-boolean v0, p0, mTextFilterEnabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    .line 2522
    iget-object v0, p0, mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2524
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 6

    .prologue
    .line 2649
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 2650
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2651
    .local v1, "fadeEdge":F
    if-nez v0, :cond_b

    .line 2660
    .end local v1    # "fadeEdge":F
    :cond_a
    :goto_a
    return v1

    .line 2654
    .restart local v1    # "fadeEdge":F
    :cond_b
    iget v4, p0, mFirstPosition:I

    if-lez v4, :cond_12

    .line 2655
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_a

    .line 2658
    :cond_12
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2659
    .local v3, "top":I
    invoke-virtual {p0}, getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2660
    .local v2, "fadeLength":F
    iget v4, p0, mPaddingTop:I

    if-ge v3, v4, :cond_a

    iget v4, p0, mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_a
.end method

.method protected getTopPaddingOffset()I
    .registers 3

    .prologue
    .line 3269
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
    .line 1109
    iget v0, p0, mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .registers 2

    .prologue
    .line 8284
    iget v0, p0, mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .registers 3

    .prologue
    .line 1841
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1b

    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1842
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1846
    :goto_1a
    return v0

    .line 1843
    :cond_1b
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v0, :cond_36

    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v0}, Landroid/widget/FluidScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1844
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v1}, Landroid/widget/FluidScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1a

    .line 1846
    :cond_36
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_1a
.end method

.method protected handleDataChanged()V
    .registers 16

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 7584
    iget v1, p0, mItemCount:I

    .line 7585
    .local v1, "count":I
    iget v4, p0, mLastHandledItemCount:I

    .line 7586
    .local v4, "lastHandledItemCount":I
    iget v10, p0, mItemCount:I

    iput v10, p0, mLastHandledItemCount:I

    .line 7589
    iget-boolean v10, p0, mIsMultiFocusEnabled:Z

    if-ne v10, v9, :cond_29

    iget-object v10, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_29

    iget v10, p0, mItemCount:I

    iget v11, p0, mOldAdapterItemCount:I

    if-eq v10, v11, :cond_29

    .line 7591
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    .line 7592
    invoke-virtual {p0}, resetPressItemListArray()V

    .line 7593
    iget v10, p0, mItemCount:I

    iput v10, p0, mOldAdapterItemCount:I

    .line 7597
    :cond_29
    iget v10, p0, mChoiceMode:I

    if-eqz v10, :cond_3c

    iget-object v10, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_3c

    iget-object v10, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 7598
    invoke-virtual {p0}, confirmCheckedPositionsById()V

    .line 7602
    :cond_3c
    iget-object v10, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 7604
    if-lez v1, :cond_106

    .line 7609
    iget-boolean v10, p0, mNeedSync:Z

    if-eqz v10, :cond_8f

    .line 7611
    iput-boolean v12, p0, mNeedSync:Z

    .line 7612
    const/4 v10, 0x0

    iput-object v10, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 7614
    iget v10, p0, mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_54

    .line 7615
    iput v8, p0, mLayoutMode:I

    .line 7731
    :cond_53
    :goto_53
    return-void

    .line 7617
    :cond_54
    iget v10, p0, mTranscriptMode:I

    if-ne v10, v9, :cond_8a

    .line 7618
    iget-boolean v10, p0, mForceTranscriptScroll:Z

    if-eqz v10, :cond_61

    .line 7619
    iput-boolean v12, p0, mForceTranscriptScroll:Z

    .line 7620
    iput v8, p0, mLayoutMode:I

    goto :goto_53

    .line 7623
    :cond_61
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 7624
    .local v0, "childCount":I
    invoke-virtual {p0}, getHeight()I

    move-result v10

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 7625
    .local v5, "listBottom":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7626
    .local v3, "lastChild":Landroid/view/View;
    if-eqz v3, :cond_85

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7627
    .local v2, "lastBottom":I
    :goto_7b
    iget v10, p0, mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_87

    if-gt v2, v5, :cond_87

    .line 7629
    iput v8, p0, mLayoutMode:I

    goto :goto_53

    .end local v2    # "lastBottom":I
    :cond_85
    move v2, v5

    .line 7626
    goto :goto_7b

    .line 7634
    .restart local v2    # "lastBottom":I
    :cond_87
    invoke-virtual {p0}, awakenScrollBars()Z

    .line 7637
    .end local v0    # "childCount":I
    .end local v2    # "lastBottom":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_8a
    iget v10, p0, mSyncMode:I

    packed-switch v10, :pswitch_data_126

    .line 7685
    :cond_8f
    invoke-virtual {p0}, isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_102

    .line 7687
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v6

    .line 7690
    .local v6, "newPos":I
    if-lt v6, v1, :cond_9d

    .line 7691
    add-int/lit8 v6, v1, -0x1

    .line 7693
    :cond_9d
    if-gez v6, :cond_a0

    .line 7694
    const/4 v6, 0x0

    .line 7698
    :cond_a0
    invoke-virtual {p0, v6, v9}, lookForSelectablePosition(IZ)I

    move-result v7

    .line 7700
    .local v7, "selectablePos":I
    if-ltz v7, :cond_f7

    .line 7701
    invoke-virtual {p0, v7}, setNextSelectedPositionInt(I)V

    goto :goto_53

    .line 7639
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_aa
    invoke-virtual {p0}, isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 7644
    iput v14, p0, mLayoutMode:I

    .line 7645
    iget v8, p0, mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, mSyncPosition:I

    goto :goto_53

    .line 7651
    :cond_c1
    invoke-virtual {p0}, findSyncPosition()I

    move-result v6

    .line 7652
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_8f

    .line 7654
    invoke-virtual {p0, v6, v9}, lookForSelectablePosition(IZ)I

    move-result v7

    .line 7655
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_8f

    .line 7657
    iput v6, p0, mSyncPosition:I

    .line 7659
    iget-wide v8, p0, mSyncHeight:J

    invoke-virtual {p0}, getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_e1

    .line 7662
    iput v14, p0, mLayoutMode:I

    .line 7670
    :goto_dc
    invoke-virtual {p0, v6}, setNextSelectedPositionInt(I)V

    goto/16 :goto_53

    .line 7666
    :cond_e1
    const/4 v8, 0x2

    iput v8, p0, mLayoutMode:I

    goto :goto_dc

    .line 7678
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_e5
    iput v14, p0, mLayoutMode:I

    .line 7679
    iget v8, p0, mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, mSyncPosition:I

    goto/16 :goto_53

    .line 7705
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_f7
    invoke-virtual {p0, v6, v12}, lookForSelectablePosition(IZ)I

    move-result v7

    .line 7706
    if-ltz v7, :cond_106

    .line 7707
    invoke-virtual {p0, v7}, setNextSelectedPositionInt(I)V

    goto/16 :goto_53

    .line 7714
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_102
    iget v10, p0, mResurrectToPosition:I

    if-gez v10, :cond_53

    .line 7722
    :cond_106
    iget-boolean v10, p0, mStackFromBottom:Z

    if-eqz v10, :cond_124

    :goto_10a
    iput v8, p0, mLayoutMode:I

    .line 7723
    iput v13, p0, mSelectedPosition:I

    .line 7724
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, mSelectedRowId:J

    .line 7725
    iput v13, p0, mNextSelectedPosition:I

    .line 7726
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, mNextSelectedRowId:J

    .line 7727
    iput-boolean v12, p0, mNeedSync:Z

    .line 7728
    const/4 v8, 0x0

    iput-object v8, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 7729
    iput v13, p0, mSelectorPosition:I

    .line 7730
    invoke-virtual {p0}, checkSelectionChanged()V

    goto/16 :goto_53

    :cond_124
    move v8, v9

    .line 7722
    goto :goto_10a

    .line 7637
    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_e5
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .registers 2

    .prologue
    .line 8166
    iget-boolean v0, p0, mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 7348
    iget v0, p0, mSelectedPosition:I

    if-eq v0, v2, :cond_27

    .line 7349
    iget v0, p0, mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 7350
    iget v0, p0, mSelectedPosition:I

    iput v0, p0, mResurrectToPosition:I

    .line 7352
    :cond_e
    iget v0, p0, mNextSelectedPosition:I

    if-ltz v0, :cond_1c

    iget v0, p0, mNextSelectedPosition:I

    iget v1, p0, mSelectedPosition:I

    if-eq v0, v1, :cond_1c

    .line 7353
    iget v0, p0, mNextSelectedPosition:I

    iput v0, p0, mResurrectToPosition:I

    .line 7355
    :cond_1c
    invoke-virtual {p0, v2}, setSelectedPositionInt(I)V

    .line 7356
    invoke-virtual {p0, v2}, setNextSelectedPositionInt(I)V

    .line 7357
    const/4 v0, 0x0

    iput v0, p0, mSelectedTop:I

    .line 7358
    iput v2, p0, mSelectorPosition:I

    .line 7360
    :cond_27
    return-void
.end method

.method public invalidateViews()V
    .registers 2

    .prologue
    .line 7405
    const/4 v0, 0x1

    iput-boolean v0, p0, mDataChanged:Z

    .line 7406
    invoke-virtual {p0}, rememberSyncState()V

    .line 7407
    invoke-virtual {p0}, requestLayout()V

    .line 7408
    invoke-virtual {p0}, invalidate()V

    .line 7409
    return-void
.end method

.method invokeOnItemScrollListener()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1949
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_27

    .line 1950
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    iget v1, p0, mFirstPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v2

    iget v3, p0, mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 1954
    :cond_12
    :goto_12
    iget-object v0, p0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_23

    .line 1955
    iget-object v0, p0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, mFirstPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v2

    iget v3, p0, mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1957
    :cond_23
    invoke-virtual {p0, v4, v4, v4, v4}, onScrollChanged(IIII)V

    .line 1958
    return-void

    .line 1951
    :cond_27
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v0, :cond_12

    .line 1952
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    iget v1, p0, mFirstPosition:I

    invoke-virtual {p0}, getChildCount()I

    move-result v2

    iget v3, p0, mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FluidScroller;->onScroll(III)V

    goto :goto_12
.end method

.method public isFastScrollAlwaysVisible()Z
    .registers 4
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1832
    iget-object v2, p0, mFastScroll:Landroid/widget/FastScroller;

    if-nez v2, :cond_11

    .line 1833
    iget-boolean v2, p0, mFastScrollEnabled:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_f

    .line 1835
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 1833
    goto :goto_e

    .line 1835
    :cond_11
    iget-object v2, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v2}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v2}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

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
    .line 1857
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_7

    .line 1858
    iget-boolean v0, p0, mFastScrollEnabled:Z

    .line 1860
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    goto :goto_6
.end method

.method protected isInFilterMode()Z
    .registers 2

    .prologue
    .line 7845
    iget-boolean v0, p0, mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1338
    iget v0, p0, mChoiceMode:I

    if-eqz v0, :cond_f

    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_f

    .line 1339
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1342
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isLockScreenMode()Z
    .registers 8

    .prologue
    .line 4583
    iget-object v5, p0, mContext:Landroid/content/Context;

    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 4584
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 4585
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 4587
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 4588
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 4589
    .local v0, "isCoverOpen":Z
    if-eqz v4, :cond_21

    .line 4597
    :cond_21
    const/4 v1, 0x0

    .line 4598
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_26

    if-nez v0, :cond_28

    :cond_26
    const/4 v1, 0x1

    .line 4600
    :goto_27
    return v1

    .line 4598
    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public isMultiFocusEnabled()Z
    .registers 2

    .prologue
    .line 9611
    iget-boolean v0, p0, mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .registers 3

    .prologue
    .line 1919
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
    .line 3259
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
    .line 2143
    iget-boolean v0, p0, mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1932
    iget-boolean v0, p0, mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2220
    iget-boolean v0, p0, mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2190
    iget-boolean v0, p0, mTextFilterEnabled:Z

    return v0
.end method

.method protected isTwShowingScrollbar()Z
    .registers 2

    .prologue
    .line 6936
    invoke-super {p0}, Landroid/widget/AdapterView;->isTwShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, mFastScrollEnabled:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, mTwFluidScrollEnabled:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected isTwUsingAdapterView()Z
    .registers 2

    .prologue
    .line 6961
    const/4 v0, 0x1

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .registers 2

    .prologue
    .line 1888
    invoke-virtual {p0}, isFastScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, twIsFluidScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 3541
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3542
    iget-object v0, p0, mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3543
    :cond_c
    return-void
.end method

.method keyPressed()V
    .registers 13

    .prologue
    const/4 v10, 0x1

    .line 3417
    invoke-virtual {p0}, isEnabled()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {p0}, isClickable()Z

    move-result v8

    if-nez v8, :cond_e

    .line 3463
    :cond_d
    :goto_d
    return-void

    .line 3421
    :cond_e
    iget-object v3, p0, mSelector:Landroid/graphics/drawable/Drawable;

    .line 3422
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, mSelectorRect:Landroid/graphics/Rect;

    .line 3423
    .local v4, "selectorRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_d

    invoke-virtual {p0}, isFocused()Z

    move-result v8

    if-nez v8, :cond_20

    invoke-virtual {p0}, touchModeDrawsInPressedState()Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_20
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    .line 3426
    iget v8, p0, mSelectedPosition:I

    iget v9, p0, mFirstPosition:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3428
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_3a

    .line 3429
    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-nez v8, :cond_d

    .line 3430
    invoke-virtual {v5, v10}, Landroid/view/View;->setPressed(Z)V

    .line 3432
    :cond_3a
    invoke-virtual {p0, v10}, setPressed(Z)V

    .line 3435
    iget-object v0, p0, mSelectorRect:Landroid/graphics/Rect;

    .line 3436
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    .line 3437
    .local v6, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    .line 3440
    .local v7, "y":F
    invoke-virtual {p0}, isLongClickable()Z

    move-result v2

    .line 3441
    .local v2, "longClickable":Z
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3442
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_60

    instance-of v8, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v8, :cond_60

    .line 3443
    if-eqz v2, :cond_87

    .line 3444
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3451
    :cond_60
    :goto_60
    iget-object v8, p0, mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3453
    if-eqz v2, :cond_d

    iget-boolean v8, p0, mDataChanged:Z

    if-nez v8, :cond_d

    .line 3454
    iget-object v8, p0, mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v8, :cond_8d

    .line 3455
    new-instance v8, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v8, p0, mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 3459
    :goto_77
    iget-object v8, p0, mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v8}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3460
    iget-object v8, p0, mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {p0, v8, v10, v11}, postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 3447
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_87
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_60

    .line 3457
    :cond_8d
    iget-object v8, p0, mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v8}, removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_77
.end method

.method protected layoutChildren()V
    .registers 1

    .prologue
    .line 2760
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    .line 2894
    const-wide/16 v6, 0x8

    const-string/jumbo v8, "obtainView"

    invoke-static {v6, v7, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2896
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-boolean v7, p2, v6

    .line 2897
    iget-object v6, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 2900
    .local v5, "viewType":I
    iget-object v6, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    .line 2901
    .local v3, "transientView":Landroid/view/View;
    if-eqz v3, :cond_3c

    .line 2902
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2905
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    iget v6, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v6, v5, :cond_34

    .line 2906
    iget-object v6, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2909
    .local v4, "updatedView":Landroid/view/View;
    if-eq v4, v3, :cond_34

    .line 2910
    invoke-direct {p0, v4, p1}, setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2911
    iget-object v6, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2915
    .end local v4    # "updatedView":Landroid/view/View;
    :cond_34
    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-boolean v7, p2, v6

    .line 2918
    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2980
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v3    # "transientView":Landroid/view/View;
    :goto_3b
    return-object v3

    .line 2922
    .restart local v3    # "transientView":Landroid/view/View;
    :cond_3c
    const/4 v2, 0x0

    .line 2924
    .local v2, "scrapView":Landroid/view/View;
    const/4 v6, -0x2

    if-eq v5, v6, :cond_dd

    .line 2925
    iget-object v6, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    .line 2929
    :goto_46
    iget-object v6, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2931
    .local v0, "child":Landroid/view/View;
    if-eqz v2, :cond_55

    .line 2932
    if-eq v0, v2, :cond_e7

    .line 2934
    iget-object v6, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, v2, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2944
    :cond_55
    :goto_55
    if-nez v0, :cond_f0

    .line 2945
    const-string v6, "AbsListView"

    const-string v7, " try again to check child on obtainview"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    iget-object v6, p0, mAdapter:Landroid/widget/ListAdapter;

    const/4 v7, 0x0

    invoke-interface {v6, p1, v7, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2947
    if-nez v0, :cond_f0

    .line 2948
    const-string v6, "AbsListView"

    const-string v7, " child is null again"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    const-string v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    const-string v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mAdapter ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    const-string v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " getChildCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, getChildCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    const-string v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mAdapter.getCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    const/4 v3, 0x0

    goto/16 :goto_3b

    .line 2927
    .end local v0    # "child":Landroid/view/View;
    :cond_dd
    const-string v6, "AbsListView"

    const-string/jumbo v7, "viewType is heaer or footer"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46

    .line 2936
    .restart local v0    # "child":Landroid/view/View;
    :cond_e7
    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-boolean v7, p2, v6

    .line 2939
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto/16 :goto_55

    .line 2957
    :cond_f0
    iget v6, p0, mCacheColorHint:I

    if-eqz v6, :cond_f9

    .line 2958
    iget v6, p0, mCacheColorHint:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2961
    :cond_f9
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    if-nez v6, :cond_103

    .line 2962
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2965
    :cond_103
    invoke-direct {p0, v0, p1}, setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2970
    iget-object v6, p0, mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v6, :cond_111

    .line 2971
    new-instance v6, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v6, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v6, p0, mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 2973
    :cond_111
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v6

    if-nez v6, :cond_11c

    .line 2974
    iget-object v6, p0, mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2978
    :cond_11c
    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    move-object v3, v0

    .line 2980
    goto/16 :goto_3b
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    .line 3547
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3549
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 3550
    .local v1, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3552
    iget-boolean v2, p0, USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_13

    .line 3553
    iget-object v2, p0, mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3556
    :cond_13
    iget-boolean v2, p0, mTextFilterEnabled:Z

    if-eqz v2, :cond_22

    iget-object v2, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_22

    iget-boolean v2, p0, mGlobalLayoutListenerAddedFilter:Z

    if-nez v2, :cond_22

    .line 3557
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3560
    :cond_22
    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_47

    iget-object v2, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v2, :cond_47

    .line 3561
    new-instance v2, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3562
    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3565
    const/4 v2, 0x1

    iput-boolean v2, p0, mDataChanged:Z

    .line 3566
    iget v2, p0, mItemCount:I

    iput v2, p0, mOldItemCount:I

    .line 3567
    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iput v2, p0, mItemCount:I

    .line 3570
    :cond_47
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_6f

    iget-object v2, p0, mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_6f

    .line 3571
    iget-object v2, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, getVerticalScrollbarPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3576
    :cond_5a
    :goto_5a
    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v2, :cond_6e

    .line 3577
    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Landroid/preference/PreferenceGroupAdapter;

    iget v0, v2, Landroid/preference/PreferenceGroupAdapter;->mTwNeedPaddingTop:I

    .line 3578
    .local v0, "extraPaddingTop":I
    iget v2, p0, mPaddingTop:I

    if-nez v2, :cond_6e

    if-lez v0, :cond_6e

    .line 3579
    iput v0, p0, mPaddingTop:I

    .line 3582
    .end local v0    # "extraPaddingTop":I
    :cond_6e
    return-void

    .line 3572
    :cond_6f
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v2, :cond_5a

    .line 3573
    iget-object v2, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {p0}, getVerticalScrollbarPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FluidScroller;->setScrollbarPosition(I)V

    goto :goto_5a
.end method

.method public onCancelPendingInputEvents()V
    .registers 2

    .prologue
    .line 3752
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3753
    iget-object v0, p0, mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_c

    .line 3754
    iget-object v0, p0, mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3756
    :cond_c
    iget-object v0, p0, mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_15

    .line 3757
    iget-object v0, p0, mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3759
    :cond_15
    iget-object v0, p0, mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_1e

    .line 3760
    iget-object v0, p0, mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3762
    :cond_1e
    iget-object v0, p0, mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_27

    .line 3763
    iget-object v0, p0, mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3765
    :cond_27
    iget-object v0, p0, mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    if-eqz v0, :cond_30

    .line 3766
    iget-object v0, p0, mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3768
    :cond_30
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 7940
    invoke-virtual {p0}, isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 7941
    iget-object v0, p0, mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_19

    .line 7942
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 7943
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 7945
    :cond_19
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7946
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7947
    iget-object v0, p0, mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 7949
    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method protected onDetachedFromWindow()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3586
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3588
    const/4 v1, 0x1

    iput-boolean v1, p0, mIsDetaching:Z

    .line 3591
    invoke-direct {p0}, dismissPopup()V

    .line 3594
    iget-object v1, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 3596
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3597
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3598
    iget-boolean v1, p0, mTextFilterEnabled:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_25

    .line 3599
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3600
    iput-boolean v3, p0, mGlobalLayoutListenerAddedFilter:Z

    .line 3603
    :cond_25
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_36

    iget-object v1, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_36

    .line 3604
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3605
    iput-object v4, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3608
    :cond_36
    iget-object v1, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_41

    .line 3609
    iget-object v1, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3610
    iput-object v4, p0, mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3613
    :cond_41
    iget-object v1, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_4c

    .line 3614
    iget-object v1, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3615
    iput-object v4, p0, mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3618
    :cond_4c
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_55

    .line 3619
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3622
    :cond_55
    iget-object v1, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5e

    .line 3623
    iget-object v1, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3626
    :cond_5e
    iget-object v1, p0, mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_67

    .line 3627
    iget-object v1, p0, mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3630
    :cond_67
    iget-object v1, p0, mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_70

    .line 3631
    iget-object v1, p0, mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3634
    :cond_70
    iget-object v1, p0, mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_7e

    .line 3635
    iget-object v1, p0, mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3636
    iget-object v1, p0, mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3639
    :cond_7e
    iget v1, p0, mTouchMode:I

    if-eq v1, v5, :cond_84

    .line 3640
    iput v5, p0, mTouchMode:I

    .line 3643
    :cond_84
    iget-boolean v1, p0, USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_8d

    .line 3644
    iget-object v1, p0, mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3648
    :cond_8d
    iget v1, p0, mQCstate:I

    if-eqz v1, :cond_93

    .line 3649
    iput v3, p0, mQCstate:I

    .line 3652
    :cond_93
    invoke-direct {p0}, releaseAllBoosters()V

    .line 3653
    iput-boolean v3, p0, mIsDetaching:Z

    .line 3654
    return-void
.end method

.method protected onDisplayHint(I)V
    .registers 3
    .param p1, "hint"    # I

    .prologue
    .line 7735
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 7736
    sparse-switch p1, :sswitch_data_34

    .line 7748
    :cond_6
    :goto_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_31

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, mPopupHidden:Z

    .line 7749
    return-void

    .line 7738
    :sswitch_d
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7739
    invoke-direct {p0}, dismissPopup()V

    goto :goto_6

    .line 7743
    :sswitch_1d
    iget-boolean v0, p0, mFiltered:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7744
    invoke-direct {p0}, showPopup()V

    goto :goto_6

    .line 7748
    :cond_31
    const/4 v0, 0x0

    goto :goto_a

    .line 7736
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
    .line 8236
    iget v0, p0, mSelectedPosition:I

    if-gez v0, :cond_c

    if-lez p1, :cond_c

    .line 8237
    const/4 v0, -0x1

    iput v0, p0, mResurrectToPosition:I

    .line 8238
    invoke-virtual {p0}, resurrectSelection()Z

    .line 8240
    :cond_c
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2529
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2530
    if-eqz p1, :cond_2b

    iget v0, p0, mSelectedPosition:I

    if-gez v0, :cond_2b

    invoke-virtual {p0}, isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2531
    invoke-virtual {p0}, isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_28

    .line 2534
    const/4 v0, 0x1

    iput-boolean v0, p0, mDataChanged:Z

    .line 2535
    iget v0, p0, mItemCount:I

    iput v0, p0, mOldItemCount:I

    .line 2536
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, mItemCount:I

    .line 2538
    :cond_28
    invoke-virtual {p0}, resurrectSelection()Z

    .line 2540
    :cond_2b
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 6145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_10

    .line 6146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_56

    .line 6173
    :cond_10
    :goto_10
    :pswitch_10
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_14
    return v3

    .line 6148
    :pswitch_15
    iget v4, p0, mTouchMode:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    .line 6149
    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 6150
    .local v2, "vscroll":F
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_10

    .line 6151
    invoke-virtual {p0}, getVerticalScrollFactor()F

    move-result v4

    mul-float/2addr v4, v2

    float-to-int v1, v4

    .line 6152
    .local v1, "delta":I
    invoke-virtual {p0, v1, v1}, trackMotionScroll(II)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_14

    .line 6160
    .end local v1    # "delta":I
    .end local v2    # "vscroll":F
    :pswitch_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 6161
    .local v0, "actionButton":I
    const/16 v4, 0x20

    if-eq v0, v4, :cond_3d

    const/4 v4, 0x2

    if-ne v0, v4, :cond_10

    :cond_3d
    iget v4, p0, mTouchMode:I

    if-eqz v4, :cond_45

    iget v4, p0, mTouchMode:I

    if-ne v4, v3, :cond_10

    .line 6164
    :cond_45
    invoke-direct {p0, p1}, performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 6165
    iget-object v3, p0, mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v3}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6166
    iget-object v3, p0, mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v3}, removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_10

    .line 6146
    :pswitch_data_56
    .packed-switch 0x8
        :pswitch_15
        :pswitch_10
        :pswitch_10
        :pswitch_32
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 8171
    invoke-virtual {p0}, isShown()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 8173
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

    .line 8174
    invoke-direct {p0}, showPopup()V

    .line 8183
    :cond_1d
    :goto_1d
    return-void

    .line 8178
    :cond_1e
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 8179
    invoke-direct {p0}, dismissPopup()V

    goto :goto_1d
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v3, 0x1

    .line 3090
    const/4 v2, -0x1

    if-ne p2, v2, :cond_5

    .line 3124
    :cond_4
    :goto_4
    return-void

    .line 3096
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3097
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v2, :cond_1e

    .line 3098
    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 3103
    .local v0, "isItemEnabled":Z
    :goto_11
    invoke-virtual {p0}, isEnabled()Z

    move-result v2

    if-eqz v2, :cond_19

    if-nez v0, :cond_20

    .line 3104
    :cond_19
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_4

    .line 3100
    .end local v0    # "isItemEnabled":Z
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "isItemEnabled":Z
    goto :goto_11

    .line 3108
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_20
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v2

    if-ne p2, v2, :cond_4b

    .line 3109
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 3110
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3115
    :goto_2e
    invoke-virtual {p0}, isClickable()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 3116
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3117
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 3120
    :cond_3c
    invoke-virtual {p0}, isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3121
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3122
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_4

    .line 3112
    :cond_4b
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_2e
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 1988
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1989
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1990
    invoke-direct {p0}, canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1991
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1992
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1993
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1995
    :cond_1d
    invoke-direct {p0}, canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1996
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1997
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1998
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2001
    :cond_30
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 6326
    iget-object v1, p0, mFastScroll:Landroid/widget/FastScroller;

    if-eqz v1, :cond_e

    iget-object v1, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 6332
    :cond_d
    :goto_d
    return v0

    .line 6328
    :cond_e
    iget-object v1, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v1, :cond_1a

    iget-object v1, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v1, p1}, Landroid/widget/FluidScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 6332
    :cond_1a
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

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 6337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 6340
    .local v0, "actionMasked":I
    iget-object v9, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v9, :cond_11

    .line 6341
    iget-object v9, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v9}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 6344
    :cond_11
    iget-boolean v9, p0, mIsDetaching:Z

    if-nez v9, :cond_1b

    invoke-virtual {p0}, isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_1d

    :cond_1b
    move v7, v8

    .line 6428
    :cond_1c
    :goto_1c
    return v7

    .line 6352
    :cond_1d
    iget-object v9, p0, mFastScroll:Landroid/widget/FastScroller;

    if-eqz v9, :cond_29

    iget-object v9, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v9, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_1c

    .line 6354
    :cond_29
    iget-object v9, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v9, :cond_35

    iget-object v9, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v9, p1}, Landroid/widget/FluidScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_1c

    .line 6358
    :cond_35
    packed-switch v0, :pswitch_data_d0

    :cond_38
    :goto_38
    :pswitch_38
    move v7, v8

    .line 6428
    goto :goto_1c

    .line 6360
    :pswitch_3a
    iget v3, p0, mTouchMode:I

    .line 6361
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_42

    const/4 v9, 0x5

    if-ne v3, v9, :cond_45

    .line 6362
    :cond_42
    iput v8, p0, mMotionCorrection:I

    goto :goto_1c

    .line 6366
    :cond_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 6367
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 6368
    .local v6, "y":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, mActivePointerId:I

    .line 6370
    invoke-virtual {p0, v6}, findMotionRow(I)I

    move-result v1

    .line 6371
    .local v1, "motionPosition":I
    if-eq v3, v11, :cond_76

    if-ltz v1, :cond_76

    .line 6374
    iget v9, p0, mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6375
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, mMotionViewOriginalTop:I

    .line 6376
    iput v5, p0, mMotionX:I

    .line 6377
    iput v6, p0, mMotionY:I

    .line 6378
    iput v1, p0, mMotionPosition:I

    .line 6379
    iput v8, p0, mTouchMode:I

    .line 6380
    invoke-direct {p0}, clearScrollingCache()V

    .line 6382
    .end local v4    # "v":Landroid/view/View;
    :cond_76
    const/high16 v9, -0x80000000

    iput v9, p0, mLastY:I

    .line 6383
    invoke-direct {p0}, initOrResetVelocityTracker()V

    .line 6384
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6385
    iput v8, p0, mNestedYOffset:I

    .line 6386
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, startNestedScroll(I)Z

    .line 6387
    if-ne v3, v11, :cond_38

    goto :goto_1c

    .line 6394
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_8b
    iget v9, p0, mTouchMode:I

    packed-switch v9, :pswitch_data_e2

    goto :goto_38

    .line 6396
    :pswitch_91
    iget v9, p0, mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 6397
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_a0

    .line 6398
    const/4 v2, 0x0

    .line 6399
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, mActivePointerId:I

    .line 6401
    :cond_a0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v6, v9

    .line 6402
    .restart local v6    # "y":I
    invoke-direct {p0}, initVelocityTrackerIfNotExists()V

    .line 6403
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6404
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v6, v10}, startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_38

    goto/16 :goto_1c

    .line 6414
    .end local v2    # "pointerIndex":I
    .end local v6    # "y":I
    :pswitch_bb
    iput v10, p0, mTouchMode:I

    .line 6415
    iput v10, p0, mActivePointerId:I

    .line 6416
    invoke-direct {p0}, recycleVelocityTracker()V

    .line 6417
    invoke-virtual {p0, v8}, reportScrollStateChange(I)V

    .line 6418
    invoke-virtual {p0}, stopNestedScroll()V

    goto/16 :goto_38

    .line 6423
    :pswitch_ca
    invoke-direct {p0, p1}, onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_38

    .line 6358
    nop

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_bb
        :pswitch_8b
        :pswitch_bb
        :pswitch_38
        :pswitch_38
        :pswitch_ca
    .end packed-switch

    .line 6394
    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_91
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 3999
    sparse-switch p1, :sswitch_data_14

    .line 4014
    :cond_4
    :goto_4
    const/4 v0, 0x0

    return v0

    .line 4002
    :sswitch_6
    iput-boolean v1, p0, mIsCtrlkeyPressed:Z

    goto :goto_4

    .line 4006
    :sswitch_9
    iput-boolean v1, p0, mIsShiftkeyPressed:Z

    goto :goto_4

    .line 4009
    :sswitch_c
    iget-boolean v0, p0, mIsCtrlkeyPressed:Z

    if-ne v0, v1, :cond_4

    .line 4010
    invoke-virtual {p0}, resetPressItemListArray()V

    goto :goto_4

    .line 3999
    :sswitch_data_14
    .sparse-switch
        0x1f -> :sswitch_c
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

    .line 4019
    iget v4, p0, mSelectedPosition:I

    iget v5, p0, mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4020
    .local v1, "selectedview":Landroid/view/View;
    const/4 v0, 0x0

    .line 4022
    .local v0, "currentview":Landroid/view/View;
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 4023
    invoke-virtual {p0}, isEnabled()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 4103
    :goto_19
    return v3

    .line 4026
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

    .line 4030
    iget v4, p0, mSelectedPosition:I

    iget v5, p0, mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4031
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_4d

    .line 4032
    iget v4, p0, mSelectedPosition:I

    iget-wide v6, p0, mSelectedRowId:J

    invoke-virtual {p0, v2, v4, v6, v7}, performItemClick(Landroid/view/View;IJ)Z

    .line 4033
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 4035
    :cond_4d
    invoke-virtual {p0, v8}, setPressed(Z)V

    goto :goto_19

    .line 4040
    .end local v2    # "view":Landroid/view/View;
    :cond_51
    sparse-switch p1, :sswitch_data_dc

    .line 4103
    :cond_54
    :goto_54
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_19

    .line 4046
    :sswitch_59
    iget-boolean v4, p0, mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_63

    .line 4047
    iget v4, p0, mOldKeyCode:I

    if-nez v4, :cond_b0

    .line 4048
    iput p1, p0, mOldKeyCode:I

    .line 4054
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

    .line 4058
    iget v4, p0, mTwCurrentFocusPosition:I

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4060
    iget-boolean v4, p0, mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_a7

    if-eqz v1, :cond_a7

    .line 4061
    iget v3, p0, mCurrentKeyCode:I

    if-nez v3, :cond_b3

    .line 4062
    invoke-virtual {p0}, resetPressItemListArray()V

    .line 4063
    iget v3, p0, mTwCurrentFocusPosition:I

    iget-wide v4, p0, mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4064
    iget v3, p0, mSelectedPosition:I

    iget-wide v4, p0, mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4067
    iget v3, p0, mTwCurrentFocusPosition:I

    iget v4, p0, mSelectedPosition:I

    invoke-direct {p0, v3, v4}, addToPressItemListArray(II)V

    .line 4068
    iget v3, p0, mTwCurrentFocusPosition:I

    iput v3, p0, mFirstPressedPoint:I

    .line 4077
    :cond_a7
    :goto_a7
    iget v3, p0, mCurrentKeyCode:I

    if-eqz v3, :cond_54

    .line 4078
    iget v3, p0, mCurrentKeyCode:I

    iput v3, p0, mOldKeyCode:I

    goto :goto_54

    .line 4050
    :cond_b0
    iput p1, p0, mCurrentKeyCode:I

    goto :goto_63

    .line 4070
    :cond_b3
    invoke-virtual {p0}, resetPressItemListArray()V

    .line 4071
    iget v3, p0, mSelectedPosition:I

    iget-wide v4, p0, mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4073
    iget v3, p0, mFirstPressedPoint:I

    iget v4, p0, mSelectedPosition:I

    invoke-direct {p0, v3, v4}, addToPressItemListArray(II)V

    goto :goto_a7

    .line 4085
    :sswitch_c5
    iput-boolean v8, p0, mIsCtrlkeyPressed:Z

    goto :goto_54

    .line 4089
    :sswitch_c8
    iput-boolean v8, p0, mIsShiftkeyPressed:Z

    .line 4090
    iput v8, p0, mOldKeyCode:I

    .line 4091
    iput v8, p0, mCurrentKeyCode:I

    .line 4092
    iput v6, p0, mFirstPressedPoint:I

    .line 4093
    iput v6, p0, mSecondPressedPoint:I

    goto :goto_54

    .line 4096
    :sswitch_d3
    iget-boolean v4, p0, mIsCtrlkeyPressed:Z

    if-ne v4, v3, :cond_54

    .line 4097
    invoke-virtual {p0}, resetPressItemListArray()V

    goto/16 :goto_54

    .line 4040
    :sswitch_data_dc
    .sparse-switch
        0x13 -> :sswitch_59
        0x14 -> :sswitch_59
        0x15 -> :sswitch_59
        0x16 -> :sswitch_59
        0x1f -> :sswitch_d3
        0x3b -> :sswitch_c8
        0x3c -> :sswitch_c8
        0x71 -> :sswitch_c5
        0x72 -> :sswitch_c5
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2711
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2713
    const/4 v2, 0x1

    iput-boolean v2, p0, mInLayout:Z

    .line 2715
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 2716
    .local v0, "childCount":I
    if-eqz p1, :cond_1e

    .line 2717
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_19

    .line 2718
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2717
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2720
    :cond_19
    iget-object v2, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2723
    .end local v1    # "i":I
    :cond_1e
    invoke-virtual {p0}, layoutChildren()V

    .line 2724
    const/4 v2, 0x0

    iput-boolean v2, p0, mInLayout:Z

    .line 2726
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, mOverscrollMax:I

    .line 2729
    iget-object v2, p0, mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_3a

    .line 2730
    iget-object v2, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, getChildCount()I

    move-result v3

    iget v4, p0, mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    .line 2734
    :cond_39
    :goto_39
    return-void

    .line 2731
    :cond_3a
    iget-object v2, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v2, :cond_39

    .line 2732
    iget-object v2, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {p0}, getChildCount()I

    move-result v3

    iget v4, p0, mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FluidScroller;->onItemCountChanged(II)V

    goto :goto_39
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 2685
    iget-object v6, p0, mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_8

    .line 2686
    invoke-direct {p0}, useDefaultSelector()V

    .line 2688
    :cond_8
    iget-object v4, p0, mListPadding:Landroid/graphics/Rect;

    .line 2689
    .local v4, "listPadding":Landroid/graphics/Rect;
    iget v6, p0, mSelectionLeftPadding:I

    iget v7, p0, mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2690
    iget v6, p0, mSelectionTopPadding:I

    iget v7, p0, mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 2691
    iget v6, p0, mSelectionRightPadding:I

    iget v7, p0, mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2692
    iget v6, p0, mSelectionBottomPadding:I

    iget v7, p0, mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 2695
    iget v6, p0, mTranscriptMode:I

    if-ne v6, v5, :cond_4f

    .line 2696
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 2697
    .local v0, "childCount":I
    invoke-virtual {p0}, getHeight()I

    move-result v6

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 2698
    .local v3, "listBottom":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2699
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_50

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2700
    .local v1, "lastBottom":I
    :goto_44
    iget v6, p0, mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, mLastHandledItemCount:I

    if-lt v6, v7, :cond_52

    if-gt v1, v3, :cond_52

    :goto_4d
    iput-boolean v5, p0, mForceTranscriptScroll:Z

    .line 2703
    .end local v0    # "childCount":I
    .end local v1    # "lastBottom":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "listBottom":I
    :cond_4f
    return-void

    .restart local v0    # "childCount":I
    .restart local v2    # "lastChild":Landroid/view/View;
    .restart local v3    # "listBottom":I
    :cond_50
    move v1, v3

    .line 2699
    goto :goto_44

    .line 2700
    .restart local v1    # "lastBottom":I
    :cond_52
    const/4 v5, 0x0

    goto :goto_4d
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 6223
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 6224
    .local v0, "childCount":I
    if-nez p4, :cond_38

    if-lez v0, :cond_38

    float-to-int v1, p3

    invoke-virtual {p0, v1}, canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_38

    .line 6226
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, reportScrollStateChange(I)V

    .line 6227
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_29

    .line 6228
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6230
    :cond_29
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_36

    .line 6231
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 6233
    :cond_36
    const/4 v1, 0x1

    .line 6235
    :goto_37
    return v1

    :cond_38
    invoke-virtual {p0, p2, p3, p4}, dispatchNestedFling(FFZ)Z

    move-result v1

    goto :goto_37
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 15
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 6207
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 6208
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6209
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_2d

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 6210
    .local v8, "oldTop":I
    :goto_11
    if-eqz v7, :cond_1b

    neg-int v0, p5

    neg-int v3, p5

    invoke-virtual {p0, v0, v3}, trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 6211
    :cond_1b
    move v4, p5

    .line 6212
    .local v4, "myUnconsumed":I
    const/4 v2, 0x0

    .line 6213
    .local v2, "myConsumed":I
    if-eqz v7, :cond_26

    .line 6214
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v2, v0, v8

    .line 6215
    sub-int/2addr v4, v2

    .line 6217
    :cond_26
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, dispatchNestedScroll(IIII[I)Z

    .line 6219
    .end local v2    # "myConsumed":I
    .end local v4    # "myUnconsumed":I
    :cond_2c
    return-void

    .end local v8    # "oldTop":I
    :cond_2d
    move v8, v1

    .line 6209
    goto :goto_11
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 6200
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 6201
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, startNestedScroll(I)Z

    .line 6202
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 8
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 6134
    iget v0, p0, mScrollY:I

    if-eq v0, p2, :cond_15

    .line 6135
    iget v0, p0, mScrollX:I

    iget v1, p0, mScrollX:I

    iget v2, p0, mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, onScrollChanged(IIII)V

    .line 6136
    iput p2, p0, mScrollY:I

    .line 6137
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    .line 6139
    invoke-virtual {p0}, awakenScrollBars()Z

    .line 6141
    :cond_15
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 8415
    iget-object v1, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_37

    .line 8416
    iget-object v1, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, setAdapter(Landroid/widget/ListAdapter;)V

    .line 8417
    const-string v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRemoteAdapter() #2 getCount()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8418
    iget-boolean v1, p0, mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_36

    .line 8419
    iget-object v1, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 8420
    iput-boolean v0, p0, mDeferNotifyDataSetChanged:Z

    .line 8427
    :cond_36
    :goto_36
    return v0

    .line 8423
    :cond_37
    iget-object v1, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_36

    .line 8424
    iget-object v0, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 8425
    const/4 v0, 0x1

    goto :goto_36
.end method

.method public onRemoteAdapterDisconnected()V
    .registers 1

    .prologue
    .line 8440
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 10
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 2436
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 2438
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2439
    iput-boolean v4, p0, mDataChanged:Z

    .line 2441
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v1

    iput-wide v2, p0, mSyncHeight:J

    .line 2443
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_60

    .line 2444
    iput-boolean v4, p0, mNeedSync:Z

    .line 2445
    iput-object v0, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2446
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, mSyncRowId:J

    .line 2447
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, mSyncPosition:I

    .line 2448
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, mSpecificTop:I

    .line 2449
    const/4 v1, 0x0

    iput v1, p0, mSyncMode:I

    .line 2463
    :cond_2e
    :goto_2e
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, setFilterText(Ljava/lang/String;)V

    .line 2465
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_3b

    .line 2466
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2469
    :cond_3b
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_43

    .line 2470
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2473
    :cond_43
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, mCheckedItemCount:I

    .line 2475
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_5c

    iget v1, p0, mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5c

    iget-object v1, p0, mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_5c

    .line 2477
    iget-object v1, p0, mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, mChoiceActionMode:Landroid/view/ActionMode;

    .line 2480
    :cond_5c
    invoke-virtual {p0}, requestLayout()V

    .line 2481
    return-void

    .line 2450
    :cond_60
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_2e

    .line 2451
    invoke-virtual {p0, v5}, setSelectedPositionInt(I)V

    .line 2453
    invoke-virtual {p0, v5}, setNextSelectedPositionInt(I)V

    .line 2454
    iput v5, p0, mSelectorPosition:I

    .line 2455
    iput-boolean v4, p0, mNeedSync:Z

    .line 2456
    iput-object v0, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2457
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, mSyncRowId:J

    .line 2458
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, mSyncPosition:I

    .line 2459
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, mSpecificTop:I

    .line 2460
    iput v4, p0, mSyncMode:I

    goto :goto_2e
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3727
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 3728
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_11

    .line 3729
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3733
    :cond_10
    :goto_10
    return-void

    .line 3730
    :cond_11
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v0, :cond_10

    .line 3731
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {p0}, getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FluidScroller;->setScrollbarPosition(I)V

    goto :goto_10
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 16

    .prologue
    .line 2344
    invoke-direct {p0}, dismissPopup()V

    .line 2346
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2348
    .local v9, "superState":Landroid/os/Parcelable;
    new-instance v8, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v8, v9}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2350
    .local v8, "ss":Landroid/widget/AbsListView$SavedState;
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v12, :cond_4d

    .line 2352
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2353
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2354
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2355
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->position:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2356
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->height:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2357
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2358
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v12, v12, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v12, v8, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2359
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2360
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2361
    iget-object v12, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2431
    :cond_4c
    :goto_4c
    return-object v8

    .line 2365
    :cond_4d
    invoke-virtual {p0}, getChildCount()I

    move-result v12

    if-lez v12, :cond_cb

    iget v12, p0, mItemCount:I

    if-lez v12, :cond_cb

    const/4 v3, 0x1

    .line 2366
    .local v3, "haveChildren":Z
    :goto_58
    invoke-virtual {p0}, getSelectedItemId()J

    move-result-wide v6

    .line 2367
    .local v6, "selectedId":J
    iput-wide v6, v8, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2368
    invoke-virtual {p0}, getHeight()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2370
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_cd

    .line 2372
    iget v12, p0, mSelectedTop:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2373
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2374
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2401
    :goto_78
    const/4 v12, 0x0

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2402
    iget-boolean v12, p0, mFiltered:Z

    if-eqz v12, :cond_8f

    .line 2403
    iget-object v10, p0, mTextFilter:Landroid/widget/EditText;

    .line 2404
    .local v10, "textFilter":Landroid/widget/EditText;
    if-eqz v10, :cond_8f

    .line 2405
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2406
    .local v1, "filterText":Landroid/text/Editable;
    if-eqz v1, :cond_8f

    .line 2407
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2412
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
    iput-boolean v12, v8, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2414
    iget-object v12, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_a7

    .line 2415
    iget-object v12, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2417
    :cond_a7
    iget-object v12, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_103

    .line 2418
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 2419
    .local v5, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2420
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b7
    if-ge v4, v0, :cond_101

    .line 2421
    iget-object v12, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2420
    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    .line 2365
    .end local v0    # "count":I
    .end local v3    # "haveChildren":Z
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6    # "selectedId":J
    :cond_cb
    const/4 v3, 0x0

    goto :goto_58

    .line 2376
    .restart local v3    # "haveChildren":Z
    .restart local v6    # "selectedId":J
    :cond_cd
    if-eqz v3, :cond_f3

    iget v12, p0, mFirstPosition:I

    if-lez v12, :cond_f3

    .line 2386
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2387
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2388
    iget v2, p0, mFirstPosition:I

    .line 2389
    .local v2, "firstPos":I
    iget v12, p0, mItemCount:I

    if-lt v2, v12, :cond_e8

    .line 2390
    iget v12, p0, mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 2392
    :cond_e8
    iput v2, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2393
    iget-object v12, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_78

    .line 2395
    .end local v2    # "firstPos":I
    .end local v11    # "v":Landroid/view/View;
    :cond_f3
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2396
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2397
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    goto/16 :goto_78

    .line 2412
    :cond_ff
    const/4 v12, 0x0

    goto :goto_99

    .line 2423
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_101
    iput-object v5, v8, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2425
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_103
    iget v12, p0, mCheckedItemCount:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2427
    iget-object v12, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v12, :cond_4c

    .line 2428
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
    .line 3284
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 3285
    const/4 v0, 0x1

    iput-boolean v0, p0, mDataChanged:Z

    .line 3286
    invoke-virtual {p0}, rememberSyncState()V

    .line 3289
    :cond_c
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_16

    .line 3290
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 3294
    :cond_15
    :goto_15
    return-void

    .line 3291
    :cond_16
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v0, :cond_15

    .line 3292
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FluidScroller;->onSizeChanged(IIII)V

    goto :goto_15
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 6195
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    .line 8200
    invoke-virtual {p0}, isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 8201
    invoke-direct {p0, v4}, createTextFilter(Z)V

    .line 8202
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8203
    .local v1, "length":I
    iget-object v3, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 8204
    .local v2, "showing":Z
    if-nez v2, :cond_31

    if-lez v1, :cond_31

    .line 8206
    invoke-direct {p0}, showPopup()V

    .line 8207
    iput-boolean v4, p0, mFiltered:Z

    .line 8213
    :cond_1d
    :goto_1d
    iget-object v3, p0, mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_30

    .line 8214
    iget-object v3, p0, mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 8216
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3c

    .line 8217
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 8224
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_30
    return-void

    .line 8208
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_31
    if-eqz v2, :cond_1d

    if-nez v1, :cond_1d

    .line 8210
    invoke-direct {p0}, dismissPopup()V

    .line 8211
    const/4 v3, 0x0

    iput-boolean v3, p0, mFiltered:Z

    goto :goto_1d

    .line 8219
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3c
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5563
    invoke-virtual {p0}, isEnabled()Z

    move-result v11

    if-nez v11, :cond_17

    .line 5566
    invoke-virtual {p0}, isClickable()Z

    move-result v11

    if-nez v11, :cond_14

    invoke-virtual {p0}, isLongClickable()Z

    move-result v11

    if-eqz v11, :cond_15

    :cond_14
    move v9, v10

    :cond_15
    move v10, v9

    .line 5667
    :cond_16
    :goto_16
    return v10

    .line 5569
    :cond_17
    iget-object v11, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v11, :cond_20

    .line 5570
    iget-object v11, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v11}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5573
    :cond_20
    iget-boolean v11, p0, mIsDetaching:Z

    if-nez v11, :cond_2a

    invoke-virtual {p0}, isAttachedToWindow()Z

    move-result v11

    if-nez v11, :cond_2c

    :cond_2a
    move v10, v9

    .line 5578
    goto :goto_16

    .line 5581
    :cond_2c
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, startNestedScroll(I)Z

    .line 5583
    iget-object v11, p0, mFastScroll:Landroid/widget/FastScroller;

    if-eqz v11, :cond_3c

    iget-object v11, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v11, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    if-nez v11, :cond_16

    .line 5585
    :cond_3c
    iget-object v11, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v11, :cond_5d

    .line 5586
    iget-object v11, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v11, p1}, Landroid/widget/FluidScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 5587
    .local v4, "intercepted":Z
    iget-object v11, p0, mOnFluidScrollEffectListener:Landroid/widget/AbsListView$OnFluidScrollEffectListener;

    if-eqz v11, :cond_5b

    .line 5588
    iget-object v11, p0, mOnFluidScrollEffectListener:Landroid/widget/AbsListView$OnFluidScrollEffectListener;

    iget-object v12, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v12}, Landroid/widget/FluidScroller;->getEffectState()I

    move-result v12

    iget-object v13, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v13}, Landroid/widget/FluidScroller;->getScrollY()F

    move-result v13

    invoke-interface {v11, v12, v13}, Landroid/widget/AbsListView$OnFluidScrollEffectListener;->onEffectStateChanged(IF)V

    .line 5590
    :cond_5b
    if-nez v4, :cond_16

    .line 5595
    .end local v4    # "intercepted":Z
    :cond_5d
    invoke-direct {p0}, initVelocityTrackerIfNotExists()V

    .line 5596
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 5598
    .local v6, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5599
    .local v0, "actionMasked":I
    if-nez v0, :cond_6c

    .line 5600
    iput v9, p0, mNestedYOffset:I

    .line 5602
    :cond_6c
    const/4 v11, 0x0

    iget v12, p0, mNestedYOffset:I

    int-to-float v12, v12

    invoke-virtual {v6, v11, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5603
    packed-switch v0, :pswitch_data_f2

    .line 5663
    :goto_76
    :pswitch_76
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_7f

    .line 5664
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5666
    :cond_7f
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_16

    .line 5605
    :pswitch_83
    invoke-direct {p0, p1}, onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_76

    .line 5610
    :pswitch_87
    invoke-direct {p0, p1, v6}, onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_76

    .line 5615
    :pswitch_8b
    invoke-direct {p0, p1}, onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_76

    .line 5620
    :pswitch_8f
    invoke-direct {p0}, onTouchCancel()V

    goto :goto_76

    .line 5625
    :pswitch_93
    invoke-direct {p0, p1}, onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 5626
    iget v7, p0, mMotionX:I

    .line 5627
    .local v7, "x":I
    iget v8, p0, mMotionY:I

    .line 5628
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, pointToPosition(II)I

    move-result v5

    .line 5629
    .local v5, "motionPosition":I
    if-ltz v5, :cond_b0

    .line 5631
    iget v9, p0, mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5632
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, mMotionViewOriginalTop:I

    .line 5633
    iput v5, p0, mMotionPosition:I

    .line 5635
    .end local v1    # "child":Landroid/view/View;
    :cond_b0
    iput v8, p0, mLastY:I

    .line 5636
    iget v9, p0, mPointerCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, mPointerCount:I

    goto :goto_76

    .line 5642
    .end local v5    # "motionPosition":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_b9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 5643
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 5644
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v7, v11

    .line 5645
    .restart local v7    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v8, v11

    .line 5646
    .restart local v8    # "y":I
    iput v9, p0, mMotionCorrection:I

    .line 5647
    iput v2, p0, mActivePointerId:I

    .line 5648
    iput v7, p0, mMotionX:I

    .line 5649
    iput v8, p0, mMotionY:I

    .line 5650
    invoke-virtual {p0, v7, v8}, pointToPosition(II)I

    move-result v5

    .line 5651
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_e9

    .line 5653
    iget v9, p0, mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5654
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, mMotionViewOriginalTop:I

    .line 5655
    iput v5, p0, mMotionPosition:I

    .line 5657
    .end local v1    # "child":Landroid/view/View;
    :cond_e9
    iput v8, p0, mLastY:I

    .line 5658
    iget v9, p0, mPointerCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, mPointerCount:I

    goto :goto_76

    .line 5603
    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_83
        :pswitch_8b
        :pswitch_87
        :pswitch_8f
        :pswitch_76
        :pswitch_b9
        :pswitch_93
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .registers 4
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 4545
    if-eqz p1, :cond_18

    .line 4547
    invoke-virtual {p0}, hideSelector()V

    .line 4551
    invoke-virtual {p0}, getHeight()I

    move-result v1

    if-lez v1, :cond_14

    invoke-virtual {p0}, getChildCount()I

    move-result v1

    if-lez v1, :cond_14

    .line 4554
    invoke-virtual {p0}, layoutChildren()V

    .line 4556
    :cond_14
    invoke-virtual {p0}, updateSelectorState()V

    .line 4575
    :cond_17
    :goto_17
    return-void

    .line 4558
    :cond_18
    iget v0, p0, mTouchMode:I

    .line 4559
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    .line 4560
    :cond_20
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_29

    .line 4561
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4563
    :cond_29
    iget-object v1, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_32

    .line 4564
    iget-object v1, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4567
    :cond_32
    iget v1, p0, mScrollY:I

    if-eqz v1, :cond_17

    .line 4568
    const/4 v1, 0x0

    iput v1, p0, mScrollY:I

    .line 4569
    invoke-virtual {p0}, invalidateParentCaches()V

    .line 4570
    invoke-direct {p0}, finishGlows()V

    .line 4571
    invoke-virtual {p0}, invalidate()V

    goto :goto_17
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 9311
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 9312
    const/4 v0, -0x1

    iput v0, p0, mHoverPosition:I

    .line 9314
    if-nez p2, :cond_9

    .line 9318
    :goto_8
    return-void

    .line 9316
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

    .line 3658
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3663
    iput-boolean p1, p0, mHasWindowFocusForMotion:Z

    .line 3664
    iput-boolean p1, p0, mWindowFocusChanged:Z

    .line 3665
    invoke-virtual {p0}, isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_52

    move v0, v1

    .line 3667
    .local v0, "touchMode":I
    :goto_10
    if-nez p1, :cond_54

    .line 3668
    invoke-virtual {p0, v1}, setChildrenDrawingCacheEnabled(Z)V

    .line 3669
    iget-object v3, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_3b

    .line 3670
    iget-object v3, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3673
    iget-object v3, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3674
    iget-object v3, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v3, :cond_2c

    .line 3675
    iget-object v3, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3677
    :cond_2c
    iget v3, p0, mScrollY:I

    if-eqz v3, :cond_3b

    .line 3678
    iput v1, p0, mScrollY:I

    .line 3679
    invoke-virtual {p0}, invalidateParentCaches()V

    .line 3680
    invoke-direct {p0}, finishGlows()V

    .line 3681
    invoke-virtual {p0}, invalidate()V

    .line 3685
    :cond_3b
    invoke-direct {p0}, dismissPopup()V

    .line 3687
    if-ne v0, v2, :cond_44

    .line 3689
    iget v2, p0, mSelectedPosition:I

    iput v2, p0, mResurrectToPosition:I

    .line 3693
    :cond_44
    iget v2, p0, mQCstate:I

    if-eqz v2, :cond_4a

    .line 3694
    iput v1, p0, mQCstate:I

    .line 3718
    :cond_4a
    :goto_4a
    iput v0, p0, mLastTouchMode:I

    .line 3720
    if-nez p1, :cond_51

    .line 3721
    invoke-direct {p0}, releaseAllBoosters()V

    .line 3723
    :cond_51
    return-void

    .end local v0    # "touchMode":I
    :cond_52
    move v0, v2

    .line 3665
    goto :goto_10

    .line 3697
    .restart local v0    # "touchMode":I
    :cond_54
    iget-boolean v3, p0, mFiltered:Z

    if-eqz v3, :cond_5f

    iget-boolean v3, p0, mPopupHidden:Z

    if-nez v3, :cond_5f

    .line 3699
    invoke-direct {p0}, showPopup()V

    .line 3703
    :cond_5f
    iget v3, p0, mLastTouchMode:I

    if-eq v0, v3, :cond_4a

    iget v3, p0, mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4a

    .line 3705
    if-ne v0, v2, :cond_6e

    .line 3707
    invoke-virtual {p0}, resurrectSelection()Z

    goto :goto_4a

    .line 3711
    :cond_6e
    invoke-virtual {p0}, hideSelector()V

    .line 3712
    iput v1, p0, mLayoutMode:I

    .line 3713
    invoke-virtual {p0}, layoutChildren()V

    goto :goto_4a
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2021
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2100
    :cond_a
    :goto_a
    return v1

    .line 2024
    :cond_b
    sparse-switch p1, :sswitch_data_188

    move v1, v2

    .line 2100
    goto :goto_a

    .line 2027
    :sswitch_10
    invoke-virtual {p0}, isEnabled()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p0}, getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_34

    invoke-virtual {p0}, getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_47

    invoke-direct {p0}, canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 2028
    :cond_34
    invoke-virtual {p0}, getHeight()I

    move-result v2

    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2029
    .local v0, "viewportHeight":I
    invoke-virtual {p0, v0, v5}, smoothScrollBy(II)V

    goto :goto_a

    .end local v0    # "viewportHeight":I
    :cond_47
    move v1, v2

    .line 2032
    goto :goto_a

    .line 2035
    :sswitch_49
    invoke-virtual {p0}, isEnabled()Z

    move-result v3

    if-eqz v3, :cond_67

    iget v3, p0, mFirstPosition:I

    if-lez v3, :cond_67

    .line 2036
    invoke-virtual {p0}, getHeight()I

    move-result v2

    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2037
    .restart local v0    # "viewportHeight":I
    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, smoothScrollBy(II)V

    goto :goto_a

    .end local v0    # "viewportHeight":I
    :cond_67
    move v1, v2

    .line 2040
    goto :goto_a

    .line 2042
    :sswitch_69
    const-string v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case ACTION_AUTOSCROLL_DOWN  canScrollDown():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, canScrollDown()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    invoke-direct {p0}, canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 2044
    const/16 v2, 0xfa0

    invoke-virtual {p0, v2}, fling(I)V

    goto/16 :goto_a

    :cond_92
    move v1, v2

    .line 2047
    goto/16 :goto_a

    .line 2049
    :sswitch_95
    const-string v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case ACTION_AUTOSCROLL_UP  canScrollUp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, canScrollUp()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    invoke-direct {p0}, canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_be

    .line 2051
    const/16 v2, -0xfa0

    invoke-virtual {p0, v2}, fling(I)V

    goto/16 :goto_a

    :cond_be
    move v1, v2

    .line 2054
    goto/16 :goto_a

    .line 2057
    :sswitch_c1
    const-string v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case ACTION_AUTOSCROLL_ON, canScrollDown = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, canScrollDown()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    invoke-direct {p0}, canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 2059
    const/16 v2, 0x140

    iput v2, p0, mAutoscrollDuration:I

    .line 2060
    iget v2, p0, mAutoscrollDuration:I

    invoke-direct {p0, v2}, autoScrollWithDuration(I)V

    goto/16 :goto_a

    :cond_ee
    move v1, v2

    .line 2063
    goto/16 :goto_a

    .line 2065
    :sswitch_f1
    const-string v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_AUTOSCROLL_SPEED_UP, current duration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mAutoscrollDuration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    invoke-direct {p0}, canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_124

    .line 2067
    iget v2, p0, mAutoscrollDuration:I

    const/16 v3, 0x50

    if-le v2, v3, :cond_11d

    .line 2068
    iget v2, p0, mAutoscrollDuration:I

    add-int/lit8 v2, v2, -0x50

    iput v2, p0, mAutoscrollDuration:I

    .line 2069
    :cond_11d
    iget v2, p0, mAutoscrollDuration:I

    invoke-direct {p0, v2}, autoScrollWithDuration(I)V

    goto/16 :goto_a

    :cond_124
    move v1, v2

    .line 2072
    goto/16 :goto_a

    .line 2074
    :sswitch_127
    const-string v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_AUTOSCROLL_SPEED_DOWN, current duration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mAutoscrollDuration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    invoke-direct {p0}, canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_15a

    .line 2076
    iget v2, p0, mAutoscrollDuration:I

    const/16 v3, 0x230

    if-ge v2, v3, :cond_153

    .line 2077
    iget v2, p0, mAutoscrollDuration:I

    add-int/lit8 v2, v2, 0x50

    iput v2, p0, mAutoscrollDuration:I

    .line 2079
    :cond_153
    iget v2, p0, mAutoscrollDuration:I

    invoke-direct {p0, v2}, autoScrollWithDuration(I)V

    goto/16 :goto_a

    :cond_15a
    move v1, v2

    .line 2082
    goto/16 :goto_a

    .line 2084
    :sswitch_15d
    const-string v3, "AbsListView"

    const-string v4, "ACTION_AUTOSCROLL_TOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    invoke-direct {p0}, canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_16f

    .line 2086
    invoke-virtual {p0, v2, v2, v2}, smoothScrollToPositionFromTop(III)V

    goto/16 :goto_a

    :cond_16f
    move v1, v2

    .line 2089
    goto/16 :goto_a

    .line 2091
    :sswitch_172
    const-string v3, "AbsListView"

    const-string v4, "ACTION_AUTOSCROLL_OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    invoke-virtual {p0, v2, v2}, smoothScrollBy(II)V

    .line 2093
    iget-object v2, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_a

    .line 2094
    iget-object v2, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    goto/16 :goto_a

    .line 2024
    nop

    :sswitch_data_188
    .sparse-switch
        0x1000 -> :sswitch_10
        0x2000 -> :sswitch_49
        0x400000 -> :sswitch_c1
        0x800000 -> :sswitch_172
        0x1000000 -> :sswitch_95
        0x1020038 -> :sswitch_49
        0x102003a -> :sswitch_10
        0x2000000 -> :sswitch_69
        0x4000000 -> :sswitch_15d
        0x10000000 -> :sswitch_f1
        0x20000000 -> :sswitch_127
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

    .line 1495
    const/4 v8, 0x0

    .line 1496
    .local v8, "handled":Z
    const/4 v9, 0x0

    .line 1497
    .local v9, "handledNotifykeyPress":Z
    const/4 v7, 0x1

    .line 1499
    .local v7, "dispatchItemClick":Z
    iget v3, p0, mChoiceMode:I

    if-eqz v3, :cond_64

    .line 1500
    const/4 v8, 0x1

    .line 1501
    const/4 v0, 0x0

    .line 1503
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

    .line 1505
    :cond_1d
    iget-object v3, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_6c

    move v6, v1

    .line 1506
    .local v6, "checked":Z
    :goto_26
    iget-object v1, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1507
    iget-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_48

    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1508
    if-eqz v6, :cond_6e

    .line 1509
    iget-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1514
    :cond_48
    :goto_48
    if-eqz v6, :cond_7a

    .line 1515
    iget v1, p0, mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mCheckedItemCount:I

    .line 1519
    :goto_50
    iget-object v1, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5e

    .line 1520
    iget-object v1, p0, mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1522
    const/4 v7, 0x0

    .line 1524
    :cond_5e
    const/4 v0, 0x1

    .line 1541
    .end local v6    # "checked":Z
    :cond_5f
    :goto_5f
    if-eqz v0, :cond_64

    .line 1542
    invoke-direct {p0}, updateOnScreenCheckedViews()V

    .line 1546
    .end local v0    # "checkedStateChanged":Z
    :cond_64
    if-eqz v7, :cond_6b

    .line 1547
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1550
    :cond_6b
    return v8

    .restart local v0    # "checkedStateChanged":Z
    :cond_6c
    move v6, v2

    .line 1505
    goto :goto_26

    .line 1511
    .restart local v6    # "checked":Z
    :cond_6e
    iget-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_48

    .line 1517
    :cond_7a
    iget v1, p0, mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mCheckedItemCount:I

    goto :goto_50

    .line 1525
    .end local v6    # "checked":Z
    :cond_81
    iget-object v3, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_5f

    iget v3, p0, mChoiceMode:I

    if-ne v3, v1, :cond_5f

    .line 1526
    iget-object v3, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_c2

    move v6, v1

    .line 1527
    .restart local v6    # "checked":Z
    :goto_92
    if-eqz v6, :cond_c4

    .line 1528
    iget-object v2, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1529
    iget-object v2, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1530
    iget-object v2, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_be

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_be

    .line 1531
    iget-object v2, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1532
    iget-object v2, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1534
    :cond_be
    iput v1, p0, mCheckedItemCount:I

    .line 1538
    :cond_c0
    :goto_c0
    const/4 v0, 0x1

    goto :goto_5f

    .end local v6    # "checked":Z
    :cond_c2
    move v6, v2

    .line 1526
    goto :goto_92

    .line 1535
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

    .line 1536
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

    const/4 v1, 0x3

    const/4 v6, 0x1

    .line 3924
    iget v0, p0, mChoiceMode:I

    if-ne v0, v1, :cond_24

    .line 3925
    iget-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_23

    iget-object v0, p0, mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_23

    .line 3928
    iget v0, p0, mChoiceMode:I

    if-ne v0, v1, :cond_1d

    .line 3929
    iput-boolean v6, p0, mIsDragBlockEnabled:Z

    .line 3931
    :cond_1d
    invoke-virtual {p0, p2, v6}, setItemChecked(IZ)V

    .line 3932
    invoke-virtual {p0, v7}, performHapticFeedback(I)Z

    .line 3949
    :cond_23
    :goto_23
    return v6

    .line 3937
    :cond_24
    const/4 v6, 0x0

    .line 3938
    .local v6, "handled":Z
    iget-object v0, p0, mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_33

    .line 3939
    iget-object v0, p0, mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3942
    :cond_33
    if-nez v6, :cond_3f

    .line 3943
    invoke-virtual {p0, p1, p2, p3, p4}, createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3944
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3946
    :cond_3f
    if-eqz v6, :cond_23

    .line 3947
    invoke-virtual {p0, v7}, performHapticFeedback(I)Z

    goto :goto_23
.end method

.method public pointToPosition(II)I
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 4127
    iget-object v4, p0, mTouchFrame:Landroid/graphics/Rect;

    .line 4128
    .local v4, "frame":Landroid/graphics/Rect;
    if-nez v4, :cond_e

    .line 4129
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, mTouchFrame:Landroid/graphics/Rect;

    .line 4130
    iget-object v4, p0, mTouchFrame:Landroid/graphics/Rect;

    .line 4132
    :cond_e
    instance-of v6, p0, Landroid/widget/ListView;

    if-eqz v6, :cond_47

    move-object v6, p0

    check-cast v6, Landroid/widget/ListView;

    iget v2, v6, Landroid/widget/ListView;->mDividerHeight:I

    .line 4133
    .local v2, "dividerHeight":I
    :goto_17
    if-lez v2, :cond_21

    move-object v6, p0

    check-cast v6, Landroid/widget/ListView;

    iget-object v6, v6, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_21

    const/4 v3, 0x1

    .line 4135
    .local v3, "drawDividers":Z
    :cond_21
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 4136
    .local v1, "count":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_27
    if-ltz v5, :cond_4c

    .line 4137
    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4138
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_49

    .line 4139
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4140
    if-eqz v3, :cond_3d

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 4142
    :cond_3d
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 4143
    iget v6, p0, mFirstPosition:I

    add-int/2addr v6, v5

    .line 4147
    .end local v0    # "child":Landroid/view/View;
    :goto_46
    return v6

    .end local v1    # "count":I
    .end local v2    # "dividerHeight":I
    .end local v3    # "drawDividers":Z
    .end local v5    # "i":I
    :cond_47
    move v2, v3

    .line 4132
    goto :goto_17

    .line 4136
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v2    # "dividerHeight":I
    .restart local v3    # "drawDividers":Z
    .restart local v5    # "i":I
    :cond_49
    add-int/lit8 v5, v5, -0x1

    goto :goto_27

    .line 4147
    .end local v0    # "child":Landroid/view/View;
    :cond_4c
    const/4 v6, -0x1

    goto :goto_46
.end method

.method public pointToRowId(II)J
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4160
    invoke-virtual {p0, p1, p2}, pointToPosition(II)I

    move-result v0

    .line 4161
    .local v0, "position":I
    if-ltz v0, :cond_d

    .line 4162
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 4164
    :goto_c
    return-wide v2

    :cond_d
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_c
.end method

.method positionSelector(ILandroid/view/View;)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 3148
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, positionSelector(ILandroid/view/View;ZFF)V

    .line 3149
    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .registers 10
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 3137
    iget-object v0, p0, mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    iget v0, p0, mSelectorPosition:I

    if-eq v0, p1, :cond_1d

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1d

    .line 3138
    iget-object v6, p0, mSelectorRect:Landroid/graphics/Rect;

    .line 3139
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 3140
    .local v4, "x":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 3141
    .local v5, "y":F
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, positionSelector(ILandroid/view/View;ZFF)V

    .line 3145
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :goto_1c
    return-void

    .line 3143
    :cond_1d
    invoke-virtual {p0, p1, p2}, positionSelector(ILandroid/view/View;)V

    goto :goto_1c
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .registers 11
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 3130
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, positionSelector(ILandroid/view/View;ZFF)V

    .line 3131
    return-void
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
    .line 8333
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 8334
    .local v1, "childCount":I
    iget-object v5, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    # getter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->access$5400(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 8337
    .local v3, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_32

    .line 8338
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8339
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 8341
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_2f

    iget-object v5, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 8342
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8343
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8344
    if-eqz v3, :cond_2f

    .line 8346
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 8337
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 8350
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_32
    iget-object v5, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 8351
    invoke-virtual {p0}, removeAllViewsInLayout()V

    .line 8352
    return-void
.end method

.method reconcileSelectedPosition()I
    .registers 3

    .prologue
    .line 7368
    iget v0, p0, mSelectedPosition:I

    .line 7369
    .local v0, "position":I
    if-gez v0, :cond_6

    .line 7370
    iget v0, p0, mResurrectToPosition:I

    .line 7372
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7373
    iget v1, p0, mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7374
    return v0
.end method

.method public registerDoubleTapMotion()V
    .registers 2

    .prologue
    .line 1078
    invoke-direct {p0}, registerMotionListener()V

    .line 1079
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setMotionEvent(Z)V

    .line 1080
    return-void
.end method

.method public registerIRMotion()V
    .registers 1

    .prologue
    .line 1056
    return-void
.end method

.method reportScrollStateChange(I)V
    .registers 6
    .param p1, "newState"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6483
    iget v0, p0, mLastScrollState:I

    if-eq p1, v0, :cond_41

    .line 6485
    iget-boolean v0, p0, mDVFSLockAcquired:Z

    if-eqz v0, :cond_14

    iget v0, p0, mQCstate:I

    if-ne v0, v3, :cond_14

    .line 6486
    invoke-static {v1}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 6487
    iput-boolean v1, p0, mDVFSLockAcquired:Z

    .line 6489
    :cond_14
    iget v0, p0, mQCstate:I

    if-eq v0, v3, :cond_36

    iget-boolean v0, p0, mTwScrollingByScrollbar:Z

    if-nez v0, :cond_36

    .line 6490
    if-eqz p1, :cond_27

    iget v0, p0, mLastScrollState:I

    if-nez v0, :cond_27

    .line 6492
    invoke-static {v2}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 6493
    iput-boolean v2, p0, mDVFSLockAcquired:Z

    .line 6495
    :cond_27
    if-nez p1, :cond_36

    iget v0, p0, mLastScrollState:I

    if-eqz v0, :cond_36

    .line 6497
    iget-boolean v0, p0, mDVFSLockAcquired:Z

    if-eqz v0, :cond_36

    .line 6498
    invoke-static {v1}, Landroid/os/DVFSHelper;->onScrollEvent(Z)V

    .line 6499
    iput-boolean v1, p0, mDVFSLockAcquired:Z

    .line 6504
    :cond_36
    iput p1, p0, mLastScrollState:I

    .line 6505
    iget-object v0, p0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_41

    .line 6507
    iget-object v0, p0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 6510
    :cond_41
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 6318
    if-eqz p1, :cond_5

    .line 6319
    invoke-direct {p0}, recycleVelocityTracker()V

    .line 6321
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 6322
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 2544
    iget-boolean v0, p0, mBlockLayoutRequests:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, mInLayout:Z

    if-nez v0, :cond_b

    .line 2545
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 2547
    :cond_b
    return-void
.end method

.method requestLayoutIfNecessary()V
    .registers 2

    .prologue
    .line 2238
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 2239
    invoke-virtual {p0}, resetList()V

    .line 2240
    invoke-virtual {p0}, requestLayout()V

    .line 2241
    invoke-virtual {p0}, invalidate()V

    .line 2243
    :cond_f
    return-void
.end method

.method resetList()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2553
    invoke-virtual {p0}, removeAllViewsInLayout()V

    .line 2554
    iput v3, p0, mFirstPosition:I

    .line 2556
    iget-boolean v0, p0, USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_e

    .line 2557
    iput v2, p0, mLastPosition:I

    .line 2560
    :cond_e
    iput-boolean v3, p0, mDataChanged:Z

    .line 2561
    iput-object v1, p0, mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2562
    iput-boolean v3, p0, mNeedSync:Z

    .line 2563
    iput-object v1, p0, mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2564
    iput v2, p0, mOldSelectedPosition:I

    .line 2565
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, mOldSelectedRowId:J

    .line 2566
    invoke-virtual {p0, v2}, setSelectedPositionInt(I)V

    .line 2567
    invoke-virtual {p0, v2}, setNextSelectedPositionInt(I)V

    .line 2568
    iput v3, p0, mSelectedTop:I

    .line 2569
    iput v2, p0, mSelectorPosition:I

    .line 2570
    iget-object v0, p0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2571
    invoke-virtual {p0}, invalidate()V

    .line 2572
    return-void
.end method

.method public resetPressItemListArray()V
    .registers 3

    .prologue
    .line 9676
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_5

    .line 9686
    :cond_4
    :goto_4
    return-void

    .line 9679
    :cond_5
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 9681
    .local v0, "checkCount":I
    iget-object v1, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 9684
    iget-object v1, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9685
    invoke-virtual {p0}, invalidate()V

    goto :goto_4
.end method

.method resurrectSelection()Z
    .registers 20

    .prologue
    .line 7436
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v3

    .line 7438
    .local v3, "childCount":I
    if-gtz v3, :cond_9

    .line 7439
    const/16 v17, 0x0

    .line 7534
    :goto_8
    return v17

    .line 7442
    :cond_9
    const/4 v13, 0x0

    .line 7444
    .local v13, "selectedTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 7445
    .local v5, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 7446
    .local v4, "childrenBottom":I
    move-object/from16 v0, p0

    iget v7, v0, mFirstPosition:I

    .line 7447
    .local v7, "firstPosition":I
    move-object/from16 v0, p0

    iget v14, v0, mResurrectToPosition:I

    .line 7448
    .local v14, "toPosition":I
    const/4 v6, 0x1

    .line 7450
    .local v6, "down":Z
    if-lt v14, v7, :cond_d8

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_d8

    .line 7451
    move v12, v14

    .line 7453
    .local v12, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7454
    .local v10, "selected":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 7455
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 7458
    .local v11, "selectedBottom":I
    if-ge v13, v5, :cond_c9

    .line 7459
    invoke-virtual/range {p0 .. p0}, getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 7515
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    :cond_62
    :goto_62
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mResurrectToPosition:I

    .line 7516
    move-object/from16 v0, p0

    iget-object v0, v0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7517
    move-object/from16 v0, p0

    iget-object v0, v0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_88

    .line 7518
    move-object/from16 v0, p0

    iget-object v0, v0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 7520
    :cond_88
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchMode:I

    .line 7521
    invoke-direct/range {p0 .. p0}, clearScrollingCache()V

    .line 7522
    move-object/from16 v0, p0

    iput v13, v0, mSpecificTop:I

    .line 7523
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, lookForSelectablePosition(IZ)I

    move-result v12

    .line 7524
    if-lt v12, v7, :cond_139

    invoke-virtual/range {p0 .. p0}, getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_139

    .line 7525
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mLayoutMode:I

    .line 7526
    invoke-virtual/range {p0 .. p0}, updateSelectorState()V

    .line 7527
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, setSelectionInt(I)V

    .line 7528
    invoke-virtual/range {p0 .. p0}, invokeOnItemScrollListener()V

    .line 7532
    :goto_ba
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, reportScrollStateChange(I)V

    .line 7534
    if-ltz v12, :cond_13b

    const/16 v17, 0x1

    goto/16 :goto_8

    .line 7460
    .restart local v10    # "selected":Landroid/view/View;
    .restart local v11    # "selectedBottom":I
    :cond_c9
    if-le v11, v4, :cond_62

    .line 7461
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_62

    .line 7465
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    .end local v12    # "selectedPos":I
    :cond_d8
    if-ge v14, v7, :cond_ff

    .line 7467
    move v12, v7

    .line 7468
    .restart local v12    # "selectedPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_dc
    if-ge v8, v3, :cond_62

    .line 7469
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7470
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7472
    .local v15, "top":I
    if-nez v8, :cond_f5

    .line 7474
    move v13, v15

    .line 7476
    if-gtz v7, :cond_ef

    if-ge v15, v5, :cond_f5

    .line 7479
    :cond_ef
    invoke-virtual/range {p0 .. p0}, getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 7482
    :cond_f5
    if-lt v15, v5, :cond_fc

    .line 7484
    add-int v12, v7, v8

    .line 7485
    move v13, v15

    .line 7486
    goto/16 :goto_62

    .line 7468
    :cond_fc
    add-int/lit8 v8, v8, 0x1

    goto :goto_dc

    .line 7490
    .end local v8    # "i":I
    .end local v12    # "selectedPos":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_ff
    move-object/from16 v0, p0

    iget v9, v0, mItemCount:I

    .line 7491
    .local v9, "itemCount":I
    const/4 v6, 0x0

    .line 7492
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 7494
    .restart local v12    # "selectedPos":I
    add-int/lit8 v8, v3, -0x1

    .restart local v8    # "i":I
    :goto_10a
    if-ltz v8, :cond_62

    .line 7495
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7496
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7497
    .restart local v15    # "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7499
    .local v2, "bottom":I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_12f

    .line 7500
    move v13, v15

    .line 7501
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_129

    if-le v2, v4, :cond_12f

    .line 7502
    :cond_129
    invoke-virtual/range {p0 .. p0}, getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 7506
    :cond_12f
    if-gt v2, v4, :cond_136

    .line 7507
    add-int v12, v7, v8

    .line 7508
    move v13, v15

    .line 7509
    goto/16 :goto_62

    .line 7494
    :cond_136
    add-int/lit8 v8, v8, -0x1

    goto :goto_10a

    .line 7530
    .end local v2    # "bottom":I
    .end local v8    # "i":I
    .end local v9    # "itemCount":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_139
    const/4 v12, -0x1

    goto :goto_ba

    .line 7534
    :cond_13b
    const/16 v17, 0x0

    goto/16 :goto_8
.end method

.method resurrectSelectionIfNeeded()Z
    .registers 2

    .prologue
    .line 7416
    iget v0, p0, mSelectedPosition:I

    if-gez v0, :cond_f

    invoke-virtual {p0}, resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7417
    invoke-virtual {p0}, updateSelectorState()V

    .line 7418
    const/4 v0, 0x1

    .line 7420
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
    .line 7114
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, trackMotionScroll(II)Z

    .line 7115
    return-void
.end method

.method public sendAccessibilityEventInternal(I)V
    .registers 5
    .param p1, "eventType"    # I

    .prologue
    .line 1966
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_19

    .line 1967
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v0

    .line 1968
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, getLastVisiblePosition()I

    move-result v1

    .line 1969
    .local v1, "lastVisiblePosition":I
    iget v2, p0, mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_15

    iget v2, p0, mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_15

    .line 1978
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :goto_14
    return-void

    .line 1973
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_15
    iput v0, p0, mLastAccessibilityScrollEventFromIndex:I

    .line 1974
    iput v1, p0, mLastAccessibilityScrollEventToIndex:I

    .line 1977
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_19
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEventInternal(I)V

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

    .line 7857
    invoke-direct {p0}, acceptFilter()Z

    move-result v6

    if-nez v6, :cond_f

    move v2, v5

    .line 7932
    :cond_e
    :goto_e
    return v2

    .line 7861
    :cond_f
    const/4 v2, 0x0

    .line 7862
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 7863
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_bc

    .line 7895
    :goto_14
    if-eqz v3, :cond_e

    .line 7896
    invoke-direct {p0, v8}, createTextFilter(Z)V

    .line 7898
    move-object v1, p3

    .line 7899
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_28

    .line 7900
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7903
    :cond_28
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 7904
    .local v0, "action":I
    packed-switch v0, :pswitch_data_de

    goto :goto_e

    .line 7906
    :pswitch_30
    iget-object v5, p0, mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7907
    if-eq p1, v10, :cond_3a

    if-ne p1, v11, :cond_85

    .line 7908
    :cond_3a
    iput-boolean v8, p0, mIsShiftkeyPressed:Z

    goto :goto_e

    .line 7870
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_3d
    const/4 v3, 0x0

    .line 7871
    goto :goto_14

    .line 7873
    :sswitch_3f
    iget-boolean v6, p0, mFiltered:Z

    if-eqz v6, :cond_65

    iget-object v6, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_65

    iget-object v6, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 7874
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_67

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_67

    .line 7876
    invoke-virtual {p0}, getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 7877
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_64

    .line 7878
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 7880
    :cond_64
    const/4 v2, 0x1

    .line 7887
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_65
    :goto_65
    const/4 v3, 0x0

    .line 7888
    goto :goto_14

    .line 7881
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

    .line 7883
    const/4 v2, 0x1

    .line 7884
    iget-object v6, p0, mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_65

    .line 7891
    :sswitch_82
    iget-boolean v3, p0, mFiltered:Z

    goto :goto_14

    .line 7909
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :cond_85
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8d

    const/16 v5, 0x72

    if-ne p1, v5, :cond_e

    .line 7910
    :cond_8d
    iput-boolean v8, p0, mIsCtrlkeyPressed:Z

    goto/16 :goto_e

    .line 7915
    :pswitch_91
    iget-object v6, p0, mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v6, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7916
    if-eq p1, v10, :cond_9b

    if-ne p1, v11, :cond_a7

    .line 7917
    :cond_9b
    iput-boolean v5, p0, mIsShiftkeyPressed:Z

    .line 7918
    iput v5, p0, mOldKeyCode:I

    .line 7919
    iput v5, p0, mCurrentKeyCode:I

    .line 7920
    iput v9, p0, mFirstPressedPoint:I

    .line 7921
    iput v9, p0, mSecondPressedPoint:I

    goto/16 :goto_e

    .line 7922
    :cond_a7
    const/16 v6, 0x71

    if-eq p1, v6, :cond_af

    const/16 v6, 0x72

    if-ne p1, v6, :cond_e

    .line 7923
    :cond_af
    iput-boolean v5, p0, mIsCtrlkeyPressed:Z

    goto/16 :goto_e

    .line 7928
    :pswitch_b3
    iget-object v5, p0, mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_e

    .line 7863
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

    .line 7904
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
    .line 137
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v1, 0x1

    .line 1283
    if-eqz p1, :cond_20

    .line 1284
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, mAdapterHasStableIds:Z

    .line 1285
    iget v0, p0, mChoiceMode:I

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, mAdapterHasStableIds:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1e

    .line 1287
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1289
    :cond_1e
    iput-boolean v1, p0, mChnagedAdapter:Z

    .line 1292
    :cond_20
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_29

    .line 1293
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1296
    :cond_29
    iget-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_32

    .line 1297
    iget-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1301
    :cond_32
    iget-boolean v0, p0, mIsMultiFocusEnabled:Z

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4c

    .line 1302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    .line 1303
    invoke-virtual {p0}, resetPressItemListArray()V

    .line 1304
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, mOldAdapterItemCount:I

    .line 1307
    :cond_4c
    return-void
.end method

.method public setAirScrollEnable(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1070
    return-void
.end method

.method public setAlwaysDisableHoverHighlight(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .prologue
    .line 6008
    iput-boolean p1, p0, mAlwaysDisableHoverHighlight:Z

    .line 6009
    return-void
.end method

.method public setCacheColorHint(I)V
    .registers 5
    .param p1, "color"    # I

    .prologue
    .line 8303
    iget v2, p0, mCacheColorHint:I

    if-eq p1, v2, :cond_1c

    .line 8304
    iput p1, p0, mCacheColorHint:I

    .line 8305
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 8306
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 8307
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8306
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 8309
    :cond_17
    iget-object v2, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 8311
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method public setChoiceMode(I)V
    .registers 7
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1616
    iput p1, p0, mChoiceMode:I

    .line 1617
    iget-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_11

    .line 1618
    iget-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1619
    const/4 v0, 0x0

    iput-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    .line 1621
    :cond_11
    iget v0, p0, mChoiceMode:I

    if-eqz v0, :cond_41

    .line 1622
    iget-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_20

    .line 1623
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1625
    :cond_20
    iget-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_37

    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_37

    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1626
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1629
    :cond_37
    iget v0, p0, mChoiceMode:I

    if-ne v0, v4, :cond_41

    .line 1630
    invoke-virtual {p0}, clearChoices()V

    .line 1631
    invoke-virtual {p0, v2}, setLongClickable(Z)V

    .line 1635
    :cond_41
    iget v0, p0, mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_49

    .line 1636
    iput-boolean v2, p0, mIsDragBlockEnabled:Z

    .line 1643
    :cond_48
    :goto_48
    return-void

    .line 1637
    :cond_49
    iget v0, p0, mChoiceMode:I

    if-ne v0, v4, :cond_50

    .line 1638
    iput-boolean v2, p0, mIsDragBlockEnabled:Z

    goto :goto_48

    .line 1639
    :cond_50
    iget v0, p0, mChoiceMode:I

    if-eqz v0, :cond_58

    iget v0, p0, mChoiceMode:I

    if-ne v0, v2, :cond_48

    .line 1640
    :cond_58
    iput-boolean v3, p0, mIsDragBlockEnabled:Z

    goto :goto_48
.end method

.method public setDrawSelectorOnTop(Z)V
    .registers 2
    .param p1, "onTop"    # Z

    .prologue
    .line 3372
    iput-boolean p1, p0, mDrawSelectorOnTop:Z

    .line 3373
    return-void
.end method

.method public setEnableDragBlock(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 9604
    iput-boolean p1, p0, mIsDragBlockEnabled:Z

    .line 9605
    return-void
.end method

.method public setEnableMultiFocus(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 9592
    iput-boolean p1, p0, mIsMultiFocusEnabled:Z

    .line 9593
    return-void
.end method

.method public setEnableOnclickInMultiSelectMode(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 9622
    iput-boolean p1, p0, mIsTwOnClickEnabled:Z

    .line 9623
    return-void
.end method

.method public setEnablePaddingInHoverScroll(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 4645
    iput-boolean p1, p0, mIsEnabledPaddingInHoverScroll:Z

    .line 4646
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1791
    iget-boolean v0, p0, mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_19

    .line 1792
    if-eqz p1, :cond_e

    iget-boolean v0, p0, mFastScrollEnabled:Z

    if-nez v0, :cond_e

    .line 1793
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setFastScrollEnabled(Z)V

    .line 1796
    :cond_e
    iput-boolean p1, p0, mFastScrollAlwaysVisible:Z

    .line 1798
    invoke-direct {p0}, isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1799
    invoke-direct {p0, p1}, setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1809
    :cond_19
    :goto_19
    return-void

    .line 1801
    :cond_1a
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    goto :goto_19
.end method

.method public setFastScrollEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1731
    iget-boolean v0, p0, mFastScrollEnabled:Z

    if-eq v0, p1, :cond_f

    .line 1732
    iput-boolean p1, p0, mFastScrollEnabled:Z

    .line 1734
    invoke-direct {p0}, isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1735
    invoke-direct {p0, p1}, setFastScrollerEnabledUiThread(Z)V

    .line 1745
    :cond_f
    :goto_f
    return-void

    .line 1737
    :cond_10
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public setFastScrollStyle(I)V
    .registers 3
    .param p1, "styleResId"    # I

    .prologue
    .line 1769
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_7

    .line 1770
    iput p1, p0, mFastScrollStyle:I

    .line 1774
    :goto_6
    return-void

    .line 1772
    :cond_7
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    goto :goto_6
.end method

.method public setFilterText(Ljava/lang/String;)V
    .registers 5
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2496
    iget-boolean v1, p0, mTextFilterEnabled:Z

    if-eqz v1, :cond_39

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 2497
    const/4 v1, 0x0

    invoke-direct {p0, v1}, createTextFilter(Z)V

    .line 2500
    iget-object v1, p0, mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2501
    iget-object v1, p0, mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2502
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_39

    .line 2504
    iget-object v1, p0, mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_31

    .line 2505
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2506
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2510
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_31
    const/4 v1, 0x1

    iput-boolean v1, p0, mFiltered:Z

    .line 2511
    iget-object v1, p0, mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2514
    :cond_39
    return-void
.end method

.method public setForcedClick(Z)V
    .registers 2
    .param p1, "force"    # Z

    .prologue
    .line 3797
    iput-boolean p1, p0, mForcedClick:Z

    .line 3798
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2741
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2743
    .local v0, "changed":Z
    if-eqz v0, :cond_22

    .line 2747
    invoke-virtual {p0}, getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_23

    const/4 v1, 0x1

    .line 2748
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

    .line 2749
    invoke-direct {p0}, positionPopup()V

    .line 2753
    .end local v1    # "visible":Z
    :cond_22
    return v0

    .line 2747
    :cond_23
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public setFriction(F)V
    .registers 3
    .param p1, "friction"    # F

    .prologue
    .line 6810
    iget-object v0, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 6811
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6813
    :cond_b
    iget-object v0, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    # getter for: Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$2700(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 6814
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .registers 2
    .param p1, "hoverdelay"    # I

    .prologue
    .line 4638
    iput p1, p0, HOVERSCROLL_DELAY:I

    .line 4639
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 4612
    if-eqz p1, :cond_6

    .line 4613
    const/4 v0, 0x1

    iput-boolean v0, p0, mHoverScrollEnable:Z

    .line 4617
    :goto_5
    return-void

    .line 4615
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, mHoverScrollEnable:Z

    goto :goto_5
.end method

.method public setHoverScrollSpeed(I)V
    .registers 3
    .param p1, "hoverspeed"    # I

    .prologue
    .line 4627
    add-int/lit8 v0, p1, 0x17

    int-to-float v0, v0

    iput v0, p0, HOVERSCROLL_SPEED:F

    .line 4628
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

    .line 1424
    iget v2, p0, mChoiceMode:I

    if-nez v2, :cond_8

    .line 1491
    :cond_7
    :goto_7
    return-void

    .line 1429
    :cond_8
    if-eqz p2, :cond_2e

    iget v2, p0, mChoiceMode:I

    if-ne v2, v6, :cond_2e

    iget-object v2, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_2e

    .line 1430
    iget-object v2, p0, mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_1e

    iget-object v2, p0, mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v2}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-nez v2, :cond_26

    .line 1432
    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1436
    :cond_26
    iget-object v2, p0, mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, mChoiceActionMode:Landroid/view/ActionMode;

    .line 1439
    :cond_2e
    iget v2, p0, mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_37

    iget v2, p0, mChoiceMode:I

    if-ne v2, v6, :cond_a5

    .line 1440
    :cond_37
    iget-object v1, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1441
    .local v0, "oldValue":Z
    iget-object v1, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1442
    iget-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_5f

    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1443
    if-eqz p2, :cond_92

    .line 1444
    iget-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1449
    :cond_5f
    :goto_5f
    if-eq v0, p2, :cond_69

    .line 1450
    if-eqz p2, :cond_9e

    .line 1451
    iget v1, p0, mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mCheckedItemCount:I

    .line 1456
    :cond_69
    :goto_69
    iget-object v1, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_7c

    .line 1457
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1458
    .local v4, "id":J
    iget-object v1, p0, mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1485
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_7c
    :goto_7c
    iget-boolean v1, p0, mInLayout:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, mBlockLayoutRequests:Z

    if-nez v1, :cond_7

    .line 1486
    iget-boolean v1, p0, mForcedClick:Z

    if-nez v1, :cond_8a

    .line 1487
    iput-boolean v8, p0, mDataChanged:Z

    .line 1488
    :cond_8a
    invoke-virtual {p0}, rememberSyncState()V

    .line 1489
    invoke-virtual {p0}, requestLayout()V

    goto/16 :goto_7

    .line 1446
    .restart local v0    # "oldValue":Z
    :cond_92
    iget-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_5f

    .line 1453
    :cond_9e
    iget v1, p0, mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mCheckedItemCount:I

    goto :goto_69

    .line 1462
    .end local v0    # "oldValue":Z
    :cond_a5
    iget-object v2, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_e1

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_e1

    move v7, v8

    .line 1465
    .local v7, "updateIds":Z
    :goto_b2
    if-nez p2, :cond_ba

    invoke-virtual {p0, p1}, isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 1466
    :cond_ba
    iget-object v2, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1467
    if-eqz v7, :cond_c6

    .line 1468
    iget-object v2, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1473
    :cond_c6
    if-eqz p2, :cond_e3

    .line 1474
    iget-object v1, p0, mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1475
    if-eqz v7, :cond_de

    .line 1476
    iget-object v1, p0, mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1478
    :cond_de
    iput v8, p0, mCheckedItemCount:I

    goto :goto_7c

    .end local v7    # "updateIds":Z
    :cond_e1
    move v7, v1

    .line 1462
    goto :goto_b2

    .line 1479
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

    .line 1480
    :cond_f3
    iput v1, p0, mCheckedItemCount:I

    goto :goto_7c
.end method

.method public setMotionEvent(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1101
    iput-boolean p1, p0, mMotionEnable:Z

    .line 1102
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 1655
    iget-object v0, p0, mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_b

    .line 1656
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1658
    :cond_b
    iget-object v0, p0, mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1659
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .registers 4
    .param p1, "startitem"    # I
    .param p2, "enditem"    # I

    .prologue
    .line 9693
    iget-object v0, p0, mTwPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 9698
    :goto_4
    return-void

    .line 9696
    :cond_5
    invoke-virtual {p0}, resetPressItemListArray()V

    .line 9697
    invoke-direct {p0, p1, p2}, addToPressItemListArray(II)V

    goto :goto_4
.end method

.method public setOnFluidScrollEffectListener(Landroid/widget/AbsListView$OnFluidScrollEffectListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AbsListView$OnFluidScrollEffectListener;

    .prologue
    .line 10011
    iput-object p1, p0, mOnFluidScrollEffectListener:Landroid/widget/AbsListView$OnFluidScrollEffectListener;

    .line 10012
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 1941
    iput-object p1, p0, mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1942
    invoke-virtual {p0}, invokeOnItemScrollListener()V

    .line 1943
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1265
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1e

    .line 1266
    iget-object v1, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1a

    .line 1267
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 1268
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1269
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1275
    .end local v0    # "context":Landroid/content/Context;
    :cond_1a
    :goto_1a
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 1276
    return-void

    .line 1272
    :cond_1e
    iput-object v2, p0, mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1273
    iput-object v2, p0, mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_1a
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    .line 8464
    iget-object v0, p0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    # setter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$5402(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 8465
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8369
    iget-object v2, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1b

    .line 8370
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 8371
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 8373
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 8384
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_1a
    :goto_1a
    return-void

    .line 8377
    :cond_1b
    const/4 v2, 0x0

    iput-boolean v2, p0, mDeferNotifyDataSetChanged:Z

    .line 8379
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 8380
    iget-object v2, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 8381
    iget-object v2, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, setAdapter(Landroid/widget/ListAdapter;)V

    .line 8382
    const-string v2, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRemoteAdapter #1 getCount()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v4}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 8396
    iget-object v0, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_9

    .line 8397
    iget-object v0, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 8399
    :cond_9
    return-void
.end method

.method public setScrollBarStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .prologue
    .line 1876
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1877
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_c

    .line 1878
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 1880
    :cond_c
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .prologue
    .line 3466
    iput-object p1, p0, mScrollUp:Landroid/view/View;

    .line 3467
    iput-object p2, p0, mScrollDown:Landroid/view/View;

    .line 3468
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2160
    iget-boolean v0, p0, mScrollingCacheEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 2161
    invoke-direct {p0}, clearScrollingCache()V

    .line 2163
    :cond_9
    iput-boolean p1, p0, mScrollingCacheEnabled:Z

    .line 2164
    return-void
.end method

.method public setSelectionFromTop(II)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    .line 9214
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    .line 9241
    :cond_4
    :goto_4
    return-void

    .line 9218
    :cond_5
    invoke-virtual {p0}, isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 9219
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, lookForSelectablePosition(IZ)I

    move-result p1

    .line 9220
    if-ltz p1, :cond_15

    .line 9221
    invoke-virtual {p0, p1}, setNextSelectedPositionInt(I)V

    .line 9227
    :cond_15
    :goto_15
    if-ltz p1, :cond_4

    .line 9228
    const/4 v0, 0x4

    iput v0, p0, mLayoutMode:I

    .line 9229
    iget-object v0, p0, mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, mSpecificTop:I

    .line 9231
    iget-boolean v0, p0, mNeedSync:Z

    if-eqz v0, :cond_2f

    .line 9232
    iput p1, p0, mSyncPosition:I

    .line 9233
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, mSyncRowId:J

    .line 9236
    :cond_2f
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_38

    .line 9237
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 9239
    :cond_38
    invoke-virtual {p0}, requestLayout()V

    goto :goto_4

    .line 9224
    :cond_3c
    iput p1, p0, mResurrectToPosition:I

    goto :goto_15
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .registers 3
    .param p1, "resID"    # I

    .prologue
    .line 3383
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3384
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3387
    iget-object v1, p0, mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 3388
    iget-object v1, p0, mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3389
    iget-object v1, p0, mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3391
    :cond_f
    iput-object p1, p0, mSelector:Landroid/graphics/drawable/Drawable;

    .line 3392
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3393
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3394
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, mSelectionLeftPadding:I

    .line 3395
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, mSelectionTopPadding:I

    .line 3396
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, mSelectionRightPadding:I

    .line 3397
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, mSelectionBottomPadding:I

    .line 3398
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3399
    invoke-virtual {p0}, updateSelectorState()V

    .line 3400
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1910
    iput-boolean p1, p0, mSmoothScrollbarEnabled:Z

    .line 1911
    return-void
.end method

.method public setStackFromBottom(Z)V
    .registers 3
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 2231
    iget-boolean v0, p0, mStackFromBottom:Z

    if-eq v0, p1, :cond_9

    .line 2232
    iput-boolean p1, p0, mStackFromBottom:Z

    .line 2233
    invoke-virtual {p0}, requestLayoutIfNecessary()V

    .line 2235
    :cond_9
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .registers 2
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 2177
    iput-boolean p1, p0, mTextFilterEnabled:Z

    .line 2178
    return-void
.end method

.method public setTouchSlop(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 1117
    iput p1, p0, mTouchSlop:I

    .line 1118
    return-void
.end method

.method public setTranscriptMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 8274
    iput p1, p0, mTranscriptMode:I

    .line 8275
    return-void
.end method

.method public setVelocityScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .prologue
    .line 6823
    iput p1, p0, mVelocityScale:F

    .line 6824
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1866
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1867
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_d

    .line 1868
    iget-object v0, p0, mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1872
    :cond_c
    :goto_c
    return-void

    .line 1869
    :cond_d
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    if-eqz v0, :cond_c

    .line 1870
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FluidScroller;->setScrollbarPosition(I)V

    goto :goto_c
.end method

.method setVisibleRangeHint(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 8447
    iget-object v0, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_9

    .line 8448
    iget-object v0, p0, mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 8450
    :cond_9
    return-void
.end method

.method shouldShowSelector()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3320
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4a

    move v0, v2

    .line 3321
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

    .line 3326
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

    .line 3320
    goto :goto_11

    .restart local v0    # "isFingerAirView":Z
    :cond_4c
    move v1, v3

    .line 3321
    goto :goto_20
.end method

.method shouldShowSelectorDefault()Z
    .registers 2

    .prologue
    .line 3333
    invoke-virtual {p0}, isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_c
    invoke-virtual {p0}, touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, isPressed()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public showContextMenu(FFI)Z
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 3960
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, pointToPosition(II)I

    move-result v1

    .line 3961
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_24

    .line 3962
    iget-object v4, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3963
    .local v2, "id":J
    iget v4, p0, mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3964
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_27

    .line 3965
    invoke-virtual {p0, v0, v1, v2, v3}, createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3966
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3971
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :goto_23
    return v4

    .line 3969
    :cond_24
    const/4 v4, 0x0

    iput-object v4, p0, mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3971
    :cond_27
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_23
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 9
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 3976
    invoke-virtual {p0, p1}, getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3977
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2e

    .line 3978
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3979
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 3981
    .local v6, "handled":Z
    iget-object v0, p0, mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_19

    .line 3982
    iget-object v0, p0, mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3985
    :cond_19
    if-nez v6, :cond_2d

    .line 3986
    iget v0, p0, mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3989
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3994
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
    .line 6905
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, smoothScrollBy(IIZ)V

    .line 6906
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .registers 11
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    .line 7015
    iget-object v5, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v5, :cond_b

    .line 7016
    new-instance v5, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 7020
    :cond_b
    iget v2, p0, mFirstPosition:I

    .line 7021
    .local v2, "firstPos":I
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 7022
    .local v1, "childCount":I
    add-int v3, v2, v1

    .line 7023
    .local v3, "lastPos":I
    invoke-virtual {p0}, getPaddingTop()I

    move-result v4

    .line 7024
    .local v4, "topLimit":I
    invoke-virtual {p0}, getHeight()I

    move-result v5

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 7026
    .local v0, "bottomLimit":I
    if-eqz p1, :cond_4a

    iget v5, p0, mItemCount:I

    if-eqz v5, :cond_4a

    if-eqz v1, :cond_4a

    if-nez v2, :cond_38

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_38

    if-ltz p1, :cond_4a

    :cond_38
    iget v5, p0, mItemCount:I

    if-ne v3, v5, :cond_59

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_59

    if-lez p1, :cond_59

    .line 7030
    :cond_4a
    iget-object v5, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 7031
    iget-object v5, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_58

    .line 7032
    iget-object v5, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 7038
    :cond_58
    :goto_58
    return-void

    .line 7035
    :cond_59
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, reportScrollStateChange(I)V

    .line 7036
    iget-object v5, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_58
.end method

.method smoothScrollByOffset(I)V
    .registers 12
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 7044
    const/4 v2, -0x1

    .line 7045
    .local v2, "index":I
    if-gez p1, :cond_58

    .line 7046
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v2

    .line 7051
    :cond_9
    :goto_9
    const/4 v7, -0x1

    if-le v2, v7, :cond_57

    .line 7052
    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7053
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_57

    .line 7054
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 7055
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 7057
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 7058
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 7059
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 7060
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 7061
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_5f

    cmpg-float v7, v3, v9

    if-gez v7, :cond_5f

    .line 7064
    add-int/lit8 v2, v2, 0x1

    .line 7071
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

    .line 7074
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_57
    return-void

    .line 7047
    :cond_58
    if-lez p1, :cond_9

    .line 7048
    invoke-virtual {p0}, getLastVisiblePosition()I

    move-result v2

    goto :goto_9

    .line 7065
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

    .line 7068
    add-int/lit8 v2, v2, -0x1

    goto :goto_45
.end method

.method public smoothScrollToPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 6839
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 6840
    invoke-virtual {p0}, createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 6842
    :cond_a
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    .line 6843
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 6893
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 6894
    invoke-virtual {p0}, createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 6896
    :cond_a
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    .line 6897
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 6876
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 6877
    invoke-virtual {p0}, createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 6879
    :cond_a
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 6880
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 6858
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 6859
    invoke-virtual {p0}, createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 6861
    :cond_a
    iget-object v0, p0, mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 6862
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .registers 2

    .prologue
    .line 3302
    iget v0, p0, mTouchMode:I

    packed-switch v0, :pswitch_data_a

    .line 3307
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 3305
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 3302
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .registers 34
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 7153
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v8

    .line 7154
    .local v8, "childCount":I
    if-nez v8, :cond_9

    .line 7155
    const/16 v29, 0x1

    .line 7314
    :goto_8
    return v29

    .line 7158
    :cond_9
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v16

    .line 7159
    .local v16, "firstTop":I
    add-int/lit8 v29, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 7161
    .local v22, "lastBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 7166
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 7167
    .local v13, "effectivePaddingTop":I
    const/4 v12, 0x0

    .line 7168
    .local v12, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_45

    .line 7169
    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 7170
    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 7174
    :cond_45
    sub-int v25, v13, v16

    .line 7175
    .local v25, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v29

    sub-int v14, v29, v12

    .line 7176
    .local v14, "end":I
    sub-int v26, v22, v14

    .line 7178
    .local v26, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, mPaddingTop:I

    move/from16 v30, v0

    sub-int v19, v29, v30

    .line 7179
    .local v19, "height":I
    if-gez p1, :cond_f3

    .line 7180
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7185
    :goto_74
    if-gez p2, :cond_ff

    .line 7186
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 7191
    :goto_85
    move-object/from16 v0, p0

    iget v15, v0, mFirstPosition:I

    .line 7194
    .local v15, "firstPosition":I
    if-nez v15, :cond_10b

    .line 7195
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v29, v16, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, mFirstPositionDistanceGuess:I

    .line 7199
    :goto_99
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11a

    .line 7200
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v29, v29, v22

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, mLastPositionDistanceGuess:I

    .line 7205
    :goto_b5
    if-nez v15, :cond_129

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_129

    if-ltz p2, :cond_129

    const/4 v5, 0x1

    .line 7207
    .local v5, "cannotScrollDown":Z
    :goto_c6
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12b

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v29

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v22

    move/from16 v1, v29

    if-gt v0, v1, :cond_12b

    if-gtz p2, :cond_12b

    const/4 v6, 0x1

    .line 7210
    .local v6, "cannotScrollUp":Z
    :goto_e9
    if-nez v5, :cond_ed

    if-eqz v6, :cond_131

    .line 7211
    :cond_ed
    if-eqz p2, :cond_12d

    const/16 v29, 0x1

    goto/16 :goto_8

    .line 7182
    .end local v5    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v15    # "firstPosition":I
    :cond_f3
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_74

    .line 7188
    :cond_ff
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_85

    .line 7197
    .restart local v15    # "firstPosition":I
    :cond_10b
    move-object/from16 v0, p0

    iget v0, v0, mFirstPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, mFirstPositionDistanceGuess:I

    goto :goto_99

    .line 7202
    :cond_11a
    move-object/from16 v0, p0

    iget v0, v0, mLastPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, mLastPositionDistanceGuess:I

    goto :goto_b5

    .line 7205
    :cond_129
    const/4 v5, 0x0

    goto :goto_c6

    .line 7207
    .restart local v5    # "cannotScrollDown":Z
    :cond_12b
    const/4 v6, 0x0

    goto :goto_e9

    .line 7211
    .restart local v6    # "cannotScrollUp":Z
    :cond_12d
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 7214
    :cond_131
    if-gez p2, :cond_22c

    const/4 v11, 0x1

    .line 7216
    .local v11, "down":Z
    :goto_134
    invoke-virtual/range {p0 .. p0}, isInTouchMode()Z

    move-result v21

    .line 7217
    .local v21, "inTouchMode":Z
    if-eqz v21, :cond_13d

    .line 7218
    invoke-virtual/range {p0 .. p0}, hideSelector()V

    .line 7221
    :cond_13d
    invoke-virtual/range {p0 .. p0}, getHeaderViewsCount()I

    move-result v18

    .line 7222
    .local v18, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, mItemCount:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, getFooterViewsCount()I

    move-result v30

    sub-int v17, v29, v30

    .line 7224
    .local v17, "footerViewsStart":I
    const/16 v27, 0x0

    .line 7225
    .local v27, "start":I
    const/4 v10, 0x0

    .line 7227
    .local v10, "count":I
    if-eqz v11, :cond_253

    .line 7228
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v28, v0

    .line 7229
    .local v28, "top":I
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_16f

    .line 7230
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    .line 7232
    :cond_16f
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_171
    move/from16 v0, v20

    if-ge v0, v8, :cond_187

    .line 7233
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 7234
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-lt v0, v1, :cond_22f

    .line 7270
    .end local v7    # "child":Landroid/view/View;
    .end local v28    # "top":I
    :cond_187
    move-object/from16 v0, p0

    iget v0, v0, mMotionViewOriginalTop:I

    move/from16 v29, v0

    add-int v29, v29, p1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, mMotionViewNewTop:I

    .line 7272
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, mBlockLayoutRequests:Z

    .line 7274
    if-lez v10, :cond_1af

    .line 7275
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, detachViewsFromParent(II)V

    .line 7276
    move-object/from16 v0, p0

    iget-object v0, v0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 7281
    :cond_1af
    invoke-virtual/range {p0 .. p0}, awakenScrollBars()Z

    move-result v29

    if-nez v29, :cond_1b8

    .line 7282
    invoke-virtual/range {p0 .. p0}, invalidate()V

    .line 7285
    :cond_1b8
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, offsetChildrenTopAndBottom(I)V

    .line 7287
    if-eqz v11, :cond_1cf

    .line 7288
    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v10

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, mFirstPosition:I

    .line 7291
    :cond_1cf
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 7292
    .local v3, "absIncrementalDeltaY":I
    move/from16 v0, v25

    if-lt v0, v3, :cond_1db

    move/from16 v0, v26

    if-ge v0, v3, :cond_1e0

    .line 7293
    :cond_1db
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, fillGap(Z)V

    .line 7296
    :cond_1e0
    if-nez v21, :cond_2aa

    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2aa

    .line 7297
    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 7298
    .local v9, "childIndex":I
    if-ltz v9, :cond_21d

    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_21d

    .line 7299
    move-object/from16 v0, p0

    iget v0, v0, mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, positionSelector(ILandroid/view/View;)V

    .line 7310
    .end local v9    # "childIndex":I
    :cond_21d
    :goto_21d
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, mBlockLayoutRequests:Z

    .line 7312
    invoke-virtual/range {p0 .. p0}, invokeOnItemScrollListener()V

    .line 7314
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 7214
    .end local v3    # "absIncrementalDeltaY":I
    .end local v10    # "count":I
    .end local v11    # "down":Z
    .end local v17    # "footerViewsStart":I
    .end local v18    # "headerViewsCount":I
    .end local v20    # "i":I
    .end local v21    # "inTouchMode":Z
    .end local v27    # "start":I
    :cond_22c
    const/4 v11, 0x0

    goto/16 :goto_134

    .line 7237
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "count":I
    .restart local v11    # "down":Z
    .restart local v17    # "footerViewsStart":I
    .restart local v18    # "headerViewsCount":I
    .restart local v20    # "i":I
    .restart local v21    # "inTouchMode":Z
    .restart local v27    # "start":I
    .restart local v28    # "top":I
    :cond_22f
    add-int/lit8 v10, v10, 0x1

    .line 7238
    add-int v24, v15, v20

    .line 7241
    .local v24, "position":I
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7242
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_24f

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_24f

    .line 7243
    move-object/from16 v0, p0

    iget-object v0, v0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7232
    :cond_24f
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_171

    .line 7248
    .end local v7    # "child":Landroid/view/View;
    .end local v20    # "i":I
    .end local v24    # "position":I
    .end local v28    # "top":I
    :cond_253
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v29

    sub-int v4, v29, p2

    .line 7249
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_271

    .line 7250
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    .line 7252
    :cond_271
    add-int/lit8 v20, v8, -0x1

    .restart local v20    # "i":I
    :goto_273
    if-ltz v20, :cond_187

    .line 7253
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 7254
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v4, :cond_187

    .line 7257
    move/from16 v27, v20

    .line 7258
    add-int/lit8 v10, v10, 0x1

    .line 7259
    add-int v24, v15, v20

    .line 7262
    .restart local v24    # "position":I
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7263
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_2a7

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_2a7

    .line 7264
    move-object/from16 v0, p0

    iget-object v0, v0, mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7252
    :cond_2a7
    add-int/lit8 v20, v20, -0x1

    goto :goto_273

    .line 7301
    .end local v4    # "bottom":I
    .end local v7    # "child":Landroid/view/View;
    .end local v24    # "position":I
    .restart local v3    # "absIncrementalDeltaY":I
    :cond_2aa
    move-object/from16 v0, p0

    iget v0, v0, mSelectorPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2e3

    .line 7302
    move-object/from16 v0, p0

    iget v0, v0, mSelectorPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 7303
    .restart local v9    # "childIndex":I
    if-ltz v9, :cond_21d

    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_21d

    .line 7304
    const/16 v29, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, positionSelector(ILandroid/view/View;)V

    goto/16 :goto_21d

    .line 7307
    .end local v9    # "childIndex":I
    :cond_2e3
    move-object/from16 v0, p0

    iget-object v0, v0, mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_21d
.end method

.method protected twGetItemCount()I
    .registers 3

    .prologue
    .line 6948
    invoke-virtual {p0}, getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 6949
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

.method public twIsFluidScrollEnabled()Z
    .registers 2

    .prologue
    .line 10088
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    if-nez v0, :cond_7

    .line 10089
    iget-boolean v0, p0, mTwFluidScrollEnabled:Z

    .line 10091
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, mTwFluidScroll:Landroid/widget/FluidScroller;

    invoke-virtual {v0}, Landroid/widget/FluidScroller;->isEnabled()Z

    move-result v0

    goto :goto_6
.end method

.method public twIsSetCustomMultiChoiceMode()Z
    .registers 2

    .prologue
    .line 1699
    iget-boolean v0, p0, mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method public twNotifyKeyPressState(Landroid/view/View;IJ)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1559
    const/4 v0, 0x0

    .line 1561
    .local v0, "handledNotifyKeyPress":Z
    iget-boolean v1, p0, mIsShiftkeyPressed:Z

    if-eqz v1, :cond_f

    .line 1562
    iget-boolean v6, p0, mIsShiftkeyPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Landroid/widget/AdapterView;->twNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    .line 1564
    :cond_f
    return v0
.end method

.method public twSetCustomMultiChoiceMode(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 1690
    iput-boolean p1, p0, mTwCustomMultiChoiceMode:Z

    .line 1691
    return-void
.end method

.method public twSetFluidScrollEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 10033
    iget-boolean v0, p0, mTwFluidScrollEnabled:Z

    if-eq v0, p1, :cond_f

    .line 10034
    iput-boolean p1, p0, mTwFluidScrollEnabled:Z

    .line 10036
    invoke-direct {p0}, isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 10037
    invoke-direct {p0, p1}, twSetFluidScrollerEnabledUiThread(Z)V

    .line 10047
    :cond_f
    :goto_f
    return-void

    .line 10039
    :cond_10
    new-instance v0, Landroid/widget/AbsListView$11;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$11;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public twSetSelection(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 6974
    invoke-virtual {p0, p1}, setSelection(I)V

    .line 6975
    return-void
.end method

.method public twSetSmoothScrollEnable(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 10102
    iget-object v0, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 10103
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 10105
    :cond_b
    iget-object v0, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    # getter for: Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$2700(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->twSetSmoothScrollEnable(Z)V

    .line 10106
    return-void
.end method

.method public twShowMultiChoiceMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1670
    if-eqz p1, :cond_14

    .line 1671
    iget v0, p0, mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    iget-object v0, p0, mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_13

    .line 1672
    iget-object v0, p0, mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    .line 1680
    :cond_13
    :goto_13
    return-void

    .line 1675
    :cond_14
    iget-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_13

    .line 1676
    iget-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1677
    const/4 v0, 0x0

    iput-object v0, p0, mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_13
.end method

.method public twSmoothScrollBy(I)V
    .registers 5
    .param p1, "distance"    # I

    .prologue
    .line 6987
    iget-object v1, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_b

    .line 6988
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6991
    :cond_b
    iget-object v1, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_26

    .line 6992
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6993
    new-instance v1, Landroid/widget/AbsListView$TwSmoothScrollByMove;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AbsListView$TwSmoothScrollByMove;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v1, p0, mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    .line 6994
    const/high16 v1, 0x43160000    # 150.0f

    iget v2, p0, mDensityScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, mTwScrollAmount:I

    .line 6997
    :cond_26
    iget-object v1, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 6998
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, mTwScrollAmount:I

    if-le v1, v2, :cond_5e

    .line 6999
    if-lez p1, :cond_49

    .line 7000
    :goto_36
    sget v1, mTwScrollAmount:I

    if-le p1, v1, :cond_5e

    .line 7001
    iget-object v1, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    sget v2, mTwScrollAmount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7000
    sget v1, mTwScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_36

    .line 7004
    :cond_49
    :goto_49
    sget v1, mTwScrollAmount:I

    neg-int v1, v1

    if-ge p1, v1, :cond_5e

    .line 7005
    iget-object v1, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    sget v2, mTwScrollAmount:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7004
    sget v1, mTwScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_49

    .line 7009
    :cond_5e
    iget-object v1, p0, mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7010
    if-eqz v0, :cond_6e

    iget-object v1, p0, mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    invoke-virtual {p0, v1}, post(Ljava/lang/Runnable;)Z

    .line 7011
    :cond_6e
    return-void
.end method

.method public unregisterDoubleTapMotion()V
    .registers 2

    .prologue
    .line 1088
    invoke-direct {p0}, unregisterMotionListener()V

    .line 1089
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setMotionEvent(Z)V

    .line 1090
    return-void
.end method

.method public unregisterIRMotion()V
    .registers 1

    .prologue
    .line 1063
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1127
    return-void
.end method

.method updateScrollIndicators()V
    .registers 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2782
    iget-object v0, p0, mScrollUp:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 2783
    iget-object v3, p0, mScrollUp:Landroid/view/View;

    invoke-direct {p0}, canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v1

    :goto_f
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2786
    :cond_12
    iget-object v0, p0, mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 2787
    iget-object v0, p0, mScrollDown:Landroid/view/View;

    invoke-direct {p0}, canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_24

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2789
    :cond_21
    return-void

    :cond_22
    move v0, v2

    .line 2783
    goto :goto_f

    :cond_24
    move v1, v2

    .line 2787
    goto :goto_1e
.end method

.method updateSelectorState()V
    .registers 5

    .prologue
    .line 3471
    iget-object v2, p0, mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_45

    .line 3472
    invoke-virtual {p0}, shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 3474
    invoke-virtual {p0}, isHovered()Z

    move-result v2

    if-eqz v2, :cond_50

    iget-boolean v2, p0, mIsHoveredByMouse:Z

    if-nez v2, :cond_50

    iget v2, p0, mSelectorPosition:I

    iget v3, p0, mFirstPosition:I

    if-lt v2, v3, :cond_50

    .line 3475
    iget v2, p0, mSelectorPosition:I

    iget v3, p0, mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3476
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 3477
    .local v1, "ellipsized":Z
    iget-boolean v2, p0, mIsPenHovered:Z

    if-nez v2, :cond_46

    iget-boolean v2, p0, mAlwaysDisableHoverHighlight:Z

    if-nez v2, :cond_39

    if-eqz v1, :cond_39

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_46

    .line 3478
    :cond_39
    iget-object v2, p0, mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3479
    iget-object v2, p0, mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3491
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_45
    :goto_45
    return-void

    .line 3481
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "ellipsized":Z
    :cond_46
    iget-object v2, p0, mSelector:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, getDrawableStateForSelector()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_45

    .line 3484
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_50
    iget-object v2, p0, mSelector:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, getDrawableStateForSelector()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_45

    .line 3488
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
    .line 3536
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
